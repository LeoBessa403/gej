<?php
          
class Membros extends AbstractController
{
    
    public $result;
    public $resultAlt;
    public $form;
            
    function Index(){
    }
    
    function CadastroMembros(){
       
        $id = "cadastroMembro";
        
        if(!empty($_POST[$id])):
             if(Valida::ValPerfil("EditarMembros")):
                $dados = $_POST; 
                $dados['dt_cadastro']   = Valida::DataAtualBanco();
                $dados['dt_nascimento'] = explode(' ', Valida::DataDB($dados['dt_nascimento'])); 
                $dados['dt_nascimento'] = $dados['dt_nascimento'][0]; 
                $dados['st_trabalha']   = FuncoesSistema::retornoCheckbox((isset($dados['st_trabalha'])) ? $dados['st_trabalha'] : null); 
                $dados['st_estuda']     = FuncoesSistema::retornoCheckbox((isset($dados['st_estuda'])) ? $dados['st_estuda'] : null); 
                $dados['st_batizado']   = FuncoesSistema::retornoCheckbox((isset($dados['st_batizado'])) ? $dados['st_batizado'] : null); 
                $dados['st_eucaristia'] = FuncoesSistema::retornoCheckbox((isset($dados['st_eucaristia'])) ? $dados['st_eucaristia'] : null); 
                $dados['st_crisma']     = FuncoesSistema::retornoCheckbox((isset($dados['st_crisma'])) ? $dados['st_crisma'] : null); 
                $dados['st_status']     = "N"; 
                $dados['no_membro']     = trim($dados['no_membro']);

//                debug($dados,1);
                
                $pesquisa['dt_nascimento'] = $dados['dt_nascimento'];
                $pesquisa['no_membro']     = $dados['no_membro'];

                $membro = CadastroModel::PesquisaMembroJaCadastrado($pesquisa);

                if($membro):
                    $this->resultAlt = true;
                else:
                    $session = new Session();
                    $idMembro = $dados["co_membro"];
                    unset($dados[$id],$dados["co_membro"]);                     
                    $ok = MembrosModel::AtualizaMembros($dados,$idMembro);
                    if($ok):
                         $session->setSession(ATUALIZADO, "OK");
                    endif;
                endif;
                $this->ListarMembros();
                UrlAmigavel::$action = "ListarMembros";
            endif;          
        endif;  
        
        $idMembro = UrlAmigavel::PegaParametro("memb");
        $res = array();
        if($idMembro && Valida::ValPerfil("EditarMembros")):
            $res = MembrosModel::PesquisaUmMembro($idMembro);
            $res = $res[0];
            $res["dt_nascimento"] = Valida::DataShow($res["dt_nascimento"],"d/m/Y"); 
        endif;   
        
        $formulario = new Form($id, "admin/Membros/CadastroMembros");
        $formulario->setValor($res);
        
        $formulario
            ->setId("no_membro")
            ->setIcon("clip-user-6") 
            ->setClasses("ob nome")
            ->setInfo("O Nome deve ser Completo Mínimo de 10 Caracteres")
            ->setLabel("Nome Completo")
            ->CriaInpunt();
      
        $formulario
            ->setId("ds_endereco")
            ->setClasses("ob")
            ->setLabel("Endereço")
            ->CriaInpunt();
      
        $formulario
            ->setId("ds_bairro")
            ->setLabel("Bairro")
            ->CriaInpunt();
      
        $formulario
            ->setId("nu_tel1")
            ->setTamanhoInput(6)
            ->setClasses("tel ob")
            ->setIcon("fa-mobile fa")    
            ->setLabel("Telefone Celular 1")
            ->CriaInpunt();
      
        $formulario
            ->setId("nu_tel2")
            ->setTamanhoInput(6)
            ->setIcon("clip-phone-2")
            ->setClasses("tel")
            ->setLabel("Telefone Celular 2")
            ->CriaInpunt();
      
        $formulario
            ->setId("nu_tel3")
            ->setTamanhoInput(6)
            ->setIcon("clip-phone-hang-up")
            ->setClasses("tel")
            ->setLabel("Telefone Residencial")
            ->CriaInpunt();
        
        $formulario
            ->setId("dt_nascimento")
            ->setIcon("clip-calendar-3")
            ->setTamanhoInput(6)
            ->setClasses("data ob")
            ->setLabel("Nascimento")
            ->CriaInpunt();
      
      
        $formulario
            ->setId("no_responsavel") 
            ->setClasses("nome")
            ->setLabel("Nome do Respónsavel")
            ->CriaInpunt();
      
        $formulario
            ->setId("ds_email")
            ->setIcon("fa-envelope fa")
            ->setClasses("email")
            ->setLabel("Email")
            ->CriaInpunt();
        
        $checked = "";
        if(!empty($res)):
            if($res['st_trabalha'] == "S"):
                $checked = "checked";
            endif;
        endif;
        
        $label_options = array("Sim","Não","azul","verde");
        $formulario
            ->setLabel("Trabalha?")
            ->setClasses($checked)
            ->setTamanhoInput(6)
            ->setId("st_trabalha")
            ->setType("checkbox")
            ->setOptions($label_options)
            ->CriaInpunt();  
        
        $checked = "";
        if(!empty($res)):
            if($res['st_estuda'] == "S"):
                $checked = "checked";
            endif;
        endif;
        
        $label_options = array("Sim","Não","azul","verde");
        $formulario
            ->setLabel("Estuda?")
            ->setClasses($checked)
            ->setTamanhoInput(6)
            ->setId("st_estuda")
            ->setType("checkbox")
            ->setOptions($label_options)
            ->CriaInpunt();
        
        $checked = "";
        if(!empty($res)):
            if($res['st_batizado'] == "S"):
                $checked = "checked";
            endif;
        endif;
        
        $label_options = array("Sim","Não","azul","verde");
        $formulario
            ->setLabel("Batizado?")
            ->setClasses($checked)
            ->setTamanhoInput(4)
            ->setId("st_batizado")
            ->setType("checkbox")
            ->setOptions($label_options)
            ->CriaInpunt();
        
        $checked = "";
        if(!empty($res)):
            if($res['st_eucaristia'] == "S"):
                $checked = "checked";
            endif;
        endif;
        
        $label_options = array("Sim","Não","azul","verde");
        $formulario
            ->setLabel("Já fiz 1° Comunhão?")
            ->setTamanhoInput(4)
            ->setClasses($checked)
            ->setId("st_eucaristia")
            ->setType("checkbox")
            ->setOptions($label_options)
            ->CriaInpunt(); 
        
        $checked = "";
        if(!empty($res)):
            if($res['st_crisma'] == "S"):
                $checked = "checked";
            endif;
        endif;
        
        $label_options = array("Sim","Não","azul","verde");
        $formulario
            ->setLabel("Crismado?")
            ->setClasses($checked)
            ->setTamanhoInput(4)
            ->setId("st_crisma")
            ->setType("checkbox")
            ->setOptions($label_options)
            ->CriaInpunt(); 

      
        $formulario
            ->setType("textarea")
            ->setId("ds_conhecimento")
            ->setLabel("Como Conheceu o GEJ")
            ->CriaInpunt();
      
              
        if($idMembro):
            $formulario
                ->setType("hidden")
                ->setId("co_membro")
                ->setValues($idMembro)
                ->CriaInpunt();
          endif;
        
        $this->form = $formulario->finalizaForm(); 

    }
    
