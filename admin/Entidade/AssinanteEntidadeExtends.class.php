<?php

/**
 * Assinante.Entidade extends [ ENTIDADE ]
 * @copyright (c) 2017, Leo Bessa
 */

class AssinanteEntidadeExtends extends AbstractEntidade
{
    private $co_facilidade_beneficio;
    private $co_funcionamento;
    private $co_dia_especial;
    private $co_config_cliente;
    private $co_config_agendamento;
    private $co_config_profissional;
    private $co_motivo_desconto_assinante;
    private $co_profissional;
    private $co_cliente;
    private $co_categoria_servico;

    /**
     * @return FacilidadeBeneficioEntidade $co_facilidade_beneficio
     */
    public function getCoFacilidadeBeneficio()
    {
        return $this->co_facilidade_beneficio;
    }

    /**
     * @param $co_facilidade_beneficio
     * @return mixed
     */
    public function setCoFacilidadeBeneficio($co_facilidade_beneficio)
    {
        return $this->co_facilidade_beneficio = $co_facilidade_beneficio;
    }

    /**
     * @return FuncionamentoEntidade $co_funcionamento
     */
    public function getCoFuncionamento()
    {
        return $this->co_funcionamento;
    }

    /**
     * @param $co_funcionamento
     * @return mixed
     */
    public function setCoFuncionamento($co_funcionamento)
    {
        return $this->co_funcionamento = $co_funcionamento;
    }

    /**
     * @return DiaEspecialEntidade $co_dia_especial
     */
    public function getCoDiaEspecial()
    {
        return $this->co_dia_especial;
    }

    /**
     * @param $co_dia_especial
     * @return mixed
     */
    public function setCoDiaEspecial($co_dia_especial)
    {
        return $this->co_dia_especial = $co_dia_especial;
    }

    /**
     * @return ConfigClienteEntidade $co_config_cliente
     */
    public function getCoConfigCliente()
    {
        return $this->co_config_cliente;
    }

    /**
     * @param $co_config_cliente
     * @return mixed
     */
    public function setCoConfigCliente($co_config_cliente)
    {
        return $this->co_config_cliente = $co_config_cliente;
    }

    /**
     * @return ConfigAgendamentoEntidade $co_config_agendamento
     */
    public function getCoConfigAgendamento()
    {
        return $this->co_config_agendamento;
    }

    /**
     * @param $co_config_agendamento
     * @return mixed
     */
    public function setCoConfigAgendamento($co_config_agendamento)
    {
        return $this->co_config_agendamento = $co_config_agendamento;
    }

    /**
     * @return MotivoDescontoAssinanteEntidade $co_motivo_desconto_assinante
     */
    public function getCoMotivoDescontoAssinante()
    {
        return $this->co_motivo_desconto_assinante;
    }

    /**
     * @param mixed $co_motivo_desconto_assinante
     */
    public function setCoMotivoDescontoAssinante($co_motivo_desconto_assinante)
    {
        $this->co_motivo_desconto_assinante = $co_motivo_desconto_assinante;
    }

    /**
     * @return ProfissionalEntidade $co_profissional
     */
    public function getCoProfissional()
    {
        return $this->co_profissional;
    }

    /**
     * @param $co_profissional
     * @return mixed
     */
    public function setCoProfissional($co_profissional)
    {
        $this->co_profissional = $co_profissional;
    }

    /**
     * @return mixed
     */
    public function getCoCliente()
    {
        return $this->co_cliente;
    }

    /**
     * @param mixed $co_cliente
     */
    public function setCoCliente($co_cliente)
    {
        $this->co_cliente = $co_cliente;
    }

    /**
     * @return ConfigProfissionalEntidade $co_config_profissional
     */
    public function getCoConfigProfissional()
    {
        return $this->co_config_profissional;
    }

    /**
     * @param $co_config_profissional
     * @return mixed
     */
    public function setCoConfigProfissional($co_config_profissional)
    {
        return $this->co_config_profissional = $co_config_profissional;
    }

    /**
     * @return CategoriaServicoEntidade $co_categoria_servico
     */
    public function getCoCategoriaServico()
    {
        return $this->co_categoria_servico;
    }

    /**
     * @param $co_categoria_servico
     * @return mixed
     */
    public function setCoCategoriaServico($co_categoria_servico)
    {
        return $this->co_categoria_servico = $co_categoria_servico;
    }
}