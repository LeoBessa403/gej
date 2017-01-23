<?php

class MembroWebForm
{

    public static function Cadastrar($CoInscricao = false, $res = false, $id = false)
    {
        if (!$id):
            $id = "CadastroRetiroCarnaval";
        endif;
        $action = UrlAmigavel::$modulo . "/" . UrlAmigavel::$controller . "/" . UrlAmigavel::$action;

        $formulario = new Form($id, $action);
        if ($res):
            $formulario->setValor($res);

            $label_options = array("1" => "1", "2" => "2", "3" => "3");
            $formulario
                ->setLabel("Números de Parcelas")
                ->setId(Constantes::NU_PARCELAS)
                ->setType("select")
                ->setTamanhoInput(12)
                ->setOptions($label_options)
                ->CriaInpunt();

            $label_options = array("Sim", "Não", "verde", "vermelho");
            $formulario
                ->setLabel("Servo?")
                ->setId(Constantes::ST_EQUIPE_TRABALHO)
                ->setType("checkbox")
                ->setClasses($res[Constantes::ST_EQUIPE_TRABALHO])
                ->setTamanhoInput(6)
                ->setOptions($label_options)
                ->CriaInpunt();

        endif;


        $label_options = array("Sim", "Não", "verde", "vermelho");
        $formulario
            ->setLabel("Membro do Grupo GEJ?")
            ->setId(Constantes::DS_MEMBRO_ATIVO)
            ->setType("checkbox")
            ->setClasses($res[Constantes::DS_MEMBRO_ATIVO])
            ->setTamanhoInput(6)
            ->setOptions($label_options)
            ->CriaInpunt();

        $formulario
            ->setId(Constantes::NO_PESSOA)
            ->setClasses("ob nome")
            ->setInfo("O Nome deve ser Completo Mínimo de 10 Caracteres")
            ->setLabel("Nome Completo")
            ->setTamanhoInput(12)
            ->CriaInpunt();

        $formulario
            ->setId(Constantes::NU_CPF)
            ->setClasses("cpf ob")
            ->setTamanhoInput(6)
            ->setLabel("CPF")
            ->CriaInpunt();

        $formulario
            ->setId(Constantes::NU_RG)
            ->setTamanhoInput(6)
            ->setClasses("numero")
            ->setLabel("RG")
            ->CriaInpunt();

        $label_options = array("" => "Selecione um", "M" => "Masculino", "F" => "Feminino");
        $formulario
            ->setLabel("Sexo")
            ->setId(Constantes::ST_SEXO)
            ->setClasses("ob")
            ->setType("select")
            ->setTamanhoInput(6)
            ->setOptions($label_options)
            ->CriaInpunt();

        $formulario
            ->setId(Constantes::DT_NASCIMENTO)
            ->setIcon("clip-calendar-3")
            ->setTamanhoInput(6)
            ->setClasses("data ob")
            ->setInfo("Para maiores de 14 anos")
            ->setLabel("Nascimento")
            ->CriaInpunt();

        $formulario
            ->setId(Constantes::NU_TEL1)
            ->setTamanhoInput(6)
            ->setIcon("fa fa-mobile-phone")
            ->setLabel("Telefone Celular")
            ->setInfo("Com o Whatsapp")
            ->setClasses("tel ob")
            ->CriaInpunt();

        $formulario
            ->setId(Constantes::NU_TEL2)
            ->setTamanhoInput(6)
            ->setIcon("fa fa-mobile-phone")
            ->setLabel("Telefone Celular 2")
            ->setClasses("tel")
            ->CriaInpunt();

        $formulario
            ->setId(Constantes::DS_ENDERECO)
            ->setIcon("clip-home-2")
            ->setTamanhoInput(12)
            ->setClasses("ob")
            ->setLabel("Endereço")
            ->CriaInpunt();

        $formulario
            ->setId(Constantes::DS_COMPLEMENTO)
            ->setLabel("Complemento")
            ->setTamanhoInput(12)
            ->CriaInpunt();

        $formulario
            ->setId(Constantes::DS_BAIRRO)
            ->setLabel("Bairro")
            ->setTamanhoInput(12)
            ->CriaInpunt();

        $formulario
            ->setId(Constantes::NO_CIDADE)
            ->setLabel("Cidade")
            ->setTamanhoInput(12)
            ->CriaInpunt();

        $formulario
            ->setId(Constantes::NU_CEP)
            ->setLabel("CEP")
            ->setTamanhoInput(4)
            ->setClasses("cep")
            ->CriaInpunt();

        $options = Endereco::montaComboEstadosDescricao();
        $formulario
            ->setTamanhoInput(8)
            ->setId(Constantes::SG_UF)
            ->setType("select")
            ->setLabel("Estado")
            ->setOptions($options)
            ->CriaInpunt();

        $label_options = array("Sim", "Não", "verde", "vermelho");
        $formulario
            ->setLabel("Participou de algum Retiro?")
            ->setTamanhoInput(5)
            ->setId(Constantes::DS_RETIRO)
            ->setClasses($res[Constantes::DS_RETIRO])
            ->setType("checkbox")
            ->setOptions($label_options)
            ->CriaInpunt();

        $label_options = array("Sim", "Não", "verde", "vermelho");
        $formulario
            ->setLabel("Participa de alguma Pastoral?")
            ->setId("ds_pastoral_ativo")
            ->setClasses($res["ds_pastoral_ativo"])
            ->setTamanhoInput(7)
            ->setType("checkbox")
            ->setOptions($label_options)
            ->CriaInpunt();

        $formulario
            ->setLabel("Qual Pastoral?")
            ->setTamanhoInput(12)
            ->setId(Constantes::DS_PASTORAL)
            ->CriaInpunt();

        $opticoes_camisa = MembroWeb::montaComboCamisas();

        $formulario
            ->setId(Constantes::NU_CAMISA)
            ->setType("select")
            ->setTamanhoInput(12)
            ->setClasses("ob")
            ->setOptions($opticoes_camisa)
            ->setLabel("Tamanho da Camisa")
            ->CriaInpunt();

        $formulario
            ->setId(Constantes::NO_RESPONSAVEL)
            ->setTamanhoInput(6)
            ->setClasses("ob nome")
            ->setLabel("Pessoa de Referência")
            ->setInfo("Para caso de EMERGÊNCIA")
            ->CriaInpunt();

        $formulario
            ->setId(Constantes::NU_TEL_RESPONSAVEL)
            ->setTamanhoInput(6)
            ->setIcon("clip-phone-2")
            ->setClasses("tel ob")
            ->setLabel("Tel. Referência")
            ->CriaInpunt();

        $formulario
            ->setId(Constantes::DS_EMAIL)
            ->setIcon("fa-envelope fa")
            ->setClasses("email ob")
            ->setLabel("Email")
            ->setTamanhoInput(12)
            ->CriaInpunt();

        if ($CoInscricao) {
            $formulario
                ->setType("hidden")
                ->setId(Constantes::CO_INSCRICAO)
                ->setValues($CoInscricao)
                ->CriaInpunt();
        }

        return $formulario->finalizaForm();
    }
}

?>
   