    function ListarMembros(){     
        $dados = array();
        if(!empty($_POST)):
            $dados = array(
                'st_status' => $_POST['st_status'][0],
                'no_membro' => $_POST['no_membro']
            );
        endif;
        $this->result = MembrosModel::PesquisaMembros($dados);
    }
    
    // AÇÃO DE EXPORTAÇÃO
    function ExportarListarMembros() {
        
        $formato = UrlAmigavel::PegaParametro("formato");
        $result = CategoriaModel::PesquisaCategoria();
        $i = 0;
        foreach ($result as $value) {
            $res[$i]['id_categoria'] = $value['id_categoria'];
            $res[$i]['nome'] = $value['nome'];
            $i++;
        }
        $Colunas = array('Código','Categoria');
        $exporta = new Exportacao($formato, "Relatório de Categorias");
       // $exporta->setPapelOrientacao("paisagem");
        $exporta->setColunas($Colunas);
        $exporta->setConteudo($res);
        $exporta->GeraArquivo();
       
    }
    
    // AÇÃO DE EXPORTAÇÃO
    function ExportarListarMembrosRetiro() {
        $dados = array();
        $result = MembrosRetiroModel::PesquisaMembrosExportacao();
        
        $formato = UrlAmigavel::PegaParametro("formato");
        $i = 0;
        foreach ($result as $value) {
            $res[$i]['no_membro']           = strtoupper($value['no_membro']);
            $res[$i]['ds_endereco']         = trim($value['ds_endereco']);
            $res[$i]['ds_bairro']           = trim($value['ds_bairro']);
            $res[$i]['no_responsavel']      = trim($value['no_responsavel']);
            $res[$i]['nu_tel_responsavel']  = $value['nu_tel_responsavel'];
            $i++;
        }
        $Colunas = array('Nome','Endereço','Bairro','Referência','Tel. Referência');
        $exporta = new Exportacao($formato, "Membros Retiro Carnaval");
        $exporta->setPapelOrientacao("paisagem");
        $exporta->setColunas($Colunas);
        $exporta->setConteudo($res);
        $exporta->GeraArquivo();
       
    }
    
