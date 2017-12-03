<?php
          
class Tarefa extends AbstractController
{
    public $result;
    public $resultAlt;
    public $form;
            
    
    function DetalharTarefa(){   
        
        $co_tarefa = UrlAmigavel::PegaParametro("taf");
        $res = array();
        if($co_tarefa):
            $res = TarefaModel::PesquisaUmaTarefa($co_tarefa);
            $res = $res[0];
            $res["dt_inicio"]   = Valida::DataShow($res["dt_inicio"],"d/m/Y"); 
            $res["dt_fim"]      = Valida::DataShow($res["dt_fim"],"d/m/Y"); 
            if(!empty($res["dt_conclusao"])):
                $res["dt_conclusao"] = Valida::DataShow($res["dt_conclusao"],"d/m/Y"); 
            endif;
            $this->result = $res;
        endif;
    }  
    
    function ListarTarefaPesquisaAvancada(){
        
        $id = "pesquisaTarefa";
         
        $formulario = new Form($id, "admin/Tarefa/ListarTarefa", "Pesquisa", 12);
            
        $label_options = array("" => "Todas", "1" => "URGENTE", "2" => "ALTA", "3" => "MÉDIA", "4" => "BAIXA");
        $formulario
            ->setLabel("Prioridade")
            ->setId("st_prioridade")
            ->setType("select")
            ->setOptions($label_options)
            ->CriaInpunt(); 

        $label_options = array("" => "Todos", "N" => "NÃO INICIADA", "A" => "EM ANDAMENTO", "C" => "CONCLUIDA", "I" => "INATIVA");
        $formulario
            ->setLabel("Status da Tarefa")
            ->setId("st_status")
            ->setType("select")
            ->setOptions($label_options)
            ->CriaInpunt(); 
        
        $formulario
            ->setId("co_evento")
            ->setType("select")
            ->setLabel("Evento")
            ->setAutocomplete(EVENTO_TABELA, "no_evento",EVENTO_CHAVE_PRIMARIA)
            ->CriaInpunt(); 
        
        echo $formulario->finalizaFormPesquisaAvancada(); 

    }
    
    
    function ListarTarefa(){     
        
        $dados = array();
        if(!empty($_POST)):
            $dados = array(
                'st_prioridade' => $_POST['st_prioridade'][0],
                'st_status' => $_POST['st_status'][0],
                'taf.co_evento' => $_POST['co_evento'][0]
            );
        endif;
        
        $tarefa = TarefaModel::PesquisaTarefa($dados);
        
        $this->result = FuncoesSistema::ValidaTarefa($tarefa);
        
    }
    
        
    function CadastroTarefa(){
        
        $id = "cadastroTarefa";
         
        if(!empty($_POST[$id])):
            $session = new Session();           
            $dados = $_POST; 
            unset($dados[$id]); 
            
            $tarefa['ds_titulo']        = trim($dados['ds_titulo']);
            $tarefa['ds_descricao']     = trim($dados['ds_descricao']);
            $tarefa['dt_inicio']        = implode("-",array_reverse(explode("/", $dados['dt_inicio'])));
            $tarefa['dt_fim']           = implode("-",array_reverse(explode("/", $dados['dt_fim'])));
            $tarefa['co_evento']        = $dados['co_evento'][0];
            $tarefa['co_perfil']        = $dados['co_perfil'][0];
            $tarefa['st_prioridade']    = $dados['st_prioridade'][0];
            $tarefa['co_usuario']       = $user[md5(CAMPO_ID)];
            
            
            if(!empty($_POST['co_tarefa'])):
                $tarefa['st_status']        = $dados['st_status'][0];
                if(!empty($dados["dt_conclusao"])):
                    $tarefa['dt_conclusao']        = implode("-",array_reverse(explode("/", $dados['dt_conclusao'])));
                endif;
                $CoTaref = TarefaModel::AtualizaTarefa($tarefa, $_POST['co_tarefa']);
                if($CoTaref):
                    $session->setSession(ATUALIZADO, "OK");
                endif;
            else:    
                $tarefa['dt_cadastro']      = Valida::DataAtualBanco();
                $tarefa['st_status']        = "N";
                $coTarefa = TarefaModel::CadastraTarefa($tarefa);
                if($coTarefa):
                    $session->setSession(CADASTRADO, "OK");
                endif;
            endif;
            $this->ListarTarefa();
            UrlAmigavel::$action = "ListarTarefa";
        endif;  
        
        $co_tarefa = UrlAmigavel::PegaParametro("taf");
        $res = array();
        if($co_tarefa):
            $res = TarefaModel::PesquisaUmaTarefa($co_tarefa);
            $res = $res[0];
            $res["dt_inicio"]   = Valida::DataShow($res["dt_inicio"],"d/m/Y"); 
            $res["dt_fim"]      = Valida::DataShow($res["dt_fim"],"d/m/Y"); 
            if(!empty($res["dt_conclusao"])):
                $res["dt_conclusao"] = Valida::DataShow($res["dt_conclusao"],"d/m/Y"); 
            endif;
        endif;
        
        $formulario = new Form($id, "admin/Tarefa/CadastroTarefa");
        $formulario->setValor($res);
        
        $label_2 = array(
            "" => "Selecione um Item",
            "1" => "URGENTE",
            "2" => "ALTA",
            "3" => "MÉDIA",
            "4" => "BAIXA"
        );    
                
        $formulario
            ->setLabel("Prioridade")
            ->setId("st_prioridade")
            ->setClasses("ob")
            ->setType("select")
            ->setOptions($label_2)
            ->CriaInpunt();
        
        
        $formulario
            ->setId("ds_titulo")
            ->setClasses("ob")    
            ->setLabel("Título")
            ->CriaInpunt();
        
        $todos_perfis = PerfilModel::PesquisaPerfil();
        foreach ($todos_perfis as $key => $value) {
            $perf[$value['co_perfil']] = $value['no_perfil'];
        }
        $labels = FuncoesSistema::ValidaPerfilCadastro($perf);
        
        $formulario
            ->setLabel("Equipe")
            ->setId("co_perfil")
            ->setClasses("ob")   
            ->setInfo("Quem irá realizar a tarefa")
            ->setType("select")
            ->setOptions($labels)
            ->CriaInpunt();  
        
        
        $formulario
            ->setId("dt_inicio")
            ->setTamanhoInput(6)
            ->setClasses("ob data")   
            ->setIcon("clip-calendar-3")
            ->setLabel("Data de Inicio")
            ->CriaInpunt();
        
        $formulario
            ->setId("dt_fim")
            ->setTamanhoInput(6)
            ->setClasses("ob data")   
            ->setIcon("clip-calendar-3")
            ->setInfo("Data Previsto para Terminar")
            ->setLabel("Data de Termino")
            ->CriaInpunt();
        
        $formulario
            ->setId("co_evento")
            ->setType("select")
            ->setClasses("ob")
            ->setLabel("Evento")
            ->setAutocomplete(EVENTO_TABELA, "no_evento",EVENTO_CHAVE_PRIMARIA)
            ->CriaInpunt(); 
        
        
        $formulario
            ->setId("ds_descricao")
            ->setClasses("ob")   
            ->setType("textarea")
            ->setClasses("ckeditor")
            ->setLabel("Descrição da Tarefa")
            ->CriaInpunt();
        
        
        if($co_tarefa):
            
            $formulario
                ->setId("no_usuario")
                ->setClasses("disabilita")   
                ->setLabel("Quem Criou")
                ->CriaInpunt();
        
            $label_options = array(
                "N" => "NÃO INICIADA",
                "A" => "EM ANDAMENTO",
                "C" => "CONCLUIDA",
                "I" => "INATIVA"
            );    
                
            $formulario
                ->setLabel("Status")
                ->setId("st_status")
                ->setType("select")
                ->setOptions($label_options)
                ->CriaInpunt();  
            
            $formulario
                 ->setId("dt_conclusao")
                 ->setClasses("ob data")   
                 ->setIcon("clip-calendar-3")
                 ->setLabel("Data de Conclusão")
                 ->CriaInpunt();
            
            $formulario
                ->setType("hidden")
                ->setId("co_tarefa")
                ->setValues($co_tarefa)
                ->CriaInpunt();
            
        endif;
            
      
        $this->form = $formulario->finalizaForm(); 

    }
        
    
}
?>
   