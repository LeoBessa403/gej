<?php

class Evento extends AbstractController
{
    public $result;
    public $resultAlt;
    public $form;

    function ListarEvento()
    {
        /** @var EventoService $eventoService */
        $eventoService = $this->getService(EVENTO_SERVICE);
        $this->result = $eventoService->PesquisaTodos();
    }


    function CadastroEvento()
    {
        $id = "cadastroEvento";
        /** @var EventoService $eventoService */
        $eventoService = $this->getService(EVENTO_SERVICE);

        if (!empty($_POST[$id])):
            $retorno = $eventoService->salvarEvento($_POST, $_FILES[CO_IMAGEM], $_FILES[CO_IMAGEM_EVENTO]);
            debug($retorno);
        endif;

        $co_evento = UrlAmigavel::PegaParametro("mem");
//        $res = array();
//        if($co_evento):
//            $res = EventosModel::PesquisaUmMembro($co_evento);
//            $res = $res[0];
//        endif;

        $formulario = new Form($id, "admin/Evento/CadastroEvento");
//        $formulario->setValor($res);


        $formulario
            ->setId("no_evento")
            ->setClasses("ob")
            ->setLabel("Título")
            ->CriaInpunt();

        $formulario
            ->setId("ds_palavras_chaves")
            ->setClasses("ob")
            ->setTamanhoInput(9)
            ->setInfo("Separados por Vírgula. Ex: teste, teste 2")
            ->setLabel("Palavras Chaves")
            ->CriaInpunt();

        $formulario
            ->setId("dt_realizado")
            ->setIcon("clip-calendar-3")
            ->setTamanhoInput(3)
            ->setClasses("data ob")
            ->setLabel("Data")
            ->CriaInpunt();


        $formulario
            ->setId("ds_local")
            ->setLabel("Local:")
            ->CriaInpunt();

        $formulario
            ->setId("co_foto_capa")
            ->setLabel("Capa do Evento")
            ->setType("singlefile")
            ->setInfo("Imagem Principal do Evento")
            ->CriaInpunt();


        $formulario
            ->setId("ds_conteudo")
            ->setLabel("Conteúdo")
            ->setType("textarea")
            ->setClasses("ckeditor")
            ->CriaInpunt();

        $formulario
            ->setId("fotos")
            ->setLabel("Galeria de Fotos do Evento")
            ->setType("file")
            ->setLimite(30)
            ->setClasses("multipla")
            ->setInfo("No máximo de 30 Fotos")
            ->CriaInpunt();


        if ($co_evento):
            $formulario
                ->setType("hidden")
                ->setId("co_evento")
                ->setValues($co_evento)
                ->CriaInpunt();
        endif;


        $this->form = $formulario->finalizaForm();

    }


}

?>
   