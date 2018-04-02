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
            $dt_ini = explode(" ", $agenda->getDtInicio());
            $agendaEdicao[DT_INICIO] = implode("/", array_reverse(explode("-", $dt_ini[0])));
            $dt_ini = explode(":", $dt_ini[1]);
            $agendaEdicao['hr_inicio'] = $dt_ini[0] . ":" . $dt_ini[1];

            if ($agenda->getDtFim()):
                $dt_fim = explode(" ", $agenda->getDtFim());
                $agendaEdicao[DT_FIM] = implode("/", array_reverse(explode("-", $dt_fim[0])));
                $dt_fim = explode(":", $dt_fim[1]);
                $agendaEdicao['hr_fim'] = $dt_fim[0] . ":" . $dt_fim[1];
            else:
                $agendaEdicao[DT_FIM] = null;
                $agendaEdicao['hr_fim'] = null;
            endif;
            $agendaEdicao[DS_TITULO] = $agenda->getDsTitulo();
            $agendaEdicao[CO_EVENTO] = (!empty($agenda->getCoEvento())) ? $agenda->getCoEvento()->getCoEvento() : null;
            $agendaEdicao[CO_CATEGORIA_AGENDA] = $agenda->getCoCategoriaAgenda()->getCoCategoriaAgenda();
            $agendaEdicao[NO_CATEGORIA_AGENDA] = $agenda->getCoCategoriaAgenda()->getNoCategoriaAgenda();
            $agendaEdicao[DS_DESCRICAO] = $agenda->getDsDescricao();
            $agendaEdicao[CO_AGENDA] = $agenda->getCoAgenda();
            $agendaEdicao[CO_ENDERECO] = $agenda->getCoEndereco()->getCoEndereco();

            $agendaEdicao[DS_ENDERECO] = $agenda->getCoEndereco()->getDsEndereco();
            $agendaEdicao[DS_COMPLEMENTO] = $agenda->getCoEndereco()->getDsComplemento();
            $agendaEdicao[DS_BAIRRO] = $agenda->getCoEndereco()->getDsBairro();
            $agendaEdicao[NO_CIDADE] = $agenda->getCoEndereco()->getNoCidade();
            $agendaEdicao[NU_CEP] = $agenda->getCoEndereco()->getNuCep();
            $agendaEdicao[SG_UF] = $agenda->getCoEndereco()->getSgUf();

            $res = $agendaEdicao;
        }


        $this->form = AgendaForm::Cadastrar($res);
    }

}

?>
   