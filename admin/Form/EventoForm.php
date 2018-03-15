<?php

class EventoForm extends AbstractController
{

    public static function Cadastrar($res)
    {
        $id = "CadastroEvento";

        /** @var Form $formulario */
        $formulario = new Form($id, ADMIN . "/" . UrlAmigavel::$controller
            . "/" . UrlAmigavel::$action, 'Cadastrar', 12);
        if ($res):
            $formulario->setValor($res);
        endif;

        $formulario
            ->setId("no_evento")
            ->setClasses("ob")
            ->setLabel("Título do Evento")
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


//        if ($co_evento):
//            $formulario
//                ->setType("hidden")
//                ->setId("co_evento")
//                ->setValues($co_evento)
//                ->CriaInpunt();
//        endif;


       return $formulario->finalizaForm();
    }

    public static function Pesquisar()
    {
        $id = "pesquisaUsuario";

        $formulario = new Form($id, "admin/Usuario/ListarUsuario", "Pesquisa", 12);

        $formulario
            ->setId(NO_PESSOA)
            ->setIcon("clip-user-6")
            ->setLabel("Nome do Usuario")
            ->setInfo("Pode ser Parte do nome")
            ->CriaInpunt();

        $formulario
            ->setId(NU_CPF)
            ->setClasses("cpf")
            ->setTamanhoInput(6)
            ->setLabel("CPF")
            ->CriaInpunt();

        return $formulario->finalizaFormPesquisaAvancada();
    }
}

?>
   