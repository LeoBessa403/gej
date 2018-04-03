<?php

/**
 * UsuarioService.class [ SEVICE ]
 * @copyright (c) 2017, Leo Bessa
 */
class  UsuarioService extends AbstractService
{
    private $ObjetoModel;

    public function __construct()
    {
        parent::__construct(UsuarioEntidade::ENTIDADE);
        $this->ObjetoModel = New UsuarioModel();
    }

    public function PesquisaAvancada($Condicoes)
    {
        return $this->ObjetoModel->PesquisaAvancada($Condicoes);
    }

    public static function PesquisaUsuariosCombo($Condicoes)
    {
        /** @var UsuarioService $usuarioService */
        $usuarioService = new UsuarioService();
        $comboUsuarios = [];
        $usuarios = $usuarioService->PesquisaAvancada($Condicoes);
        /** @var UsuarioEntidade $usuario */
        foreach ($usuarios as $usuario) {
            if($usuario->getStStatus() == StatusUsuarioEnum::ATIVO){
                $comboUsuarios[$usuario->getCoUsuario()]
                    = Valida::Resumi($usuario->getCoPessoa()->getNoPessoa(), 25);
            }
        }
        return $comboUsuarios;
    }

    public function salvaUsuario($dados, $foto, $resgistrar = false)
    {
        /** @var EnderecoService $enderecoService */
        $enderecoService = $this->getService(ENDERECO_SERVICE);
        /** @var ContatoService $contatoService */
        $contatoService = $this->getService(CONTATO_SERVICE);
        /** @var UsuarioService $usuarioService */
        $usuarioService = $this->getService(USUARIO_SERVICE);
        /** @var PessoaService $pessoaService */
        $pessoaService = $this->getService(PESSOA_SERVICE);
        /** @var ImagemService $imagemService */
        $imagemService = $this->getService(IMAGEM_SERVICE);
        /** @var UsuarioPerfilService $usuarioPerfilService */
        $usuarioPerfilService = $this->getService(USUARIO_PERFIL_SERVICE);
        /** @var PDO $PDO */
        $PDO = $this->getPDO();

        $session = new Session();
        if ($session->CheckSession(SESSION_USER)) {
            /** @var Session $us */
            $us = $_SESSION[SESSION_USER];
            $user = $us->getUser();
            $meusPerfis = $user[md5(CAMPO_PERFIL)];
            $meusPerfis = explode(',', $meusPerfis);
        } else {
            $meusPerfis = array();
        }
        $idCoUsuario = (isset($dados[CO_USUARIO]) ? $dados[CO_USUARIO] : null);

        $endereco = $enderecoService->getDados($dados, EnderecoEntidade::ENTIDADE);
        $endereco[SG_UF] = $dados[SG_UF][0];

        $contato = $contatoService->getDados($dados, ContatoEntidade::ENTIDADE);

        $pessoa = $pessoaService->getDados($dados, PessoaEntidade::ENTIDADE);
        $pessoa[NO_PESSOA] = strtoupper(trim($dados[NO_PESSOA]));
        $pessoa[DT_NASCIMENTO] = Valida::DataDBDate($dados[DT_NASCIMENTO]);
        $pessoa[ST_SEXO] = $dados[ST_SEXO][0];

        $erro = false;
        $Campo = array();
        /** @var UsuarioEntidade $usuario */
        $usuarios = $usuarioService->PesquisaTodos();

        /** @var UsuarioEntidade $usuario */
        foreach ($usuarios as $usuario) {
            if($usuario->getCoUsuario() != $idCoUsuario){
                if($usuario->getCoPessoa()->getNoPessoa() == strtoupper($pessoa[NO_PESSOA])){
                    $Campo[] = "Nome do Usuário";
                    $erro = true;
                }
                if($usuario->getCoPessoa()->getCoContato()->getDsEmail() == $contato[DS_EMAIL]){
                    $Campo[] = "E-mail";
                    $erro = true;
                }
                if($usuario->getCoPessoa()->getNuCpf() == $pessoa[NU_CPF]){
                    $Campo[] = "CPF";
                    $erro = true;
                }
            }
            if ($erro){
                break;
            }
        }

        if ($erro):
            $session->setSession(MENSAGEM, "Já exite usuário cadastro com o mesmo "
                . implode(", ", $Campo) . ", Favor Verificar.");
        else:
            $imagem[DS_CAMINHO] = "";
            if ($foto[DS_CAMINHO]["tmp_name"]):
                $foto = $_FILES[DS_CAMINHO];
                $nome = Valida::ValNome($dados[NO_PESSOA]);
                $up = new Upload();
                $up->UploadImagens($foto, $nome, "usuarios");
                $imagem[DS_CAMINHO] = $up->getNameImage();
            endif;

            $usu[DS_CODE] = base64_encode(base64_encode($dados[DS_SENHA]));
            $usu[DS_SENHA] = trim($dados[DS_SENHA]);
            if (!empty($dados[ST_STATUS])):
                $usu[ST_STATUS] = "A";
            else:
                if (in_array(1, $meusPerfis) || in_array(2, $meusPerfis)):
                    $usu[ST_STATUS] = "I";
                endif;
            endif;

            $PDO->beginTransaction();
            if ($idCoUsuario):
                /** @var UsuarioEntidade $usuario */
                $usuario = $usuarioService->PesquisaUmRegistro($idCoUsuario);

                if ($usuario->getCoImagem()->getDsCaminho()):
                    if (is_file(Upload::$BaseDir . "usuarios/" . $usuario->getCoImagem()->getDsCaminho())):
                        unlink(Upload::$BaseDir . "usuarios/" . $usuario->getCoImagem()->getDsCaminho());
                    endif;
                endif;

                if ($imagem[DS_CAMINHO]):
                    $imagemService->Salva($imagem, $usuario->getCoImagem()->getCoImagem());
                endif;
                $contatoService->Salva($contato, $usuario->getCoPessoa()->getCoContato()->getCoContato());
                $enderecoService->Salva($endereco, $usuario->getCoPessoa()->getCoEndereco()->getCoEndereco());
                $pessoaService->Salva($pessoa, $usuario->getCoPessoa()->getCoPessoa());
                $retorno = $usuarioService->Salva($usu, $idCoUsuario);
                $usuarioPerfil[CO_USUARIO] = $idCoUsuario;
                $ok = $usuarioPerfilService->DeletaQuando($usuarioPerfil);
                if ($ok):
                    if (!empty($dados['ds_perfil'])) {
                        foreach ($dados['ds_perfil'] as $perfil) {
                            $usuarioPerfil[CO_PERFIL] = $perfil;
                            $usuarioPerfilService->Salva($usuarioPerfil);
                        }
                    }
                    $usuarioPerfil[CO_PERFIL] = 3;
                    $retorno = $usuarioPerfilService->Salva($usuarioPerfil);
                endif;

                $session->setSession(ATUALIZADO, "OK");
            else:
                $pessoa[DT_CADASTRO] = Valida::DataAtualBanco();
                $usu[DT_CADASTRO] = Valida::DataAtualBanco();

                $pessoa[CO_ENDERECO] = $enderecoService->Salva($endereco);
                $pessoa[CO_CONTATO] = $contatoService->Salva($contato);
                $usu[CO_IMAGEM] = $imagemService->Salva($imagem);
                $usu[CO_PESSOA] = $pessoaService->Salva($pessoa);
                $usuarioPerfil[CO_USUARIO] = $usuarioService->Salva($usu);

                // REGISTRAR ///
                if (!$resgistrar):
                    if (!empty($dados['ds_perfil'])) {
                        foreach ($dados['ds_perfil'] as $perfil) {
                            $usuarioPerfil[CO_PERFIL] = $perfil;
                            $usuarioPerfilService->Salva($usuarioPerfil);
                        }
                    }
                endif;
                $usuarioPerfil[CO_PERFIL] = 3;
                $retorno = $usuarioPerfilService->Salva($usuarioPerfil);
            endif;
            if ($retorno) {
                $PDO->commit();
            } else {
                $retorno[MSG] = 'Não foi possível Salvar o Usuário';
                $PDO->rollBack();
            }

            if (!$resgistrar) {
                if (in_array(1, $meusPerfis) || in_array(2, $meusPerfis)) {
                    Redireciona(UrlAmigavel::$modulo.'/'.UrlAmigavel::$controller.'/ListarUsuario/');
                } else {
                    Redireciona(UrlAmigavel::$modulo.'/Index/Index/');
                }
            }else{
                Redireciona('admin/Index/Acessar/'.Valida::GeraParametro('acesso/C'));
            }
        endif;
    }

}