    function ListarMembrosRetiro(){     
        $dados = array();
        if(!empty($_POST)):
            $dados = array(
                'eve.co_evento' => $_POST['co_evento'][0],
                'st_pagamento' => $_POST['st_pagamento'][0],
                'ds_membro_ativo' => $_POST['ds_membro_ativo'][0], 
                'no_membro' => $_POST['no_membro']
            );
        endif;
        $this->result = MembrosRetiroModel::PesquisaMembros($dados);
    }
    
    function EditarMembro(){
       
        $id = "cadastroMembros";
         
        if(!empty($_POST[$id])):
                       
            $dados = $_POST; 
            $dados['dt_nascimento'] = Valida::DataDB($dados['dt_nascimento']); 
            $dados['st_trabalha']   = FuncoesSistema::retornoCheckbox((isset($dados['st_trabalha'])) ? $dados['st_trabalha'] : null); 
            $dados['st_estuda']     = FuncoesSistema::retornoCheckbox((isset($dados['st_estuda'])) ? $dados['st_estuda'] : null); 
            $dados['st_batizado']   = FuncoesSistema::retornoCheckbox((isset($dados['st_batizado'])) ? $dados['st_batizado'] : null); 
            $dados['st_eucaristia'] = FuncoesSistema::retornoCheckbox((isset($dados['st_eucaristia'])) ? $dados['st_eucaristia'] : null); 
            $dados['st_crisma']     = FuncoesSistema::retornoCheckbox((isset($dados['st_crisma'])) ? $dados['st_crisma'] : null); 
            $dados['st_status']     = "N"; 
            $dados['no_membro']     = trim($dados['no_membro']);
                       
            $co_membro = $dados['co_membro'];
            unset($dados[$id],$dados['co_membro']); 

            $pesquisa['dt_nascimento'] = $dados['dt_nascimento'];
            $pesquisa['no_membro']     = $dados['no_membro'];
            
            $membro = MembrosModel::PesquisaMembroJaCadastrado($pesquisa);
            $session = new Session();
                         
            if(count($membro) > 1):
                $this->resultAlt = true;
            else:
                $idMembro = MembrosModel::AtualizaMembro($dados,$co_membro);
                if($idMembro):
                    $session->setSession(ATUALIZADO, "OK");
                endif;
            endif;
            $this->ListarMembros();
            UrlAmigavel::$action = "ListarMembros";         
                
        endif;  
        
        $co_membro = UrlAmigavel::PegaParametro("mem");
        $res = array();
        if($co_membro):
            $res = MembrosModel::PesquisaUmMembro($co_membro);
            $res = $res[0];
            $res['dt_nascimento'] = Valida::DataShow($res['dt_nascimento'],'d/m/Y');
        endif;
        
        $formulario = new Form($id, "admin/Membros/EditarMembro");
        $formulario->setValor($res);
        
        $checked = "";
        if(!empty($res)):
            if($res['st_status'] == "S"):
                $checked = "checked";
            endif;
        endif;
        
        $label_options = array("Ativo","Inativo","verde","vermelho");
        $formulario
            ->setLabel("Status do Membro")
            ->setClasses($checked)
            ->setId("st_status")
            ->setType("checkbox")
            ->setOptions($label_options)
            ->CriaInpunt(); 
        
        $formulario
            ->setId("no_membro")
            ->setIcon("clip-user-6") 
            ->setClasses("ob nome")
            ->setInfo("O Nome deve ser Completo Mínimo de 10 Caracteres")
            ->setLabel("Nome Completo")
            ->CriaInpunt();
      
        $formulario
            ->setId("ds_endereco")
            ->setClasses("ob")
            ->setLabel("Endereço")
            ->CriaInpunt();
      
        $formulario
            ->setId("ds_bairro")
            ->setLabel("Bairro")
            ->CriaInpunt();
      
        $formulario
            ->setId("nu_tel1")
            ->setTamanhoInput(6)
            ->setClasses("tel ob")
            ->setIcon("fa-mobile fa")    
            ->setLabel("Telefone Celular 1")
            ->CriaInpunt();
      
        $formulario
            ->setId("nu_tel2")
            ->setTamanhoInput(6)
            ->setIcon("clip-phone-2")
            ->setClasses("tel")
            ->setLabel("Telefone Celular 2")
            ->CriaInpunt();
      
        $formulario
            ->setId("nu_tel3")
            ->setTamanhoInput(6)
            ->setIcon("clip-phone-hang-up")
            ->setClasses("tel")
            ->setLabel("Telefone Residencial")
            ->CriaInpunt();
        
        $formulario
            ->setId("dt_nascimento")
            ->setIcon("clip-calendar-3")
            ->setTamanhoInput(6)
            ->setClasses("data ob")
            ->setLabel("Nascimento")
            ->CriaInpunt();
      
      
        $formulario
            ->setId("no_responsavel")
            ->setLabel("Nome do Respónsavel")
            ->CriaInpunt();
      
        $formulario
            ->setId("ds_email")
            ->setIcon("fa-envelope fa")
            ->setClasses("email")
            ->setLabel("Email")
            ->CriaInpunt();
        
        
        $checked = "";
        if(!empty($res)):
            if($res['st_trabalha'] == "S"):
                $checked = "checked";
            endif;
        endif;
        
        $label_options = array("Sim","Não","azul","verde");
        $formulario
            ->setLabel("Trabalha?")
            ->setTamanhoInput(6)
            ->setClasses($checked)
            ->setId("st_trabalha")
            ->setType("checkbox")
            ->setOptions($label_options)
            ->CriaInpunt();
        
        $checked = "";
        if(!empty($res)):
            if($res['st_estuda'] == "S"):
                $checked = "checked";
            endif;
        endif;
        
        $label_options = array("Sim","Não","azul","verde");
        $formulario
            ->setLabel("Estuda?")
            ->setTamanhoInput(6)
            ->setId("st_estuda")
            ->setType("checkbox")
            ->setClasses($checked)
            ->setOptions($label_options)
            ->CriaInpunt();       
        
        
        $checked = "";
        if(!empty($res)):
            if($res['st_batizado'] == "S"):
                $checked = "checked";
            endif;
        endif;
        
        $label_options = array("Sim","Não","azul","verde");
        $formulario
            ->setLabel("Batizado?")
            ->setTamanhoInput(4)
            ->setClasses($checked)
            ->setId("st_batizado")
            ->setType("checkbox")
            ->setOptions($label_options)
            ->CriaInpunt(); 
        
        
        $checked = "";
        if(!empty($res)):
            if($res['st_eucaristia'] == "S"):
                $checked = "checked";
            endif;
        endif;
        
        $label_options = array("Sim","Não","azul","verde");
        $formulario
            ->setLabel("Já fiz 1° Comunhão?")
            ->setTamanhoInput(4)
            ->setClasses($checked)
            ->setId("st_eucaristia")
            ->setType("checkbox")
            ->setOptions($label_options)
            ->CriaInpunt(); 
        
        
        $checked = "";
        if(!empty($res)):
            if($res['st_crisma'] == "S"):
                $checked = "checked";
            endif;
        endif;
        
        $label_options = array("Sim","Não","azul","verde");
        $formulario
            ->setLabel("Crismado?")
            ->setTamanhoInput(4)
            ->setClasses($checked)
            ->setId("st_crisma")
            ->setType("checkbox")
            ->setOptions($label_options)
            ->CriaInpunt(); 

      
        $formulario
            ->setType("textarea")
            ->setId("ds_conhecimento")
            ->setLabel("Como Conheceu o GEJ")
            ->CriaInpunt();
        
        if($co_membro):
            $formulario
                ->setType("hidden")
                ->setId("co_membro")
                ->setValues($co_membro)
                ->CriaInpunt();
        endif;
      
        
        $this->form = $formulario->finalizaForm(); 

    }
    
