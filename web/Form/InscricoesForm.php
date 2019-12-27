<?php

class InscricoesForm
{

    public static function Cadastrar($res = false, $id = false, $link = null)
    {
        if (!$id):
            $id = "CadastroRetiro";
        endif;
        $action = UrlAmigavel::$modulo . "/" . UrlAmigavel::$controller . "/" . UrlAmigavel::$action;
        if(!$link)
        $link = UrlAmigavel::$controller . "/" . UrlAmigavel::$action;

        $formulario = new Form($id, $action);
        if ($res) {
            $res['cpf'] = $res[NU_CPF];
            $formulario->setValor($res);
        }
        if ($res && UrlAmigavel::$modulo == ADMIN):
            $label_options = array("Sim", "Não", "verde", "vermelho");
            $formulario
                ->setLabel("Servo?")
                ->setId(ST_EQUIPE_TRABALHO)
                ->setType("checkbox")
                ->setClasses($res[ST_EQUIPE_TRABALHO])
                ->setTamanhoInput(12)
                ->setOptions($label_options)
                ->CriaInpunt();
        endif;


        $label_options = array("Sim", "Não", "verde", "vermelho");
        $formulario
            ->setLabel("Membro do Grupo GEJ?")
            ->setId(DS_MEMBRO_ATIVO)
            ->setType("checkbox")
            ->setClasses($res[DS_MEMBRO_ATIVO])
            ->setTamanhoInput(12)
            ->setOptions($label_options)
            ->CriaInpunt();

        $formulario
            ->setId('cpf')
            ->setClasses("cpf disabilita")
            ->setTamanhoInput(6)
            ->setLabel("CPF")
            ->CriaInpunt();

        $formulario
            ->setType("hidden")
            ->setId(NU_CPF)
            ->setValues($res[NU_CPF])
            ->CriaInpunt();

        $formulario
            ->setId(NU_RG)
            ->setTamanhoInput(6)
            ->setClasses("numero")
            ->setLabel("RG")
            ->CriaInpunt();

        $formulario
            ->setId(NO_PESSOA)
            ->setClasses("ob nome")
            ->setInfo("O Nome deve ser Completo Mínimo de 10 Caracteres")
            ->setLabel("Nome Completo")
            ->setTamanhoInput(12)
            ->CriaInpunt();


        $label_options = array("" => "Selecione um", "M" => "Masculino", "F" => "Feminino");
        $formulario
            ->setLabel("Sexo")
            ->setId(ST_SEXO)
            ->setClasses("ob")
            ->setType("select")
            ->setTamanhoInput(6)
            ->setOptions($label_options)
            ->CriaInpunt();

        $formulario
            ->setId(DT_NASCIMENTO)
            ->setIcon("clip-calendar-3")
            ->setTamanhoInput(6)
            ->setClasses("data ob")
            ->setLabel("Nascimento")
            ->CriaInpunt();

        $formulario
            ->setId(NU_TEL1)
            ->setTamanhoInput(6)
            ->setIcon("fa fa-mobile-phone")
            ->setLabel("Telefone Celular")
            ->setInfo("Com <i class='fa fa-whatsapp' style='color: green;'></i> WhatSapp")
            ->setClasses("tel ob")
            ->CriaInpunt();

        $formulario
            ->setId(NU_TEL2)
            ->setTamanhoInput(6)
            ->setIcon("fa fa-mobile-phone")
            ->setLabel("Telefone Celular 2")
            ->setClasses("tel")
            ->CriaInpunt();

        $formulario
            ->setId(NU_CEP)
            ->setLabel("CEP")
            ->setClasses("cep")
            ->CriaInpunt();

        $formulario
            ->setId(DS_ENDERECO)
            ->setIcon("clip-home-2")
            ->setTamanhoInput(12)
            ->setClasses("ob")
            ->setLabel("Endereço")
            ->CriaInpunt();

        $formulario
            ->setId(DS_COMPLEMENTO)
            ->setLabel("Complemento")
            ->setTamanhoInput(12)
            ->CriaInpunt();

        $formulario
            ->setId(DS_BAIRRO)
            ->setLabel("Bairro")
            ->setTamanhoInput(12)
            ->CriaInpunt();

        $formulario
            ->setId(NO_CIDADE)
            ->setLabel("Cidade")
            ->setTamanhoInput(12)
            ->CriaInpunt();

        $options = EnderecoService::montaComboEstadosDescricao();
        $formulario
            ->setTamanhoInput(12)
            ->setId(SG_UF)
            ->setType("select")
            ->setLabel("Estado")
            ->setOptions($options)
            ->CriaInpunt();

        $opticoes_camisa = CamisaService::montaComboTamanhoCamisas();
        $formulario
            ->setId(NU_CAMISA)
            ->setType("select")
            ->setTamanhoInput(12)
            ->setClasses("ob")
            ->setOptions($opticoes_camisa)
            ->setLabel("Tamanho da Camisa")
            ->CriaInpunt();

        $formulario
            ->setId(NO_RESPONSAVEL)
            ->setTamanhoInput(6)
            ->setClasses("ob nome")
            ->setLabel("Pessoa de Referência")
            ->setInfo("Para caso de EMERGÊNCIA")
            ->CriaInpunt();

        $formulario
            ->setId(NU_TEL_RESPONSAVEL)
            ->setTamanhoInput(6)
            ->setIcon("clip-phone-2")
            ->setClasses("tel ob")
            ->setLabel("Tel. Referência")
            ->CriaInpunt();

        $formulario
            ->setId(DS_EMAIL)
            ->setIcon("fa-envelope fa")
            ->setClasses("email ob")
            ->setLabel("Email")
            ->setTamanhoInput(12)
            ->CriaInpunt();

        $formulario
            ->setId(DS_CAMINHO)
            ->setType("singlefile")
            ->setInfo("Para a identificação")
            ->setTamanhoInput(12)
//            ->setClasses("ob")
            ->setLabel("Foto de Perfil (Selfie)")
            ->CriaInpunt();

        $label_options = array("Sim", "Não", "verde", "vermelho");
        $formulario
            ->setLabel("Participou de algum Retiro Querigmáico (Primeiro Amor)? ")
            ->setTamanhoInput(12)
            ->setId(DS_RETIRO)
            ->setClasses($res[DS_RETIRO])
            ->setType("checkbox")
            ->setOptions($label_options)
            ->CriaInpunt();

        $label_options = array("Sim", "Não", "verde", "vermelho");
        $formulario
            ->setLabel("Participa de alguma Pastoral / Grupo Jovem?")
            ->setId("ds_pastoral_ativo")
            ->setClasses($res["ds_pastoral_ativo"])
            ->setTamanhoInput(12)
            ->setType("checkbox")
            ->setOptions($label_options)
            ->CriaInpunt();

        $formulario
            ->setLabel("Qual Pastoral/ Grupo? E a quanto Tempo?")
            ->setTamanhoInput(12)
            ->setId(DS_PASTORAL)
            ->CriaInpunt();

        $formulario
            ->setId(DS_DESCRICAO)
            ->setLabel("Fale um pouco sobre você")
            ->setType("textarea")
            ->setTamanhoInput(12)
//            ->setClasses("ob")
            ->CriaInpunt();

        $formulario
            ->setId(DS_MEDICACAO)
            ->setLabel("Uso de Medicação?")
            ->setType("textarea")
            ->setTamanhoInput(12)
            ->setInfo("Descreva se faz uso de alguma medicação e como utiliza.")
            ->CriaInpunt();

        $formulario
            ->setId(DS_ALIMENTACAO)
            ->setLabel("Restrição Alimentar?")
            ->setType("textarea")
            ->setTamanhoInput(12)
            ->setInfo("Descreva se tiver alguma restrição alimentar.")
            ->CriaInpunt();

        if (!empty($res[CO_INSCRICAO])):
            $formulario
                ->setType("hidden")
                ->setId(CO_INSCRICAO)
                ->setValues($res[CO_INSCRICAO])
                ->CriaInpunt();
        endif;

        if (!empty($res[CO_ENDERECO])):
            $formulario
                ->setType("hidden")
                ->setId(CO_ENDERECO)
                ->setValues($res[CO_ENDERECO])
                ->CriaInpunt();
        endif;

        if (!empty($res[CO_CONTATO])):
            $formulario
                ->setType("hidden")
                ->setId(CO_CONTATO)
                ->setValues($res[CO_CONTATO])
                ->CriaInpunt();
        endif;

        if (!empty($res[CO_IMAGEM])):
            $formulario
                ->setType("hidden")
                ->setId(CO_IMAGEM)
                ->setValues($res[CO_IMAGEM])
                ->CriaInpunt();
        endif;

        if (!empty($res[CO_PESSOA])):
            $formulario
                ->setType("hidden")
                ->setId(CO_PESSOA)
                ->setValues($res[CO_PESSOA])
                ->CriaInpunt();
        endif;


        return $formulario->finalizaForm($link);
    }


    public static function ValidarInscricao()
    {
        $id = "ValidacaoInscricao";

        /** @var Form $formulario */
        $formulario = new Form($id, UrlAmigavel::$modulo . "/" . UrlAmigavel::$controller
            . "/" . UrlAmigavel::$action, 'Ver Inscrição', 6);

        $formulario
            ->setId(NU_CPF)
            ->setClasses("cpf ob")
            ->setInfo("Verificação de Inscrição já existentes")
            ->setTamanhoInput(12)
            ->setLabel("CPF")
            ->CriaInpunt();

        return $formulario->finalizaForm();
    }
}

?>
   