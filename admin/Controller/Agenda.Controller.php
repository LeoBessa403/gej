<?php

class Agenda extends AbstractController
{
    public $result;
    public $resultAlt;
    public $form;
    public $categoriaAgenda;

    public function Calendario()
    {
        $categorias = CategoriaAgendaEnum::$descricao;
        $cores = CategoriaAgendaEnum::$cor;
        foreach ($categorias as $index => $categoria) {
            $this->categoriaAgenda[$cores[$index]] = $categoria;
        }
    }

    // AÇÃO DE EXPORTAÇÃO
    public function ExportarCalendario()
    {
        /** @var AgendaService $agendaService */
        $agendaService = $this->getService(AGENDA_SERVICE);
        $agendas = $agendaService->PesquisaTodos();

        $formato = UrlAmigavel::PegaParametro("formato");
        $i = 0;
        $perfis = [];
        /** @var AgendaEntidade $agenda */
        foreach ($agendas as $agenda) {
            /** @var PerfilAgendaEntidade $perfilAgenda */
            foreach ($agenda->getCoPerfilAgenda() as $perfilAgenda) {
                $perfis[] = $perfilAgenda->getCoPerfil()->getNoPerfil();
            }

            $dados[$i][DS_TITULO] = $agenda->getDsTitulo();
            $dados[$i][NO_CATEGORIA_AGENDA] = $agenda->getCoCategoriaAgenda()->getNoCategoriaAgenda();
            $dados[$i][CO_PERFIL_AGENDA] = implode(", ", $perfis);
            $dados[$i][DT_INICIO] = Valida::DataShow($agenda->getDtInicio(),'d/m/Y H:m');
            $dados[$i][DT_FIM] =  (!empty($agenda->getDtFim()))
                ? Valida::DataShow($agenda->getDtFim(),'d/m/Y H:m') : '';
            $dados[$i][DS_ENDERECO] = $agenda->getCoEndereco()->getDsEndereco();
            $i++;
        }
        $Colunas = array('Eventualidade', 'Categoria', 'Participantes', 'Início', 'Fim', 'Local');
        $this->geraArquivo($formato, $Colunas, $dados);
    }

    private function geraArquivo($formato, $Colunas, $dados)
    {
        $exporta = new Exportacao($formato);
        $exporta->setPapelOrientacao("paisagem");
        $exporta->setColunas($Colunas);
        $exporta->setConteudo($dados);
        $exporta->GeraArquivo();
    }

    public function CadastroAgenda()
    {
        /** @var AgendaService $agendaService */
        $agendaService = $this->getService(AGENDA_SERVICE);

        if (!empty($_POST['cadastroCompromisso'])):
            $retorno = $agendaService->SalvaAgenda($_POST, $_FILES);
            if ($retorno[SUCESSO]) {
                Redireciona(UrlAmigavel::$modulo . '/' . UrlAmigavel::$controller . '/Calendario/');
            }
        endif;

        $res["hr_inicio"] = UrlAmigavel::PegaParametro("hr");
        $res[DT_INICIO] = UrlAmigavel::PegaParametro("dt");
        $coAgenda = UrlAmigavel::PegaParametro(CO_AGENDA);
        if ($coAgenda) {
            /** @var AgendaEntidade $agenda */
            $agenda = $agendaService->PesquisaUmRegistro($coAgenda);
            $perfis = [];
            /** @var PerfilAgendaEntidade $perfilAgenda */
            foreach ($agenda->getCoPerfilAgenda() as $perfilAgenda) {
                $perfis[] = $perfilAgenda->getCoPerfil()->getCoPerfil();
            }
            $agendaEdicao[CO_PERFIL] = $perfis;
            $agendaEdicao[DT_INICIO] = Valida::DataShow($agenda->getDtInicio());
            $agendaEdicao['hr_inicio'] = Valida::DataShow($agenda->getDtInicio(), 'H:i');

            if ($agenda->getDtFim()):
                $agendaEdicao[DT_FIM] = Valida::DataShow($agenda->getDtFim());
                $agendaEdicao['hr_fim'] = Valida::DataShow($agenda->getDtFim(), 'H:i');
            else:
                $agendaEdicao[DT_FIM] = null;
                $agendaEdicao['hr_fim'] = null;
            endif;
            $agendaEdicao[DS_TITULO] = $agenda->getDsTitulo();
            $agendaEdicao[CO_EVENTO] = ($agenda->getCoAgendaEvento())
                ? $agenda->getCoAgendaEvento()->getCoEvento()->getCoEvento() : null;
            $agendaEdicao[CO_CATEGORIA_AGENDA] = $agenda->getCoCategoriaAgenda()->getCoCategoriaAgenda();
            $agendaEdicao[CO_CATEGORIA_EVENTO] = ($agenda->getCoEvento())
                ? $agenda->getCoEvento()->getCoCategoriaEvento()->getCoCategoriaEvento() : null;
            $agendaEdicao[DS_DESCRICAO] = $agenda->getDsDescricao();
            $agendaEdicao[CO_AGENDA] = $agenda->getCoAgenda();
            $agendaEdicao[CO_ENDERECO] = $agenda->getCoEndereco()->getCoEndereco();
            $agendaEdicao[CO_IMAGEM] = ($agenda->getCoEvento())
                ? $agenda->getCoEvento()->getCoImagem()->getDsCaminho() : null;

            /** @var EnderecoService $enderecoService */
            $enderecoService = $this->getService(ENDERECO_SERVICE);
            $agendaEdicao = $enderecoService->getArrayDadosEndereco($agenda->getCoEndereco(), $agendaEdicao);

            $res = $agendaEdicao;
        }

        $this->form = AgendaForm::Cadastrar($res);
    }

}

?>
   