    function EditarMembroRetiro(){
       
        $id = "cadastroMembros";
         
        if(!empty($_POST[$id])):
                       
            $dados = $_POST; 
            $dados['dt_nascimento']         = explode(' ', Valida::DataDB($dados['dt_nascimento'])); 
            $dados['dt_nascimento']         = $dados['dt_nascimento'][0]; 
            $dados['nu_camisa']             = $dados['nu_camisa'][0]; 
            $dados['ds_retiro']             = FuncoesSistema::retornoCheckbox((isset($dados['ds_retiro'])) ? $dados['ds_retiro'] : null); 
            $dados['ds_pastoral_ativo']     = FuncoesSistema::retornoCheckbox((isset($dados['ds_pastoral_ativo'])) ? $dados['ds_pastoral_ativo'] : null); 
            $dados['st_pagamento']          = FuncoesSistema::retornoCheckbox((isset($dados['st_pagamento'])) ? $dados['st_pagamento'] : null); 
            $dados['ds_membro_ativo']       = FuncoesSistema::retornoCheckbox((isset($dados['ds_membro_ativo'])) ? $dados['ds_membro_ativo'] : null); 
            $dados['no_membro']             = trim($dados['no_membro']);
            if($dados['ds_pastoral_ativo'] == "S"):
               $dados['ds_pastoral'] = $dados['ds_pastoral'];
            else:
               unset($dados['ds_pastoral']);
            endif;
                
            $co_membro = $dados["co_membro"];
            unset($dados[$id],$dados['ds_pastoral_ativo'],$dados["co_membro"]);
           
            $pesquisa['dt_nascimento'] = $dados['dt_nascimento'];
            $pesquisa['no_membro']     = $dados['no_membro'];
            $pesquisa['co_evento']     = 3; // RETIRO DE CARNAVAL
            
            $membro = CadastroRetiroModel::PesquisaMembroJaCadastrado($pesquisa);
            
            if(count($membro) > 1):
                $this->resultAlt = true;
            else:
                $session = new Session();
                $idMembro = MembrosRetiroModel::AtualizaMembro($dados,$co_membro);
                if($idMembro):
                   $session->setSession(ATUALIZADO, "OK");
                endif;
            endif;
            $this->ListarMembrosRetiro();
            UrlAmigavel::$action = "ListarMembrosRetiro";
        endif;  
        
        $co_membro = UrlAmigavel::PegaParametro("mem");
        $res = array();
        if($co_membro):
            $res = MembrosRetiroModel::PesquisaUmMembro($co_membro);
            $res = $res[0];
            $res['dt_nascimento']   = Valida::DataShow($res['dt_nascimento'],'d/m/Y');
        endif;
        
        $formulario = new Form($id, "admin/Membros/EditarMembroRetiro");
        $formulario->setValor($res);
        
        $formulario
            ->setId("no_membro")
            ->setIcon("clip-user-6") 
            ->setClasses("ob nome")
            ->setInfo("O Nome deve ser Completo Mínimo de 10 Caracteres")
            ->setLabel("Nome Completo")
            ->CriaInpunt();
        
        $formulario
            ->setId("ds_endereco")
            ->setLabel("Endereço")
            ->CriaInpunt();
      
        $formulario
            ->setId("ds_bairro")
            ->setLabel("Bairro")
            ->CriaInpunt();
      
        $formulario
            ->setId("nu_tel1")
            ->setTamanhoInput(4)
            ->setClasses("tel ob")
            ->setIcon("fa-mobile fa")    
            ->setLabel("Tel. Celular 1")
            ->CriaInpunt();
      
        $formulario
            ->setId("nu_tel2")
            ->setTamanhoInput(4)
            ->setIcon("clip-phone-2")
            ->setClasses("tel")
            ->setLabel("Tel. Celular 2")
            ->CriaInpunt();
              
        $formulario
            ->setId("dt_nascimento")
            ->setIcon("clip-calendar-3")
            ->setTamanhoInput(4)
            ->setClasses("data ob")
            ->setInfo("Para maiores de 14 anos")    
            ->setLabel("Nascimento")
            ->CriaInpunt();
      
        $checked = "";
        if(!empty($res)):
            if($res['ds_retiro'] == "S"):
                $checked = "checked";
            endif;
        endif;
        
        $label_options = array("Sim","Não","azul","verde");
        $formulario
            ->setLabel("Participou de algum Retiro?")
            ->setTamanhoInput(5)
            ->setId("ds_retiro")
            ->setType("checkbox")
            ->setClasses($checked)
            ->setOptions($label_options)
            ->CriaInpunt();
        
        $checked = "";
        if(!empty($res)):
            if($res['ds_pastoral'] != ""):
                $checked = "checked";
            endif;
        endif;
        
        $label_options = array("Sim","Não","azul","verde");
        $formulario
            ->setLabel("Participa de alguma Pastoral?")
            ->setId("ds_pastoral_ativo")
            ->setTamanhoInput(7)
            ->setClasses($checked)
            ->setType("checkbox")
            ->setOptions($label_options)
            ->CriaInpunt();
      
        $formulario
            ->setId("ds_pastoral")
            ->setLabel("Qual Pastoral?")
            ->CriaInpunt();
        
        $opticoes_camisa = array(
            ""  => "Selecione um Tamanho",
            "1" => "BL PP",
            "2" => "BL P",
            "3" => "BL M",
            "4" => "BL G",
            "5" => "BL GG",
            "6" => "P",
            "7" => "M",
            "8" => "G",
            "9" => "GG"
        );
        
        $formulario
            ->setId("nu_camisa")
            ->setType("select")
            ->setTamanhoInput(12)    
            ->setClasses("ob")
            ->setOptions($opticoes_camisa) 
            ->setLabel("Tamanho da Camisa")
            ->CriaInpunt();
        
        $formulario
            ->setId("no_responsavel")
            ->setTamanhoInput(6)
            ->setClasses("ob nome")
            ->setLabel("Pessoa de Referência")
            ->setInfo("Para caso de EMERGÊNCIA")
            ->CriaInpunt();
        
         $formulario
            ->setId("nu_tel_responsavel")
            ->setTamanhoInput(6)
            ->setIcon("clip-phone-2")
            ->setClasses("tel ob")
            ->setLabel("Tel. Referência")
            ->CriaInpunt();
        
        $formulario
            ->setId("ds_email")
            ->setIcon("fa-envelope fa")
            ->setClasses("email")
            ->setLabel("Email")
            ->CriaInpunt();
        
        $formulario
            ->setId("ds_descricao")
            ->setType("textarea")
            ->setLabel("Observação")
            ->CriaInpunt();
        
        $checked = "";
        if(!empty($res)):
            if($res['st_pagamento'] == "S"):
                $checked = "checked";
            endif;
        endif;
        
        $label_options = array("Sim","Não","verde","vermelho");
        $formulario
            ->setLabel("Pago?")
            ->setTamanhoInput(6)
            ->setId("st_pagamento")
            ->setType("checkbox")
            ->setClasses($checked)
            ->setOptions($label_options)
            ->CriaInpunt();
        
        $checked = "";
        if(!empty($res)):
            if($res['ds_membro_ativo'] == "S"):
                $checked = "checked";
            endif;
        endif;
        
        $label_options = array("Sim","Não","verde","vermelho");
        $formulario
            ->setLabel("Membro do Grupo GEJ?")
            ->setTamanhoInput(6)
            ->setId("ds_membro_ativo")
            ->setType("checkbox")
            ->setClasses($checked)
            ->setOptions($label_options)
            ->CriaInpunt();
        
        
        if($co_membro):
            $formulario
                ->setType("hidden")
                ->setId("co_membro")
                ->setValues($co_membro)
                ->CriaInpunt();
        endif;
      
        
        $this->form = $formulario->finalizaForm(); 

    }

    function ListarMembrosPesquisaAvancada(){
        
        $id = "pesquisaMembros";
         
        $formulario = new Form($id, "admin/Membros/ListarMembros", "Pesquisa", 12);
        
            
        $label_options = array("" => "Todos","S" => "Ativo","N" => "Inativo");
        $formulario
            ->setLabel("Status do Membro")
            ->setId("st_status")
            ->setType("select")
            ->setOptions($label_options)
            ->CriaInpunt(); 
        
        $formulario
            ->setId("no_membro")
            ->setIcon("clip-user-6")
            ->setLabel("Nome do Membro")
            ->setInfo("Pode ser Parte do nome")    
            ->CriaInpunt();
      
        echo $formulario->finalizaFormPesquisaAvancada(); 

    }
    
    function ListarMembrosRetiroPesquisaAvancada(){
        
        $id = "pesquisaMembrosRetiro";
         
        $formulario = new Form($id, "admin/Membros/ListarMembrosRetiro", "Pesquisa", 12);
        
        $label_options = array("3" => "Retiro de Carnaval","4" => "Lista de Espera");
        $formulario
            ->setLabel("Retiro")
            ->setId("co_evento")
            ->setType("select")
            ->setOptions($label_options)
            ->CriaInpunt(); 
        
        $formulario
            ->setId("no_membro")
            ->setIcon("clip-user-6")
            ->setLabel("Nome do Membro")
            ->setInfo("Pode ser Parte do nome")    
            ->CriaInpunt();
            
        $opticoes = array(
            ""  => "Todos",
            "S" => "Sim",
            "N" => "Não"
        );
        
        $formulario
            ->setId("ds_membro_ativo")
            ->setLabel("Membro GEJ?")    
            ->setType("select")
            ->setOptions($opticoes) 
            ->CriaInpunt();
        
        $opticoes = array(
            ""  => "Todos",
            "S" => "Sim",
            "N" => "Não"
        );
        
        $formulario
            ->setLabel("Pago?")
            ->setId("st_pagamento")
            ->setType("select")
            ->setOptions($opticoes) 
            ->CriaInpunt();
        
      
        echo $formulario->finalizaFormPesquisaAvancada(); 

    }
        
    
}
?>
   