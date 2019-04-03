-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 03/04/2019 às 15:39
-- Versão do servidor: 5.6.41-84.1
-- Versão do PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `gejdo247_gej`
--
CREATE DATABASE IF NOT EXISTS `gejdo247_gej` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `gejdo247_gej`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_acesso`
--

CREATE TABLE `tb_acesso` (
  `co_acesso` int(11) NOT NULL,
  `ds_session_id` varchar(255) DEFAULT NULL,
  `dt_inicio_acesso` datetime DEFAULT NULL,
  `dt_fim_acesso` datetime DEFAULT NULL,
  `tp_situacao` varchar(1) DEFAULT NULL COMMENT 'A - Ativo / F - Finalizado',
  `co_usuario` int(10) NOT NULL,
  `co_trafego` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `tb_acesso`
--

INSERT INTO `tb_acesso` (`co_acesso`, `ds_session_id`, `dt_inicio_acesso`, `dt_fim_acesso`, `tp_situacao`, `co_usuario`, `co_trafego`) VALUES
(1, '2bh3cnajca73iap7cifh10qkg7', '2019-03-25 16:25:51', '2019-03-25 16:26:04', 'F', 1, 1),
(2, '2bh3cnajca73iap7cifh10qkg7', '2019-03-25 16:26:10', '2019-03-25 17:22:59', 'F', 1, 2),
(3, '2bh3cnajca73iap7cifh10qkg7', '2019-03-25 17:32:16', '2019-03-25 18:15:58', 'F', 1, 2),
(4, 'rlgisvct9cv78k6rod9ei9lo36', '2019-03-27 10:03:25', '2019-03-27 11:50:59', 'F', 1, 3),
(5, 'rlgisvct9cv78k6rod9ei9lo36', '2019-03-27 12:08:09', '2019-03-27 12:52:01', 'A', 1, 4);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_administrativo`
--

CREATE TABLE `tb_administrativo` (
  `co_administrativo` int(11) NOT NULL,
  `nu_fundo_caixa` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `tb_administrativo`
--

INSERT INTO `tb_administrativo` (`co_administrativo`, `nu_fundo_caixa`) VALUES
(1, '0.00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_agenda`
--

CREATE TABLE `tb_agenda` (
  `co_agenda` int(11) NOT NULL,
  `ds_descricao` text,
  `dt_cadastro` datetime DEFAULT NULL,
  `st_dia_todo` varchar(1) DEFAULT NULL COMMENT 'N - Não / S - SIm',
  `dt_inicio` datetime DEFAULT NULL,
  `dt_fim` datetime DEFAULT NULL,
  `ds_titulo` varchar(80) DEFAULT NULL,
  `co_usuario` int(10) NOT NULL,
  `co_endereco` int(11) NOT NULL,
  `co_categoria_agenda` int(10) NOT NULL,
  `co_evento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `tb_agenda`
--

INSERT INTO `tb_agenda` (`co_agenda`, `ds_descricao`, `dt_cadastro`, `st_dia_todo`, `dt_inicio`, `dt_fim`, `ds_titulo`, `co_usuario`, `co_endereco`, `co_categoria_agenda`, `co_evento`) VALUES
(1, '<p>foi legal muito massa</p>\r\n', '2018-04-08 00:28:20', 'N', '2018-02-10 06:00:00', '2018-02-13 21:00:00', 'VI Retiro de Carnaval Santifique-se', 1, 238, 5, 1),
(2, '<p>Espiritualidade de cada elo - Explica&ccedil;&atilde;o e din&acirc;mica (duas verdades e uma mentira: forma de conhecimento)</p>\r\n', '2018-04-12 19:07:49', 'N', '2018-04-14 15:30:00', NULL, ' Espiritualidade de cada elo ', 16, 240, 3, 0),
(3, '<p>Festival de Pastel&nbsp;</p>\r\n', '2018-04-12 19:24:27', 'N', '2018-04-14 20:00:00', NULL, 'Festival de Pastel ', 16, 241, 5, 2),
(4, '<p>E o nosso super evento</p>\r\n', '2018-04-18 23:24:34', 'N', '2018-07-06 20:00:00', '2018-07-08 18:00:00', 'II Abastecimento Espiritual GEJ', 7, 1, 5, 3),
(5, '<p>Nosso encoro fla</p>\r\n', '2018-04-28 20:21:52', 'N', '2018-04-28 20:00:00', NULL, 'Encontro semanal', 1, 243, 3, 0),
(6, '<p>Forma&ccedil;&atilde;o&nbsp;para todos os membros obrigat&oacute;rio a participa&ccedil;&atilde;o nessa super forma&ccedil;&atilde;o favor comparecer</p>\r\n', '2018-04-28 20:26:47', 'N', '2018-05-26 15:00:00', '2018-05-26 18:00:00', 'Formação Geral Elos', 1, 244, 4, 0),
(7, '', '2018-05-09 19:33:31', 'N', '2018-03-17 20:00:00', NULL, 'retiro EAC', 16, 249, 8, 0),
(8, '', '2018-05-09 19:37:44', 'N', '2018-03-18 17:00:00', NULL, 'reunião geral ', 16, 250, 1, 0),
(9, '', '2018-05-09 19:40:58', 'N', '2018-03-24 15:00:00', NULL, 'encontro semanal : oração', 16, 251, 3, 0),
(10, '', '2018-05-09 19:44:43', 'N', '2018-03-30 20:00:00', NULL, 'encenação sobre a ultima estação da vida crucis', 16, 252, 8, 0),
(11, '', '2018-05-09 20:04:41', 'N', '2018-04-01 12:00:00', NULL, 'almoço de pascoa', 16, 253, 5, 0),
(12, '', '2018-05-09 20:15:37', 'N', '2018-04-07 15:00:00', NULL, 'intensivão da mesa redonda', 16, 254, 3, 0),
(13, '<p><strong>n&atilde;o ouve por motivos maior&nbsp;</strong></p>\r\n', '2018-05-09 20:22:17', 'N', '2018-04-08 05:00:00', NULL, 'bazar !', 16, 255, 5, 0),
(14, '', '2018-05-09 20:29:40', 'N', '2018-04-19 19:30:00', NULL, 'Adoração ', 16, 256, 5, 0),
(15, '', '2018-05-09 20:33:38', 'N', '2018-04-21 15:00:00', NULL, 'formação de Elos ', 16, 257, 3, 0),
(16, '', '2018-05-09 20:39:32', 'N', '2018-05-05 15:00:00', NULL, 'formação por elos ', 16, 258, 3, 0),
(17, '', '2018-05-09 20:42:37', 'N', '2018-05-06 15:00:00', NULL, 'vida fraterna', 16, 259, 5, 0),
(18, '', '2018-05-09 20:45:45', 'N', '2018-05-06 05:00:00', NULL, 'bazar !', 16, 260, 5, 0),
(19, '', '2018-05-09 20:49:55', 'N', '2018-05-12 14:50:00', NULL, 'Tarde com Maria ', 16, 261, 3, 0),
(20, '', '2018-05-09 21:04:55', 'N', '2018-05-12 20:00:00', NULL, 'intercessão  ', 16, 262, 8, 0),
(22, '<p><strong>um momento de nos preparar !&nbsp;<br />\r\num retiro fantastico, que com certeza ajuda na caminhada !</strong><br />\r\n&nbsp;</p>\r\n', '2018-05-09 21:25:27', 'N', '2018-05-18 19:00:00', '2018-05-20 20:00:00', 'retiro de silêncio para o conselho e coordenadores', 16, 264, 5, 0),
(23, '', '2018-05-10 19:14:39', 'N', '2018-05-19 14:30:00', NULL, 'encontro semanal ', 16, 265, 3, 0),
(26, '', '2018-05-10 19:33:09', 'N', '2018-05-27 07:00:00', NULL, 'Encontro da AJS', 16, 268, 5, 0),
(27, '<p><strong>Uma Super Form&ccedil;&atilde;o Greal para o Crescimento do Grupo !</strong></p>\r\n', '2018-05-10 19:36:35', 'N', '2018-06-02 15:00:00', NULL, 'Formação Geral', 16, 269, 4, 0),
(28, '<p><strong>Um momento de lazer, algo necessario,&nbsp;</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n', '2018-05-10 19:40:19', 'N', '2018-06-02 20:00:00', NULL, 'Cine GEJ', 16, 270, 5, 0),
(29, '', '2018-05-10 19:42:26', 'N', '2018-06-09 15:00:00', NULL, 'formação de Elos ', 16, 271, 4, 0),
(30, '<p><strong>O trabalho edifica o homem !</strong></p>\r\n', '2018-05-10 19:45:25', 'N', '2018-06-10 05:00:00', NULL, 'Bazar !', 16, 272, 5, 0),
(31, '', '2018-05-10 19:47:24', 'N', '2018-06-16 15:00:00', NULL, 'vida de oração', 16, 273, 8, 0),
(32, '', '2018-05-10 19:50:03', 'N', '2018-06-23 15:00:00', NULL, 'Formação Geral', 16, 274, 4, 0),
(33, '', '2018-05-10 19:53:09', 'N', '2018-06-23 20:00:00', NULL, 'Aviva GEJ', 16, 275, 5, 0),
(34, '', '2018-05-10 19:55:25', 'N', '2018-06-24 13:00:00', NULL, 'Fraternidade', 16, 276, 5, 0),
(35, '', '2018-05-10 19:58:08', 'N', '2018-06-30 15:00:00', NULL, 'formação de Elos ', 16, 277, 4, 0),
(36, '', '2018-07-20 10:48:51', 'N', '2018-07-21 19:00:00', '2018-07-22 07:00:00', 'IV Vigília alegria que vem de Deus', 1, 285, 5, 17),
(37, '', '2018-12-26 22:37:49', 'N', '2019-03-02 06:00:00', '2019-03-05 20:00:00', '7º Retiro de Carnaval Santifique-se', 1, 286, 5, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_agenda_evento`
--

CREATE TABLE `tb_agenda_evento` (
  `co_agenda_evento` int(11) NOT NULL,
  `co_agenda` int(11) NOT NULL,
  `co_evento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `tb_agenda_evento`
--

INSERT INTO `tb_agenda_evento` (`co_agenda_evento`, `co_agenda`, `co_evento`) VALUES
(1, 0, 0),
(2, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_anotacao`
--

CREATE TABLE `tb_anotacao` (
  `co_anotacao` int(11) NOT NULL,
  `dt_cadastro` datetime DEFAULT NULL,
  `ds_observacao` text,
  `ds_titulo` varchar(80) DEFAULT NULL,
  `co_historia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_assinante`
--

CREATE TABLE `tb_assinante` (
  `co_assinante` int(11) NOT NULL,
  `dt_cadastro` datetime DEFAULT NULL,
  `dt_expiracao` date DEFAULT NULL COMMENT 'Data da expiração de utilização do sistema',
  `st_dados_complementares` varchar(1) DEFAULT 'N' COMMENT 'S - Sim / N - Não',
  `st_status` varchar(1) DEFAULT 'A' COMMENT 'A - Ativo / I - inativo',
  `tp_assinante` varchar(1) DEFAULT 'M' COMMENT 'M  - Matriz / F - Filial',
  `co_empresa` int(11) NOT NULL,
  `co_pessoa` int(11) NOT NULL COMMENT 'Responsável pelo Assinante'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_assinante_filial`
--

CREATE TABLE `tb_assinante_filial` (
  `co_assinante_filial` int(11) NOT NULL,
  `dt_cadastro` datetime DEFAULT NULL,
  `co_assinante` int(11) NOT NULL COMMENT 'Assinante Filial',
  `co_assinante_matriz` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_assinante_matriz`
--

CREATE TABLE `tb_assinante_matriz` (
  `co_assinante_matriz` int(11) NOT NULL,
  `dt_cadastro` datetime DEFAULT NULL,
  `co_assinante` int(11) NOT NULL COMMENT 'Assinante Matriz'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_auditoria`
--

CREATE TABLE `tb_auditoria` (
  `co_auditoria` int(11) NOT NULL,
  `dt_realizado` datetime DEFAULT NULL,
  `ds_perfil_usuario` text,
  `co_usuario` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `tb_auditoria`
--

INSERT INTO `tb_auditoria` (`co_auditoria`, `dt_realizado`, `ds_perfil_usuario`, `co_usuario`) VALUES
(1, '2019-03-25 16:47:55', 'Coord. Administrativo, Coordenadores, Membros, Master', 1),
(2, '2019-03-25 16:48:14', 'Coord. Administrativo, Coordenadores, Membros, Master', 1),
(3, '2019-03-25 16:48:41', 'Coord. Administrativo, Coordenadores, Membros, Master', 1),
(4, '2019-03-25 16:49:35', 'Coord. Administrativo, Coordenadores, Membros, Master', 1),
(5, '2019-03-25 16:50:02', 'Coord. Administrativo, Coordenadores, Membros, Master', 1),
(6, '2019-03-25 16:50:32', 'Coord. Administrativo, Coordenadores, Membros, Master', 1),
(7, '2019-03-25 16:50:51', 'Coord. Administrativo, Coordenadores, Membros, Master', 1),
(8, '2019-03-25 16:51:23', 'Coord. Administrativo, Coordenadores, Membros, Master', 1),
(9, '2019-03-25 16:51:42', 'Coord. Administrativo, Coordenadores, Membros, Master', 1),
(10, '2019-03-25 16:52:08', 'Coord. Administrativo, Coordenadores, Membros, Master', 1),
(11, '2019-03-25 16:52:24', 'Coord. Administrativo, Coordenadores, Membros, Master', 1),
(12, '2019-03-25 17:01:51', 'Coord. Administrativo, Coordenadores, Membros, Master', 1),
(13, '2019-03-25 17:02:01', 'Coord. Administrativo, Coordenadores, Membros, Master', 1),
(14, '2019-03-25 17:02:25', 'Coord. Administrativo, Coordenadores, Membros, Master', 1),
(15, '2019-03-25 17:32:35', 'Coord. Administrativo, Coordenadores, Membros, Master', 1),
(16, '2019-03-27 10:50:32', 'Coord. Administrativo, Coordenadores, Membros, Master', 1),
(17, '2019-03-27 11:15:00', 'Coord. Administrativo, Coordenadores, Membros, Master', 1),
(18, '2019-03-27 11:15:50', 'Coord. Administrativo, Coordenadores, Membros, Master', 1),
(19, '2019-03-27 11:16:02', 'Coord. Administrativo, Coordenadores, Membros, Master', 1),
(20, '2019-03-27 11:16:40', 'Coord. Administrativo, Coordenadores, Membros, Master', 1),
(21, '2019-03-27 11:16:41', 'Coord. Administrativo, Coordenadores, Membros, Master', 1),
(22, '2019-03-27 11:17:04', 'Coord. Administrativo, Coordenadores, Membros, Master', 1),
(23, '2019-03-27 11:17:05', 'Coord. Administrativo, Coordenadores, Membros, Master', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_auditoria_itens`
--

CREATE TABLE `tb_auditoria_itens` (
  `co_auditoria_itens` int(11) NOT NULL,
  `ds_item_anterior` varchar(255) DEFAULT NULL,
  `ds_item_atual` varchar(255) DEFAULT NULL,
  `ds_campo` varchar(120) DEFAULT NULL,
  `co_auditoria_tabela` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `tb_auditoria_itens`
--

INSERT INTO `tb_auditoria_itens` (`co_auditoria_itens`, `ds_item_anterior`, `ds_item_atual`, `ds_campo`, `co_auditoria_tabela`) VALUES
(1, NULL, 'Agenda', 'no_controller', 1),
(2, NULL, 'fa fa-calendar', 'ds_class_icon', 1),
(3, NULL, '41', 'co_funcionalidade', 2),
(4, NULL, '10', 'co_perfil', 2),
(5, NULL, '41', 'co_funcionalidade', 3),
(6, NULL, '2', 'co_perfil', 3),
(7, '2', NULL, 'co_perfil_funcionalidade', 4),
(8, '41', NULL, 'co_funcionalidade', 4),
(9, '10', NULL, 'co_perfil', 4),
(10, '0', NULL, 'co_perfil_assinante', 4),
(11, '3', NULL, 'co_perfil_funcionalidade', 4),
(12, '41', NULL, 'co_funcionalidade', 4),
(13, '2', NULL, 'co_perfil', 4),
(14, '0', NULL, 'co_perfil_assinante', 4),
(15, NULL, '41', 'co_funcionalidade', 5),
(16, NULL, '10', 'co_perfil', 5),
(17, NULL, '41', 'co_funcionalidade', 6),
(18, NULL, '2', 'co_perfil', 6),
(19, NULL, '42', 'co_funcionalidade', 7),
(20, NULL, '3', 'co_perfil', 7),
(21, NULL, 'Inscricao', 'no_controller', 8),
(22, NULL, 'clip-note', 'ds_class_icon', 8),
(23, NULL, '43', 'co_funcionalidade', 9),
(24, NULL, '4', 'co_perfil', 9),
(25, NULL, '43', 'co_funcionalidade', 10),
(26, NULL, '2', 'co_perfil', 10),
(27, NULL, '44', 'co_funcionalidade', 11),
(28, NULL, '4', 'co_perfil', 11),
(29, NULL, '44', 'co_funcionalidade', 12),
(30, NULL, '2', 'co_perfil', 12),
(31, NULL, '45', 'co_funcionalidade', 13),
(32, NULL, '4', 'co_perfil', 13),
(33, NULL, '45', 'co_funcionalidade', 14),
(34, NULL, '2', 'co_perfil', 14),
(35, NULL, '46', 'co_funcionalidade', 15),
(36, NULL, '4', 'co_perfil', 15),
(37, NULL, '46', 'co_funcionalidade', 16),
(38, NULL, '2', 'co_perfil', 16),
(39, NULL, 'FluxoCaixa', 'no_controller', 17),
(40, NULL, 'clip-banknote', 'ds_class_icon', 17),
(41, NULL, '47', 'co_funcionalidade', 18),
(42, NULL, '8', 'co_perfil', 18),
(43, NULL, '47', 'co_funcionalidade', 19),
(44, NULL, '2', 'co_perfil', 19),
(45, NULL, '48', 'co_funcionalidade', 20),
(46, NULL, '8', 'co_perfil', 20),
(47, NULL, '48', 'co_funcionalidade', 21),
(48, NULL, '2', 'co_perfil', 21),
(49, NULL, 'Camisa', 'no_controller', 22),
(50, NULL, 'clip-t-shirt', 'ds_class_icon', 22),
(51, NULL, '49', 'co_funcionalidade', 23),
(52, NULL, '8', 'co_perfil', 23),
(53, NULL, '49', 'co_funcionalidade', 24),
(54, NULL, '2', 'co_perfil', 24),
(55, NULL, '50', 'co_funcionalidade', 25),
(56, NULL, '8', 'co_perfil', 25),
(57, NULL, '50', 'co_funcionalidade', 26),
(58, NULL, '2', 'co_perfil', 26),
(59, NULL, '51', 'co_funcionalidade', 27),
(60, NULL, '4', 'co_perfil', 27),
(61, NULL, '51', 'co_funcionalidade', 28),
(62, NULL, '2', 'co_perfil', 28),
(63, '23', NULL, 'co_perfil_funcionalidade', 29),
(64, '51', NULL, 'co_funcionalidade', 29),
(65, '4', NULL, 'co_perfil', 29),
(66, '0', NULL, 'co_perfil_assinante', 29),
(67, '24', NULL, 'co_perfil_funcionalidade', 29),
(68, '51', NULL, 'co_funcionalidade', 29),
(69, '2', NULL, 'co_perfil', 29),
(70, '0', NULL, 'co_perfil_assinante', 29),
(71, NULL, '51', 'co_funcionalidade', 30),
(72, NULL, '4', 'co_perfil', 30),
(73, NULL, '51', 'co_funcionalidade', 31),
(74, NULL, '2', 'co_perfil', 31),
(75, NULL, '52', 'co_funcionalidade', 32),
(76, NULL, '4', 'co_perfil', 32),
(77, NULL, '52', 'co_funcionalidade', 33),
(78, NULL, '2', 'co_perfil', 33),
(79, '1', NULL, 'co_usuario', 34),
(80, '123456**', '123456**', 'ds_senha', 34),
(81, 'TVRJek5EVTJLaW89', 'TVRJek5EVTJLaW89', 'ds_code', 34),
(82, 'A', NULL, 'st_status', 34),
(83, 'N', 'S', 'st_troca_senha', 34),
(84, '2016-10-31 00:00:00', NULL, 'dt_cadastro', 34),
(85, '1', NULL, 'co_imagem', 34),
(86, '1', NULL, 'co_pessoa', 34),
(87, '0', NULL, 'co_assinante', 34),
(88, NULL, 'Web Gej', 'no_projeto', 35),
(89, NULL, '2019-03-27 10:50:32', 'dt_cadastro', 35),
(90, NULL, 'Sistema', 'no_modulo', 36),
(91, NULL, '1', 'co_projeto', 36),
(92, NULL, '2019-03-27 11:15:00', 'dt_cadastro', 36),
(93, NULL, 'Sistema', 'no_sessao', 37),
(94, NULL, '1', 'co_modulo', 37),
(95, NULL, '2019-03-27 11:15:50', 'dt_cadastro', 37),
(96, NULL, 'Site', 'no_sessao', 38),
(97, NULL, '1', 'co_modulo', 38),
(98, NULL, '2019-03-27 11:16:02', 'dt_cadastro', 38),
(99, NULL, 'Manter Camisa', 'ds_titulo', 39),
(100, NULL, '<p>Manter camisa</p>', 'ds_observacao', 39),
(101, NULL, '1', 'co_sessao', 39),
(102, NULL, 'I', 'st_situacao', 39),
(103, NULL, '2019-03-27 11:16:40', 'dt_atualizado', 39),
(104, NULL, '2019-03-27 11:16:40', 'dt_cadastro', 39),
(105, NULL, '13', 'nu_esforco', 40),
(106, NULL, '5', 'nu_esforco_restante', 40),
(107, NULL, '2019-03-27 11:16:40', 'dt_cadastro', 40),
(108, NULL, '1', 'co_historia', 40),
(109, NULL, 'Manter Pedido camisa', 'ds_titulo', 41),
(110, NULL, '<p>Manter Pedido camisa</p>', 'ds_observacao', 41),
(111, NULL, '1', 'co_sessao', 41),
(112, NULL, 'I', 'st_situacao', 41),
(113, NULL, '2019-03-27 11:17:04', 'dt_atualizado', 41),
(114, NULL, '2019-03-27 11:17:04', 'dt_cadastro', 41),
(115, NULL, '8', 'nu_esforco', 42),
(116, NULL, '5', 'nu_esforco_restante', 42),
(117, NULL, '2019-03-27 11:17:04', 'dt_cadastro', 42),
(118, NULL, '2', 'co_historia', 42);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_auditoria_tabela`
--

CREATE TABLE `tb_auditoria_tabela` (
  `co_auditoria_tabela` int(11) NOT NULL,
  `no_tabela` varchar(45) DEFAULT NULL,
  `tp_operacao` varchar(1) DEFAULT NULL,
  `co_registro` int(11) DEFAULT NULL,
  `co_auditoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `tb_auditoria_tabela`
--

INSERT INTO `tb_auditoria_tabela` (`co_auditoria_tabela`, `no_tabela`, `tp_operacao`, `co_registro`, `co_auditoria`) VALUES
(1, 'TB_CONTROLLER', 'I', 10, 1),
(2, 'TB_PERFIL_FUNCIONALIDADE', 'I', 2, 1),
(3, 'TB_PERFIL_FUNCIONALIDADE', 'I', 3, 1),
(4, 'TB_PERFIL_FUNCIONALIDADE', 'D', NULL, 2),
(5, 'TB_PERFIL_FUNCIONALIDADE', 'I', 4, 2),
(6, 'TB_PERFIL_FUNCIONALIDADE', 'I', 5, 2),
(7, 'TB_PERFIL_FUNCIONALIDADE', 'I', 6, 3),
(8, 'TB_CONTROLLER', 'I', 11, 4),
(9, 'TB_PERFIL_FUNCIONALIDADE', 'I', 7, 4),
(10, 'TB_PERFIL_FUNCIONALIDADE', 'I', 8, 4),
(11, 'TB_PERFIL_FUNCIONALIDADE', 'I', 9, 5),
(12, 'TB_PERFIL_FUNCIONALIDADE', 'I', 10, 5),
(13, 'TB_PERFIL_FUNCIONALIDADE', 'I', 11, 6),
(14, 'TB_PERFIL_FUNCIONALIDADE', 'I', 12, 6),
(15, 'TB_PERFIL_FUNCIONALIDADE', 'I', 13, 7),
(16, 'TB_PERFIL_FUNCIONALIDADE', 'I', 14, 7),
(17, 'TB_CONTROLLER', 'I', 12, 8),
(18, 'TB_PERFIL_FUNCIONALIDADE', 'I', 15, 8),
(19, 'TB_PERFIL_FUNCIONALIDADE', 'I', 16, 8),
(20, 'TB_PERFIL_FUNCIONALIDADE', 'I', 17, 9),
(21, 'TB_PERFIL_FUNCIONALIDADE', 'I', 18, 9),
(22, 'TB_CONTROLLER', 'I', 13, 10),
(23, 'TB_PERFIL_FUNCIONALIDADE', 'I', 19, 10),
(24, 'TB_PERFIL_FUNCIONALIDADE', 'I', 20, 10),
(25, 'TB_PERFIL_FUNCIONALIDADE', 'I', 21, 11),
(26, 'TB_PERFIL_FUNCIONALIDADE', 'I', 22, 11),
(27, 'TB_PERFIL_FUNCIONALIDADE', 'I', 23, 12),
(28, 'TB_PERFIL_FUNCIONALIDADE', 'I', 24, 12),
(29, 'TB_PERFIL_FUNCIONALIDADE', 'D', NULL, 13),
(30, 'TB_PERFIL_FUNCIONALIDADE', 'I', 25, 13),
(31, 'TB_PERFIL_FUNCIONALIDADE', 'I', 26, 13),
(32, 'TB_PERFIL_FUNCIONALIDADE', 'I', 27, 14),
(33, 'TB_PERFIL_FUNCIONALIDADE', 'I', 28, 14),
(34, 'TB_USUARIO', 'U', 1, 15),
(35, 'TB_PROJETO', 'I', 1, 16),
(36, 'TB_MODULO', 'I', 1, 17),
(37, 'TB_SESSAO', 'I', 1, 18),
(38, 'TB_SESSAO', 'I', 2, 19),
(39, 'TB_HISTORIA', 'I', 1, 20),
(40, 'TB_HISTORICO_HISTORIA', 'I', 1, 21),
(41, 'TB_HISTORIA', 'I', 2, 22),
(42, 'TB_HISTORICO_HISTORIA', 'I', 2, 23);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_camisa`
--

CREATE TABLE `tb_camisa` (
  `co_camisa` int(11) NOT NULL,
  `no_camisa` varchar(80) DEFAULT NULL,
  `tp_pedido` varchar(1) DEFAULT NULL,
  `nu_valor_custo` decimal(8,2) DEFAULT NULL,
  `nu_valor_venda` decimal(8,2) DEFAULT NULL,
  `co_imagem` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_camisa_cor_camisa`
--

CREATE TABLE `tb_camisa_cor_camisa` (
  `co_camisa_cor_camisa` int(10) NOT NULL,
  `co_camisa` int(11) NOT NULL,
  `co_cor_camisa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_categoria_agenda`
--

CREATE TABLE `tb_categoria_agenda` (
  `co_categoria_agenda` int(10) NOT NULL,
  `no_categoria_agenda` varchar(80) DEFAULT NULL,
  `ds_cor` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `tb_categoria_agenda`
--

INSERT INTO `tb_categoria_agenda` (`co_categoria_agenda`, `no_categoria_agenda`, `ds_cor`) VALUES
(1, 'Reunião', 'green'),
(2, 'Ensaio', 'default'),
(3, 'Encontro', 'purple'),
(4, 'Formação', 'orange'),
(5, 'Evento', 'beige'),
(6, 'Intercessão', 'black'),
(7, 'Outros', 'warning'),
(8, 'Missão', 'gray');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_categoria_evento`
--

CREATE TABLE `tb_categoria_evento` (
  `co_categoria_evento` int(11) NOT NULL,
  `no_categoria_evento` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `tb_categoria_evento`
--

INSERT INTO `tb_categoria_evento` (`co_categoria_evento`, `no_categoria_evento`) VALUES
(1, 'Outros'),
(2, 'Retiro'),
(3, 'Vigília'),
(4, 'Intercessão'),
(5, 'Pregação'),
(6, 'Adoração'),
(7, 'Tarde de Integração');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_comissao_evento`
--

CREATE TABLE `tb_comissao_evento` (
  `co_comissao_evento` int(8) NOT NULL,
  `co_evento` int(11) NOT NULL,
  `co_usuario` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_contato`
--

CREATE TABLE `tb_contato` (
  `co_contato` int(11) NOT NULL,
  `nu_tel1` varchar(15) DEFAULT NULL,
  `nu_tel2` varchar(15) DEFAULT NULL,
  `nu_tel3` varchar(15) DEFAULT NULL,
  `nu_tel_0800` varchar(30) DEFAULT NULL,
  `ds_email` varchar(150) DEFAULT NULL,
  `ds_site` varchar(100) DEFAULT NULL,
  `ds_facebook` varchar(90) DEFAULT NULL,
  `ds_twitter` varchar(90) DEFAULT NULL,
  `ds_instagram` varchar(90) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `tb_contato`
--

INSERT INTO `tb_contato` (`co_contato`, `nu_tel1`, `nu_tel2`, `nu_tel3`, `nu_tel_0800`, `ds_email`, `ds_site`, `ds_facebook`, `ds_twitter`, `ds_instagram`) VALUES
(1, '61993274991', '6130826060', '', NULL, 'leonardomcbessa@gmail.com', NULL, NULL, NULL, NULL),
(2, '61995022920', '61982512602', '', NULL, 'amandatominaginha@gmail.com', NULL, NULL, NULL, NULL),
(3, '6134588070', '6134588070', '', NULL, 'Iborges257@hotmail.com', NULL, NULL, NULL, NULL),
(4, '61984800492', '', '', NULL, 'nayane.duda11@gmail.com', NULL, NULL, NULL, NULL),
(6, '61991639445', '', '', NULL, 'henriquecarvalhohca@outlook.com', NULL, NULL, NULL, NULL),
(7, '61998216342', '61982610934', '', NULL, 'amandasliima@hotmail.com', NULL, NULL, NULL, NULL),
(8, '61993898324', '61994186538', '', NULL, 'jerlanesilva06@gmail.com', NULL, NULL, NULL, NULL),
(9, '61982361967', '61993077479', '', NULL, 'Joaopereira407@hotmail.com', NULL, NULL, NULL, NULL),
(10, '61992850286', '', '', NULL, 'karenn.geovanna@gmail.com', NULL, NULL, NULL, NULL),
(11, '61996330428', '', '', NULL, 'lilirtais@gmail.com', NULL, NULL, NULL, NULL),
(13, '6192198414', '6182701888', '', NULL, 'frabriceras15@gmail.com', NULL, NULL, NULL, NULL),
(14, '61982609125', '61981214179', '', NULL, 'sirlei_arq@hotmail.com', NULL, NULL, NULL, NULL),
(16, '61995637226', '61993166755', '', NULL, 'lucaslcr33@gmail.com', NULL, NULL, NULL, NULL),
(17, '61984390834', '6132086444', '', NULL, 'wallissonirvans@gmail.com', NULL, NULL, NULL, NULL),
(18, '61992775753', '', '', NULL, 'manuela@marangoni.adm.br', NULL, NULL, NULL, NULL),
(19, '61933593574', '61933593574', '', NULL, 'Priscila.thelight@gmail.com', NULL, NULL, NULL, NULL),
(20, '61995753532', '61991157538', '', NULL, 'mercia.batista@hotmail.com', NULL, NULL, NULL, NULL),
(21, '61984269119', '', '', NULL, 'v.cristinabsb.vc@gmail.com', NULL, NULL, NULL, NULL),
(23, '61991869697', '', '', NULL, 'alunodiogoetb@gmail.com', NULL, NULL, NULL, NULL),
(24, '61992458959', '6133778341', '', NULL, 'cassiorodriguescastro08@gmail.com', NULL, NULL, NULL, NULL),
(25, '61986725701', '61986521612', '', NULL, 'mendescatherine44@gmail.com', NULL, NULL, NULL, NULL),
(26, '61995021840', '', '', NULL, 'tominagaiv@gmail.com', NULL, NULL, NULL, NULL),
(27, '61999567013', '61999567013', '', NULL, 'thaynaratonhaz@gmail.com', NULL, NULL, NULL, NULL),
(29, '61984640608', '61992953159', '', NULL, 'Ericastephanie2015@gmail.com', NULL, NULL, NULL, NULL),
(31, '61993151297', '', '', NULL, 'lucrece.neri@hotmail.com', NULL, NULL, NULL, NULL),
(32, '61985667861', '61999043516', '', NULL, 'pedroaugustopacheco12@gmail.com', NULL, NULL, NULL, NULL),
(33, '61996979071', '6135972532', '', NULL, 'Gsouzat28@gmail.com', NULL, NULL, NULL, NULL),
(34, '6195121814', '', '', NULL, 'Rauldmc52@gmail.com', NULL, NULL, NULL, NULL),
(36, '61991984370', '', '', NULL, 'lukka_bessa@hotmail.com', NULL, NULL, NULL, NULL),
(37, '61991058681', '', '', NULL, 'lele.403@hotmail.com', NULL, NULL, NULL, NULL),
(39, '61994129510', '', '', NULL, 'vitoriaprudenciol@gmail.com', NULL, NULL, NULL, NULL),
(41, '61985548484', '6134586918', '', NULL, 'gabimsouza_@hotmail.com', NULL, NULL, NULL, NULL),
(42, '61985548484', '61986090912', '', NULL, 'gabimsouza_@hotmail.con', NULL, NULL, NULL, NULL),
(44, '61993872602', '61930814590', '', NULL, 'vitorhbarroso@hotmail.com', NULL, NULL, NULL, NULL),
(47, '61992563934', '61992563934', '', NULL, 'carlos.lima.18@hotmai.com', NULL, NULL, NULL, NULL),
(48, '61991893526', '', '', NULL, 'larissamesquita98@gmail.com', NULL, NULL, NULL, NULL),
(49, '61995801026', '', '', NULL, 'carloschristian03@gmail.com', NULL, NULL, NULL, NULL),
(50, '61986194836', '61985671063', '', NULL, 'Pcdanielle12@gmail.com', NULL, NULL, NULL, NULL),
(51, '61930395165', '61999800644', '', NULL, 'Babynhalindinha_@hotmail.com', NULL, NULL, NULL, NULL),
(52, '61993288306', '6191621818', '', NULL, 'paulin_adt@hotmail.com', NULL, NULL, NULL, NULL),
(53, '61992516402', '61992226161', '', NULL, 'Karollina@live.com', NULL, NULL, NULL, NULL),
(54, '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(55, '61984727547', '', '', NULL, 'Gabiribas746@gmail.com', NULL, NULL, NULL, NULL),
(56, '61993935517', '61981975822', '', NULL, 'monique.vieira999@gmail.com', NULL, NULL, NULL, NULL),
(57, '61992660496', '', '', NULL, 'Leazevedob@gmail.com', NULL, NULL, NULL, NULL),
(58, '61992971837', '', '', NULL, 'thaisksm23@gmail.com', NULL, NULL, NULL, NULL),
(59, '61991426490', '61999661640', '', NULL, 'leticia.martinsousa@hotmail.com', NULL, NULL, NULL, NULL),
(60, '61991839164', '', '', NULL, 'keitermaia@hotmail.com', NULL, NULL, NULL, NULL),
(61, '61983298074', '61991124059', '', NULL, 'ronielrodrigues.96@hotmail.com', NULL, NULL, NULL, NULL),
(62, '6191066240', '6191066240', '', NULL, 'lililasp@gmail.com', NULL, NULL, NULL, NULL),
(63, '61991981891', '61992240268', '', NULL, 'Thamiires369@gmail.com', NULL, NULL, NULL, NULL),
(64, '61984199148', '61992225838', '', NULL, 'annacarolinyr46@gmail.com', NULL, NULL, NULL, NULL),
(65, '61985376731', '', '', NULL, 'clarissevitoriafranca@gmail.com', NULL, NULL, NULL, NULL),
(66, '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(67, '6193826548', '6192641163', '', NULL, 'Joycefe.lopes@gmail.com', NULL, NULL, NULL, NULL),
(68, '61992030663', '61991698705', '', NULL, 'sabreu192@gmail.com', NULL, NULL, NULL, NULL),
(69, '61985784112', '61985175039', '', NULL, 'Kaasilva0720@gmail.com', NULL, NULL, NULL, NULL),
(70, '61992771024', '', '', NULL, 'leticiapsilva03@gmail.com', NULL, NULL, NULL, NULL),
(71, '61982057541', '', '', NULL, 'Evelynk039@gmail.com', NULL, NULL, NULL, NULL),
(72, '61986665765', '61985390854', '', NULL, 'taynararibeirodelima@gmail.com', NULL, NULL, NULL, NULL),
(73, '61985548484', '61934586918', '', NULL, 'adriel_eas22k@live.com', NULL, NULL, NULL, NULL),
(74, '61993259985', '6134594937', '', NULL, 'Linnekerlima@hotmail.com', NULL, NULL, NULL, NULL),
(75, '61985539668', '', '', NULL, 'kamilaf.silva@hotmail.com', NULL, NULL, NULL, NULL),
(76, '61983049879', '', '', NULL, 'tayanne734@gmail.com', NULL, NULL, NULL, NULL),
(77, '996657709', '992263829', '', NULL, 'Luamar305@gmail.com', NULL, NULL, NULL, NULL),
(78, '6133598986', '6133598986', '', NULL, 'carolinadossantoscfds@outlook.com', NULL, NULL, NULL, NULL),
(79, '62998583534', '6185548484', '', NULL, 'garciamendesisabella@gmail.com', NULL, NULL, NULL, NULL),
(81, '61982892125', '61981173673', '', NULL, 'Labussolo@gmail.com', NULL, NULL, NULL, NULL),
(82, '61999620997', '61999620997', '', NULL, 'Mayllasbalzani@gmail.com', NULL, NULL, NULL, NULL),
(83, '61996489605', '61996489605', '', NULL, 'jessikalayanerocha@gmail.com', NULL, NULL, NULL, NULL),
(84, '61992346540', '61991091755', '', NULL, 'brena.kga.03@gmail.com', NULL, NULL, NULL, NULL),
(85, '61985664072', '61985315392', '', NULL, 'jdarc.foliveira@gmail.com', NULL, NULL, NULL, NULL),
(86, '61998762818', '6135418425', '', NULL, 'deivsonef@gmail.com', NULL, NULL, NULL, NULL),
(87, '61992847325', '', '', NULL, 'Macleal.vic@gmail.com', NULL, NULL, NULL, NULL),
(88, '61985032230', '', '', NULL, 'Gustavinho.rgs@hotmail.com', NULL, NULL, NULL, NULL),
(89, '61986785106', '61985494269', '', NULL, 'edylenedacruzsilvalene@hotmail.com', NULL, NULL, NULL, NULL),
(90, '61982999300', '', '', NULL, 'gleice.izazavedo@gmail.com', NULL, NULL, NULL, NULL),
(92, '61983701441', '61985494269', '', NULL, 'barbosagabrieldasilva9@gmail.com', NULL, NULL, NULL, NULL),
(93, '61982377985', '61982207943', '', NULL, 'Palomaferreira710@gmail.com', NULL, NULL, NULL, NULL),
(94, '6199446855', '6193240068', '', NULL, 'Marialeticiaestrela2011@hotmail.com', NULL, NULL, NULL, NULL),
(95, '66995622616', '61986061761', '', NULL, 'danielsalmeidacontato@gmail.com', NULL, NULL, NULL, NULL),
(97, '61995250255', '61992240268', '', NULL, 'thaynara.mkt@gmail.com', NULL, NULL, NULL, NULL),
(98, '61992023817', '61996520935', '', NULL, 'Jbiancapsdf@hotmail.com', NULL, NULL, NULL, NULL),
(99, '55619825702', '61992516402', '', NULL, 'diego46ziinho@gmail.com', NULL, NULL, NULL, NULL),
(100, '61996681204', '', '', NULL, 'maysapd@hotmail.com', NULL, NULL, NULL, NULL),
(102, '61985547353', '61981392235', '', NULL, 'nandasc2000@gmail.com', NULL, NULL, NULL, NULL),
(103, '61998812820', '61996834444', '', NULL, 'orlinda_bizerra@hotmail.com', NULL, NULL, NULL, NULL),
(105, '61995438917', '', '', NULL, 'patttynevesaa@hotmail.com', NULL, NULL, NULL, NULL),
(106, '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(107, '61984995380', '', '', NULL, 'fehs2gomes@hotmail.com', NULL, NULL, NULL, NULL),
(108, '61992797426', '6133770288', '', NULL, 'pires.h.pedro@gmail.com', NULL, NULL, NULL, NULL),
(109, '61984352161', '', '', NULL, 'ronnytominaga@gmail.com', NULL, NULL, NULL, NULL),
(110, '61999350611', '61996528144', '', NULL, 'Biancaceci.vieira02@gmail.com', NULL, NULL, NULL, NULL),
(111, '61991683338', '61995326987', '', NULL, 'Victorhuugo1@outlook.com', NULL, NULL, NULL, NULL),
(112, '61998590100', '', '', NULL, 'tayane.moreira16@gmail.com', NULL, NULL, NULL, NULL),
(113, '6199457429', '6191389257', '', NULL, 'martinhakarina1980@gmail.com', NULL, NULL, NULL, NULL),
(114, '61993836591', '6133793695', '', NULL, 'anasantos17021997@gmail.com', NULL, NULL, NULL, NULL),
(115, '61991901852', '', '', NULL, 'brunolsouza20@gmail.com', NULL, NULL, NULL, NULL),
(116, '61981006608', '6199422906', '', NULL, 'Sonmurillo@gmail.com', NULL, NULL, NULL, NULL),
(117, '61991827340', '', '', NULL, 'Nathalyapimentel.np@gmail.com', NULL, NULL, NULL, NULL),
(118, '61991031121', '', '', NULL, 'Pedrogt20@gmail.com', NULL, NULL, NULL, NULL),
(119, '61991535796', '6133843340', '', NULL, 'dentistajoaocarlos@gmail.com', NULL, NULL, NULL, NULL),
(120, '61992357123', '61983701441', '', NULL, 'jcamila92@gmail.com', NULL, NULL, NULL, NULL),
(121, '61996289579', '61995941255', '', NULL, 'laradesousaalmeida@gmail.com', NULL, NULL, NULL, NULL),
(122, '6186466962', '61982515049', '', NULL, 'larissanobrelnc@gmail.com', NULL, NULL, NULL, NULL),
(124, '6185749300', '6132575264', '', NULL, 'abruna268@gmail.com', NULL, NULL, NULL, NULL),
(125, '61998727815', '', '', NULL, 'honoriodebora1@gmail.com', NULL, NULL, NULL, NULL),
(126, '61999646727', '61999376262', '', NULL, 'mariaclaudia11@gmail.com', NULL, NULL, NULL, NULL),
(127, '61986084526', '61993836591', '', NULL, 'Yaraanjinha2011@gmail.com', NULL, NULL, NULL, NULL),
(128, '61992626767', '', '', NULL, 'baraunaelton9@gmail.com', NULL, NULL, NULL, NULL),
(129, '61983104193', '6191660308', '', NULL, 'Vitorribeirogatao37@gmail.com', NULL, NULL, NULL, NULL),
(130, '61992198408', '61992703294', '', NULL, 'Taynararoodriguess@gmail.com', NULL, NULL, NULL, NULL),
(132, '61984692820', '', '', NULL, 'romulomiran@hotmail.com', NULL, NULL, NULL, NULL),
(133, '61985101194', '61993615001', '', NULL, 'dory193@gmail.com', NULL, NULL, NULL, NULL),
(134, '61998581287', '', '', NULL, 'thaisxavieraraujo@gmail.com', NULL, NULL, NULL, NULL),
(135, '61982512602', '61992203000', '', NULL, 'Leila.tominaga@gmail.com', NULL, NULL, NULL, NULL),
(136, '61982608328', '61982484443', '', NULL, 'maquiagem.mari@gmail.com', NULL, NULL, NULL, NULL),
(137, '61993700259', '6134598623', '', NULL, 'lidianeadm2010@gmail.com', NULL, NULL, NULL, NULL),
(138, '6130131416', '', '', NULL, 'kamilaf.silvac@gmail.com', NULL, NULL, NULL, NULL),
(139, '6186339292', '61984131001', '', NULL, 'Brunnsalvatora@gmail.com', NULL, NULL, NULL, NULL),
(140, '61998458464', '61999910092', '', NULL, 'Jhonyferreirafsa@hotmail.com', NULL, NULL, NULL, NULL),
(142, '61985948276', '', '', NULL, 'Jeffersonfillipe7@gmail.com', NULL, NULL, NULL, NULL),
(143, '61995956387', '61992001998', '', NULL, 'Yankalive5@gmail.com', NULL, NULL, NULL, NULL),
(144, '61993308785', '61992623343', '', NULL, 'Gabrielle-dailu@hotmail.com', NULL, NULL, NULL, NULL),
(145, '61998785437', '61985739058', '', NULL, 'Simonelinda40@gmail.com', NULL, NULL, NULL, NULL),
(146, '61985739058', '61985785437', '', NULL, 'Wesley@evolucaoauditoria.com.br', NULL, NULL, NULL, NULL),
(147, '61999709770', '', '', NULL, 'smyjapa@gmail.com', NULL, NULL, NULL, NULL),
(148, '61992687554', '61984235595', '', NULL, 'larissacharcon@gmail.com', NULL, NULL, NULL, NULL),
(149, '61984466993', '61986380391', '', NULL, 'dudaaaahfreitas@hotmal.com', NULL, NULL, NULL, NULL),
(150, '61993055454', '', '', NULL, 'Karlenerlima@gmail.com', NULL, NULL, NULL, NULL),
(160, '61984453926', '', '', NULL, 'ceci.rns123@gmail.com', NULL, NULL, NULL, NULL),
(161, '61995904410', '61992829568', '', NULL, 'Beatrizjbfly@gmail.com', NULL, NULL, NULL, NULL),
(162, '61985489302', '', '', NULL, 'Mathkurama27@gmail.com', NULL, NULL, NULL, NULL),
(163, '61983478390', '', '', NULL, 'wesley418418@gmail.com', NULL, NULL, NULL, NULL),
(164, '61986379360', '', '', NULL, 'Victorsamueel@hotmail.com', NULL, NULL, NULL, NULL),
(165, '61995726439', '', '', NULL, 'sicahow.sc@gmail.com', NULL, NULL, NULL, NULL),
(166, '61996430509', '', '', NULL, 'mineirob15@gmail.com', NULL, NULL, NULL, NULL),
(167, '61996140871', '6185545695', '', NULL, 'Josebarros100@hotmail.com', NULL, NULL, NULL, NULL),
(168, '61999884614', '', '', NULL, 'Guilherme123@hotmail.com', NULL, NULL, NULL, NULL),
(169, '61992859045', '', '', NULL, 'guilherme.gato401@gmail.com', NULL, NULL, NULL, NULL),
(170, '61982998075', '61981054652', '', NULL, 'marindemaria@gmail.com', NULL, NULL, NULL, NULL),
(171, '61993116666', '', '', NULL, 'Beatriizfd14@gmail.com', NULL, NULL, NULL, NULL),
(172, '61982263494', '61982366410', '', NULL, 'letipereira16.ls@gmail.com', NULL, NULL, NULL, NULL),
(173, '61983622499', '61982366410', '', NULL, 'Joselmadecacia@yahoo.com.br', NULL, NULL, NULL, NULL),
(174, '61998174233', '61998174233', '', NULL, 'samaradesconzi@gmail.com', NULL, NULL, NULL, NULL),
(175, '61986066824', '', '', NULL, 'wesley102002@gmail.com', NULL, NULL, NULL, NULL),
(176, '61992108927', '6130131416', '', NULL, 'ludimilavoadora88@gmail.com', NULL, NULL, NULL, NULL),
(177, '61996776286', '61936423002', '', NULL, 'deisefsa22@hotmail.com', NULL, NULL, NULL, NULL),
(178, '61985732593', '61935591097', '', NULL, 'fernanda.karla.15@hotmail.com', NULL, NULL, NULL, NULL),
(179, '61999096307', '', '', NULL, 'nãotem@gmail.com', NULL, NULL, NULL, NULL),
(180, '61985175039', '61984449230', '', NULL, 'Kamillysilva05122001@gmail.com', NULL, NULL, NULL, NULL),
(181, '61986174379', '61999422906', '', NULL, 'Sonmurillo@hotmail.com', NULL, NULL, NULL, NULL),
(182, '61981006608', '', '', NULL, 'Kartetguy@hotmail.com', NULL, NULL, NULL, NULL),
(183, '61199637881', '61999290418', '', NULL, 'Lidianemarine@hotmail.com', NULL, NULL, NULL, NULL),
(184, '61981486412', '', '', NULL, 'lucas211bispo@gmail.com', NULL, NULL, NULL, NULL),
(185, '61981795422', '', '', NULL, 'fernanda_bsb_96@hotmail.com', NULL, NULL, NULL, NULL),
(186, '61996632002', '', '', NULL, 'monikenardi18@gmail.com', NULL, NULL, NULL, NULL),
(187, '6186642107', '', '', NULL, 'Arlan615s@gmail.com', NULL, NULL, NULL, NULL),
(188, '61981706212', '61981285244', '', NULL, 'leonara98@gmail.com', NULL, NULL, NULL, NULL),
(189, '61984256270', '61984827324', '', NULL, 'keysongabriel2@gmail.com', NULL, NULL, NULL, NULL),
(190, '61984256270', '61984827324', '', NULL, 'Bethrodriques27@gmail.com', NULL, NULL, NULL, NULL),
(191, '55619855113', '', '', NULL, 'Amandapimentel1103@gmail.com', NULL, NULL, NULL, NULL),
(192, '61993126972', '', '', NULL, 'ramos.amaury96@gmail.com', NULL, NULL, NULL, NULL),
(193, '61995462963', '61985546595', '', NULL, 'luiz.m.barros211@gmail.cm', NULL, NULL, NULL, NULL),
(194, '62994952349', '62991235044', '', NULL, 'jose2311@bol.com.br', NULL, NULL, NULL, NULL),
(195, '61985771820', '61986096929', '', NULL, 'Luybrennosantosdesouza@gmail.com', NULL, NULL, NULL, NULL),
(196, '61996714127', '61982915499', '', NULL, 'xavihernandopitt@gmail.com', NULL, NULL, NULL, NULL),
(197, '61992687082', '6133596768', '', NULL, 'higorodrigues.78o@hotmail.com', NULL, NULL, NULL, NULL),
(199, '61994141290', '61992687082', '', NULL, 'hellenthaisd@hotmail.com', NULL, NULL, NULL, NULL),
(200, '61991098481', '61985310904', '', NULL, 'diegorsilva211@gmail.com', NULL, NULL, NULL, NULL),
(201, '61998205779', '', '', NULL, 'soniaramaia@gmail.com', NULL, NULL, NULL, NULL),
(202, '61981917532', '61981917532', '', NULL, 'Raquelcosta2223@gmail.com', NULL, NULL, NULL, NULL),
(203, '61981767001', '', '', NULL, 'julia.farajb@gmail.com', NULL, NULL, NULL, NULL),
(204, '61982751500', '', '', NULL, 'matheusmartinsdacosta21@gmail.com', NULL, NULL, NULL, NULL),
(205, '61982059124', '61992999241', '', NULL, 'Sempremense2009@hotmail.com', NULL, NULL, NULL, NULL),
(206, '6198152345', '', '', NULL, 'karenmialichii@gmail.com', NULL, NULL, NULL, NULL),
(207, '61986171345', '6134591017', '', NULL, 'nãotememail@gmail.com', NULL, NULL, NULL, NULL),
(208, '6198182882', '', '', NULL, 'poly.lima270@gmail.com', NULL, NULL, NULL, NULL),
(209, '6185602319', '6130814590', '', NULL, 'jonatasfradique403@gmail.com', NULL, NULL, NULL, NULL),
(210, '6183262286', '6195706299', '', NULL, 'Laisfofa13@gmail.com', NULL, NULL, NULL, NULL),
(211, '61986153155', '61981220563', '', NULL, 'analidiaholanda2@gmail.com', NULL, NULL, NULL, NULL),
(212, '61996260189', '61996771042', '', NULL, 'Alexgehlhaar33@gmail.com', NULL, NULL, NULL, NULL),
(213, '61996585605', '61999910092', '', NULL, 'Joyce.sbpromotora@gmail.com', NULL, NULL, NULL, NULL),
(214, '55613358491', '61996252678', '', NULL, 'Joycemarquessantana@gmail.com', NULL, NULL, NULL, NULL),
(215, '61994400275', '', '', NULL, 'tiagomorera1@gmail.com', NULL, NULL, NULL, NULL),
(216, '61992473325', '61996532057', '', NULL, 'bibikathleen.ak18@gmail.com', NULL, NULL, NULL, NULL),
(217, '6198271871', '6199584033', '', NULL, 'marialuizacrm5@gmail.com', NULL, NULL, NULL, NULL),
(218, '61993618785', '', '', NULL, 'ellielgoodboy@hotmail.com', NULL, NULL, NULL, NULL),
(219, '6185864901', '6192804665', '', NULL, 'dannegreirotv@gmail.com', NULL, NULL, NULL, NULL),
(220, '61993849880', '', '', NULL, 'carlos.clonic@gmail.com', NULL, NULL, NULL, NULL),
(221, '61995174376', '', '', NULL, 'naotememail@gmail.com.br', NULL, NULL, NULL, NULL),
(222, '61993347240', '61993347240', '', NULL, 'naotenhoemail@home.com', NULL, NULL, NULL, NULL),
(223, '61992723686', '61992070798', '', NULL, 'Guilhermeryukaii@gmail.com', NULL, NULL, NULL, NULL),
(224, '6195752955', '61996744435', '', NULL, 'Erikapradoestudos@hotmail.com', NULL, NULL, NULL, NULL),
(225, '61985254241', '', '', NULL, 'Rafaelfontenele123@gmail.com', NULL, NULL, NULL, NULL),
(226, '6185970132', '6181043721', '', NULL, 'neuzaferreirabrito@gmail.com', NULL, NULL, NULL, NULL),
(227, '61985774596', '61984366157', '', NULL, 'adilsoarques@gmail.com', NULL, NULL, NULL, NULL),
(228, '61985215677', '61991710919', '', NULL, 'brunna.trabalhos@gmail.com', NULL, NULL, NULL, NULL),
(229, '61985864901', '61985105244', '', NULL, 'Jcqm21@yahoo.com', NULL, NULL, NULL, NULL),
(230, '61983086107', '61981215733', '', NULL, 'joaovictorcoelho042@gmail.com', NULL, NULL, NULL, NULL),
(231, '61986155790', '61985767206', '', NULL, 'Camilagabrieldf@gmail.com', NULL, NULL, NULL, NULL),
(232, '61996117709', '', '', NULL, 'vitorvalentinbenetti@gmail.com', NULL, NULL, NULL, NULL),
(233, '61981574990', '61992956576', '', NULL, 'emyminile@gmail.com', NULL, NULL, NULL, NULL),
(234, '61998360693', '', '', NULL, 'alexsandramaiberg@hotmail.com', NULL, NULL, NULL, NULL),
(235, '61981215733', '61981046496', '', NULL, 'Ribamar.ph@gmail.com', NULL, NULL, NULL, NULL),
(236, '61995479913', '', '', NULL, 'fhms1996@gmail.com', NULL, NULL, NULL, NULL),
(237, '61991998045', '61991998045', '', NULL, 'Suyane.tallita@outlook.com', NULL, NULL, NULL, NULL),
(238, '61991148026', '', '', NULL, 'windsor.alexandre@gmail.com', NULL, NULL, NULL, NULL),
(239, '61994191238', '', '', NULL, 'saviomaria04@gmail.com', NULL, NULL, NULL, NULL),
(240, '6130130388', '61991811369', '', NULL, 'alvesjackson403@gmail.com', NULL, NULL, NULL, NULL),
(241, '6194241851', '', '', NULL, 'rafaeel19silva@gmail.com', NULL, NULL, NULL, NULL),
(243, '61984833727', '61981413591', '', NULL, 'Brennodaniel123@gmail.com', NULL, NULL, NULL, NULL),
(244, '61986241449', '', '', NULL, 'ana.anacarolinas@gmail.com', NULL, NULL, NULL, NULL),
(245, '61985116994', '', '', NULL, 'ariane.nunes768@gmail.com', NULL, NULL, NULL, NULL),
(246, '61992797493', '', '', NULL, 'melnek@gmail.com', NULL, NULL, NULL, NULL),
(247, '61986622428', '', '', NULL, 'italofrnd@gmail.com', NULL, NULL, NULL, NULL),
(248, '61993577852', '', '', NULL, 'rafael-bsb-df@hotmail.com', NULL, NULL, NULL, NULL),
(249, '16991987278', '', '', NULL, 'edwirges_macedo@hotmail.com', NULL, NULL, NULL, NULL),
(250, '61993738715', '', '', NULL, 'daniela_almeida2015@hotmail.com', NULL, NULL, NULL, NULL),
(251, '61981748741', '', '', NULL, 'ekajvilela@gmail.com', NULL, NULL, NULL, NULL),
(252, '61991357814', '', '', NULL, 'bragainocentes@gmail.com', NULL, NULL, NULL, NULL),
(253, '61984560036', '61996994604', '', NULL, 'mklismann35@gmail.com', NULL, NULL, NULL, NULL),
(254, '61992655667', '61999748391', '', NULL, 'marimelosalles@gmail.com', NULL, NULL, NULL, NULL),
(255, '61993095014', '', '', NULL, 'thais_cristinacampos@hotmail.com', NULL, NULL, NULL, NULL),
(256, '61981678354', '61999615844', '', NULL, 'mariafefe.atriz@gmail.com', NULL, NULL, NULL, NULL),
(257, '61998633304', '', '', NULL, 'reelkaponte@gmail.com', NULL, NULL, NULL, NULL),
(258, '61998165812', '', '', NULL, 'geovannafsa16@gmail.com', NULL, NULL, NULL, NULL),
(259, '61996226916', '', '', NULL, 'gordinha_gbbsb@hotmail.com', NULL, NULL, NULL, NULL),
(260, '61994160085', '', '', NULL, 'KeyceCristina515@gmail.com', NULL, NULL, NULL, NULL),
(261, '61993184494', '6133726988', '', NULL, 'giovannabbarros0@gmail.com', NULL, NULL, NULL, NULL),
(262, '61983146557', '6182263156', '', NULL, 'briellenoliveira@gmail.com', NULL, NULL, NULL, NULL),
(263, '61992309208', '61994186712', '', NULL, 'simoesb599@gmail.com', NULL, NULL, NULL, NULL),
(264, '61994052838', '61992927004', '', NULL, 'gustavoalves3019@gmail.com', NULL, NULL, NULL, NULL),
(265, '61999289043', '', '', NULL, 'evilene.deocleciano@gmail.com', NULL, NULL, NULL, NULL),
(266, '61996365916', '', '', NULL, 'ester_cristinnaa@gmail.com', NULL, NULL, NULL, NULL),
(267, '61984816809', '', '', NULL, 'mvmtomaz@gmail.com', NULL, NULL, NULL, NULL),
(268, '61995649480', '', '', NULL, 'cabilo60@gmail.com', NULL, NULL, NULL, NULL),
(269, '61985695417', '', '', NULL, 'daniloarantessebastiao@gmail.com', NULL, NULL, NULL, NULL),
(270, '61984579180', '', '', NULL, 'isabelacristinacapitulino@gmail.com', NULL, NULL, NULL, NULL),
(271, '61984675237', '6133771162', '', NULL, 'Mariaclarasantosribeiro2@gmail.com', NULL, NULL, NULL, NULL),
(274, '61984415908', '', '', NULL, 'ray.olive@hotmail.com', NULL, NULL, NULL, NULL),
(275, '61984769223', '', '', NULL, 'polyanaveloso98@gmail.com', NULL, NULL, NULL, NULL),
(276, '61992982542', '', '', NULL, 'jeaneandrade9@yahoo.com.br', NULL, NULL, NULL, NULL),
(277, '61983309202', '6198001500', '', NULL, 'Leticiamirandamoraes@gmail.com', NULL, NULL, NULL, NULL),
(278, '61996143499', '61996143499', '', NULL, 'joaovictorluziano19@gmail.com', NULL, NULL, NULL, NULL),
(279, '61998288794', '6133717497', '', NULL, 'Aline_carvalho.lima@hotmail.com', NULL, NULL, NULL, NULL),
(280, '61992695206', '61992895241', '', NULL, 'juceliasantos53@gmail.com', NULL, NULL, NULL, NULL),
(281, '61992035805', '61991673874', '', NULL, 'ayrtonferreiralopes@gmail.com', NULL, NULL, NULL, NULL),
(282, '61992669658', '61985160924', '', NULL, 'matheus.25humberto@gmail.com', NULL, NULL, NULL, NULL),
(283, '61981773752', '61991595972', '', NULL, 'Gabrielmelise50@gmail.com', NULL, NULL, NULL, NULL),
(284, '6141412552', '61981444737', '', NULL, 'josiane-pl@hotmail.com', NULL, NULL, NULL, NULL),
(285, '61998555791', '', '', NULL, 'raqueelfreire72@gmail.com', NULL, NULL, NULL, NULL),
(286, '61998663009', '', '', NULL, 'Gabsmangabeiralima@gmail.com', NULL, NULL, NULL, NULL),
(287, '61983444114', '6133590830', '', NULL, 'natalia_soaresdf@hotmail.com', NULL, NULL, NULL, NULL),
(288, '61996354123', '', '', NULL, 'Moreira.anaflavia@gmail.com', NULL, NULL, NULL, NULL),
(289, '6134599454', '', '', NULL, 'alandf95@hotmail.com', NULL, NULL, NULL, NULL),
(290, '6192659364', '61992101477', '', NULL, 'Mliveira.leninha@gmail.com', NULL, NULL, NULL, NULL),
(291, '99982031686', '61999911885', '', NULL, 'victoriatina@gmail.com', NULL, NULL, NULL, NULL),
(292, '61995227713', '', '', NULL, 'adrianafisioterapia17@gmail.com', NULL, NULL, NULL, NULL),
(293, '61986314081', '', '', NULL, 'nathaliasaraiva.s@gmail.com', NULL, NULL, NULL, NULL),
(294, '61982397775', '', '', NULL, 'Carolromeirom@hotmail.com', NULL, NULL, NULL, NULL),
(295, '61993058167', '', '', NULL, 'joaopmnobrega@hotmail.com', NULL, NULL, NULL, NULL),
(296, '61986540712', '61984765848', '', NULL, 'keniamaria.costa@hotmail.com', NULL, NULL, NULL, NULL),
(297, '61983658563', '61981452800', '', NULL, 'Majuh899@gmail.com', NULL, NULL, NULL, NULL),
(298, '61996763980', '', '', NULL, 'lorrane18rocha@gmail.com', NULL, NULL, NULL, NULL),
(299, '61993983131', '61983155216', '', NULL, 'priscilamartins213@gmail.com', NULL, NULL, NULL, NULL),
(300, '61985572017', '', '', NULL, 'andy.ncarvalho5@gmail.com.br', NULL, NULL, NULL, NULL),
(301, '61998106244', '', '', NULL, 'karinamendesb@gmail.com', NULL, NULL, NULL, NULL),
(302, '61999686754', '', '', NULL, 'marceloabi55@gmail.com', NULL, NULL, NULL, NULL),
(303, '61991198563', '', '', NULL, 'akaroliny2@gmail.com', NULL, NULL, NULL, NULL),
(304, '61984486590', '', '', NULL, 'brunos-santos@outlook.com', NULL, NULL, NULL, NULL),
(305, '61985291353', '', '', NULL, 'asawelington@gmail.com', NULL, NULL, NULL, NULL),
(306, '61985291353', '', '', NULL, 'anapaula.cdsi@gmail.com', NULL, NULL, NULL, NULL),
(307, '61986621223', '', '', NULL, 'sarahguimaraes07@icloud.com', NULL, NULL, NULL, NULL),
(308, '6198663277', '61981794640', '', NULL, 'sandra.raquel.rb@hotmail.com', NULL, NULL, NULL, NULL),
(309, '61995916549', '61992415372', '', NULL, 'dunyfg33@gmail.com', NULL, NULL, NULL, NULL),
(310, '61995704813', '', '', NULL, 'lucasbf22@gmail.com', NULL, NULL, NULL, NULL),
(311, '61982102428', '', '', NULL, 'luuh.bessa@gmail.com', NULL, NULL, NULL, NULL),
(312, '61984248986', '', '', NULL, 'tiofofao_tialu@hotmail.com', NULL, NULL, NULL, NULL),
(313, '61982181194', '', '', NULL, 'stephanie.p.silva@hotmail.com', NULL, NULL, NULL, NULL),
(314, '61986444870', '', '', NULL, 'dirijanafaixa@gmail.com', NULL, NULL, NULL, NULL),
(315, '61995840193', '', '', NULL, 'luisfellype2312@gmail.com', NULL, NULL, NULL, NULL),
(316, '6199620511', '6194398870', '', NULL, 'Dudu.ddtank@hotmail.com', NULL, NULL, NULL, NULL),
(317, '61996727854', '', '', NULL, 'barbarasany90@gmail.com', NULL, NULL, NULL, NULL),
(318, '61992157269', '', '', NULL, 'madu.cardoso.araujo@gmail.com', NULL, NULL, NULL, NULL),
(319, '61982183465', '', '', NULL, 'flaviacarolinaf@gmail.com', NULL, NULL, NULL, NULL),
(320, '61986695277', '6133737021', '', NULL, 'yasmimofs@gmail.com', NULL, NULL, NULL, NULL),
(321, '61991434270', '61991434270', '', NULL, 'Renata.francisca022@gmail.com', NULL, NULL, NULL, NULL),
(322, '55613567703', '61986032543', '', NULL, 'tiagosteferson@live.com', NULL, NULL, NULL, NULL),
(323, '61986032543', '', '', NULL, 'biancagms96@gmail.com', NULL, NULL, NULL, NULL),
(324, '61984666000', '61996727854', '', NULL, 'jv.ferreira.araujo@gmail.com', NULL, NULL, NULL, NULL),
(325, '61985254513', '', '', NULL, 'gabrielalvino8@gmail.com', NULL, NULL, NULL, NULL),
(326, '61981901136', '', '', NULL, 'larissa_correia21@hotmail.com', NULL, NULL, NULL, NULL),
(327, '61992230252', '61991334352', '', NULL, 'barbarasousa141516@gmail.com', NULL, NULL, NULL, NULL),
(328, '61995661446', '61984823219', '', NULL, 'crisnui.santana@gmail.com', NULL, NULL, NULL, NULL),
(329, '61994188533', '', '', NULL, 'wandersonsouza1313@gmail.com', NULL, NULL, NULL, NULL),
(330, '61981331765', '61984179640', '', NULL, 'clarinha.regis16@gmail.com', NULL, NULL, NULL, NULL),
(331, '61986664016', '61986175756', '', NULL, 'mariarita.o.feitosa@gmail.com', NULL, NULL, NULL, NULL),
(332, '61982193081', '61981979118', '', NULL, 'luciannka@bol.com.br', NULL, NULL, NULL, NULL),
(333, '61995962739', '', '', NULL, 'vitoraraujo.ma@gmail.com', NULL, NULL, NULL, NULL),
(334, '6199626700', '', '', NULL, 'rhaydcastro@gmail.com', NULL, NULL, NULL, NULL),
(335, '61998312250', '', '', NULL, 'pvrbr12@gmail.com', NULL, NULL, NULL, NULL),
(336, '61983610589', '', '', NULL, 'Boejanderwill@gmail.com', NULL, NULL, NULL, NULL),
(337, '61996240659', '61999248096', '', NULL, 'Thiagovilasboas@outlook.com', NULL, NULL, NULL, NULL),
(338, '61984919850', '6185403024', '', NULL, 'isabellamayther17@gmail.com', NULL, NULL, NULL, NULL),
(339, '61991607594', '', '', NULL, 'gabihxd@gmail.com', NULL, NULL, NULL, NULL),
(340, '61996538554', '61996528144', '', NULL, 'henriqetecagri15@hotmail.com', NULL, NULL, NULL, NULL),
(341, '61985445452', '', '', NULL, 'marianallmaia@gmail.com', NULL, NULL, NULL, NULL),
(342, '61999682312', '', '', NULL, 'carlos.caca41@gmail.com', NULL, NULL, NULL, NULL),
(343, '61991219557', '', '', NULL, 'pedrotbbt@gmail.com', NULL, NULL, NULL, NULL),
(344, '61998077575', '', '', NULL, 'savionhosab@gmail.com', NULL, NULL, NULL, NULL),
(345, '61998343240', '', '', NULL, 'Gabriele_scg@hotmail.com', NULL, NULL, NULL, NULL),
(346, '61986632777', '61981794640', '', NULL, 'nataliciooliveiraalmeida@hotmail.com', NULL, NULL, NULL, NULL),
(347, '61993275149', '61985445452', '', NULL, 'thiagonunesneves_14@hotmail.com', NULL, NULL, NULL, NULL),
(348, '61993232293', '', '', NULL, 'nclaro655@gmail.com', NULL, NULL, NULL, NULL),
(349, '61986053149', '', '', NULL, 'steffanysobrinho@gmail.com', NULL, NULL, NULL, NULL),
(350, '61986085835', '61986094630', '', NULL, 'rafaelarafacho@hotmail.com', NULL, NULL, NULL, NULL),
(351, '61991042514', '', '', NULL, 'rafaosandprimd@gmail.com', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_controller`
--

CREATE TABLE `tb_controller` (
  `co_controller` int(11) NOT NULL,
  `no_controller` varchar(60) DEFAULT NULL,
  `ds_class_icon` varchar(30) DEFAULT NULL COMMENT 'Classe do Ícone'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `tb_controller`
--

INSERT INTO `tb_controller` (`co_controller`, `no_controller`, `ds_class_icon`) VALUES
(1, 'Gestao', 'clip-data'),
(2, 'Auditoria', 'fa fa-crosshairs'),
(3, 'Acesso', 'clip-connection-2'),
(4, 'Funcionalidade', 'fa fa-outdent'),
(5, 'Perfil', 'clip-stack-empty'),
(6, 'Usuario', 'fa fa-group'),
(7, 'Visita', 'clip-airplane'),
(8, 'Plano', 'clip-banknote'),
(9, 'Assinante', 'clip-user-5'),
(10, 'Agenda', 'fa fa-calendar'),
(11, 'Inscricao', 'clip-note'),
(12, 'FluxoCaixa', 'clip-banknote'),
(13, 'Camisa', 'clip-t-shirt');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_cor_camisa`
--

CREATE TABLE `tb_cor_camisa` (
  `co_cor_camisa` int(11) NOT NULL,
  `no_cor_camisa` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_empresa`
--

CREATE TABLE `tb_empresa` (
  `co_empresa` int(11) NOT NULL,
  `no_empresa` varchar(250) DEFAULT NULL COMMENT 'Razão Social\n',
  `no_fantasia` varchar(150) DEFAULT NULL,
  `dt_cadastro` datetime DEFAULT NULL,
  `nu_cnpj` varchar(20) DEFAULT NULL,
  `nu_insc_estadual` varchar(20) DEFAULT NULL,
  `ds_observacao` text,
  `st_status` varchar(1) DEFAULT NULL,
  `co_pessoa` int(11) NOT NULL COMMENT 'Pessoa responsável pela empresa\n',
  `co_endereco` int(11) NOT NULL,
  `co_contato` int(11) NOT NULL,
  `co_imagem` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_endereco`
--

CREATE TABLE `tb_endereco` (
  `co_endereco` int(11) NOT NULL,
  `ds_endereco` varchar(150) DEFAULT NULL,
  `ds_complemento` varchar(100) DEFAULT NULL,
  `ds_bairro` varchar(80) DEFAULT NULL,
  `nu_cep` varchar(12) DEFAULT NULL,
  `no_cidade` varchar(80) DEFAULT NULL,
  `sg_uf` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `tb_endereco`
--

INSERT INTO `tb_endereco` (`co_endereco`, `ds_endereco`, `ds_complemento`, `ds_bairro`, `nu_cep`, `no_cidade`, `sg_uf`) VALUES
(1, 'qr 403 conjunto 10 casa 28', NULL, 'Samambaia Norte', '72319111', 'Brasília', 'DF'),
(2, 'Shps 602 chac. 97-A', 'Setor P.Sul', 'P.Sul', '72236608', 'Brasília ', 'DF'),
(3, 'QR 210 Conjunto 21 Casa 19 Samambaia Norte', 'Casa', 'Samambaia Norte', '72316219', 'Brasília', 'DF'),
(4, 'QR 208 Conjunto 5', NULL, 'Samambaia Norte (Samambaia)', '72316105', 'Brasília', 'DF'),
(6, 'Qs 403 , conj. 10 casa 27', NULL, 'Samambaia norte', '72319111', 'Brasília', 'DF'),
(7, 'QR 405 Conj 10 Casa 04', NULL, 'Samambaia Norte', '72319210', 'Brasília', 'DF'),
(8, 'QR 211 conj 03 casa 13', NULL, NULL, '72343000', 'Samambaia Norte', 'DF'),
(9, 'Qr 405 Conj 02 Casa 09', 'Casa 09', 'Samambaia', '72319202', 'samambaia norte', 'DF'),
(10, 'Qr 423 Conjunto 03 Casa 24', '24', 'Samambaia Norte', '72325203', 'Brasília', 'DF'),
(11, 'cln 314 bloco d apt 210', '210', 'asa norte', '70773060', 'Brasília ', 'DF'),
(13, 'Qr 421 conjunto 16 casa 03', 'Casa 03', 'Samambaia Norte', '72325119', 'Samambaia', 'DF'),
(14, 'Qr 603 chácara 39 cadáveres 30 B', 'Rua 03 Condomínio Vida Nova', 'Samambaia Norte', '72331100', 'Samambaia ', 'DF'),
(16, 'Quadra: 425, Conjunto:26', 'Casa:14', 'Samambaia Norte', '72327027', 'Brasília', 'DF'),
(17, 'Qnp 32 conj C casa 19', NULL, 'P sul', '72236203', 'Ceilândia', 'DF'),
(18, 'Rua 16 sul', 'Lote 06 apartamento 801', 'Águas Claras', '', NULL, 'DF'),
(19, 'Qr 213 conjunto 05 casa 09', '09', 'Samambaia', '72343105', 'Brasilía', 'DF'),
(20, 'Qr 310 conjunto 16 casa 18', 'samambaia sul', 'samambaia df', '72306817', 'Brasilia ', 'DF'),
(21, 'Qne 2 casa 27', NULL, 'Taguatinga', '72125020', 'Taguatinga Norte', 'DF'),
(23, 'Quadra 315 conjunto 13', 'casa 12', 'Samambaia', '72307613', 'Brasília', 'DF'),
(24, 'Qnp 32 conj S casa', '01', 'Psul', '72236219', 'Ceilândia', 'DF'),
(25, 'QS 409', NULL, 'Samambaia Norte (Samambaia)', '72321530', 'Brasília', 'DF'),
(26, 'QNP 36 Conjunto H', 'Casa 39', 'Setor P.Sul', '72236608', 'Ceilândia-DF', 'DF'),
(27, 'qr 210', '24 cs 17', NULL, '72316225', 'Brasilia', 'DF'),
(29, 'Qr205 conjunto 2 casa 18', 'Próximo ao batalhão', 'Norte', '72341202', 'Samambaia', 'DF'),
(31, 'Qr 403 conjunto 16', 'Casa 17', 'Samambaia Norte', '72319911', 'Samambaia Norte', 'DF'),
(32, 'QUADRA QNP 15 CONJUNTO S', '33', 'P.norte', '72241619', 'BRASÍLIA', 'DF'),
(33, 'Rua 4c chácara 2 lote 23A', NULL, 'Vicente pires', '72001605', 'Brasilia', 'DF'),
(34, 'Qn 211 conjunto 01 casa 35', NULL, 'Samambaia', '72343051', 'Brasilia', 'DF'),
(36, 'QR 405 Conjunto 21 Casa 26', NULL, 'Samambaia Norte', '72319221', 'Brasília', 'DF'),
(37, 'QR 403 conj 10 casa 28', NULL, 'Samambaia Norte', '72319111', 'Brasília', 'DF'),
(39, 'Qr 421 conjunto 09', 'casa 11', 'Samambaia Norte', '72325110', 'Samambaia', 'DF'),
(41, 'Qr 118 conjunto 06 lote 09', NULL, 'Samambaia Sul', '72302807', 'Samambaia ', 'DF'),
(42, 'Qr 118 conjunto 6 lote 9', NULL, 'Samambaia Sul', '72302807', 'Samambaia ', 'DF'),
(44, 'QR 403 conjunto 09', 'Casa 18', 'Samambaia norte', '72319110', 'Samambaia ', 'DF'),
(47, 'Quadra 46 lote 14 santa lucia', 'Águas lindas 2', 'Santa lucia', '72927535', 'Águas lindas ', 'GO'),
(48, 'QI 03 Lote 23', NULL, 'Setor de Industrias', '72265030', 'Ceilândia ', 'DF'),
(49, 'Qi 416 conjunto lote 03', 'Apartamento 101', 'Samambaia norte', '72320317', 'Brasília ', 'DF'),
(50, 'Shps 602 chácara 97 A', 'Setor p.sul', 'P.sul', '72236608', 'Ceilândia', 'DF'),
(51, 'QR 414 Conjunto 13 casa 17', 'Casa 17', 'Samambaia Norte', '72320218', 'Brasília Df', 'DF'),
(52, 'Qnf 8 lote 35 casa 4', NULL, NULL, '72125530', 'Taguatinga Norte', 'DF'),
(53, 'QR 209 conjunto 5 casa 27', 'Samambaia morte', 'Norte', '', 'Brasília', 'DF'),
(54, 'Qnd 16 lote 11 ap 103', NULL, NULL, '', NULL, 'DF'),
(55, 'Ceilândia sul', 'SHSN  lote 29 qd 28 ch 58/123 A', 'Cond. Pinheiro', '72236800', 'Ceilândia ', 'DF'),
(56, 'QNF 8 casa 32', 'Taguatinga', 'Taguatinga norte', '72125580', 'Brasília ', 'DF'),
(57, 'Qr 212 conj 14 casa 15', NULL, 'Samambaia Norte', '72316314', 'Samambaia', 'DF'),
(58, 'Quadra 02 lote 16 apto. 201', NULL, 'Águas Bonitas I', '72926002', 'Águas Lindas GO', 'DF'),
(59, 'Qr 212 conj 14 casa 15', NULL, 'Samambaia', '72316314', 'Samambaia Norte', 'DF'),
(60, 'QR 603 conj. 05', '05', 'SAMAMBAIA NORTE', '72331105', 'Brasília ', 'DF'),
(61, 'QR 403 CONJUNTO 10 CASA 2I', '28', 'Samambaia', '72319111', 'Brasília', 'DF'),
(62, 'Qs 406 conjunto G lote 01 ap 01', NULL, 'Samambaia norte', '72318570', 'Brasília ', 'DF'),
(63, 'QNP 32 CONJUNTO', 'Em frente a escola classe 52', 'P.sul', '72236214', 'Ceilândia', 'DF'),
(64, 'Qr 603 Chácara 39 Rua 05 Casa 68B', '68B', 'Samambaia', '72331150', 'Brasília', 'DF'),
(65, 'QR 609 Conjunto 1', NULL, 'Samambaia Norte (Samambaia)', '72331401', 'Brasília', 'DF'),
(66, 'Quadra 2 Conjunto 1 lote 1', 'Bloco L AP 402', 'Paranoá Parque', '', 'Paranoá ', 'DF'),
(67, 'Qr603 chácara 39 rua 4 casa 52A', 'Condomínio vida nova', 'Samambaia', '72331100', 'Samambaia ', 'DF'),
(68, 'QD 301 Cj 07 bloco A Apt 1005', 'Cond. Via Tropical', 'Samambaia Sul', '72300543', 'Samambaia', 'DF'),
(69, 'Shsps 103 conjunto A casa 31', NULL, 'Por do sol', '', 'Ceilândia sul', 'DF'),
(70, 'QNF 6', NULL, 'Taguatinga Norte (Taguatinga)', '72125560', 'Brasília', 'DF'),
(71, 'Qr 118 conjunto 06 casa 09', NULL, NULL, '72302807', NULL, 'DF'),
(72, 'Qr 405 13 13', '13', 'Samambaia norte', '72319213', 'Brasília ', 'DF'),
(73, 'qr 405 conjunto 25, casa 05', NULL, 'samambaia', '72319225', 'Brasilia', 'DF'),
(74, 'QE 01 CONJ M CASA 115', 'Guarã', 'Guará', '', 'Distrito Federal', 'DF'),
(75, 'Qr 407 conjunto 09 casa 33', NULL, 'Samambaia Norte', '72321009', 'Brasilia', 'DF'),
(76, 'Quadra QR 413 Conjunto 06', '23', NULL, '72321306', 'samambaia norte', 'DF'),
(77, 'QR 118 CJ 06 LT 09 CS 01', NULL, NULL, '72307807', 'Samambaia DF', 'DF'),
(79, 'Avenida Rabelo', 'Casa 12 A', 'Vila Planalto', '70804020', 'Brasília- DF', 'DF'),
(80, 'QR 320 Conjunto 7', '13', 'Sul', '72310107', 'Brasília', 'DF'),
(81, 'Qse 05 Lote 27', 'Casa', NULL, '72025050', 'Taguatinga', 'DF'),
(82, 'Quadra 300 Conjunto 5', 'Casa 06', 'Recanto das Emas', '72620105', 'Brasília', 'DF'),
(83, 'QR 603 Chac 9 Rua 5 CASA 68B', NULL, 'Samambaia Norte', '72331150', 'Sambaia', 'DF'),
(84, 'Quadra 11 Conjunto E Lote 37 Casa 02', 'Salão Ziza Lisboa', 'Morro Azul', '71691205', 'São Sebastião', 'DF'),
(85, 'QN 403 Conjunto A Lotes 3 e 4', 'Apartamento 505', 'Samambaia', '72319541', 'Brasília', 'DF'),
(86, 'Qnm 10 Conj F Casa 20', NULL, NULL, '', NULL, 'DF'),
(87, 'Qr 405 cj 12 cs11', NULL, 'Samambaia Norte', '71928720', 'Brasília', 'DF'),
(88, 'QR 403 conjunto 12', 'Casa 09', 'Samambaia Norte', '72319113', 'Brasília ', 'DF'),
(90, 'QR 405 CONJUNTO 12 CASA 16', NULL, 'Samambaia Norte (Samambaia)', '72319212', 'Brasília', 'DF'),
(91, 'Qr 212 conjunto 10 casa 07', NULL, NULL, '', 'Samambaia norte', 'DF'),
(92, 'Qr 401 conjunto 29 casa 05', NULL, 'Samambaia norte', '', 'Brasília ', 'DF'),
(93, 'Qr 202 conjunto 04 casa 06', 'Metro Terminal Samambaia', 'Samambaia Norte', '72316054', 'Brasília ', 'DF'),
(95, 'QN 209 conjunto 01 lote 28', NULL, 'Norte', '72341001', 'Samambaia', 'DF'),
(96, 'Qnl 24 via ln 30 casa 63', NULL, 'L Norte', '', 'Taguatinga ', 'DF'),
(97, 'QR 210 conjunto 24 Casa 17', NULL, 'Samambaia Norte', '72316225', 'Brasília ', 'DF'),
(98, 'Qr 407 conjunto 02 casa 06', NULL, 'Samambaia Norte', '72321002', 'Brasília', 'DF'),
(100, 'Qs 11 conj. I casa 8', 'Residência', 'Areal', '71980000', 'Águas Claras', 'DF'),
(101, 'qr 209 conjunto 5 casa 29', 'casa 29', 'samambaia norte', '72341405', 'samambaia ', 'DF'),
(103, 'QNO 07 Conjunto E Casa 11', NULL, 'Setor o', '72251705', 'Basilia', 'DF'),
(104, 'Qr 405 conjunto 8 casa 15', '00', 'Samambaia Norte', '72319208', 'Brasília', 'DF'),
(105, 'Shps 503 Chácara 97 A', 'A', 'Por do sol', '72235290', 'Brasília', 'DF'),
(106, 'Shps 602 chácara 97A', 'Condomínio pôr do sol', 'P Sul', '', 'Ceilândia ', 'DF'),
(107, 'Rua G', NULL, 'Parque da Colina I', '73808076', 'Formosa', 'GO'),
(108, 'QNG 06 casa 05', NULL, 'Taguatinga norte', '72130060', 'Brasília ', 'DF'),
(109, 'QR 518 Conjunto 3-A', 'Apt 1106', 'Samambaia Sul (Samambaia)', '72314405', 'Brasília', 'DF'),
(110, 'Qr 207 conjunto 5 casa 1', '01', 'Samambaia Norte', '72341305', 'Samambaia Norte', 'DF'),
(111, 'qno 20 conjunto 39 casa 35', NULL, NULL, '', NULL, 'DF'),
(112, 'Qno 16 Conjunto 75 Casa 11', NULL, NULL, '', NULL, 'DF'),
(113, 'Quadra 13 Conjuto F Casa 24 Setor sul', 'Casa 24', 'Setor sul', '72410706', 'Gama', 'DF'),
(114, 'Quadra 12 conjunto k casa 16 setor sul Gama', NULL, 'Setor Sul', '72415611', 'Gama', 'DF'),
(115, 'Quadra 4 conjunto H casa 11', NULL, 'Setor sul', '72415208', 'Gama-DF', 'DF'),
(116, 'Praça 3 bloco C loja 03', 'Gama DF - 03 setor sul', 'Setor sul', '72410236', 'Gama', 'DF'),
(117, 'Quadra O Lote 31 Parque Esplanada 1', NULL, 'Esplanada 1', '', 'Valparaíso', 'GO'),
(118, 'SHSN chácara 36 conjunto 09 casa 06', 'Casa', 'P. Sul', '72236800', 'Ceilândia', 'DF'),
(119, 'Rua 17 chácara 178', '09', 'Vicente Pires', '07200739', 'Taguatinga', 'DF'),
(121, 'QNP 28 CONJUNTO P CASA 4', NULL, 'Psul', '72335816', 'CEILÂNDIA', 'DF'),
(122, 'Qnd 10', 'Casa 13', 'Norte', '72120100', 'Taguatinga', 'DF'),
(123, 'QR 209 Conjunto 7', NULL, 'Samambaia Norte (Samambaia)', '72341407', 'Brasília', 'DF'),
(124, 'QR 423 CONJUNTO 03 CASA 24', 'QR 423 CONJUNTO 03 CASA 24', 'Samambaia', '72325203', 'Samambaia Norte', 'DF'),
(125, 'QN  209  conjunto  2', '21', 'Samambaia Norte', '72341452', 'BRASILIA', 'DF'),
(126, 'Casa 6', 'Conjunto h', 'Por do sol', '72238310', 'Ceilandia ', 'DF'),
(127, 'Qr 415 conj 10 casa 17', 'Qr 415 conjunto 13 casa 17', 'Samambaia norte', '72323010', 'Brasília ', 'DF'),
(129, 'Qn 211 conjunto 01 casa 35', NULL, 'Samambaia Norte', '72343051', 'Brasilia', 'DF'),
(130, 'quadra 04 casa 125A setor norte', 'setor norte', NULL, '72710040', 'Brazlandia', 'DF'),
(131, 'Rua Mangabas 180', NULL, 'Primavera', '38610000', 'Unaí', 'DF'),
(132, 'SHPS 602 CHAC 97-A', 'Por do Sol  (ao lado da capela Nossa Senhora Aparecida)', 'P. Sul/Ceilândia', '72236608', 'Brasília ', 'DF'),
(133, 'RUA 35 SUL LOTE 17 APT. 1212', 'RESIDENCIAL SEVILHA', 'ÁGUAS CLARAS', '71931180', 'BRASIL ', 'DF'),
(134, 'Qr 405 conjunto 04 casa 16', '16', 'samambaia norte', '72319204', 'Brasilia', 'DF'),
(135, 'Qr 407 conj 3 casa 8', 'Casa 8', 'Samambaia Norte', '', 'Brasilia ', 'DF'),
(136, 'Shsn chácara 136a condomínio beija flor lote 7a', 'Sol nascente', 'Ceilândia', '72215000', 'Brasília', 'DF'),
(137, 'Rua maestro joaquim de Abreu setor nordeste', NULL, 'Setor.nordeste', '73008001', 'Formosa ', 'GO'),
(139, 'Quadra 12 Conjunto I', 'Casa 21', 'Setor Sul (Gama)', '72415609', 'Brasília', 'DF'),
(140, 'Qr 403 conjunto 09 casa 06', 'Qr 403 conjunto 09 casa 06', 'Samambaia', '72319110', 'Brasilia ', 'DF'),
(141, 'Qn 211 conjunto 02 casa 04', '26° delegacia de polícia', 'Samambaia norte', '72343052', 'Brasília', 'DF'),
(142, 'Shsn chácara 127 A cj A cs 18', 'Casa 18', 'Sol nascente', '72236800', 'Ceilândia Sul', 'DF'),
(143, 'shsn ch 127a conjunto a lote 18', 'Casa 18', 'Sol nascente', '72236800', 'BRASILIA', 'DF'),
(144, 'RUA 01 CHACARA 105A LOTE 01 LOTE 01', 'COLONIA AGRICOLA SAMAMBAIA', NULL, '72110600', 'TAGUATINGA NORTE', 'DF'),
(145, 'QR 103 Conjunto 6', 'Casa 09', 'Samambaia Sul', '72301006', 'Brasília', 'DF'),
(146, 'SHPS 401 CONJ A CASA 08', NULL, 'Ceilândia', '', 'Brasília ', 'DF'),
(147, 'Condomínio Vila Paraíso Bl A Apt 103', NULL, 'Vila Paraíso', '72879282', 'Valparaíso Goiás ', 'GO'),
(157, 'QR 401 conjunto 15 casa 05', NULL, 'Samambaia Norte', '72319015', 'Brasília ', 'DF'),
(158, 'Qnj 8', 'Casa 11', 'Taguatinga norte', '', 'Brasília-df', 'DF'),
(159, 'Shps quadra 501 conjunto  H casa 17a', 'H', 'Ceilandia', '72238550', 'Ceilandia ', 'DF'),
(160, 'SHPS quadra 501 conj H casa 17A', 'quadra 501', 'PSul', '72238250', 'CEILANDIA', 'DF'),
(161, 'Shps quadra 501 conjunto  H casa 17a', NULL, NULL, '', NULL, 'DF'),
(162, 'QUAD 604 CONJUNTO 26', 'CASA 01', NULL, '72640426', 'RECANTO DAS EMAS', 'DF'),
(163, 'Qnn 23 conjunto m casa 34', 'Ceilândia norte', 'Brasília DF', '', 'Brasília DF', 'DF'),
(164, 'Qr211 conj 7 casa 14', 'Perto da 26° dp', 'Samambaia', '72343007', 'Samambaia', 'DF'),
(165, 'Rua Maestro Joaquim de Abreu', 'N 736', 'Setor Nordeste', '73808100', 'Formosa', 'GO'),
(166, 'Qr 204 Conjunto 12 Lote 01', 'perto da quadra.', 'Norte', '72316092', 'Samambaia', 'DF'),
(167, 'Qr 625 conjunto 07', 'Casa 04', NULL, '72333409', 'Samambaia Norte', 'DF'),
(168, 'Qnp 36 conjunto J casa 22', 'Perto do posto policial', 'Psul', '72236610', 'Ceilândia', 'DF'),
(169, 'Qr 402 Conjunto 26 Casa 08', NULL, 'Samambaia Norte', '72318027', 'Brasília', 'DF'),
(170, 'Quadra 402 conj 26 casa 08', 'Samambaia Norte', 'Samambaia Norte', '72318027', 'Brasília ', 'DF'),
(171, 'Ave. Maestro João Luis do Espírito Santo', '988', 'Califórnia', '73807745', 'Formosa', 'GO'),
(172, 'SHPS 502 CONJ A CASA 47', 'Por do sol', 'P sul', '72238273', 'Ceilândia ', 'DF'),
(173, 'Qr 407 conjunto 03 casa 08', 'Casa 8', 'Samambaia Norte', '72321003', 'Brasília ', 'DF'),
(174, 'Av A casa 1 lote 1', 'casa', 'Bela Vista', '73808795', 'Formosa', 'GO'),
(175, 'Qn 211 conjunto 02 lote 51 casa 02', '51', 'Samambaia Norte', '72343052', 'Brasília', 'DF'),
(176, 'Qr 405 conjunto 28 cosa 22', NULL, 'Samambaia', '72319228', 'Brasília', 'DF'),
(177, 'Qr603 chacara 39 rua 4 casa 52A', 'Condomínio vida nova', NULL, '72331100', 'Samambaia ', 'DF'),
(178, 'Qnb 18 casa 08', 'com.norte', NULL, '72115180', 'Taguatinga', 'DF'),
(179, 'Qnb 18 casa 08', NULL, NULL, '72115180', 'Taguatinga', 'DF'),
(180, 'Rua G Lote 12', 'Quadra 70', 'Parque da colina', '73808076', 'Formosa', 'GO'),
(181, 'Qn 211 conjunto 1 casa 16', NULL, 'Samambaia', '72325110', 'Samambaia Norte', 'DF'),
(182, 'Qnp 36 conjunto D casa 39', NULL, 'P sul', '72236604', 'Ceilândia', 'DF'),
(183, 'Rua Benedito Galvão', 'Número 136 apt: 201', 'Formosinha', '73813040', 'Formosa GO', 'GO'),
(184, 'Qr 615 conjunto 10 casa 16', NULL, 'Samambaia norte', '71215902', 'Brasília ', 'DF'),
(185, 'Qnj 02', 'Casa 18', 'Taguatinga norte', '72140020', 'Brasília', 'DF'),
(186, 'Qr 213 conjunto 3 casa 31', NULL, NULL, '72343103', NULL, 'DF'),
(187, 'QR 213 Conjunto 3', '31', 'samambaia', '72343103', 'Brasília', 'DF'),
(188, 'Quadra 12 conjunto k', 'Casa 16', 'Setor sul', '72415611', 'Gama', 'DF'),
(189, 'Qr. 204 Conjunto 12 Lote 16', 'Kit 02', 'Norte', '72316092', 'Brasília ', 'DF'),
(190, 'Qr 211 Conjunto 07 Casa 14', NULL, 'Samambaia Norte', '72343000', 'Brasília', 'DF'),
(191, 'Av. Contorno Qd 01 A Lt 05 A', NULL, 'São João', '75133205', 'Anápolis', 'GO'),
(192, 'Qnp 32 Conjunto D', 'Casa 34A', 'P.sul', '72236204', 'Ceilândia', 'DF'),
(193, 'SGAN 902/904 S/N.', NULL, 'ASA NORTE', '70790020', 'BRASLIA-DF', 'DF'),
(194, 'Qr 523 Conjunto 5 Casa 18', 'Samambaia-Sul', NULL, '72317105', 'Samambaia sul ', 'DF'),
(196, 'Qr 523 Conjunto 05 Casa 18', 'Samambaia', 'sul', '72317105', 'Samambaia-Sul', 'DF'),
(197, 'Qr 211', '02 casa 26', 'Norte', '72300000', 'Brasília', 'DF'),
(198, 'Qe 40 conjunto F lote 19 apt 202', NULL, NULL, '', NULL, 'DF'),
(199, 'area especial 2A modulo H lote 4 ap 309', 'apartamento 309', 'setor de oficinas', '71070638', 'Gaua ll df', 'DF'),
(200, 'Qe 40 conjunto F lote 19 apt 202', NULL, NULL, '', NULL, 'DF'),
(201, 'Qs06 conjunto 01 casa 20 Riacho Fundo 1', 'Riacho fundo 1', 'Riacho fundo 1', '71820601', 'Riacho fundo 1', 'DF'),
(202, 'Qr 414 conjunto 2 casa 16', 'Casa', 'Samambaia norte', '72320202', 'Brasília ', 'DF'),
(203, 'Qr 212 conjunto 14 casa 15', 'Casa 15', 'Samambaia', '72316314', 'Samambaia Norte', 'DF'),
(204, 'Qr 605 conjunto 2 chácara 47', NULL, 'Samambaia Norte', '72331202', 'Brasília ', 'DF'),
(205, 'Colonia Agrícola Sucupira ch 08 lt 12A', NULL, 'sucupira', '', 'Riacho Fundo 1', 'DF'),
(206, 'QR 403 CONJUNTO 09', 'Casa 18', '403', '72319110', 'Samambaia norte', 'DF'),
(207, 'Shps quadra 108. Conjunto \'B\'. Casa 20', 'Perto do supermercado Leão', 'P.Sul', '72238100', 'Ceilândia ', 'DF'),
(208, 'Qi 19 lote 13 Bloco:C AP:2002', 'Residencial Vivace', NULL, '', 'Taguatinga norte', 'DF'),
(209, 'Avenida k quadra 29 casa 01', 'Ao lado do nova Formosa', 'Bela vista', '73800000', 'Formosa ', 'GO'),
(210, 'Rua maestro Joaquim de Abreu n°735', 'Perto do carinho do pão de queijo.', 'Setor nordeste', '73807100', 'Formosa-Go', 'GO'),
(211, 'QR 203 CONJ 03', 'Casa 05', 'Norte', '72341103', 'SAMAMBAIA​', 'DF'),
(212, 'Qi 24 lote 1/13 Taguatinga Norte-Df', 'Residencial Top Life Miami Beach bloco B apto 1506', 'Taguatinga Norte-Df', '72135240', 'Brasília ', 'DF'),
(213, 'QR 212 Conjunto Q Casa', '12', 'Santa Maria', '72542417', 'Brasília', 'DF'),
(214, 'QR 401 conjunto 20 casa 1', NULL, 'Samambaia Norte', '72319020', 'Brasilia', 'DF'),
(215, 'Qr 209 conjunto 02 17', NULL, 'Samambaia Norte', '72341402', 'Brasília ', 'DF'),
(216, 'Qr 205 Conjunto 03 Casa 34', '34', 'Norte', '72341203', 'Samambaia ', 'DF'),
(217, 'Colônia Agrícola Sucupira Chácara 06 Lote 37L', NULL, 'Sucupira', '', 'Riacho Fundo I', 'DF'),
(218, 'Qr 405 conjunto 07 casa 07', NULL, 'Samambaia', '', 'Brasília', 'DF'),
(219, 'qr 211 conjunto 02 casa 29', NULL, 'Samambaia', '', 'Brasília', 'DF'),
(220, 'Qnp 30 conjunto M', 'Casa 21', 'Setor P sul', '72236013', 'Ceilandia ', 'DF'),
(221, 'Qr 512 conjunto 06', 'Casa 04', 'Samambaia sul', '72312806', 'Brasília ', 'DF'),
(222, 'Qno 11 cj m casa 39', 'Casa', 'Setor o', '72255113', 'Ceilandia', 'DF'),
(223, 'SHPS 603 CONJ B CASA 08', 'Na rua da padaria santos', 'Por Do Sol', '', 'Ceilândia ', 'DF'),
(224, 'Shps 602 conj B casa 3', 'Perto da capela nossa senhora aparecida', 'Por do sol', '72238350', 'Ceilândia', 'DF'),
(225, 'QNP 36 conjunto A lote 17A', 'A', 'Psul', '72236601', 'Ceilandia ', 'DF'),
(226, 'Qr 205 conjunto 3 casa 34', NULL, NULL, '', NULL, 'DF'),
(227, 'Qnp 30 conjunto J casa 38', NULL, 'Psul', '72236010', 'Ceilândia', 'DF'),
(228, 'Quadra SHPS Quadra 501 Conju  Horas Casa', '7', 'Psul', '72238250', 'Brasília', 'DF'),
(229, 'Avenida João Gebrin, n 2623', NULL, 'Formosinha', '73813210', 'Formosa', 'GO'),
(230, 'Shps quadra 108 conjunto D casa 04', 'Condomínio Canaã', 'Por do sol', '72238100', 'Ceilândia', 'DF'),
(231, 'QR 419 CJ 4 casa 14', NULL, 'Samambaia Norte', '72325005', 'Brasília', 'DF'),
(232, 'QNP 30 CONJUNTO J CASA 38', NULL, 'P Sul', '72236010', 'Ceilândia ', 'DF'),
(233, 'chácara Santa Cruz', NULL, 'Incra', NULL, 'Ceilândia', 'DF'),
(234, 'Chácara do Retiro do EAC', NULL, 'Incra 9', NULL, 'Ceilândia', 'DF'),
(235, 'Casa das Irmãs', 'AO lado da paróquia', 'Samambaia Norte', NULL, 'Brasília', 'DF'),
(236, 'QR 403 cj 10 casa 28', 'Casa dos Bessas', 'Samambaia Norte', NULL, 'Brasília', 'DF'),
(237, 'Quadra QR 413 Conjunto 06', '23', NULL, '72321306', 'samambaia norte', 'DF'),
(238, 'Chacara santa cruz', NULL, 'incra 8', '', 'Ceilândia', 'DF'),
(239, 'Qs 403 , conj. 10 casa 27', NULL, 'Samambaia norte', '72319111', 'Brasília', 'DF'),
(240, 'casa das irmãs !', NULL, NULL, '', NULL, 'DF'),
(241, 'Paroquia São João Evangelista', NULL, NULL, '', NULL, 'DF'),
(242, 'Sítio Bom Jesus', NULL, NULL, '', 'São João da aliança', 'GO'),
(243, 'casa das irmas', NULL, NULL, '', NULL, 'DF'),
(244, 'Casa das irmãs da caridade missionária', NULL, NULL, '', NULL, 'DF'),
(245, 'Qr 425 Cj 27 casa 05', NULL, 'Samambaia Norte', '72327028', 'Brasília ', 'DF'),
(246, 'Qr 207 conjunto 01 casa 26', 'De frente com a 205', 'Samambaia Norte', '72341301', 'Samambaia', 'DF'),
(247, 'QR 215 Conjunto 1', 'casa 21', 'SAMAMBAIA NORTE', '72343201', 'Brasília', 'DF'),
(248, 'Qr 209 conj 07 casa 06', NULL, NULL, '', NULL, 'DF'),
(249, 'paroquia de Ceilândia', NULL, NULL, '', NULL, 'DF'),
(250, 'Qr. 403 conjunto 10 casa 28', 'casa da Luana', NULL, '', NULL, 'DF'),
(251, 'casa das irmas da caridade', NULL, NULL, '', NULL, 'DF'),
(252, 'Paroquia São João Evangelista', NULL, NULL, '', NULL, 'DF'),
(253, 'casa da fernanda', NULL, NULL, '', NULL, 'DF'),
(254, 'casa dos Bessas', NULL, NULL, '', NULL, 'DF'),
(255, 'feira da 311', NULL, NULL, '', NULL, 'DF'),
(256, 'Capela São Francisco.', NULL, NULL, '', NULL, 'DF'),
(257, 'casa das irmas da caridade', NULL, NULL, '', NULL, 'DF'),
(258, 'casa das irmas da caridade', NULL, NULL, '', NULL, 'DF'),
(259, 'taguaparque', NULL, NULL, '', NULL, 'DF'),
(260, 'feira da 311', NULL, NULL, '', NULL, 'DF'),
(261, 'casa das irmas da caridade', NULL, NULL, '', NULL, 'DF'),
(262, 'na samambaia sul', NULL, NULL, '', NULL, 'DF'),
(263, 'samambaia sul', NULL, NULL, '', NULL, 'DF'),
(264, 'Anápolis - Go', NULL, NULL, '', NULL, 'DF'),
(265, 'casa das irmas da caridade', NULL, NULL, '', NULL, 'DF'),
(266, 'casa das Irmas da Caridade', NULL, NULL, '', NULL, 'DF'),
(267, 'casa das Irmas da Caridade', NULL, NULL, '', NULL, 'DF'),
(268, 'a confirmar', NULL, NULL, '', NULL, 'DF'),
(269, 'casa das Irmas da Caridade', NULL, NULL, '', NULL, 'DF'),
(270, 'a confirmar', NULL, NULL, '', NULL, 'DF'),
(271, 'casa das Irmas da Caridade', NULL, NULL, '', NULL, 'DF'),
(272, 'Feira da 311', NULL, NULL, '', NULL, 'DF'),
(273, 'a confirmar', NULL, NULL, '', NULL, 'DF'),
(274, 'casa das Irmas da Caridade', NULL, NULL, '', NULL, 'DF'),
(275, 'a confirmar', NULL, NULL, '', NULL, 'DF'),
(276, 'a confirmar', NULL, NULL, '', NULL, 'DF'),
(277, 'casa das Irmas da Caridade', NULL, NULL, '', NULL, 'DF'),
(278, 'Formosa', NULL, NULL, '', NULL, 'DF'),
(279, 'QR 403 Conjunto 19', 'Casa 09', 'Samambaia Norte (Samambaia)', '72319120', 'Brasília', 'DF'),
(280, 'Qr 213 Cj 03 casa 26', 'Casa', 'Samambaia Norte', '72344103', 'Brasília DF', 'DF'),
(282, 'Qr 401 CONJUNTO 02 CASA 14', NULL, 'Samambaia norte', '', 'Samambaia ', 'DF'),
(283, 'QR 405 Conjunto 25', '05', 'Samambaia Norte (Samambaia)', '72319225', 'Brasília', 'DF'),
(284, 'QR 415 Conjunto 12', 'Casa 03', 'Samambaia Norte (Samambaia)', '72323012', 'Brasília', 'DF'),
(285, 'Parque ABC', NULL, 'Cidades jadins', '', 'Valparaíso de Goiás', 'GO'),
(286, 'Chácara Santa cruz', NULL, NULL, '', 'Ceilândia', 'DF'),
(287, 'Rua 7', 'bloco A apt 308', 'Norte (Águas Claras)', '71908180', 'Brasília', 'DF'),
(288, 'QR 408 Conjunto 10', 'CASA 17', 'Samambaia Norte (Samambaia)', '72318310', 'Brasília', 'DF'),
(289, 'Rodovia DF-150 Km 4,5 Condomínio São José mod. E casa 2', NULL, 'Setor Habitacional Contagem (Sobradinho)', '73090925', 'Brasília', 'DF'),
(290, 'Avenida Gregório Perche de Menezes', 'casa', 'Nova Matão', '15990624', 'Matão', 'SP'),
(291, 'QR 402 Conjunto 18 casa 16', NULL, 'Samambaia Norte (Samambaia)', '72318018', 'Brasília', 'DF'),
(292, 'Condomínio Residencial 9 Bloco C', 'Bloco C apto 1002', 'Parque das Cachoeiras', '72872782', 'Valparaíso de Goiás', 'GO'),
(293, 'Qc 5 conj 6 condomínio 21', 'Apartamento 102 - Bloco E', 'Riacho Fundo II', '71882206', 'Brasília', 'DF'),
(294, 'QN 5c conjunto 9 bloco i', 'Apt 03 condomínio parque do riacho 07', 'Riacho Fundo II', '71880539', 'Brasília', 'DF'),
(295, 'Vicente Pires Rua 8 Ch 196 casa 07', NULL, NULL, '', 'Vicente Pires ', 'DF'),
(296, 'Rua D', 'Quadra O Casa 31', 'Parque Esplanada I', '72878636', 'Valparaíso de Goiás', 'GO'),
(297, 'Rua 8 Chácara 328', 'Condominio Porto vitória', 'Setor Habitacional Vicente Pires', '72007138', 'Brasília', 'DF'),
(298, 'Quadra 103 Conjunto 6', NULL, 'Recanto das Emas', '72600307', 'Brasília', 'DF'),
(299, 'Rua 10', NULL, 'Bela Vista', '', 'Formosa', 'GO'),
(300, 'SHA Conjunto 6 Chácara 478 casa 3', NULL, 'Setor Habitacional Arniqueira (Águas Claras)', '71996368', 'Brasília', 'DF'),
(301, 'QR 429 Conjunto 2', 'Casa 09', 'Samambaia Norte (Samambaia)', '72329002', 'Brasília', 'DF'),
(302, 'QNN 1 Conjunto G', 'CASA 36', 'Ceilândia Norte (Ceilândia)', '72225017', 'Brasília', 'DF'),
(303, 'QNN 22 Conjunto P', 'Avenida fundação bradesco', 'Ceilândia Sul (Ceilândia)', '72220236', 'Brasília', 'DF'),
(304, 'shsn chacara 58/123a residencial pinheiros', 'casa 14 lote 14', 'P Norte', '', 'Ceilândia ', 'DF'),
(305, 'QNM 1 Conjunto C', 'Apartamento 201', 'Ceilândia Sul (Ceilândia)', '72215013', 'Brasília', 'DF'),
(306, 'Qr: 829 conjunto: 05 casa: 18', NULL, NULL, '', NULL, 'DF'),
(307, 'QR 312 Conjunto 4', NULL, 'Samambaia Sul (Samambaia)', '72308104', 'Brasília', 'DF'),
(308, 'QNM 40 Conjunto M', 'Casa 05', 'Taguatinga Norte (Taguatinga)', '72146013', 'Brasília', 'DF'),
(309, 'QNP 32 Conjunto F', NULL, 'Ceilândia Sul (Ceilândia)', '72236206', 'Brasília', 'DF'),
(310, 'QNP 32 Conjunto F', '44', 'Ceilândia Sul (Ceilândia)', '72236206', 'Brasília', 'DF'),
(311, 'QNN 1 Conjunto B', 'Casa 23', 'Ceilândia Norte (Ceilândia)', '72225012', 'Brasília', 'DF'),
(312, 'QNN 22 Conjunto C', NULL, 'Ceilândia Sul (Ceilândia)', '72220223', 'Brasília', 'DF'),
(315, 'QR 519 Conjunto 1', 'casa 10', 'Samambaia Sul (Samambaia)', '72315301', 'Brasília', 'DF'),
(316, 'QR 519 Conjunto 3', 'casa 18', 'Samambaia Sul (Samambaia)', '72315303', 'Brasília', 'DF'),
(317, 'Avenida Monumental', '(Residencial Porto Pilar)', 'Setor Meireles (Santa Maria)', '72583500', 'Santa Maria', 'DF'),
(318, 'QR 403 Conjunto 13', NULL, 'Samambaia Norte (Samambaia)', '72319114', 'Brasília', 'DF'),
(319, 'Rua 7', 'Quadra 51 lote 01', 'Parque da Colina I', '73808024', 'Formosa', 'GO'),
(320, 'QNM 4 Conjunto O casa 18', NULL, 'Ceilândia Norte (Ceilândia)', '72210055', 'Brasília', 'DF'),
(321, 'QR 313 Conjunto 12', 'Casa 13', 'Samambaia Sul (Samambaia)', '72307312', 'Brasília', 'DF'),
(322, 'QNE 23', 'Casa 37', 'Taguatinga Norte (Taguatinga)', '72125230', 'Brasília', 'DF'),
(323, 'Cnf 01 lote 12', 'Apartamento 101', 'Taguatinga Norte (Taguatinga)', '72125515', 'Taguatinga', 'DF'),
(324, 'QNN 19 Conjunto G', 'Casa 40 Rua do Amarmarinho Thais', 'Ceilândia Norte (Ceilândia)', '72225197', 'Brasília', 'DF'),
(325, 'SCN Quadra 2 Bloco D', NULL, 'Asa Norte', '70712904', 'Brasília', 'DF'),
(326, 'QR 604 Conjunto 12', NULL, 'Samambaia Norte (Samambaia)', '72322113', 'Brasília', 'DF'),
(327, 'QR 318 Conjunto 2', 'Casa 11', 'Samambaia Sul (Samambaia)', '72308802', 'Brasília', 'DF'),
(328, 'QR 519 Conjunto 6', 'Casa 03', 'Samambaia Sul (Samambaia)', '72315306', 'Brasília', 'DF'),
(329, 'QNE 9', '11', 'Taguatinga Norte (Taguatinga)', '72125090', 'Brasília', 'DF'),
(330, 'QR 405 Conjunto 25 Casa', '9', 'Samambaia Norte (Samambaia)', '72319225', 'Brasília', 'DF'),
(331, 'QNO 7 Conjunto A casa 04', NULL, 'Ceilândia Norte (Ceilândia)', '72251701', 'Brasília', 'DF'),
(332, 'QNO 7 Conjunto A', 'Casa4', 'Ceilândia Norte (Ceilândia)', '72251701', 'Brasília', 'DF'),
(333, 'QNL 2 Bloco C', 'Apt 202', 'Taguatinga Norte (Taguatinga)', '72155213', 'Brasília', 'DF'),
(334, 'QS 11 Conjunto K', 'casa 30', 'Areal (Águas Claras)', '71982520', 'Brasília', 'DF'),
(335, 'QNF 4', NULL, 'Taguatinga Norte (Taguatinga)', '72125540', 'Brasília', 'DF'),
(336, 'QN 404', 'Conj F lote 1 apt 102', 'Samambaia Norte (Samambaia)', '72318540', 'Brasília', 'DF'),
(337, 'QR 406 Conjunto 27 casa 04', NULL, 'Samambaia Norte (Samambaia)', '72318229', 'Brasília', 'DF'),
(338, 'QR 412 Conjunto 19', 'Casa 01', 'Samambaia Norte (Samambaia)', '72320122', 'Brasília', 'DF'),
(339, 'Quadra 16 Lote 3', 'Jardim das oliveiras', 'Jardim abc', '', 'Cidade Ocidental', 'GO'),
(340, 'Rua 1', '66', 'Vila da Telebrasília', '70210010', 'Brasília', 'DF'),
(341, 'QR 603', 'Condomínio vida nova- Rua 03 casa 25 A', 'Samambaia Norte (Samambaia)', '72331100', 'Brasília', 'DF'),
(342, 'QR 517 Conjunto 1', '12', 'Samambaia Sul (Samambaia)', '72315201', 'Brasília', 'DF'),
(343, 'QNN 11', 'B 5 Apartamento 107 Residencial Diamantina', 'Ceilândia Norte (Ceilândia)', '72225110', 'Brasília', 'DF'),
(344, 'quadra 804 conj 18', '01', 'recanto das emas', '72560730', 'recanto das emas', 'DF'),
(345, 'QNN 39 Conjunto E casa 24', 'Casa', 'Ceilândia Norte (Ceilândia)', '72225395', 'Brasília', 'DF'),
(346, 'QNP 22 Conjunto I Casa 07', NULL, 'Ceilândia Sul (Ceilândia)', '72235209', 'Brasília', 'DF'),
(347, 'QNP 22 Conjunto I', 'Casa 07', 'Ceilândia Sul (Ceilândia)', '72235209', 'Brasília', 'DF'),
(348, 'QR 120 Conjunto 1', '06', 'Samambaia Sul (Samambaia)', '72304001', 'Brasília', 'DF'),
(349, 'QR 411 Conjunto 4', '19', 'Samambaia Norte (Samambaia)', '72321204', 'Brasília', 'DF'),
(350, 'QR 425 Conjunto 24', 'Casa 24', 'Samambaia Norte (Samambaia)', '72327024', 'Brasília', 'DF'),
(351, 'QNP 10 Conjunto E', 'CASA 16', 'Ceilândia Sul (Ceilândia)', '72231105', 'Brasília', 'DF'),
(352, 'Quadra 9 lote 04 B01', 'rua 05', 'Mansões Camargo', '72927057', 'Águas Lindas de Goiás', 'GO'),
(353, 'QNM 4 Conjunto C', 'Casa 41', 'Ceilândia Norte (Ceilândia)', '72210043', 'Brasília', 'DF'),
(354, 'QI 416 Conjunto 1', 'Bloco C Apartamento 803, Residencial das Palmeiras', 'Samambaia Norte (Samambaia)', '72320301', 'Brasília', 'DF'),
(355, 'QNM 4 Conjunto C', '41', 'Ceilândia Norte (Ceilândia)', '72210043', 'Brasília', 'DF'),
(356, 'Quadra 10 Conjunto A, 12', NULL, NULL, '72910000', 'Águas Lindas', 'GO'),
(357, 'QNM 4 Conjunto J casa', '35', 'Ceilândia Norte (Ceilândia)', '72210050', 'Brasília', 'DF'),
(358, 'QNM 4 Conjunto C', 'Casa 41', 'Ceilândia Norte (Ceilândia)', '72210043', 'Brasília', 'DF'),
(359, 'Chácara 3/344 inca 8- Brazlândia', NULL, 'Chácara 3/344', '', 'Incra 8 Brazlândia ', 'DF'),
(360, 'QNN 1 Conjunto B', 'Rua do giraffas', 'Ceilândia Norte (Ceilândia)', '72225012', 'Brasília', 'DF'),
(361, 'QNP 26 Conjunto X', '12', 'Ceilândia Sul (Ceilândia)', '72235623', 'Brasília', 'DF'),
(362, 'Qn 209cj 2 lote 21', 'Nenhuma', 'Samambaia norte', '72300000', 'Brasília', 'DF'),
(363, 'QI 416 Conjunto C', '304', 'Samambaia Norte (Samambaia)', '72320313', 'Brasília', 'DF'),
(364, 'QR 425 Conjunto 11', 'casa 19', 'Samambaia Norte (Samambaia)', '72327011', 'Brasília', 'DF'),
(365, 'Quadra QC 11 Rua D', 'casa 37', 'Jardins Mangueiral (São Sebastião)', '71699621', 'Brasília', 'DF'),
(366, 'QR 223 Conjunto 2', '13', 'Samambaia Norte (Samambaia)', '72345202', 'Brasília', 'DF'),
(367, 'QNM 2 Conjunto F', '23', 'Ceilândia Norte (Ceilândia)', '72210026', 'Brasília', 'DF'),
(368, 'Eqnn 8/10 bloco E loja 02', NULL, 'Ceilândia Sul', '', 'Brasília ', 'DF'),
(369, 'QNN 03 CONJ E CASA 06', '06', 'Ceilandia Norte', '', 'Brasilia Df', 'DF'),
(370, 'QND 41casa 11', NULL, 'Taguatinga Norte (Taguatinga)', '72120410', 'Brasília', 'DF'),
(371, 'QN 225 Conjunto 1 casa 15', NULL, 'Samambaia Norte (Samambaia)', '72345351', 'Brasília', 'DF'),
(372, 'Quadra 305 Conjunto 8-A', 'Casa 04', 'Recanto das Emas', '72621214', 'Brasília', 'DF'),
(373, 'CRS 504 Bloco B', '3', 'Asa Sul', '70331525', 'Brasília', 'DF'),
(374, 'QR 401 Conjunto 10 6', NULL, 'Samambaia Norte (Samambaia)', '72319010', 'Brasília', 'DF'),
(375, 'Rua J', 'Qd 124 \"A\" número 14', 'Setor Nordeste', '73807403', 'Formosa', 'GO'),
(376, 'Quadra 37 Casa 30', 'A', 'Setor Leste (Gama)', '72465370', 'Brasília', 'DF'),
(377, 'Quadra 10 Conjunto C', 'Casa 14', 'Setor Sul (Gama)', '72415503', 'Brasília - Gama', 'DF'),
(378, 'Rodovia DF-001', 'Condomínio cooperville', 'Setor Habitacional Vicente Pires', '72008001', 'Brasília', 'DF'),
(379, 'QR 204 Conjunto 1', '1', 'Samambaia Norte (Samambaia)', '72316081', 'Brasília', 'DF'),
(380, 'Quadra 107 Rua A', 'Apt 501', 'Águas claras', '70873050', 'Brasília', 'DF'),
(381, 'Rua 10', 'Casa número 454', 'Setor Nordeste', '73807305', 'Formosa', 'GO'),
(382, 'SHCGN 707 Bloco D', 'AP 510', 'Asa Norte', '70740734', 'Brasília', 'DF'),
(383, 'QR 120 Conjunto 10A', NULL, 'Samambaia Sul (Samambaia)', '72304020', 'Brasília', 'DF'),
(384, 'QR 120 Conjunto 10A', NULL, 'Samambaia Sul (Samambaia)', '72304020', 'Brasília', 'DF'),
(385, 'Qr 405 conj 1 casa 1/4', NULL, NULL, '', NULL, 'DF'),
(386, 'Qc 3 conj 08 lote 03', 'Bloco C apartamento 101', 'Riacho Fundo II', '71882108', 'Brasília', 'DF'),
(387, 'QR 411 Conjunto 4', '19', 'Samambaia Norte (Samambaia)', '72321204', 'Brasília', 'DF'),
(388, 'Rua 11', 'R 11 Q 24 L 29 Morada Nobre', 'Morada Nobre', '72870366', 'Valparaíso de Goiás', 'GO'),
(389, 'QNL 10 Conjunto F', 'Casa 14', 'Taguatinga Norte (Taguatinga)', '72156106', 'Brasília', 'DF'),
(390, 'CND 5', 'Lote 11 apto 202', 'Taguatinga Norte (Taguatinga)', '72120055', 'Brasília', 'DF'),
(391, 'Quadra 03', 'Cond Flores da Serra Quadra 02 casa 27', 'Residencial Florais do Planalto', '72873155', 'Valparaíso de Goiás', 'GO'),
(392, 'Quadra 12 Conjunto M casa 9', NULL, 'Setor Sul (Gama)', '72415613', 'Brasília', 'DF');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_evento`
--

CREATE TABLE `tb_evento` (
  `co_evento` int(11) NOT NULL,
  `dt_cadastro` datetime DEFAULT NULL,
  `co_imagem` int(10) UNSIGNED NOT NULL,
  `co_agenda` int(11) NOT NULL,
  `co_categoria_evento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `tb_evento`
--

INSERT INTO `tb_evento` (`co_evento`, `dt_cadastro`, `co_imagem`, `co_agenda`, `co_categoria_evento`) VALUES
(1, '2018-04-08 00:28:20', 236, 1, 2),
(2, '2018-04-12 19:24:27', 237, 3, 1),
(3, '2018-04-18 23:24:34', 238, 4, 2),
(4, '2018-04-19 12:17:01', 0, 4, 2),
(5, '2018-05-09 20:04:41', 0, 11, 1),
(6, '2018-05-09 20:22:17', 0, 13, 1),
(7, '2018-05-09 20:29:40', 0, 14, 6),
(8, '2018-05-09 20:42:37', 0, 17, 1),
(9, '2018-05-09 20:45:45', 0, 18, 1),
(10, '2018-05-09 21:25:27', 0, 22, 2),
(11, '2018-05-10 19:33:09', 0, 26, 1),
(12, '2018-05-10 19:40:19', 0, 28, 1),
(13, '2018-05-10 19:45:25', 0, 30, 1),
(14, '2018-05-10 19:53:09', 0, 33, 4),
(15, '2018-05-10 19:55:25', 0, 34, 1),
(16, '2018-05-10 20:04:53', 0, 36, 2),
(17, '2018-07-20 10:48:51', 0, 36, 3),
(18, '2018-12-26 22:37:49', 0, 37, 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_fluxo_caixa`
--

CREATE TABLE `tb_fluxo_caixa` (
  `co_fluxo_caixa` int(11) NOT NULL,
  `dt_cadastro` datetime DEFAULT NULL,
  `dt_realizado` datetime DEFAULT NULL,
  `dt_vencimento` datetime DEFAULT NULL,
  `nu_valor` decimal(8,2) DEFAULT NULL,
  `ds_descricao` text,
  `tp_fluxo` varchar(1) DEFAULT NULL COMMENT '''E'' - Entrada / ''S'' - Saída',
  `st_pagamento` varchar(1) DEFAULT NULL COMMENT 'N - Não iniciado / I - Iniciado / C - Concluido',
  `co_evento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `tb_fluxo_caixa`
--

INSERT INTO `tb_fluxo_caixa` (`co_fluxo_caixa`, `dt_cadastro`, `dt_realizado`, `dt_vencimento`, `nu_valor`, `ds_descricao`, `tp_fluxo`, `st_pagamento`, `co_evento`) VALUES
(1, '2018-05-02 13:35:15', '2018-04-30 14:26:50', '2018-04-30 14:26:50', '50.00', 'Pagamento dos botton. (Pe. Jhon)', 'E', 'C', 0),
(2, '2018-05-02 13:39:36', '2018-04-29 14:26:43', '2018-04-29 14:26:43', '25.00', 'Venda de botton (Vicente Pires)', 'E', 'C', 0),
(3, '2018-05-02 13:40:19', '2018-04-29 10:06:55', '2018-04-29 10:06:55', '50.00', 'Gasolina (missão Vicente Pires)', 'S', 'C', 0),
(4, '2018-05-03 09:57:20', '2018-04-14 09:57:20', '2018-04-14 09:57:20', '60.00', 'Pagamento retiro de carnaval (Vitor)', 'E', 'C', 0),
(5, '2018-05-03 09:58:20', '2018-04-21 09:58:20', '2018-04-21 09:58:20', '150.00', 'Pagamento retiro de carnaval (Jeane)', 'E', 'C', 0),
(6, '2018-05-03 09:59:04', '2018-04-21 09:59:04', '2018-04-21 09:59:04', '20.00', 'Ajuda de custo', 'S', 'C', 0),
(7, '2018-05-03 10:00:20', '2018-04-22 10:00:20', '2018-04-22 10:00:20', '60.00', 'Auxílio gasolina (missão Valparaíso)', 'S', 'C', 0),
(8, '2018-05-03 10:01:19', '2018-04-23 10:01:19', '2018-04-23 10:01:19', '25.00', 'Venda de botton.', 'E', 'C', 0),
(9, '2018-05-03 10:02:58', '2018-04-28 10:02:58', '2018-04-28 10:02:58', '29.00', 'Venda de botton.', 'E', 'C', 0),
(10, '2018-05-03 10:03:38', '2018-04-29 10:04:49', '2018-04-29 10:04:49', '10.00', 'Venda de botton. (Amaury e Catherine)', 'E', 'C', 0),
(12, '2018-05-05 22:37:38', '2018-04-18 22:37:38', '2018-05-05 22:37:38', '5.00', 'Venda de bottons Karlene Do dia do Aviva GEJ', 'E', 'C', 0),
(13, '2018-05-12 11:45:40', '2018-05-12 11:45:40', '2018-05-12 11:45:40', '44.00', 'Venda de bottons biel', 'E', 'C', 0),
(14, '2018-05-17 11:43:53', '2018-05-10 11:43:53', '2018-05-10 11:43:53', '100.00', 'Compra dos novos botton.', 'S', 'C', 0),
(15, '2018-05-17 11:57:36', '2017-11-30 09:46:35', '2018-05-05 09:46:35', '15.00', 'Pagamento da mensalidade do Site para o Leo', 'S', 'C', 0),
(16, '2018-05-18 14:47:11', '2018-05-17 14:47:11', '2018-05-17 14:47:11', '3.00', 'Pagamento de botton (Fernanda)', 'E', 'C', 0),
(17, '2018-05-22 07:07:03', '2018-05-19 07:07:03', '2018-05-19 07:07:03', '10.00', 'Passagem do Biel para Pentecostes.', 'S', 'C', 0),
(18, '2018-05-22 07:08:06', '2018-05-19 07:08:06', '2018-05-19 07:08:06', '10.00', 'Venda de botton em Pentecostes', 'E', 'C', 0),
(19, '2018-05-22 07:10:11', '2018-05-19 11:43:32', '2018-05-27 11:43:32', '5.00', 'Pagamento de botton (Jackson Alves)', 'E', 'C', 0),
(20, '2018-05-24 07:48:18', '2018-05-12 14:58:49', '2018-05-12 14:58:49', '15.00', 'Contribuição de gasolina para missão.', 'S', 'C', 0),
(21, '2018-05-28 15:23:04', '2018-05-21 09:30:14', '2018-06-09 09:30:14', '45.00', 'Venda de botton (Gabriel Silva)', 'E', 'C', 0),
(22, '2018-05-28 21:09:13', '2018-05-27 14:57:59', '2018-05-27 14:57:59', '40.00', 'Ajuda de gasolina para missão 2 carros', 'S', 'C', 0),
(23, '2018-05-29 09:06:46', '2018-05-27 09:06:46', '2018-05-27 09:06:46', '20.00', 'Ajuda pra vida fraterna', 'S', 'C', 0),
(24, '2018-05-31 14:59:44', '2018-05-29 11:44:27', '2018-05-29 11:44:27', '5.00', 'Venda de Bottons para o Alexandre', 'E', 'C', 0),
(25, '2018-06-02 14:38:22', '2018-06-02 14:38:22', '2018-06-02 14:38:22', '20.00', 'Ajuda de custo formador Danilo.', 'S', 'C', 0),
(26, '2018-06-02 14:40:11', '2018-02-01 14:40:10', '2018-02-03 14:40:10', '50.00', 'Van para o sarau do Gej adonai', 'S', 'C', 0),
(27, '2018-06-02 18:25:38', '2018-06-02 18:25:38', '2018-06-02 18:25:38', '156.00', 'Vendas de bottons Vigilia Jedi', 'E', 'C', 0),
(28, '2018-06-04 11:34:43', '2018-05-17 09:46:07', '2018-06-10 09:46:07', '30.00', 'Pagamento de hospedagem e template do site (Pagar ao Leo)', 'S', 'C', 0),
(29, '2018-06-09 10:30:23', '2018-06-09 10:30:23', '2018-06-09 10:30:23', '0.25', 'Doação teatro', 'E', 'C', 0),
(30, '2018-06-09 12:32:04', '2018-06-09 12:32:04', '2018-06-09 12:32:04', '5.29', 'Compra de saco de lixo para o bazar', 'S', 'C', 0),
(31, '2018-06-09 13:48:55', '2018-05-26 13:48:55', '2018-05-26 13:48:55', '80.00', 'Venda de botton', 'E', 'C', 0),
(32, '2018-06-10 10:20:15', '2018-06-09 10:20:15', '2018-06-09 10:20:15', '180.00', 'Bazar santifique-se', 'E', 'C', 0),
(33, '2018-06-10 10:22:22', '2018-06-09 10:22:22', '2018-06-09 10:22:22', '60.00', 'Doação tios EAC', 'E', 'C', 0),
(34, '2018-06-15 20:20:49', '2018-06-15 20:20:49', '2018-06-15 20:20:49', '100.00', 'Pagamento dos Botons (Aviva Gej)', 'S', 'C', 0),
(35, '2018-06-17 12:16:25', '2018-06-17 12:54:56', '2018-06-17 12:54:56', '165.00', 'Bazar santifique-se', 'E', 'C', 0),
(36, '2018-06-17 12:30:18', '2018-06-16 12:30:18', '2018-06-16 12:30:18', '20.00', 'Gasolina missão jardim ABC !', 'S', 'C', 0),
(37, '2018-06-18 08:49:05', '2018-06-17 22:33:12', '2018-06-17 22:33:12', '243.00', 'Compras dos chaveiros pagamento realizado pelo Leo', 'S', 'C', 0),
(38, '2018-06-19 21:19:27', '2018-06-19 21:19:27', '2018-06-19 21:19:27', '33.00', 'Pagamento dos Botons (Aviva Gej) Deposito Fernanda', 'S', 'C', 0),
(39, '2018-06-21 18:26:53', '2018-06-21 18:26:53', '2018-06-22 18:26:53', '14.00', 'Compra de saquinhos para chaveiros e bottons', 'S', 'C', 0),
(40, '2018-06-22 22:32:26', '2018-06-22 22:32:25', '2018-06-22 22:32:25', '5.00', 'Venda de chaveiro', 'E', 'C', 0),
(41, '2018-06-23 17:02:15', '2018-06-23 11:01:30', '2018-06-23 11:01:30', '85.00', 'venda de chaveiros (Lucas Ribeiro Trabalho dele)', 'E', 'C', 0),
(42, '2018-06-23 17:03:21', '2018-06-23 17:03:21', '2018-06-23 17:03:21', '30.00', 'Cadeiras para o aviva Gej', 'S', 'C', 0),
(44, '2018-06-25 12:21:54', '2018-06-23 12:21:54', '2018-06-23 12:21:54', '216.00', 'Vendas de chaveiros bottons e camisas no Aviva Gej de 23/06', 'E', 'C', 0),
(45, '2018-07-02 20:39:35', '2018-07-02 12:03:31', '2018-07-02 12:03:31', '50.00', 'Valor referente aos chaveiros (LUCAS RIBEIRO trabalho dele )', 'E', 'C', 0),
(46, '2018-07-02 22:16:05', '2018-07-02 22:16:05', '2018-07-02 22:16:05', '66.00', 'Venda de chaveiros pastoral familiar !', 'E', 'C', 0),
(47, '2018-07-03 10:50:12', '2018-07-06 13:05:04', '2018-07-06 13:05:04', '85.00', 'Pagamento de hospedagem e template do site (Pagar ao Leo) + Máquina do GEJ', 'S', 'C', 0),
(48, '2018-07-04 12:05:44', '2018-07-04 12:05:44', '2018-07-04 12:05:44', '475.00', 'RIFA (PISTA DE BOLICHE)', 'E', 'C', 0),
(49, '2018-07-04 18:51:04', '2018-07-04 18:51:04', '2018-07-04 18:51:04', '60.00', 'Encomenda Erika Recanto das Emas', 'E', 'C', 0),
(50, '2018-07-05 11:49:08', '2018-07-02 11:57:06', '2018-07-02 11:57:06', '320.00', 'Pagamento do Sinal do ônibus (Abastecimento Realizado pelo Leo Retirado do dinheiro recebido por cartão)', 'S', 'C', 3),
(51, '2018-07-12 11:58:13', '2018-07-06 11:58:28', '2018-07-06 11:58:28', '1280.00', 'Pagamento do ônibus', 'S', 'C', 3),
(52, '2018-07-13 16:23:49', '2018-07-07 16:23:48', '2018-07-07 16:23:48', '1175.00', 'pagamento do sítio !', 'S', 'C', 3),
(53, '2018-07-14 22:27:02', '2018-07-14 10:50:20', '2018-07-14 10:50:20', '10.00', 'Vendas de Bottons Wesley', 'E', 'C', 0),
(54, '2018-07-17 15:25:41', '2018-07-16 15:25:41', '2018-07-16 15:25:41', '252.00', 'Compras dos chaveiros pagamento realizado pelo Leo', 'S', 'N', 0),
(55, '2018-07-17 15:26:30', '2018-07-05 15:26:29', '2018-07-05 15:26:29', '615.00', 'Compras do abastecimento', 'S', 'C', 3),
(56, '2018-07-26 09:56:28', '2018-07-21 09:56:56', '2018-07-21 09:56:56', '50.00', 'Ajuda de Custo Gabriel', 'S', 'C', 17),
(58, '2018-07-26 10:06:31', '2018-07-21 10:06:31', '2018-07-21 10:06:31', '250.00', 'Aluguel de Som', 'S', 'C', 17),
(59, '2018-07-26 10:07:49', '2018-07-21 10:07:49', '2018-07-21 10:07:49', '250.00', 'Brigadista e Segurança', 'S', 'C', 17),
(60, '2018-07-26 10:08:23', '2018-07-21 10:08:23', '2018-07-21 10:08:23', '70.00', 'Compra de Gás', 'S', 'C', 17),
(61, '2018-07-26 10:09:09', '2018-07-21 10:09:09', '2018-07-21 10:09:09', '200.00', 'Complemento do pagamento do Ônibus', 'S', 'C', 17),
(62, '2018-07-26 10:09:40', '2018-07-21 10:09:40', '2018-07-21 10:09:40', '100.00', 'Compra de Pães para Hot Dog', 'S', 'C', 17),
(63, '2018-07-26 10:11:09', '2018-07-21 10:11:09', '2018-07-21 10:11:09', '2032.00', 'Pagamento das camisetas do evento', 'S', 'C', 17),
(64, '2018-07-26 10:12:53', '2018-07-21 10:12:53', '2018-08-06 10:12:53', '234.00', 'Compras mantimentos Cartão do Leo', 'S', 'N', 17),
(65, '2018-07-26 10:14:18', '2018-07-21 10:41:48', '2018-09-05 10:41:48', '188.00', 'Compras mantimento cartão do Leo', 'S', 'C', 17),
(66, '2018-07-26 10:17:17', '2018-07-21 10:17:17', '2018-07-21 10:17:17', '60.00', 'Gasolina', 'S', 'C', 17),
(67, '2018-07-26 10:21:35', '2018-07-21 10:21:35', '2018-07-21 10:21:35', '40.00', 'Produtos de Limpeza em geral', 'S', 'C', 17),
(68, '2018-07-26 10:21:59', '2018-07-21 10:21:59', '2018-07-21 10:21:59', '30.00', 'Lembrancinhas do Evento', 'S', 'C', 17),
(69, '2018-07-26 10:22:19', '2018-07-21 10:22:19', '2018-07-21 10:22:19', '41.00', 'Ornamentação Geral', 'S', 'C', 17),
(72, '2018-07-26 10:44:18', '2018-07-21 23:31:05', '2018-07-21 23:31:05', '2248.00', 'Vendas de Camisetas lanches chaveiros e bottons do evento', 'E', 'C', 17);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_funcionalidade`
--

CREATE TABLE `tb_funcionalidade` (
  `co_funcionalidade` int(11) NOT NULL,
  `no_funcionalidade` varchar(150) NOT NULL,
  `ds_action` varchar(120) DEFAULT NULL,
  `st_status` varchar(1) DEFAULT 'A' COMMENT '''A - Ativo / I - Inativo''',
  `st_menu` varchar(1) DEFAULT 'S' COMMENT 'S - Sim / N - Não (Se apresenta no menu)',
  `co_controller` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `tb_funcionalidade`
--

INSERT INTO `tb_funcionalidade` (`co_funcionalidade`, `no_funcionalidade`, `ds_action`, `st_status`, `st_menu`, `co_controller`) VALUES
(1, 'Perfil Master', 'PerfilMaster', 'A', 'S', 0),
(2, 'Auditoria Listar', 'ListarAuditoria', 'A', 'S', 2),
(3, 'Auditoria Detalhar', 'DetalharAuditoria', 'A', 'N', 2),
(4, 'Usuario Cadastrar', 'CadastroUsuario', 'A', 'N', 6),
(5, 'Usuario Listar', 'ListarUsuario', 'A', 'S', 6),
(6, 'Meu Perfil Usuario', 'MeuPerfilUsuario', 'A', 'S', 6),
(7, 'Perfil Listar', 'ListarPerfil', 'A', 'S', 5),
(8, 'Perfil Cadastrar', 'CadastroPerfil', 'A', 'S', 5),
(9, 'Funcionalidade Listar', 'ListarFuncionalidade', 'A', 'S', 4),
(10, 'Funcionalidade Cadastrar', 'CadastroFuncionalidade', 'A', 'S', 4),
(12, 'Troca Senha Usuario', 'TrocaSenhaUsuario', 'A', 'S', 6),
(13, 'Dados Complementares Assinante', 'DadosComplementaresAssinante', 'A', 'S', 9),
(29, 'Listar Visita', 'ListarVisita', 'A', 'S', 7),
(30, 'Config Gestao', 'ConfigGestao', 'A', 'S', 1),
(31, 'Gerar Entidades Gestao', 'GerarEntidadesGestao', 'A', 'S', 1),
(32, 'Gerar Backup Gestao', 'GerarBackupGestao', 'A', 'S', 1),
(33, 'Listar Acesso', 'ListarAcesso', 'A', 'S', 3),
(34, 'Listar Plano', 'ListarPlano', 'A', 'S', 8),
(35, 'Cadastro Plano', 'CadastroPlano', 'A', 'S', 8),
(36, 'Listar Assinante', 'ListarAssinante', 'A', 'S', 9),
(37, 'Cadastro Assinante', 'CadastroAssinante', 'A', 'S', 9),
(38, 'Pre Projeto Gestao', 'PreProjetoGestao', 'A', 'S', 1),
(39, 'Acompanhar Projeto Gestao', 'AcompanharProjetoGestao', 'A', 'N', 1),
(40, 'Limpar Banco Gestao', 'LimparBancoGestao', 'A', 'S', 1),
(41, 'Cadastro Agenda', 'CadastroAgenda', 'A', 'N', 10),
(42, 'Calendario', 'Calendario', 'A', 'S', 10),
(43, 'Listar Inscricao', 'ListarInscricao', 'A', 'S', 11),
(44, 'Gráficos Inscricao', 'GraficosInscricao', 'A', 'S', 11),
(45, 'Detalhes Inscricao', 'DetalhesInscricao', 'A', 'S', 11),
(46, 'Sobre Vc Inscricao', 'SobreVcInscricao', 'A', 'S', 11),
(47, 'Cadastro FluxoCaixa', 'CadastroFluxoCaixa', 'A', 'S', 12),
(48, 'Listar FluxoCaixa', 'ListarFluxoCaixa', 'A', 'S', 12),
(49, 'Cadastro Camisa', 'CadastroCamisa', 'A', 'S', 13),
(50, 'Listar Camisa', 'ListarCamisa', 'A', 'S', 13),
(51, 'Desativar Inscricao', 'DesativarInscricao', 'A', 'N', 11),
(52, 'Ativar Inscricao', 'AtivarInscricao', 'A', 'N', 11);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_historia`
--

CREATE TABLE `tb_historia` (
  `co_historia` int(11) NOT NULL,
  `ds_titulo` varchar(80) DEFAULT NULL,
  `ds_observacao` text,
  `dt_cadastro` datetime DEFAULT NULL,
  `dt_atualizado` datetime DEFAULT NULL,
  `st_situacao` varchar(1) DEFAULT 'N' COMMENT 'N - Não iniciada / I - Iniciada / C - Concluida',
  `co_sessao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `tb_historia`
--

INSERT INTO `tb_historia` (`co_historia`, `ds_titulo`, `ds_observacao`, `dt_cadastro`, `dt_atualizado`, `st_situacao`, `co_sessao`) VALUES
(1, 'Manter Camisa', '<p>Manter camisa</p>', '2019-03-27 11:16:40', '2019-03-27 11:16:40', 'I', 1),
(2, 'Manter Pedido camisa', '<p>Manter Pedido camisa</p>', '2019-03-27 11:17:04', '2019-03-27 11:17:04', 'I', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_historico_historia`
--

CREATE TABLE `tb_historico_historia` (
  `co_historico_historia` int(11) NOT NULL,
  `nu_esforco` int(2) DEFAULT NULL,
  `nu_esforco_restante` int(2) DEFAULT NULL,
  `dt_cadastro` datetime DEFAULT NULL,
  `co_historia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `tb_historico_historia`
--

INSERT INTO `tb_historico_historia` (`co_historico_historia`, `nu_esforco`, `nu_esforco_restante`, `dt_cadastro`, `co_historia`) VALUES
(1, 13, 5, '2019-03-27 11:16:40', 1),
(2, 8, 5, '2019-03-27 11:17:04', 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_imagem`
--

CREATE TABLE `tb_imagem` (
  `co_imagem` int(10) UNSIGNED NOT NULL,
  `ds_caminho` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `tb_imagem`
--

INSERT INTO `tb_imagem` (`co_imagem`, `ds_caminho`) VALUES
(1, 'leonardo-m-c-bessa-56e8920c23ab6.jpg'),
(2, 'amanda-tominaga-5c4a33b191f83.jpg'),
(351, 'andressa-carvalho-da-silva-5c6411ce5aae2.jpg'),
(4, 'brenda-nayane-duda-moreira-5c60c4efb97ac.jpeg'),
(350, 'dierfe-de-deus-lima-5c63f9ec47af8.jpg'),
(7, 'amanda-silva-lima-5a259f4e532ad.jpg'),
(8, 'jerlane-soares-magalhaes-da-silva-5a25a537f1d0c.jpg'),
(9, 'joao-victor-pereira-fernandes-5a25a62b62be8.jpg'),
(11, 'thais-lima-rocha-5a25bc8aba273.jpg'),
(12, 'thais-lima-rocha-5a25bcd7719e2.jpg'),
(13, 'fabricio-alves-oliveira-5a25e55ada86d.jpeg'),
(247, 'mariana-lima-de-oliveira-5af9d0164858b.jpg'),
(15, 'vitoria-prudencio-lima-5c45cf70192ac.jpg'),
(17, 'wallisson-matias-de-sousa-5a2687e5d3b36.jpg'),
(18, 'manuela-correa-marangoni-5a2699bda4bb7.JPG'),
(19, 'priscila-martins-matias-5c64cf9bc0d79.jpg'),
(20, 'mercia-batista-miranda-5c450b899678d.jpg'),
(21, 'veronica-cristina-de-lima-ribeiro-5a275871ad572.JPG'),
(22, 'kamila-silva-5adf93673b65d.jpeg'),
(23, 'diogo-da-silva-cardoso-5a28962de2ab7.jpg'),
(24, 'cassio-rodrigues-castro-5a28a6cd3d36c.jpg'),
(26, 'eduardo-pires-tominaga-5a29bed5a0225.jpg'),
(27, 'thainata-tonha-de-santana-5a2a7763a5979.jpg'),
(28, 'raul-dias-miranda-cardoso-5c66b059d6bea.jpg'),
(29, 'erica-stephanie-de-sousa-carvalho-5b3ce2df191a7.jpg'),
(349, 'lorrane-hester-pereira-rocha-5c62b7e6bcd8e.jpg'),
(32, 'pedro-augusto-pacheco-5a2c20026bda4.png'),
(33, 'gabriella-lima-tonha-5a2c31037a294.jpg'),
(34, 'raul-dias-miranda-cardoso-5a2dc30837843.jpg'),
(36, 'luana-ribeiro-bessa-5a2dd73e1d6dd.jpg'),
(37, 'leticia-machado-carvalho-bessa-5b3109e1007ff.jpg'),
(38, 'evelyn-ribeiro-da-silva-5a2edf7d99956.jpg'),
(39, 'vitoria-prudencio-lima-5a2ee1c7795ee.jpg'),
(40, 'lara-de-sousa-almeida-5a2eeafd99646.jpg'),
(41, 'gabriela-mendes-souza-5a2ef5fb55046.JPG'),
(42, 'daniela-mendes-de-souza-5a2ef759696ef.JPG'),
(43, 'isabella-garcia-mendes-5a2fea875ed9d.jpeg'),
(44, 'vitor-hugo-barroso-5a2ff9d0975a9.jpg'),
(45, 'lara-de-sousa-almeida-5a30086bea207.jpg'),
(46, 'antonio-carlos-ramos-lima-5a3281c7028bd.jpg'),
(47, 'antonio-carlos-ramos-lima-5a328901f34d8.jpg'),
(48, 'larissa-mesquita-5a3548a6d260a.jpeg'),
(50, 'danielle-patricia-guedes-e-silva-5a37f567d5bc9.jpg'),
(51, 'barbara-silva-5a382cd0273e4.JPG'),
(348, 'maria-julia-de-freitas-5c61e4b2b5feb.jpg'),
(55, 'maria-gabriela-alves-rodrigues-5a385a6e22d3d.JPG'),
(58, 'thais-oliveira-da-costa-maia-5c506f8a216dd.jpeg'),
(59, 'leticia-martins-de-sousa-5a392db0f3b6e.jpeg'),
(60, 'keiter-da-silva-maia-5c50f4eb90ff1.jpg'),
(61, 'roniel-rodrigues-albuquerque-5c4bb1a3d882d.jpeg'),
(62, 'lilian-machado-carvalho-bessa-5a3aeb2c7d19c.jpg'),
(64, 'anna-caroliny-rodrigues-lauro-5a3bccb69e958.jpg'),
(65, 'clarisse-vitoria-franca-pereira-5a3bf6f9badea.png'),
(330, 'amaury-costa-silva-ramos-5c52fe884a358.jpg'),
(67, 'joyce-lopes-ferreira-5afb8e88ceeb1.jpeg'),
(68, 'sabrina-belarmina-de-abreu-5a3fe0395f2b1.jpg'),
(347, 'ana-carolina-ferreira-da-costa-5c618bbec9540.jpeg'),
(346, 'joao-paulo-moreira-da-nobrega-5c60c4092aa4e.jpeg'),
(71, 'evelyn-ribeiro-5a426c1a5307a.jpg'),
(73, 'adriel-clementino-dos-santos-5a43cf25e52e3.jpeg'),
(74, 'linneker-lima-roberto-gomes-5afa3f52bf0b4.jpeg'),
(75, 'kamila-silva-5a443ec4a76fd.jpeg'),
(76, 'maria-tayanne-5a450f512dfe2.jpg'),
(77, 'luamar-de-sousa-da-silva-5a458b9ed3d8f.jpg'),
(79, 'isabella-garcia-mendes-5a4773896b254.jpeg'),
(81, 'laura-dos-santos-bussolo-5a479c5a028c9.JPG'),
(82, 'maylla-souza-balzani-5a47d87adde41.jpg'),
(83, 'jessika-layane-da-cruz-rocha-5a4a88bf2863f.jpg'),
(84, 'brena-kessia-apolinario-5c6dc5796efd8.jpg'),
(85, 'maria-rita-de-franca-oliveira-5a4ad4ff42bd8.jpeg'),
(86, 'deivson-rodrigo-carvalho-de-lima-5a4c1a3c900ab.jpg'),
(87, 'victtoria-macedo-leal-5c644bbcb7ece.jpg'),
(88, 'gustavo-rodrigues-viana-5a4d17654bb74.jpg'),
(89, 'edilene-da-cruz-silva-5a4e23efada64.jpg'),
(345, 'carolina-romeiro-moraes-5c5f168c5fe1d.jpeg'),
(93, 'paloma-maria-ferreira-da-silva-5a4fac86db822.jpg'),
(94, 'maria-leticia-souza-de-jesus-5a4fb4c0a4762.jpeg'),
(95, 'daniel-silva-almeida-5a4fbfea1a304.jpg'),
(98, 'jennifer-bianca-candido-souza-5a5139eb89171.jpeg'),
(100, 'maysa-pereira-dias-5a515096dc444.jpg'),
(101, 'maysa-pereira-dias-5a5153d36cf9c.jpg'),
(102, 'fernanda-soares-conceicao-5a515f69774ba.jpg'),
(103, 'leticia-maria-lima-gomes-5a51631351f0e.png'),
(104, 'amanda-neves-de-carvalho-5a521cba1cda0.jpg'),
(105, 'amanda-neves-de-carvalho-5a5221db076b0.jpg'),
(344, 'nathalia-saraiva-de-souza-5c5ee669db849.jpg'),
(108, 'pedro-henrique-pires-fontes-5a529da62250c.jpg'),
(109, 'ronny-ken-dias-tominaga-5a52a1923f1e3.jpg'),
(110, 'bianca-ceci-maria-da-silva-vieira-justiniano-pinto-5a52a240c32d5.jpg'),
(111, 'victor-hugo-souza-rodrigues-5a52bbef65f75.jpg'),
(112, 'tayane-moreira-da-mota-5c4abbaba1510.jpg'),
(113, 'laura-marina-da-silva-doca-chagas-5a53d20cc19ff.JPG'),
(114, 'ana-karolyna-figueredo-dos-santos-5a53e74e59b29.jpg'),
(115, 'bruno-lima-de-souza-5a53ef3756803.jpg'),
(116, 'murillo-medeiros-da-costa-5a5404d1b9f59.jpg'),
(117, 'nathalya-pimentel-temote-5a540af140329.jpg'),
(118, 'pedro-henrique-da-silva-dutra-5a540b816f0ec.jpeg'),
(119, 'joao-carlos-da-costa-souza-5a5411126e681.jpg'),
(121, 'lara-de-sousa-almeida-5a54f9a8c2095.jpg'),
(122, 'larissa-nobre-da-cruz-5a555914de5cf.jpg'),
(343, 'adriana-arruda-de-jesus-5c5ebf942d7fe.jpeg'),
(124, 'bruna-alves-de-almeida-5a57e1e117b38.jpg'),
(125, 'debora-duarte-honorio-5a58b5422f36c.jpg'),
(127, 'yara-raquel-figueredo-rocha-5a58ca7466767.jpeg'),
(128, 'elton-barauna-de-souza-5a5a0a16c8b2c.jpg'),
(129, 'vitor-ribeiro-da-silva-5a5a2272a202d.jpg'),
(245, 'catherine-mendes-de-jesus-5af76e2271f31.jpg'),
(132, 'romulo-dias-miranda-cardoso-5a5d4f2a288eb.jpg'),
(133, 'emanuelle-beatriz-de-souza-pereira-5a5e04ed71003.jpeg'),
(134, 'thais-araujo-xavier-5a5e0569e2a99.jpg'),
(135, 'leila-pires-tominaga-5a5e2b22797d6.jpg'),
(342, 'victoria-cristina-sousa-lima-5c5d86be65013.jpg'),
(139, 'brunna-natiely-herculano-vieira-5a5e9e829edb6.jpg'),
(140, 'jhony-ferreira-5a5fc8581e1af.jpg'),
(341, 'milena-de-oliveira-5c5d86077ad82.jpg'),
(142, 'jefferson-fillipe-de-souza-lopes-5a5fd2248d29f.jpg'),
(246, 'lucas-cunha-ribeiro-5af788c845568.JPG'),
(144, 'gabrielle-rodrigues-oliveira-5a5fdbbc9b731.jpg'),
(340, 'alan-matos-lourenco-5c5cdaa110980.jpg'),
(253, 'breno-silva-de-jesus-5b0b6de86df15.jpeg'),
(147, 'silvia-miki-yamamoto-5a60e9528aec7.jpeg'),
(148, 'larissa-goncalves-ferreira-5b3cd71d4d429.jpg'),
(149, 'maria-eduarda-freitas-5a612d14e8698.jpg'),
(150, 'maria-karlene-ramos-lima-5b0cad2b3c128.jpg'),
(160, 'cecilia-rubia-nascimento-silva-5a66296c1d456.jpeg'),
(162, 'matheus-salvino-azevedo-5a6677c7a5dc3.jpg'),
(163, 'wesley-salvino-de-farias-5a6679ff23e7f.jpg'),
(164, 'victor-samuel-azevedo-de-oliveira-5a667cb497129.jpg'),
(339, 'ana-flavia-moreira-e-silva-coelho-5c5ccc795b424.jpg'),
(166, 'luiz-antonio-bizerra-de-oliveira-5a6757e72178a.jpg'),
(260, 'iv-vigilia-alegria-que-vem-de-deus-5b49067ddf106.jpg'),
(168, 'guilherme-moreira-ferreira-5a67d988eaac8.jpg'),
(169, 'guilherme-balbino-da-silva-5a67edecee754.jpg'),
(170, 'marina-lopes-rodrigues-5a687ed11609e.jpeg'),
(171, 'beatriz-feitosa-dias-5a688ad89bd30.jpg'),
(172, 'leticia-da-silva-pereira-5a68a6b7315ec.jpg'),
(173, 'rivelino-nunes-pereira-filho-5a68a90ff1d17.jpg'),
(174, 'samara-desconzi-5a6a09716beec.JPG'),
(175, 'wesley-alves-de-castro-5a6a41c6e91dc.jpeg'),
(338, 'natalia-afonso-soares-5c5c586834aab.jpeg'),
(177, 'deise-mendes-5a6b12fdd39e4.jpg'),
(178, 'fernanda-karla-rodrigues-lima-5a6b4f7c2bf35.jpg'),
(179, 'laiane-de-oliveira-slva-5a6bc8ba5ee8f.jpg'),
(270, 'jakeline-vilela-de-sousa-5c450bcdf2a2d.jpg'),
(181, 'guilherme-vale-silva-matos-5a6cb4a3bd882.jpg'),
(182, 'gabriella-vale-silva-matos-5a6cb675aec83.jpg'),
(183, 'izabella-vaz-bandeira-5a6ce54b1fcea.jpg'),
(185, 'fernanda-coelho-do-nascimento-5a6e6edb9c5a7.jpg'),
(186, 'monike-nardi-5a6ef0fee0e5d.jpg'),
(187, 'arlan-santos-coimbra-5a6faf2f314a5.jpg'),
(188, 'leonara-almeida-5a6fc8eb1cf05.jpg'),
(337, 'gabrielly-mangabeira-lourenco-de-lima-5c5b95f4c1920.jpeg'),
(278, 'catherine-mendes-de-jesus-5c4519b75ad63.jpg'),
(190, 'jonas-rodrigues-de-sousa-5c6d8f0de8b5e.jpg'),
(191, 'joao-victor-oliveira-barros-5a711ba466122.jpg'),
(192, 'amaury-costa-silva-ramos-5a71aca4a839a.jpg'),
(193, 'luiz-miguel-barbosa-barros-5a7335ba3e198.jpg'),
(194, 'jose-ferreira-dos-santos-5a73a2fbc17c5.JPG'),
(195, 'luy-brenno-santos-de-souza-5a73b22a5eef9.JPG'),
(196, 'ernando-souza-de-paula-5a74620d7b044.jpg'),
(197, 'higor-rodrigues-dias-5a749fff17f9c.jpg'),
(198, 'higor-dias-5a74a3361fb57.jpg'),
(199, 'hellen-thais-dias-rodrigues-5a74a5ec9d873.JPG'),
(200, 'diego-rocha-da-silva-5a75c7bbc0efe.jpg'),
(201, 'soniara-aparecida-mendes-maia-5a7656b2d944f.jpg'),
(202, 'raquel-da-costa-silva-5a76578390c81.jpg'),
(203, 'julia-faraj-benn-5a7658b5172e5.jpg'),
(204, 'matheus-martins-da-costa-5a772563a5ab3.jpg'),
(205, 'wemerson-andrade-messias-santos-5a775f6c18744.jpeg'),
(329, 'karen-geovanna-figueredo-dos-santos-5c50f4fe21b1d.jpg'),
(207, 'gabriel-de-souza-lima-5a77a4afd9f8e.jpg'),
(208, 'polyanna-da-costa-lima-5a77d82edb9d1.jpg'),
(336, 'antonia-simone-ramos-lima-maciel-5c5b2ad80976b.jpg'),
(210, 'lais-vieira-sousa-5a78baf8ede37.jpg'),
(211, 'ana-lidia-de-holanda-nunes-5a78dc4b32aa8.jpg'),
(212, 'alex-gehlhaar-5a78f4083f8d6.jpg'),
(213, 'joyce-ferreira-gomes-5a78f8fb2f1be.jpg'),
(215, 'tiago-moreira-gomes-5a7ace45ce896.jpg'),
(216, 'abigayl-kathleen-costa-da-penha-5a7ae5d5c4f65.jpg'),
(217, 'maria-luiza-camargo-raposo-de-melo-5a7b043773170.jpg'),
(218, 'elliel-kassio-5a7b16ed16f84.jpg'),
(219, 'daniel-negreiro-marciel-5a7b1e1083b80.jpg'),
(220, 'carlos-augusto-silva-damacena-5a7b8079eacf4.png'),
(377, 'joao-victor-ferreira-de-araujo-5c6db33612195.jpg'),
(223, 'guilherme-henrique-da-silva-costa-5a7c64f9e1878.jpg'),
(224, 'erika-pereira-do-prado-5a7c7201c7f63.jpeg'),
(225, 'rafael-fontenele-5a7c75f873d32.jpeg'),
(226, 'leticia-coelho-brito-5a7cb81c1cdac.jpg'),
(227, 'tamires-ferreira-barbosa-felix-5a7cc40160e82.jpg'),
(228, 'brunna-adryah-guimaraes-mourao-5a7cf2fe8366f.jpg'),
(229, 'julia-vitoria-negreiro-marciel-5a7cf60c686a8.jpg'),
(230, 'joao-victor-alves-coelho-5a7d010f44bf1.jpg'),
(231, 'camila-santos-gabriel-5a7d06cdba13d.png'),
(232, 'vitor-valentin-benetti-5a7db1742d733.jpg'),
(233, 'geovanna-emily-araujo-silva-5a7dbc9d11742.jpg'),
(234, 'alexsandra-maiberg-hausser-5a7dbe93ee582.jpg'),
(235, 'pedro-paulo-alves-coelho-5a7e204a3a794.jpg'),
(236, 'Eventos/CapaEventos/vi-retiro-de-carnaval-santifique-se-5ac98c54e3d03.jpg'),
(237, 'Eventos/CapaEventos/festival-de-pastel-5acfdc9bdcc97.JPG'),
(238, 'Eventos/CapaEventos/ii-abastecimento-espiritual-gej-5ad7fde213a9b.jpg'),
(239, 'fernanda-gomes-de-freitas-moura-5c5dabcb34685.jpeg'),
(241, 'suyane-tallita-reis-silva-5ae5cd8ec73b8.JPG'),
(335, 'thamires-barbosa-de-almeida-5c5b2862a7945.jpeg'),
(334, 'raquel-beserra-5c5ad8d014dbf.jpg'),
(252, 'antonia-simone-ramos-lima-maciel-5b03052a9f401.jpg'),
(255, 'antonia-simone-ramos-lima-maciel-5b15acc4dc94c.jpg'),
(256, 'ana-carolina-silva-5b15c5c1eacd3.jpeg'),
(257, 'wesley-barbosa-de-carvalho-maciel-lima-5c64350ed06b7.jpg'),
(261, 'leonardo-machado-carvalho-bessa-5c4abc533e242.jpg'),
(264, 'fernanda-gomes-de-freitas-moura-5c3c7e49a6679.jpg'),
(267, 'edwirges-cassia-de-macedo-5c438a497f3e6.jpg'),
(268, 'daniela-santos-de-almeida-5c450a67892a4.jpg'),
(333, 'joao-victor-ribeiro-da-silva-5c5864af479cf.jpg'),
(271, 'anderson-braga-inocentes-5c450c0a05b0d.jpeg'),
(272, 'matheus-klismann-carvalho-costa-5c450c3749d83.jpg'),
(273, 'mariana-salles-de-melo-5c450e417c224.jpg'),
(274, 'thais-cristina-campos-santos-5c450f36baf7c.jpeg'),
(276, 'yanka-evelyn-rodrigues-dos-santos-5c4abbdb7f299.jpg'),
(277, 'relka-maria-ponte-aguiar-5c451094b7384.jpg'),
(279, 'geovanna-victhoria-cardoso-siqueira-5c4520da90c58.jpg'),
(280, 'ana-carolina-meireles-felipe-5c4525942598f.jpg'),
(281, 'keyce-cristina-oliveira-dos-santos-5c452a7592b0e.jpg'),
(282, 'monique-vieira-pereira-pinheiro-5c4abb4b5fe62.jpg'),
(283, 'linneker-lima-roberto-gomes-5c4abb821ec11.jpg'),
(285, 'gabriellen-cintia-de-oliveira-campos-5c45c045f05bb.jpg'),
(286, 'taynara-rodrigues-de-azevedo-5c4abb6a093c3.jpg'),
(287, 'beatriz-simoes-da-silva-melo-5c45c59fe4cbf.png'),
(332, 'gabriel-walker-5c55b570cb2e7.jpg'),
(290, 'lilian-machado-carvalho-bessa-5c45cfcf03a80.jpg'),
(292, 'lucas-cunha-ribeiro-5c45e2677ce62.jpg'),
(293, 'sara-da-mota-mendonca-5c45ed7c25afb.jpeg'),
(331, 'matheus-humberto-miranda-ribeiro-5c532c51ba145.jpg'),
(295, 'savio-bispo-reis-5c45fb4dd24b8.jpeg'),
(296, 'danilo-arantes-sebastiao-5c4602d7ce37a.jpg'),
(297, 'isabela-cristina-capitulino-ximenes-aragao-5c4623c51e1cf.jpg'),
(298, 'leticia-machado-carvalho-bessa-5c462dfdb8825.jpg'),
(299, 'maria-clara-dos-santos-ribeiro-5c463ab9a2bc3.jpg'),
(300, 'maria-claudia-bispo-reis-5c49a138463d1.jpg'),
(301, 'jackson-alves-5c47afec2447f.jpeg'),
(303, 'sinara-caroline-queiroz-simas-5c491167c6856.jpg'),
(304, 'maria-isabel-amorim-de-sousa-5c4926571d537.jpg'),
(305, 'sinara-caroline-queiroz-simas-5c49cb0622735.jpg'),
(306, 'sinara-caroline-queiroz-simas-5c49cfd4a1227.jpeg'),
(307, 'leticia-machado-carvalho-bessa-hsh-5c49d83e5f24c.jpg'),
(308, 'ellen-patricia-fonseca-5c4a05df2c267.JPG'),
(309, 'ellen-patricia-fonseca-5c4a079eeefb2.JPG'),
(310, 'ellen-patricia-fonseca-5c4a09790eae9.jpg'),
(311, 'ellen-patricia-fonseca-5c4a0c4f61cc3.JPG'),
(312, 'ellen-patricia-fonseca-5c4a0dc10e298.JPG'),
(313, 'ellen-patricia-fonseca-5c4a425a5e969.JPG'),
(314, 'rayssa-pereira-de-oliveira-5c4a5279219a2.JPG'),
(315, 'polyana-veloso-de-oliveira-5c4a674f1d401.jpg'),
(316, 'sinara-caroline-queiroz-simas-5c4b027179ef9.jpg'),
(317, 'jeane-silva-de-andrade-5c4b899f65eb4.jpg'),
(318, 'leticia-miranda-moraes-5c4b8b3292e84.jpg'),
(319, 'joao-victor-luziano-pereira-calisto-5c4ba67690706.jpg'),
(320, 'luana-ribeiro-bessa-5c4c379de8193.jpg'),
(321, 'aline-carvalho-de-lima-5c4c547c77c6e.jpeg'),
(322, 'jucelia-saraiva-dos-santos-5c4e0fefdb9f7.jpg'),
(323, 'ayrton-ferreira-lopes-5c4f0417d2c6d.jpg'),
(324, 'henrique-carvalho-assuncao-5c4f34b30ce77.jpg'),
(325, 'thaynara-barbosa-de-almeida-5c4f3ed6acac8.jpg'),
(326, 'jessica-camila-campos-santos-5c4f7a19a0be2.jpg'),
(327, 'gabriel-da-silva-barbosa-5c4f93dad68c4.jpg'),
(328, 'lucrece-neri-portela-5c50295dc0830.jpg'),
(352, 'karina-barbosa-mendes-5c6487239a98d.jpg'),
(353, 'marcelo-alves-da-silva-5c655cffaf238.jpg'),
(354, 'isabela-araujo-dos-santos-5c65716a364a8.jpeg'),
(355, 'ana-karoliny-martins-tavares-5c659d8352c35.jpg'),
(356, 'bruno-silva-dos-santos-5c65a156eebae.png'),
(357, 'welington-barbosa-de-carvalho-maciel-lima-5c65fef75d6f0.jpg'),
(358, 'ana-paula-carvalho-da-silva-5c660234815fc.jpg'),
(359, 'sarah-guimaraes-pereira-cavalcante-5c6763a0ea11f.jpeg'),
(360, 'sandra-raquel-de-oliveira-silva-5c68045cd7a20.jpg'),
(361, 'daniela-farias-gomes-5c685f02e9a4b.jpg'),
(362, 'dion-lucas-serafim-bispo-5c699f2fa655c.jpg'),
(363, 'lucas-barbosa-farias-5c6aaab9f2452.jpg'),
(364, 'danyelle-souza-silva-5c6abad14f063.jpg'),
(365, 'ana-lucia-gomes-figueiro-alves-5c6b1bc9d7730.jpg'),
(366, 'stephanie-paiva-silva-5c6b1fb931453.jpg'),
(367, 'tio-fofao-5c6b20a8c5393.jpg'),
(368, 'luis-fellype-moraes-de-aquino-5c6b3e1053f32.jpeg'),
(369, 'eduardo-miranda-de-souza-santana-5c6b3e4954872.jpg'),
(370, 'barbara-sany-gomes-alves-5c6b5e0bc9287.jpg'),
(371, 'maria-eduarda-cardoso-de-araujo-5c6b62ee3cc32.jpeg'),
(372, 'flavia-carolina-ferreira-linhares-5c6bd9b682be9.jpg'),
(373, 'yasmim-oliveira-ferreira-dos-santos-5c6c677ec0b78.jpeg'),
(374, 'renata-francisca-nogueira-dos-santos-5c6c7df087ee3.jpg'),
(375, 'tiago-steferson-da-silva-araujo-5c6d7156886fa.jpg'),
(376, 'bianca-gomes-de-souza-5c6d7236629c1.jpg'),
(378, 'gabriel-alvino-martins-5c6f162de9337.jpg'),
(379, 'larissa-correia-mariano-5c70750adb152.jpg'),
(380, 'barbara-helena-sousa-cirilo-5c72d57d1c845.jpeg'),
(381, 'arthur-simon-barbosa-da-silva-e-sa-5c7333db65558.jpg'),
(382, 'wanderson-fernandes-de-souza-5c7341cdcab2c.jpg'),
(383, 'clara-regina-rodrigues-5c73459c64531.jpg'),
(384, 'maria-rita-oliveira-feitosa-5c73fac8dbeba.jpeg'),
(385, 'lucianne-karen-nogueira-correia-5c74058146a52.jpg'),
(386, 'vitor-araujo-mariano-5c741245ee0da.jpg'),
(387, 'rhaissa-domingos-de-castro-5c741a6b9bd02.jpg'),
(388, 'paulo-victor-da-silva-souza-5c74239ec40ee.jpg'),
(389, 'janderson-willame-goncalves-bezerra-5c745d426ef43.jpg'),
(390, 'thiago-marinho-de-oliveira-vilas-boas-5c74775a04ecd.png'),
(391, 'isabela-maiter-veras-de-souza-5c747a2ea43be.jpeg'),
(392, 'gabriella-andrade-dos-santos-lima-5c74b41392d63.jpg'),
(393, 'henrique-nunes-de-sousa-5c75bfcf6efed.jpg'),
(394, 'maria-luiza-de-sousa-campos-braga-5c7688aa03b2e.jpg'),
(395, 'camila-carvalho-da-silva-5c76899aa3c49.jpg'),
(396, 'ludimila-carvalho-da-silva-5c768a8f51881.jpg'),
(397, 'mariana-lilian-lima-maia-5c77ee0750cba.jpeg'),
(398, 'carlos-eduardo-ribeiro-dos-santos-5c77f2f4aa7d4.jpg'),
(399, 'pedro-henrique-ribeiro-dos-santos-5c77f48b927af.jpg'),
(400, 'glaucia-penha-mendes-5c78334c8242a.jpg'),
(401, 'gabriele-souza-conde-5c7867a0878b0.jpg'),
(402, 'samara-adrielly-de-oliveira-gaspar-5c78768903cb6.jpg'),
(403, 'thiago-nunes-neves-5c7911f9c7239.jpeg'),
(404, 'joao-david-de-jesus-costa-5c7917844666c.jpg'),
(405, 'steffany-silva-sobrinho-5c792e87ce76e.jpg'),
(406, 'rafaela-barbosa-rafacho-moura-5c796b5ac29a6.JPG'),
(407, 'rafael-oliveira-sucupira-5c796fd78ea33.jpg');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_imagem_assinante`
--

CREATE TABLE `tb_imagem_assinante` (
  `co_imagem_assinante` int(10) NOT NULL,
  `co_assinante` int(11) NOT NULL,
  `co_imagem` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_imagem_evento`
--

CREATE TABLE `tb_imagem_evento` (
  `co_imagem_evento` int(10) NOT NULL,
  `co_evento` int(11) NOT NULL,
  `co_imagem` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_inscricao`
--

CREATE TABLE `tb_inscricao` (
  `co_inscricao` int(11) NOT NULL,
  `ds_pastoral` text,
  `ds_retiro` varchar(1) DEFAULT NULL,
  `dt_cadastro` datetime DEFAULT NULL,
  `st_status` varchar(1) DEFAULT 'A' COMMENT 'A - Atvo / D - Desistente',
  `ds_membro_ativo` varchar(1) DEFAULT 'N',
  `st_equipe_trabalho` varchar(1) DEFAULT 'N',
  `ds_situacao_atual_grupo` varchar(1) DEFAULT NULL,
  `nu_camisa` int(2) DEFAULT NULL,
  `no_responsavel` varchar(80) DEFAULT NULL,
  `nu_tel_responsavel` varchar(15) DEFAULT NULL,
  `ds_descricao` text,
  `ds_medicacao` text,
  `ds_alimentacao` text,
  `ds_motivo` text,
  `co_evento` int(11) NOT NULL,
  `co_pessoa` int(11) NOT NULL,
  `co_imagem` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `tb_inscricao`
--

INSERT INTO `tb_inscricao` (`co_inscricao`, `ds_pastoral`, `ds_retiro`, `dt_cadastro`, `st_status`, `ds_membro_ativo`, `st_equipe_trabalho`, `ds_situacao_atual_grupo`, `nu_camisa`, `no_responsavel`, `nu_tel_responsavel`, `ds_descricao`, `ds_medicacao`, `ds_alimentacao`, `ds_motivo`, `co_evento`, `co_pessoa`, `co_imagem`) VALUES
(1, NULL, 'N', '2017-12-30 19:59:43', 'A', 'N', 'N', NULL, 4, 'LEILA TOMINAGA', '61982522602', 'Sou top\r\nSou Filha de Dom Bosco \r\nA neném dos tios Tominaga', NULL, 'Sou diabética.', '', 1, 2, 2),
(2, NULL, 'S', '2017-12-04 12:45:16', 'D', 'N', 'N', NULL, 8, 'MãE', '6134588070', 'Sou o Igor! ', '', '', '', 1, 3, 3),
(3, 'Grupo Jovem Arcanjos e EJNS', 'S', '2018-01-06 19:32:35', 'A', 'N', 'N', NULL, 2, 'MINHA MãE LúCIA', '61986280131', 'Não sei falar muito sobre mim não, mas tudo bem.. Tenho 17 anos, gosto de participar de retiros e eu amei participar do Santifique-se esse ano.. Gosto de dançar, ler, estudar e aprender coisas diferentes ou no mínimo novas, além de conversar e ouvir as pessoas.', NULL, NULL, '', 1, 4, 4),
(4, 'GEJ Dom Bosco', 'S', '2017-12-30 19:23:11', 'A', 'S', 'S', NULL, 8, 'MãE ', '61991774916', 'Sou um rapaz muito ativo, participativo, alegre é muito sério também.\r\nNão sou muito fã de falar de mim, mas sou isto e um pouco mais !', NULL, NULL, '', 1, 189, 5),
(5, 'Acólitos e coroinhas', 'N', '2017-12-30 19:23:25', 'A', 'S', 'S', NULL, 7, 'MãE ', '62999535024', 'Sou gente boa', NULL, NULL, '', 1, 6, 6),
(6, NULL, 'N', '2018-01-08 10:30:31', 'A', 'S', 'S', NULL, 3, 'KêNIA ', '61930825870', 'Amanda\r\n19 anos', NULL, NULL, '', 1, 7, 7),
(7, 'Gej', 'N', '2017-12-30 19:59:54', 'A', 'S', 'S', NULL, 2, 'MINHA MãE ', '61994186538', 'Eu me chamo Jerlane sou do gej tenho  16 anos sou extrovertida brincalhona meiga seria amuuh participar dos eventos do gej amuuh fazer amizade com as pessoas', NULL, NULL, '', 1, 8, 8),
(8, NULL, 'S', '2018-01-18 19:44:51', 'A', 'N', 'N', NULL, 9, 'MARIA OZENITA PEREIRA', '61982361967', 'Não tenho nenhum tipo de alergia', NULL, NULL, '', 1, 9, 9),
(9, 'GEJ DOM BOSCO', 'S', '2018-01-15 22:54:24', 'A', 'S', 'S', NULL, 3, 'DENISE', '61934595330', 'Trago dentro de mim um pouco da alegria que vem de Deus! *-*', NULL, NULL, '', 1, 10, 10),
(10, 'Renovaćao carismatica do Santuário Sao Francisco', 'S', '2017-12-04 19:22:18', 'A', 'N', 'N', NULL, 1, 'ELIANE', '61982257021', 'Trabalho como professora, catolica praticante e gostaria de participar para me fortalecer e fortalecer a fé.', '', '', '', 1, 11, 11),
(12, 'GEJ Dom Bosco', 'S', '2017-12-04 22:16:26', 'A', 'S', 'N', NULL, 9, 'PAI ', '6182701888', 'Carismático e desinibido.', '', '', '', 1, 13, 13),
(13, 'GEJ Dom Bosco', 'S', '2018-01-15 23:02:13', 'A', 'S', 'S', NULL, 3, 'MãE ', '61981214179', 'Desinibida.', NULL, NULL, '', 1, 14, 14),
(14, 'GEJ DOM BOSCO', 'S', '2018-01-17 22:33:29', 'A', 'S', 'S', NULL, 4, 'PAI', '61992197688', 'FELIZ POR SER DO GEJ DOM BOSCO', NULL, NULL, '', 1, 39, 15),
(15, NULL, 'N', '2017-12-30 19:29:12', 'A', 'S', 'S', NULL, 7, 'MARIA JOSé', '61933593245', 'Membro da equipe de música Gej Dom Bosco, ex-acólito e cerimoniário da Paróquia São José Operário.', NULL, NULL, '', 1, 16, 16),
(16, NULL, 'S', '2017-12-05 09:49:57', 'A', 'N', 'N', NULL, 3, 'NEILDO', '6132086444', 'Hellou sou wallisson tenho 18 anos, isso durante a inscrição, participo da igreja desde de muito novo mas só resolvi viver na fé católica á pouco tempo. Participo do grupo de cerimôniarios em minha paróquia e um outro grupo jovem, fillis Mater Dei .', '', '', '', 1, 17, 17),
(17, 'EJNS', 'S', '2017-12-05 11:06:05', 'D', 'N', 'N', NULL, 3, 'MINHA MãE CAROL', '61992091401', 'Sou tímida, gosto de jogar futebol ou qualquer esporte.', '', '', '', 1, 18, 18),
(18, 'GEJ-Dom bosco', 'S', '2017-12-30 19:29:26', 'A', 'S', 'S', NULL, 2, 'RITA MARIA ', '61933593574', 'Otima pessoa para se conviver.', NULL, NULL, '', 1, 19, 19),
(19, 'grupo jovem luz e fogo', 'S', '2017-12-05 13:38:18', 'D', 'N', 'N', NULL, 5, 'MARISA ', '61991157598', 'bom falar de mim e um pouco difícil pois eu sou  uma pessoa muito descontraída que  amo Deus .', '', '', '', 1, 20, 20),
(20, NULL, 'N', '2017-12-06 00:39:45', 'D', 'N', 'N', NULL, 2, 'MARIO ROBERTO', '61983261868', 'Meu nome é Verônica, tenho 17 anos, não participo de nenhuma pastoral, mas todo domingo vou a missa. Sou uma pessoa muito feliz e que ama a igreja católica.', '', '', '', 1, 21, 21),
(21, 'GEJ DOM BOSCO', 'S', '2017-12-30 19:29:46', 'A', 'S', 'S', NULL, 6, 'MãE ', '61986130447', 'oie, sou tolerante a lactose e sensível à glúten então plmrdds lembrem-se disso quando forem montar o cardápio, grata. \r\nP.S.: ficou faltando um lugarzinho para colocar restrições alimentares e se tem alguma doença/se precisa de medicação.', NULL, NULL, '', 1, 73, 22),
(22, 'Catequese, Cerimoniários e Música', 'N', '2017-12-06 23:15:25', 'A', 'N', 'N', NULL, 6, 'MARIA DAS GRAçAS', '61934593014', 'Há um tempo que já estou na caminhada, além disso, sou consagrado à Santíssima Virgem e participo da Paróquia Santo Inácio de Loyola.', NULL, NULL, '', 1, 23, 23),
(23, 'Assunção', 'S', '2017-12-07 00:26:21', 'D', 'N', 'N', NULL, 6, 'BEATRIZ', '61993116666', 'Sou bastante amigo e faço amizade rápido', '', '', '', 1, 24, 24),
(24, 'Ministério de Coroinhas e Acólitos de São Tarcísio, Ministério Jovem (RCC)', 'S', '2017-12-07 17:42:39', 'A', 'N', 'N', NULL, 4, 'EDI ', '61986521612', 'Sou uma garota que não faz muito tempo q se converteu por inteiro, mais ou menos 1 ano.\r\nFui pro meu 1° retiro faz pouco tempo, e foi uma graça, estou querendo ir para esse para começar o ano com o pé direito mas graça de Deus', '', '', '', 1, 25, 25),
(25, 'Grupo de Coroinhas, Grupo Jovem Adonai', 'S', '2017-12-07 20:21:09', 'A', 'N', 'N', NULL, 7, 'LEILA TOMINAGA', '61982512602', 'Filho dos Tios Tominaga, Irmão da Tominaga. \r\n##########  Saúde ###########\r\n- Alergia a temperos industriais(Sazon, Ajinomoto, Knorr, Maggi e etc).\r\n- Sangue tipo B+', '', '', '', 1, 26, 26),
(26, NULL, 'N', '2017-12-08 09:28:35', 'D', 'N', 'N', NULL, 7, 'ANDERSON JOAQUIM DE SANTANA', '61932018084', 'Sou uma pessoa pouco comunicativa com quem não conheço. Odeio falsidade. Estou tá igreja tem um tempinho mas dei uma afastada e estou querendo voltar.', NULL, NULL, '', 1, 27, 27),
(27, 'Gej', 'S', '2018-01-05 17:32:01', 'A', 'S', 'S', NULL, 7, 'MãE ', '61933598257', 'Sou feliz!', NULL, NULL, '', 1, 34, 28),
(28, 'Gej dom Bosco', 'S', '2017-12-08 23:24:28', 'D', 'S', 'N', NULL, 3, 'MãE', '6133571919', 'Sou tranquila,eu gosto de fazer as minhas coisas na hora certa', '', '', '', 1, 29, 29),
(29, NULL, 'N', '2018-01-16 23:27:31', 'A', 'S', 'S', NULL, 4, 'LUCILENE AGUIAR', '61995990533', '\"Sou apenas um lápis na mão de Deus É ele quem me escreve.\" \r\nMadre Teresa de Calcutá', NULL, NULL, '', 1, 31, 30),
(30, NULL, 'N', '2017-12-09 15:40:18', 'D', 'N', 'N', NULL, 4, 'GESLâNIA ', '6199043516', 'Fui convidado por um membro do grupo e  decidi participar para ouvir sobre a palavra do senhor  e conhecer o pessoal da igreja com o intuito de complemento ao grupo', '', '', '', 1, 32, 32),
(31, 'Guardiãs', 'S', '2017-12-09 16:52:51', 'D', 'N', 'N', NULL, 5, 'LUCIENE ', '61996979071', 'Sou uma pessoa tranquila,amo as coisas de igreja, gosto de fazer novas amizades', '', '', '', 1, 33, 33),
(32, 'GEJ Dom Bosco', 'S', '2018-01-15 22:37:51', 'A', 'S', 'S', NULL, 4, 'LEDA', '61992724933', 'Ser aquilo que Deus quer fazer de mim!', NULL, NULL, '', 1, 36, 35),
(33, NULL, 'S', '2017-12-11 19:17:46', 'A', 'N', 'N', NULL, 3, 'ROSANGELA ALVES MENDES ', '61985548484', 'Sou uma universitária e frenquento a igreja Católica.', 'Não', 'Não', '', 1, 41, 41),
(34, NULL, 'S', '2017-12-11 19:23:37', 'A', 'N', 'N', NULL, 4, 'ROSANGELA ALVES MENDES ', '61985548484', 'Sou estudante e frenquento a igreja Católica.', 'Não', 'Não', '', 1, 42, 42),
(35, NULL, 'S', '2017-12-12 13:46:24', 'A', 'N', 'N', NULL, 7, 'ELIETE', '61986325346', 'Não', 'Não', 'Não', '', 1, 44, 44),
(36, NULL, 'S', '2017-12-14 12:21:53', 'A', 'N', 'N', NULL, 7, 'BRENA KESSIA', '61992563934', 'Olá sou carlos sou tranquilo trabalho de pedreiro estou a procura da igreja entender mais de Deus me sentir na presença dele estou precisando por isso estou animado ir para esse retiro. .', 'Nao', 'Nao', '', 1, 47, 47),
(37, NULL, 'S', '2017-12-16 14:24:06', 'A', 'N', 'N', NULL, 3, 'JOSé EVARISTO', '61981019362', 'Faço parte da Equipe Jovem AJUC, sempre fui católica, sou pouco tímida', 'Não', 'Não', '', 1, 48, 48),
(38, NULL, 'S', '2018-01-06 19:49:15', 'A', 'S', 'S', NULL, 7, 'MAE ', '61995905439', 'Uma pessoa super tranquila, alegre e que ama ajuda o próximo na medida possível', NULL, NULL, '', 1, 49, 49),
(39, NULL, 'N', '2017-12-18 15:05:43', 'A', 'N', 'N', NULL, 7, 'TIOS TOMINAGA', '61982512602', 'Sou consagrada a Santíssima Virgem a 2 anos. Tenho uma vida de intimidade e amor com Deus. Canto em um ministério, estou começando na intersecao, faço parte da coordenação do grupo jovem Adonaí. Tenho espírito adorador Eucarístico amante da Mãe de Deus ❤ Sou muito animada e pretendo louvar, adorar e confiar mais ainda naquele que É!', 'Não', 'Não', '', 1, 50, 50),
(40, 'Nossa Senhora de Fátima', 'S', '2017-12-30 19:31:06', 'A', 'S', 'S', NULL, 6, 'ANDRé FONSECA BORGES', '61998783533', 'Eu sou uma pessoa gentil, e de bem com a vida hehe :)', 'Antialérgico - Loratamed', 'Boa', '', 1, 51, 51),
(41, 'Grupo Jovem', 'S', '2017-12-18 22:11:23', 'A', 'N', 'N', NULL, 7, 'MAE', '6191621818', 'Participo do Grupo Jovem JEDI, tenho 4 anos de caminhada, sou consagrado a Virgem Maria. Nunca participei de um acampamento, sou um pouco tímido mas tenho facilidade de comunicação e pro ativo.', NULL, NULL, '', 1, 52, 52),
(42, 'Gej', 'S', '2017-12-30 19:31:22', 'A', 'S', 'S', NULL, 5, 'EDILEUSA', '61992226161', 'Me chamo Karolina não tenho restrição de medicamentos , nem alimentação', NULL, NULL, '', 1, 53, 53),
(43, NULL, 'S', '2017-12-18 22:16:45', 'D', 'N', 'N', NULL, 3, 'MãE', '61985754119', 'Sou do grupo JEDI da paróquia São João Batista.', NULL, 'Alérgica a corante , intolerante a lactose', '', 1, 54, 55),
(44, 'Grupo Jovem', 'S', '2017-12-30 19:31:55', 'A', 'N', 'N', NULL, 3, 'EDILEUZA MãE', '61984946458', 'Não gosto de falar sobre mim \r\nRs rs :)', 'Omeprazol', 'Intolerância à lactose', '', 1, 55, 56),
(45, 'Grupo JEDI', 'N', '2018-01-21 21:56:12', 'A', 'N', 'N', NULL, 7, 'MARIA JOSé', '61991340627', 'Bem humorado, paciente, verdadeiro legal', 'Não', 'Não', '', 1, 56, 57),
(46, NULL, 'S', '2017-12-30 19:32:19', 'A', 'S', 'S', NULL, 4, 'IVANILDES MãE', '61934586671', 'Católica desde o ventre da minha mãe, dedicada, muitos vezes chata e mandona, tenho um marido maravilhoso e uma família que amo. Estou no Gej há cerca de 3 anos e sou apaixonada por esse grupo.', 'Não.', 'Não.', '', 1, 57, 58),
(47, 'Gej Dom Bosco', 'S', '2017-12-30 19:32:34', 'A', 'S', 'S', NULL, 3, 'MáRCIA REJANE ', '61999661640', 'Meu nome é Letícia, tenho 17 anos, sou da Paróquia São João Evangelista e participo do Grupo de Evangelização de Jovens Dom Bosco.', NULL, NULL, '', 1, 58, 59),
(48, NULL, 'S', '2017-12-30 19:32:47', 'A', 'S', 'S', NULL, 7, 'IVANILDES MãE', '61934586671', 'Brincalhão,meio timído. Fui coroinha durante muitos anos, e atualmente só participo do Gej. Me casei ano passado. Sou militar da Aeronáutica, e atualmente estudo pra concurso.', 'Não.', 'Não.', '', 1, 59, 60),
(49, 'Gej Dom Bosco', 'N', '2018-01-06 19:50:37', 'A', 'S', 'S', NULL, 7, 'LETíCIA MARTINS ', '61991426490', 'Meu nome é Roniel, tenho 21 anos, sou da Paróquia São João Evangelista e participo do Grupo de Evangelização de Jovens Dom Bosco.', NULL, NULL, '', 1, 60, 61),
(50, 'Grupo de jovens gej dom bosco', 'S', '2018-01-10 13:01:07', 'A', 'S', 'N', NULL, 4, 'THAYNARA ', '61995250255', 'Sou feliz com o que tenho', 'Não', 'Não como carne vermelha', '', 1, 62, 63),
(51, NULL, 'S', '2017-12-21 13:01:09', 'D', 'N', 'N', NULL, 4, 'JEFFERSON ', '61992225838', 'Sou consagrada, 1,60 de altura', 'Dipirona 25 gotas', 'Abacaxi', '', 1, 63, 64),
(52, NULL, 'S', '2017-12-21 16:01:28', 'D', 'N', 'N', NULL, 3, 'JOANA DARC', '61985315391', 'Sou muito alegre', 'Não', 'Não', '', 1, 64, 65),
(53, NULL, 'S', '2017-12-23 22:00:34', 'D', 'N', 'N', NULL, 4, 'MãE', '6134593241', 'Sou a Joyce, tenho 19 anos. Não sei oq falar sobre mim, mas espero nesse retiro top, buscar uma reconciliação e mais intimidade com Jesus, tchau.', NULL, NULL, '', 1, 65, 67),
(54, NULL, 'S', '2017-12-24 15:13:28', 'D', 'N', 'N', NULL, 2, 'SILVANA DE ABREU SILVA', '61991837377', '24 anos, natural de Brasília, tenho 3 irmãos e moro com minha mãe. Consagrada a Maria pelo metodo de São Luís Montfort, caseira, procuro sempre aprender mais sobre a Santa Igreja.', 'Faço uso de um antidepressivo, é o utilizo uma vez ao dia, depois do café da manhã.', NULL, '', 1, 66, 68),
(55, 'Gej dom Bosco', 'S', '2017-12-26 11:17:29', 'D', 'S', 'S', NULL, 3, 'MáRCIA FRANCINA DE OLIVEIRA ', '61985175039', 'Sou uma pessoa que e brincalhona, ama retiro e chora muito nos retiros, tenho um amor imenso por nossa senhora e o título que mais amo e nossa senhora aparecida', 'Quando tenho crise de enxaqueca eu tomo (ibuprofeno, dipirona e etc.)', 'Não tenho', '', 1, 67, 69),
(56, NULL, 'S', '2017-12-26 11:34:19', 'D', 'N', 'N', NULL, 3, 'JOELMA  MãE', '61992419993', 'Bom...\r\nEstou afastada da igreja no momento, estou querendo me reconciliar e voltar de vez.', 'Não', 'Não', '', 1, 68, 70),
(57, 'Grupo de jovens Fillis Mater Dei', 'S', '2017-12-26 13:34:49', 'D', 'N', 'N', NULL, 3, 'LúCIA', '61984651243', '18 anos, consagrada a Nossa Senhora de Fátima, Coordenadora do Grupo Jovem Fmd, frequente na Paróquia Nossa Senhora da Assunção.', NULL, NULL, '', 1, 69, 71),
(58, 'Catequese e grupo de jovem', 'S', '2017-12-26 13:35:08', 'D', 'N', 'N', NULL, 7, 'PAI', '61985012045', 'Sou bem chorona kkk, sou bem tímida, porém crio amizades bem rápido. Gosto muito de dança kk', NULL, NULL, '', 1, 70, 72),
(59, NULL, 'S', '2017-12-27 14:49:41', 'A', 'N', 'N', NULL, 6, 'ROSANGELA ALVES MENDES', '61985548484', 'Sou uma pessoa tímida mas que gosta muito de diversão...', NULL, NULL, '', 1, 71, 73),
(60, 'Jupes', 'S', '2017-12-28 13:35:44', 'D', 'N', 'N', NULL, 7, 'LOURDES', '61982478621', 'Paróquia São Paulo apóstolo \r\nCoordenadora 2018-2019 grupo de jovens\r\nSanta Terezinha s2', NULL, NULL, '', 1, 74, 76),
(61, NULL, 'S', '2017-12-28 22:26:05', 'A', 'N', 'N', NULL, 6, 'PAI', '992263829', 'Eu sou da paróquia São João Evangelista  da samambaia norte  e faço parte do grupo de oração.', 'Eu uso o remédio contra crise de ansiedade.Chama fluoxetina,todos os dias pela manhã.', 'Não', '', 1, 75, 77),
(62, 'sao joao evangelista', 'S', '2017-12-29 16:59:22', 'A', 'N', 'N', NULL, 4, 'NEIDE', '61985609412', 'sou uma menina tímida, não gosto muito de fazer atividades em grupo pois me sinto um pouco desconfortável, gosto muito de escrever, sou catequista mas sinto que minha fé ainda esta muito abalada.', NULL, NULL, '', 1, 76, 78),
(63, NULL, 'S', '2017-12-30 09:07:52', 'A', 'N', 'N', NULL, 3, 'ROSANGELA ', '6185548484', '18 anos, devota de Nossa Senhora ', 'Não', 'Não', '', 1, 77, 79),
(64, NULL, 'S', '2017-12-30 19:22:55', 'A', 'S', 'S', NULL, 9, 'ELIENE', '61934594937', '———-', NULL, NULL, '', 1, 72, 80),
(65, 'Grupo Servir, quadrilha e ministério de música da Verbo Divino, e tbm participo do grupo SIM e ministério de música da Paroquia Nossa senhora Rosario de Pompeia', 'S', '2017-12-30 12:02:00', 'D', 'N', 'N', NULL, 5, 'OSVALDO BUSSOLO ', '61981173673', 'Eu sou muito extrovertida, adoro cantar, dançar é comigo mesmo, amo teatro, e gosto muito de ajudar a igreja, pelo menos as q eu frequento, gosto muito de me divertir com meus amigos, e minha família tambem, sou aberta a opiniões sobre vários assuntos e sou bastante teimosa quando quero algo (e sempre consigo).', 'Não uso', 'Não tenho', '', 1, 79, 81),
(66, 'Guardiã do Santissimo sacramento', 'S', '2017-12-30 16:18:32', 'D', 'N', 'N', NULL, 5, 'NAMORADO ', '6199620997', 'Estudante de Direito e pós graduanda em direito penal, investigação forense e perícia criminal', 'Clonazepan', 'Alergica a pimenta', '', 1, 80, 82),
(67, 'Renascer com Maria', 'S', '2018-01-01 17:15:10', 'D', 'N', 'N', NULL, 3, 'ELIDIA', '61998397590', 'Sou estudante, e quero viver uma experiência nova de carnaval.', 'Não', 'Não', '', 1, 81, 83),
(68, NULL, 'N', '2018-01-18 22:59:45', 'A', 'N', 'N', NULL, 6, 'KARLENE', '61993055454', 'Sou uma pessoa calma gosto de ouvir conselhos , gosto de estar com minha família', 'Nao', 'Nao', '', 1, 82, 84),
(69, 'Ministério de acólitos e coroinhas', 'S', '2018-01-01 22:40:30', 'A', 'N', 'N', NULL, 3, 'JOANA DARC DE FRANçA OLIVEIRA', '6134582228', 'tenho 15 anos, sou crismada, sou coroinha, faço parte do grupo jovem', 'Não', 'Não', '', 1, 83, 85),
(70, 'EAC, EJC', 'S', '2018-01-02 21:48:11', 'D', 'N', 'N', NULL, 7, 'ZILMA ', '61992408401', 'Sou bem timido com pessoas novas, gosto de Cantar, dança, e rezar. Gosto de fazer teatro.', NULL, NULL, '', 1, 84, 86),
(71, 'GEJ Dom Bosco', 'S', '2018-01-03 10:18:02', 'A', 'S', 'S', NULL, 3, 'DELCIA APARECIDA', '61986118724', 'Neste retiro de carnaval completará 1 ano que conheço o grupo. Faço parte da promessa que Deus tem pro GEJ de ser mais e de conquistar a juventude para Cristo pelo exemplo e intercessão de Dom Bosco. Sou católica apostólica romana, consagrada a 2 anos, pertencente a Virgem Maria, tenho a modéstia como meu \'estilo de vida\' e vocacionada a missão.', 'Não.', 'Não', '', 1, 85, 87),
(72, NULL, 'N', '2018-01-03 15:48:20', 'D', 'N', 'N', NULL, 7, 'MILENA', '61985761487', 'Um moleque que vive sempre em batalha espiritual.. Tende a crescer mais na fé e é isso', NULL, NULL, '', 1, 86, 88),
(73, NULL, 'S', '2018-01-04 12:25:33', 'D', 'N', 'N', NULL, 6, 'SEBASTIANA DA CRUZ', '61986449871', 'Sou a Edilene, uma menina alegre e sorridente que gosta de ajudar o próximo. Me interessei pelo retiro porque quero conhecer lugares e pessoas novas', 'Não', 'Não', '', 1, 87, 89),
(74, 'Gej', 'S', '2018-01-04 12:24:52', 'A', 'S', 'S', NULL, 3, 'MARIA NAZARE', '61982999300', '...', NULL, NULL, '', 1, 88, 90),
(75, 'GEJ Dom Bosco', 'S', '2018-01-06 16:02:02', 'A', 'S', 'S', NULL, 3, 'ARNALDO PAI', '61986292805', '“O que somos é presente de Deus; no que nos transformamos é o nosso presente a Ele.”', 'Sim\r\nAmato - diariamente antes de dormir.', 'Lactose', '', 1, 37, 91),
(76, NULL, 'N', '2018-01-05 14:32:41', 'A', 'S', 'S', NULL, 10, 'MARIA VILANIR', '61983232905', 'EU SOU LEGAL PÔ, QUERO GERAR JESUS PRAS PESSOAS NO RETIRO. VAMOS FAZER UMA BAGAÇA s2', 'NOT', 'NOT', '', 1, 90, 92),
(77, 'Grupo jovem JUSLAC', 'S', '2018-01-05 14:49:10', 'A', 'N', 'N', NULL, 3, 'MãE POLIANA ', '61982207943', 'Olá, meu nome é Paloma, tenho 16 anos, sou um pouco tímida, sou de uma família toda católica. Participo de um grupo jovem chamado Juslac da Paróquia Nossa Senhora de Fátima, crismei a pouco tempo e pretendo ser catequista...', 'Não', NULL, '', 1, 91, 93),
(78, 'Grupo jovem JUSLAC', 'S', '2018-01-05 15:24:15', 'A', 'N', 'N', NULL, 3, 'MARIA DE LURDES SILVA DE SOUZA ', '6199950379', 'Oi, eu sou Maria Letícia, tenho 15 anos,venho de uma família católica, porém meu irmão não é praticante, meu pai se desviou e começou a frequentar centro espírita com minha tia,mas eu e minha mãe somos praticantes, meus pais são separados, sou apaixonada por nossa senhora, e sou alucinada por Jesus, participo de um grupo jovem chamado JUSLAC da capela nossa senhora da conceição,estou à procura da minha vocação e dons, sou crismada a pouco tempo e pretendo ser catequista.', 'Não, nenhuma.', 'Como de tudo.', '', 1, 92, 94),
(79, 'Nossa senhora de Fátima', 'S', '2018-01-05 16:11:53', 'D', 'N', 'N', NULL, 7, 'MARIA APARECIDA SILVA', '61991891844', 'Jovem de 16 anos , participo de um grupo chamado Juslac na minha pastoral .', 'Não', 'Não', '', 1, 93, 95),
(81, 'GEJ DOM BOSCO', 'S', '2018-01-06 15:57:11', 'A', 'S', 'S', NULL, 3, 'MARIA DE JESUS', '61933594933', 'Tenho 19 anos, sou membro desse grupo lindo e tomei a decisão de entregar toda minha vida para Jesus através da evangelização dos jovens e todos aqueles que necessitam, é isto !!', NULL, NULL, '', 1, 95, 97),
(82, NULL, 'N', '2018-01-06 19:04:42', 'D', 'N', 'N', NULL, 3, 'SILVANIA PEREIRA DE SOUZA ', '6134752840', 'Jennifer Bianca, estudo no cemtn e me enterrarei muito por causa de uma amiga que estuda na minha sala, e quero volta pra igreja', NULL, NULL, '', 1, 96, 98),
(83, 'GEJ Dom Bosco', 'S', '2018-01-08 10:29:58', 'A', 'S', 'S', NULL, 4, 'MARIA PEREIRA DOS SANTOS DIAS', '61933593317', 'Tenho 20 anos, faço Direito na UnB, estou estagiando do Tribunal de Contas do DF. Amo chocolate, sorvete e amo ouvir música.', NULL, NULL, '', 1, 98, 101),
(84, NULL, 'N', '2018-01-06 21:44:40', 'A', 'N', 'N', NULL, 5, 'ELIOMARA SOARES CONCEIçãO', '61999898071', 'Bom, tenho 17 anos e sou estudante.\r\nO que eu mais gosto de fazer é nadar e ficar em casa, às vezes dou umas saídas mas nem sempre. \r\nSou alegre e um pouco sem paciência.', 'Não', 'Não', '', 1, 100, 102),
(85, NULL, 'N', '2018-01-06 22:00:18', 'A', 'N', 'N', NULL, 3, 'MARIA ORLINDA B L GOMES', '6134595379', 'já fiz vários retiros', NULL, NULL, '', 1, 101, 103),
(86, NULL, 'S', '2018-01-07 11:12:24', 'A', 'N', 'N', NULL, 4, 'PATRíCIA NEVES', '61995438917', 'Sou religiosa, mas no momento  estou um pouco ansiosa e depressiva', 'Nao', 'Não', '', 1, 103, 104),
(87, NULL, 'S', '2018-01-07 19:03:38', 'A', 'N', 'N', NULL, 4, 'GENI GOMES ', '61986719608', '...', NULL, NULL, '', 1, 104, 107),
(88, NULL, 'S', '2018-01-07 20:22:29', 'A', 'N', 'N', NULL, 8, 'LEILA TOMINAGA ', '61984352161', 'Sou do grupo Adonai, tenho 18 anos sou o mais lindo do grupo kkkkk kkkkk mentira , sou palhaço', 'Chocolate de 1hr em 1hr', 'Pequi', '', 1, 105, 108),
(89, 'Grupo Jovem Adonai', 'S', '2018-01-15 18:29:58', 'A', 'N', 'S', NULL, 8, 'LEILA TOMINAGA', '61982512602', 'Sou casado tenho 3 filhos e trabalho com jovens em minha comunidade', 'Não', 'Não', '', 1, 106, 109),
(90, 'Música e grupo jovem', 'S', '2018-01-07 20:42:07', 'A', 'N', 'N', NULL, 6, 'MãE', '61996028107', 'Gosto de interagir com pessoas novas,adoro fazer novas amizades.', NULL, NULL, '', 1, 107, 110),
(91, 'Juventude', 'S', '2018-01-07 22:31:42', 'A', 'N', 'N', NULL, 8, 'CARMELINDA ', '61993693578', 'Tenho 20 anos, sou coordenador do grupo jovens anunciantes de Cristo (JAC) e da pastoral da juventude, na paróquia nossa Senhora de Lourdes, lá também sou catequista e faço parte dos servos da liturgia paroquial. Sou uma pessoa tranquila, alegre. Procuro sempre ajudar quem precisa.', NULL, NULL, '', 1, 108, 111),
(92, 'JACIM', 'S', '2018-01-12 12:41:33', 'A', 'N', 'N', NULL, 5, 'DAYANE MOREIRA DA SILVA', '61985615167', 'SOU BEM CARISMÁTICA', 'USO REMÉDIO TODOS OS DIAS AS 21 HORAS', 'SEM RESTRIÇÃO', '', 1, 109, 112),
(93, NULL, 'N', '2018-01-08 18:18:17', 'A', 'N', 'N', NULL, 8, 'LETíCIA', '6199457429', 'Meu nome é Laura, tenho 13 anos, vou fazer 14 anos dia 20/01, gosto de ouvir música principalmente indie e kpop, minhas comidas favoritas são hambúrguer e pizza e sou tímida.', NULL, NULL, '', 1, 110, 113),
(94, NULL, 'N', '2018-01-08 19:49:01', 'D', 'N', 'N', NULL, 4, 'DENI', '6133793695', 'Participava na renovação carismatica e me afastei tem uns 5 anos', 'sim, Depakene 2 de manha e 1 a noite, 1 fluoxetina', 'Intolerância a lactose', '', 1, 111, 114),
(95, NULL, 'N', '2018-01-08 20:22:46', 'D', 'N', 'N', NULL, 7, 'AYLTON', '61986621536', 'Sempre fui afastado de Deus, mais eu e minha namorada estamos buscando a Deus', 'não', 'não', '', 1, 112, 115),
(96, NULL, 'S', '2018-01-08 21:54:56', 'A', 'N', 'N', NULL, 7, 'MãE', '6133852979', 'Ministro de música do ministério pétalas de fogo, retiro para recarregar baterias e auto conhecimento', NULL, NULL, '', 1, 113, 116),
(97, NULL, 'N', '2018-01-08 22:21:04', 'A', 'N', 'N', NULL, 4, 'ROSE MãE', '61991999329', 'Eu sou a Nathalya faço parte do ministério de música Pétalas de Fogo,mora no Gama faço parte do segue-me da paróquia Imaculada Conceição do Gama .', 'Sim remédio para gastrite. Esomeprazol, tomo ele pela manhã.', NULL, '', 1, 114, 117),
(98, 'Música', 'S', '2018-01-08 22:23:28', 'A', 'N', 'N', NULL, 7, 'NEUZA', '6136293497', 'Faço parte de um ministério de música chamado Pétalas de Fogo, nós somos do Gama. Já participei de vários retiros e também já trabalhei em muitos.', 'Não', 'Não', '', 1, 115, 118),
(99, 'Música', 'S', '2018-01-08 22:47:13', 'A', 'N', 'N', NULL, 8, 'NIVIA APARECIDA ', '06199988184', '24 anos, católico, músico, namorando, membro do ministério de música pétalas de fogo, frequento as paróquias do Gama, normalmente a Imaculada', 'Não uso nenhuma medicação.', 'Nenhuma.', '', 1, 116, 119),
(100, 'Grupo Jovem Por Amor', 'S', '2018-01-09 11:32:23', 'A', 'N', 'N', NULL, 7, 'SELMéLIA', '61991521943', 'Olá, sou carismática, alegre, risonha, amiga sempre e também meiga! E completamente louca por Jesus!', NULL, NULL, '', 1, 117, 120),
(101, NULL, 'N', '2018-01-09 15:19:35', 'A', 'N', 'N', NULL, 3, 'MARIA APARECIDA FERREIRA DE SOUSA ', '61992003034', 'Meu nome é Lara, tenho 16 anos e desejo ter maior intimidade com Cristo', NULL, NULL, '', 1, 118, 121),
(102, NULL, 'N', '2018-01-09 22:06:43', 'A', 'N', 'N', NULL, 4, 'PATRíCIA ', '6184600568', 'Sou da Área Pastoral São José em Vicente Pires, sou catequista da Crisma. Gosto de diversão, de conhecer pessoas, e principalmente  de adorar a Deus!', 'Não', 'Não', '', 1, 119, 122),
(103, 'GEJ Dom Bosco', 'S', '2018-01-11 10:35:38', 'A', 'S', 'S', NULL, 5, 'MãE ', '61930826060', 'Sou feliz por ser Gejeriana', NULL, NULL, '', 1, 61, 123),
(104, NULL, 'N', '2018-01-11 20:14:55', 'D', 'N', 'N', NULL, 3, 'TATIANA MãE', '6184355868', 'sou uma pessoa tranquila, com boa comunicação porém tímida.', NULL, NULL, '', 1, 121, 124),
(105, 'Jovem', 'S', '2018-01-12 11:16:48', 'A', 'N', 'N', NULL, 5, 'AMILTON HONóRIO', '61996859527', 'Participo do grupo jovem Jacim,  quero me aproximar cada vez mais de Deus e de Maria, sou quieta e calada', 'Sim, tomar todo dia às 14:00 horas', NULL, '', 1, 122, 125),
(106, NULL, 'N', '2018-01-12 11:45:37', 'A', 'N', 'N', NULL, 6, 'MARIZETE BISPO REIS', '6130835505', 'Fui desde pequena evangelizada na igreja católica,sou uma pessoa muito religiosa,amorosa, extrovertida e participo do Ministério Jovem (MJ-RCC)', 'Não', 'Não', '', 1, 123, 126),
(107, NULL, 'S', '2018-01-12 12:47:15', 'A', 'N', 'N', NULL, 3, 'DENNYSEH', '61993836591', 'Tenho 15 anos,fui coroinha 4 anos,sou consagrada a Virgem Maria,estou no segundo ano,amo estudar,pretendo ser acolita.', 'Não.', 'Não.', '', 1, 124, 127),
(108, 'GEJ', 'S', '2018-01-13 11:31:01', 'D', 'S', 'N', NULL, 7, 'ADELICE', '61992626767', 'Uma pessoa simples, não tenho frescura com nada e que só quer está na presença de Deus.', NULL, NULL, '', 1, 125, 128),
(109, 'Adonai', 'N', '2018-01-13 13:14:57', 'A', 'N', 'N', NULL, 7, 'MINHA MãE ', '6191660308', 'Sou o Vitor sou transplantado', 'Sim uso de manhã e à tarde 6:50 e 18:50', 'Só carambola', '', 1, 126, 129),
(110, 'Grupo jovem', 'S', '2018-01-15 09:53:18', 'A', 'N', 'S', NULL, 4, 'ROSA ALEMIRA ', '61934599984', 'Tenho 19 anos. Trabalho em uma creche e curso pedagogia.', 'Não', 'Não', '', 1, 127, 130),
(111, NULL, 'S', '2018-01-15 09:52:58', 'A', 'S', 'S', NULL, 8, 'ANDERSON', '61932018084', 'Sou uma pessoa simples', NULL, NULL, '', 1, 97, 131),
(112, 'Gej', 'S', '2018-01-16 09:35:37', 'A', 'S', 'S', NULL, 7, 'MãE', '61933598257', 'Estudante de Relações Internacionais. Um grande sonhador, nascido no século errado.', NULL, NULL, '', 1, 129, 132),
(113, 'ajuc', 'S', '2018-01-18 20:01:59', 'A', 'N', 'N', NULL, 3, 'DORIMAR', '61993615001', '17 anos moro em Brazlandia sou crismada frequento o AJUC na QNJ SANTA TEREZINHA', NULL, NULL, '', 1, 130, 133),
(114, NULL, 'N', '2018-01-16 12:00:04', 'A', 'N', 'N', NULL, 8, 'EDIVANIA FERNANDES DE ARAúJO XAVIER', '38999024362', 'Não gosto das festas de carnaval,e procuro fazer novas amizades que somem na minha vida! Não tem lugar melhor para isso, do que este retiro.', NULL, NULL, '', 1, 131, 134),
(115, 'Grupo Jovem Adonai', 'N', '2018-01-16 22:24:36', 'A', 'N', 'S', NULL, 7, 'RONNY TOMINAGA', '61984352161', '-SOU A TIA TOMINAGA\r\n-DIABÉTICA \r\n-MÃE DO EDU E DA RIDICULA DA AMANDA KK\r\n-AMO O GEJ E AGRADEÇO O CONVITE DE TRABALHAR NO RETIRO \r\n-AMO DOM BOSCO \r\n-CASADA COM O TIO TOMINAGA', 'Mediformina \r\nDiamocron', 'Camarão', '', 1, 132, 135),
(116, 'CATEQUISTA', 'S', '2018-01-19 23:42:49', 'A', 'N', 'N', NULL, 8, 'DIONÍSIO DE OLIVEIRA LIMA JUNIOR ', '61981990261', 'Tenho 29 anos... Gosto de fazer retiros, para buscar cada vez mais aprender. Estar sempre perto de Deus e buscar cada vez mais minha santidade. Sou tagarela, sorridente, faço amizades com facilidade e espero que Deus possa me mostrar algo diferente de todas que já vivenciei!', 'Sim, fica comigo e sei os horários.', 'Não', '', 1, 133, 136),
(117, NULL, 'N', '2018-01-16 16:50:47', 'A', 'N', 'N', NULL, 9, 'AVó', '61992232118', 'Sou uma jovem timida alegre, uma boa menina...', 'Não tomo nenhuma medicação analgésico pra dor quando é preciso', NULL, '', 1, 134, 137),
(118, NULL, 'N', '2018-01-16 19:03:11', 'A', 'N', 'N', NULL, 6, 'PAI', '6192108927', 'Participa e frequenta a casa das irmãs missionárias da caridade', NULL, NULL, '', 1, 135, 138),
(119, 'Filis Mater Dei', 'N', '2018-01-16 22:53:21', 'D', 'N', 'N', NULL, 2, 'GENIVALDO VIEIRA DA SILVA', '61985614318', 'Sou muito chorona', 'Uso dipirona para dor de cabeça e  ibupril 600mg para dor', 'Eu não como feijão e nem verduras rs', '', 1, 136, 139),
(120, NULL, 'S', '2018-01-17 20:04:06', 'A', 'N', 'N', NULL, 7, 'GUI ', '61999252609', 'Gente Boa kk', 'Nao', NULL, '', 1, 137, 140),
(121, 'Gej Dom Bosco', 'S', '2018-01-17 21:10:23', 'A', 'S', 'S', NULL, 8, 'JOSE ARNALDO', '61993003405', 'Sou garoto de programa e bem legal depois eu mesmo vou la e arrumo o textrino melhor', 'não', 'não', '', 1, 1, 141),
(122, NULL, 'S', '2018-01-17 20:45:55', 'A', 'N', 'N', NULL, 8, 'ELZA', '61985727536', 'Estudo integral pra passar menos tempo em casa e jogador de lol. Prazer. ', NULL, NULL, '', 1, 139, 142),
(123, 'Pastoral Familiar', 'S', '2018-01-17 21:03:18', 'A', 'N', 'N', NULL, 5, 'LUCIANO ', '6136244679', '...', 'Remédio para dor de cabeça e no estomago', 'Não', '', 1, 140, 143),
(124, NULL, 'S', '2018-01-17 21:26:51', 'D', 'N', 'N', NULL, 6, 'MARIA DO SOCORRO RODRIGUES SANTOS', '6133590378', 'Eu sou católica, consagrada a 2 anos, amo comer e dormir, amo a igreja e valorizo muito a família e minhas amizades.', NULL, NULL, '', 1, 141, 144),
(125, NULL, 'N', '2018-01-18 10:04:17', 'A', 'N', 'N', NULL, 6, 'WESLEY ', '61998739058', 'Sou uma pessoa bem legal, amavel, forte, a príncipio não sou muito comunicativa, tenho um pouco de dificuldade nisso, timidez, geralmente   tenho necessidade de ter uma certa intimidade, amizade. Também sou observadora que só e sou bastante família.', 'Para hipertensão. \r\nTomo pela manhã em jejum.', 'Até o momento, não.', '', 1, 142, 145),
(126, NULL, 'N', '2018-01-18 13:13:12', 'A', 'N', 'N', NULL, 8, 'ANTONIA SIMONE ', '61985785437', 'Não tenho nada para falar.', NULL, 'Alergia leve com, Trigo, chocolate e derivados.', '', 1, 143, 146),
(127, NULL, 'N', '2018-01-18 16:37:04', 'A', 'N', 'N', NULL, 3, 'HELENA', '61999726518', 'sou catolica porem não frequento nenhuma igreja, sou um pouco tímida, mas gosto de fazer novas amizades e ajudar ao proximo', 'sim, colágeno as 09:00 e 21:30, ômega 3 depois do almoço e da janta e pílula anticoncepcional as 21:30', 'nenhuma', '', 1, 144, 147),
(128, NULL, 'S', '2018-01-18 17:20:57', 'A', 'N', 'N', NULL, 4, 'GUTEMBERG ', '61995131698', 'Sou persistente. Às vezes tímida. E dou risada por tudo!', NULL, NULL, '', 1, 145, 148),
(129, 'Grupo Jovem Fillis Mater Dei', 'S', '2018-01-18 21:26:11', 'A', 'N', 'N', NULL, 3, 'MARIA DAS GRAçAS FREITAS ', '61986380391', 'Sou consagrada a Nossa Senhora de Fátima, sempre andei pelo caminho caminho Deus.', 'Não', 'Não', '', 1, 146, 149),
(130, 'Gej Dom  Bosco', 'S', '2018-01-18 22:51:06', 'A', 'S', 'S', NULL, 4, 'MARIA DOS MILAGRES ', '61991822946', 'Sou realizada pelos sonhos conquistados, Apaixonada em crianças, Amooo minha familia, Grata a Deus por tudo que tenho, por isso quero  buscar a Deus cada vez mais... Consagrada a Santíssima Virgem Maria. TOTUS TUS.', 'Não', 'Não', '', 1, 147, 150),
(131, NULL, 'N', '2018-01-22 16:11:54', 'A', 'N', 'N', NULL, 4, 'MARA RúBIA ARAúJO DO NASCIMENTO SILVA', '61985683988', 'Eu acho que o retiro é uma oportunidade de vida, de conhecer outra forma de ficar perto de Deus', NULL, NULL, '', 1, 157, 160),
(132, 'Ágape', 'S', '2018-01-22 16:14:37', 'A', 'N', 'N', NULL, 3, 'EDILENE SILVA', '61992829568', 'Tenho 16 anos, nasci em um berço \"católico\" só por falar. Conheci Jesus em 2014 e me apronfundei mais em 2015 quando entrei no grupo de jovens ágape da paróquia imaculada conceição.', 'Toragesic-cólica', NULL, '', 1, 158, 161),
(133, NULL, 'S', '2018-01-22 21:46:13', 'A', 'N', 'N', NULL, 9, 'MãE CIDA', '61985528477', 'Me chamam de Salvino e tenho 16 anos, o pai é o pai', '', NULL, '', 1, 159, 162),
(134, NULL, 'S', '2018-01-22 21:55:41', 'A', 'N', 'N', NULL, 8, 'CIDA', '61998513075', 'SOU WESLEY, TENHO 16 ANOS', 'NAO', 'PROTEINA DO PORCO', '', 1, 160, 163),
(135, NULL, 'N', '2018-01-22 22:07:15', 'A', 'N', 'N', NULL, 8, 'MãE ROSA', '61986364435', 'Meu nome é Victor, tenho 17 anos e sou legal', NULL, NULL, '', 1, 161, 164),
(136, 'CATEQUESE', 'S', '2018-01-23 13:37:18', 'D', 'N', 'N', NULL, 7, 'SEBASTIANA ', '61984327005', 'Então, não sei o que dizer sobre mim, mas eu venho de uma família bem grande e barulhenta, não me leve a mal eu amo isso, mas dentro de uma casa onde eu parece ter vindo de um outro universo é meio difícil de socializar, todos sempre compartilham das mesmas opiniões, gostos musicais, modo de se vestir e até mesmo apreciam as mesmas series de TV, mas acho que é bom para uma questão de equilíbrio ter tantas diferenças o problema é que eu os amo demais mas é difícil tentar fazer parte quando você é visto como uma total estranha. Não fico muito em casa, trabalho a semana toda e no final de semana tem as atividades da pastoral. Sinceramente não sei mais o que falar rsrs.... Estou ingressando na Fateo para cursar teologia e sinceramente isso me deixa muito animada. Quero um dia casar e constituir uma família conforme Deus sonhou, com todos os filhos que ele nos confiar. Ah, é claro tenho namorado e ele me ajuda muito na questão de caminhar com os olhos fitados para o céu, além do mais é meu melhor amigo. Enfim acho que me excedi nessas linhas mas foi o que saiu, estou ansiosa para o retiro pois já faz algum tempo que estou vivendo uma certa aridez espiritual e sei que de certa forma por mais difícil que seja isso é sinal de coisa boa vindo, afinal o amor dói e sei que mesmo na dor ou na alegria não tem outro lugar  que eu prefira estar do que com Jesus.', NULL, NULL, '', 1, 162, 165),
(137, NULL, 'N', '2018-01-23 13:42:29', 'D', 'N', 'N', NULL, 9, 'PALOMA', '61995632368', 'Sou um caraextrovertido gosto de fazer amizades e preciso me reconciliar com deus', 'Não', 'Não', '', 1, 163, 166),
(138, NULL, 'S', '2018-01-23 20:48:51', 'A', 'N', 'N', NULL, 8, 'ANTôNIA BARBOSA DA SILVA ', '6130814673', 'Sou um jovem consagrado a nossa senhora e espero que esse retiro seja muito mariano', 'Não', 'Não', '', 1, 164, 167),
(139, NULL, 'S', '2018-01-23 22:55:35', 'A', 'N', 'N', NULL, 7, 'VITóRIA LIMA', '61994129510', 'Apenas um pecador em busca da Salvação.', 'Não', 'Não', '', 1, 165, 168),
(140, NULL, 'S', '2018-01-24 00:22:35', 'A', 'N', 'N', NULL, 8, 'CLODOALDO ', '61992859045', '...', 'Não', 'Não', '', 1, 166, 169),
(141, 'Guardiãs do Santíssimo Sacramento', 'S', '2018-01-24 10:40:47', 'A', 'N', 'S', NULL, 3, 'VANETE MINHA MãE ', '61933594415', 'Tenho 18 anos, e o meu maior desejo é que Jesus cresça e eu desapareça.', NULL, NULL, '', 1, 167, 170),
(142, 'Grupo de coroinhas, e grupo jovem', 'S', '2018-01-24 11:32:07', 'A', 'N', 'N', NULL, 3, 'VANESSA', '61982051087', 'Sou consagrada a Nossa Senhora Rosa Mística, sou uma das coordenadoras do grupo jovem da minha paróquia', NULL, NULL, '', 1, 168, 171),
(143, NULL, 'N', '2018-01-24 13:31:01', 'A', 'N', 'N', NULL, 3, 'JOSELMA DE CACIA DA SILVA PEREIRA', '6134581834', 'Sou uma pessoa tranquila, dedicada aos meus estudos e ideais, sempre coloco Deus e Nossa Senhora na frente de todas futuras conquistas, sou simpática e tímida.', NULL, NULL, '', 1, 169, 172),
(144, NULL, 'S', '2018-01-24 13:41:02', 'A', 'N', 'N', NULL, 6, 'JOSELMA DE CACIA DA SILVA PEREIRA', '61934581834', 'Sou uma pessoa tranquila, sou judoca profissional, carrego sempre Jesus e Nossa senhora na frente em todas as derrotas e vitórias da vida.', 'Não', NULL, '', 1, 170, 173),
(145, NULL, 'N', '2018-01-25 14:44:32', 'A', 'N', 'N', NULL, 6, 'MARGARETE DESCONZI', '3836471034', '23 anos', NULL, NULL, '', 1, 171, 174),
(146, 'Grupo Jovem Adonai, Ministério Paraclitus', 'N', '2018-01-25 18:44:53', 'A', 'N', 'N', NULL, 7, 'ANTôNIA ALVES DE OLIVEIRA ', '61984880796', 'Sou namorado da Tominaga \r\nSou do Adonai \r\nSou tímido \r\nSou baixista \r\nSou da Paraclitus \r\nSou filho único \r\nAmo minha namorada♡. (Ps. nem é ela que ta preenchendo a inscrição)', 'Bomba de asma(em caso de crise asmática)', NULL, '', 1, 172, 175),
(147, NULL, 'S', '2018-01-26 08:45:13', 'A', 'N', 'N', NULL, 3, 'PAI ', '61992108927', '.', NULL, NULL, '', 1, 173, 176),
(148, NULL, 'S', '2018-01-26 09:37:32', 'A', 'N', 'N', NULL, 7, 'MãE', '61996959283', 'Formada em Direito, não sou casada, não tenho filhos, trabalho, tenho 30 anos. Extrovertida, gosto de ouvir música, praticar esportes e fazer amizades.', 'não', 'não', '', 1, 174, 177),
(149, 'Juventude Missionária Salesiana', 'S', '2018-01-26 13:55:38', 'A', 'N', 'S', NULL, 3, 'MãE ', '61986565189', 'Bom eu me chamo Fernanda a (fernandinha do gej) kkk, já fui do gej mais hoje faço parte apenas da JMS ( juventude missionária salesiana).. e nesse retiro quero me doar de corpo e alma para todas as pessoas que Jesus nos confiou.', 'não', 'não', '', 1, 175, 178),
(150, NULL, 'N', '2018-01-26 22:32:56', 'A', 'N', 'N', NULL, 4, 'MãE', '61986680252', '.', NULL, NULL, '', 1, 176, 179),
(151, NULL, 'S', '2018-01-27 14:15:32', 'D', 'S', 'N', NULL, 2, 'MáRCIA FRANCINA', '61985175039', 'Sou animada, brincalhona, amo criança', 'Nao', 'Nao', '', 1, 177, 180),
(152, NULL, 'N', '2018-01-27 15:19:30', 'A', 'N', 'N', NULL, 7, 'MARIA MEDEIROS', '61999701675', 'Moro em Taguatinga, família um pouco complicada', NULL, NULL, '', 1, 178, 181),
(153, NULL, 'N', '2018-01-27 15:27:16', 'A', 'N', 'N', NULL, 6, 'MARIA MEDEIROS', '61999701675', 'Garota de Taguatinga, ensino médio 17 anos.', NULL, NULL, '', 1, 179, 182),
(154, NULL, 'N', '2018-01-27 18:47:05', 'A', 'N', 'N', NULL, 2, 'LIDIANE MARINE', '61999290418', 'Um pouco tímida e insegura.', 'Não.', 'Não.', '', 1, 180, 183),
(155, 'GEJ DOM BOSCO', 'S', '2018-01-27 23:36:11', 'A', 'S', 'S', NULL, 7, 'TIA ZEZE', '61930835505', 'Simpático e engraçado. Super amigo e Carismático.', 'Não', 'Não posso comer carne', '', 1, 181, 184),
(156, 'Catequese e Coordenação de grupo de coroinhas', 'S', '2018-01-28 22:46:17', 'A', 'N', 'N', NULL, 4, 'MARIA DE NAZARé', '61983663811', 'Sou uma pessoa que gosta de ajudar as outras, é o que mais me dar prazer na vida. Sou bastante tímida, mas depois consigo me soltar com o tempo, estou com relacionamento fragilizado no que diz respeito a mim e Deus por causa de uma tentativa de suicídio, e espero de todo coração voltar a ter alegria e está novamente ao lado Dele.', 'Após o café da manhã : Exodus ( 1 comprimido), Sulfato Ferroso ( 1 cp), Cálcio (2 cps) e materna (1 cp).\r\nAntes de dormir: Donaren ( 1 cp) e Carbolitium ( 1 cp).', 'Gordura e açúcar.', '', 1, 182, 185),
(157, NULL, 'S', '2018-01-29 08:01:33', 'A', 'N', 'N', NULL, 3, 'ROSANA ', '61998129491', 'Eu sofro de crises convulsivas ( convulsão) e  tenho TDH ( déficit de atenção)', 'Tegretol tomar as 7hrs da manhã e as 7hrs da noite', NULL, '', 1, 183, 186),
(158, NULL, 'N', '2018-01-29 21:33:01', 'A', 'N', 'N', NULL, 7, 'DALVA ', '6134591490', 'Tenho 22 anos. E como nunca fiz um retiro esse ano eu decidir saber como é .', NULL, NULL, '', 1, 184, 187),
(159, NULL, 'S', '2018-01-29 23:22:49', 'A', 'N', 'S', NULL, 4, 'ROMANA ', '61981122316', 'Eu sonho com o céu a todo tempo!', NULL, NULL, '', 1, 185, 188),
(160, NULL, 'N', '2018-01-30 22:24:00', 'A', 'N', 'N', NULL, 8, 'PAI', '61984827324', 'A eu sou muito estrofertido gosto de comer e brincar com a cara dos outros', NULL, NULL, '', 1, 186, 189),
(161, NULL, 'N', '2018-01-30 22:33:36', 'A', 'N', 'N', NULL, 7, 'PAI', '61984827324', 'Faço amizade muito fácil, gosto de rir.', NULL, NULL, '', 1, 187, 190),
(162, 'RCC, coroinha', 'N', '2018-01-30 23:28:02', 'A', 'N', 'N', NULL, 7, 'MãE', '61984467627', 'Eu sou um jovem da renovação carismática católica,e coroinha', 'Não', 'Não', '', 1, 188, 191),
(163, 'Equipe Jovem AJUC', 'S', '2018-02-01 13:43:52', 'A', 'N', 'S', NULL, 8, 'ANTôNIA BARBOSA DA SILVA', '61985545695', 'Sou mais conhecido como Eude Maria, tenho 17 anos, 2 anos que estou na caminhada á um que prego a Palavra de Deus. #DeusValeAPena', 'Não', 'Não', '', 1, 190, 193),
(164, 'Dizimo / Liturgia', 'S', '2018-02-01 21:30:00', 'D', 'N', 'N', NULL, 7, 'NARIO', '62991895132', 'Sou Jovem e tenho desejo em ser Sacerdote.', NULL, NULL, '', 1, 191, 194),
(165, 'Fillis Mater Dei', 'S', '2018-02-01 22:34:48', 'D', 'N', 'N', NULL, 7, 'MARIA EUNICIE', '61986096929', 'Jovem enteressado em seguir o caminho de Deus e poder converter o maximos de jovens que eu puder, estou em formação de catequista e cerimoniário.', 'Nao faço, nao tenho conhecimento profundo á esse ponto', 'Nenhuma', '', 1, 192, 195),
(166, NULL, 'N', '2018-02-02 11:05:14', 'A', 'N', 'N', NULL, 6, 'MAILSON FERREIRA', '6183381196', 'TRANQUÍLO.', 'NÃO.', 'NÃO.', '', 1, 193, 196),
(167, 'Cerimoniário e GEJ', 'S', '2018-02-02 15:29:32', 'A', 'S', 'N', NULL, 8, 'SOLANGE ', '61992687082', 'Sou uma pessoa Top', NULL, NULL, '', 1, 194, 197),
(168, NULL, 'N', '2018-02-02 15:54:49', 'A', 'N', 'N', NULL, 8, 'SOLANGE ', '61992687082', 'Sou muito seria, porem legal ! não gosto de muitas brincadeiras...\r\nMas garanto que sou um amor de pessoa.', NULL, NULL, '', 1, 196, 199),
(169, NULL, 'S', '2018-02-03 12:31:21', 'A', 'S', 'N', NULL, 7, 'EDILEUZA', '61995264082', 'Sou o Diego kk', 'Não', 'Não', '', 1, 197, 200),
(170, NULL, 'S', '2018-02-03 22:41:21', 'A', 'N', 'N', NULL, 7, 'EDNA', '6195648386', 'Sou Soniara, tenho 28 anos, moro no Guará, sou estudante da UnB do curso de Serviço Social, gosto de música, não frequento nenhum grupo jovem, gosto de dormir e de ler.', 'Não.', 'Não.', '', 1, 198, 201),
(171, NULL, 'S', '2018-02-03 22:44:49', 'A', 'N', 'N', NULL, 6, 'MAE', '61998143543', 'Alguem em busca de seus objetivos, creio que na presença de Deus nada sera impossivel para quem nele cre.\r\nEstudo psicologia o que me ajuda cada vez mais a ter amor,compaixão e solidariedade com meu proximo.', 'sim.\r\npropanolol duas vezes ao dia 11:00 da manha e 23:00 da noite\r\npaara pressão.', 'nao.', '', 1, 199, 202),
(172, NULL, 'S', '2018-02-03 22:49:55', 'A', 'N', 'N', NULL, 7, 'EDNA ', '6195648386', 'Sou Júlia, tenho 20 anos, estudante de Pedagogia da UnB, apaixonada por escolarização de surdos, gosto de dormir, comer, ler e ser feliz! :)', 'Não.', 'Não.', '', 1, 200, 203),
(173, NULL, 'S', '2018-02-04 13:23:13', 'D', 'N', 'N', NULL, 8, 'MARINALVA MARTINS', '6184837287', 'Um jovem buscando voltar ao amor de Deus.', NULL, 'Alergia a Camarão.', '', 1, 201, 204),
(174, NULL, 'N', '2018-02-04 17:30:48', 'A', 'S', 'N', NULL, 6, 'PAI', '61992999241', 'Sou uma pessoa tranquila e bacana', 'Não', NULL, '', 1, 202, 205),
(175, NULL, 'S', '2018-02-04 19:27:59', 'A', 'N', 'N', NULL, 3, 'IVANILDES', '6134586671', 'Ex integrante do Gej.', 'Não.', 'Não.', '', 1, 203, 206),
(176, NULL, 'N', '2018-02-04 22:26:21', 'A', 'N', 'N', NULL, 8, 'EDIVANIA', '61985788495', '.', NULL, NULL, '', 1, 204, 207),
(177, 'Grupo Jovem', 'S', '2018-02-05 02:06:05', 'A', 'N', 'N', NULL, 3, 'MARCUS VINICIUS GOMES CIRILO', '61982886539', 'Estudante de Enfermagem, namoro, coordeno o Grupo Jovem Getsêmani na Paróquia São Domingos Sávio (R.Fundo1). Espero que o retiro possa fazer com que eu viva mais uma experiencia com Jesus e que isso fortaleça os chamados de Cristo pra mim.\r\nVAI SER UM PIPOCO!!!', NULL, NULL, '', 1, 205, 208),
(178, NULL, 'N', '2018-02-05 16:43:17', 'A', 'N', 'N', NULL, 7, 'ELIETE APARECIDA BARROSO', '6130814590', 'Sou de boa', 'Não', 'Não', '', 1, 206, 209),
(179, 'Paróquia Nossa Senhora da Assunção', 'N', '2018-02-05 18:13:42', 'A', 'N', 'N', NULL, 7, 'FRANCISCO WELLINGTON ', '6195706299', 'Meio tímida', 'Não', NULL, '', 1, 207, 210),
(180, NULL, 'S', '2018-02-05 20:35:53', 'D', 'N', 'N', NULL, 2, 'CARLOS ROBERTO SOUSA NUNES', '6133915510', '....', NULL, NULL, '', 1, 208, 211),
(181, 'Santa Luzia', 'N', '2018-02-05 22:17:10', 'A', 'N', 'N', NULL, 8, 'JHONY', '6199910092', 'Lindo espero nesse retiro muitas bênçãos', 'Nao', 'Como tudo', '', 1, 209, 212),
(182, NULL, 'N', '2018-02-05 22:38:17', 'A', 'N', 'N', NULL, 1, 'MãE', '61999252609', 'Emotiva, companheira, sincera, e com muitas falhas também!', 'Não', 'Não', '', 1, 210, 213),
(183, NULL, 'S', '2018-02-06 07:03:24', 'A', 'N', 'N', NULL, 3, 'MáRCIA', '61996252678', 'Sou bem amigável e alegre.', NULL, NULL, '', 1, 211, 214),
(184, 'JMS', 'N', '2018-02-07 08:00:35', 'D', 'N', 'N', NULL, 8, 'JOCILENE MãE ', '61999763010', 'Super animado, crismado e deposto a ajudar', NULL, NULL, '', 1, 212, 215),
(185, NULL, 'N', '2018-02-07 09:41:06', 'D', 'N', 'N', NULL, 6, 'TEREZA MARIA DA COSTA', '61992764567', 'Sou tranquila educada fácil de fazer amizade', 'Não', 'Não posso comer salsicha', '', 1, 213, 216),
(186, NULL, 'N', '2018-02-07 11:50:45', 'A', 'N', 'N', NULL, 2, 'ODINAIR CAMARGO', '6133580426', 'Divertida, simpática, carismática...', 'Não', 'Não', '', 1, 214, 217),
(187, 'Gej', 'S', '2018-02-07 13:10:35', 'A', 'S', 'S', NULL, 8, 'IZABEL', '6134599565', 'Sou um doce de pessoa', NULL, 'Pouca comida', '', 1, 215, 218),
(188, NULL, 'S', '2018-02-07 13:41:02', 'A', 'N', 'N', NULL, 4, 'CRISTINA', '6185864901', 'Meu nome é Daniel', 'Não', 'Não', '', 1, 216, 219),
(189, 'Cerimoniários', 'S', '2018-02-07 20:40:54', 'A', 'N', 'N', NULL, 7, 'MARIA DE LOURDES LIMA SILVA', '61993641140', 'Estudante de Direito, solteiro, cerimôniário há 5 anos, membro do Grupo Jovem Getsêmani da Paróquia São Domingos Sávio do Riacho Fundo I', NULL, NULL, '', 1, 217, 220),
(190, NULL, 'N', '2018-02-07 21:29:52', 'A', 'N', 'N', NULL, 6, 'SOLIMAR', '6134593974', '.', NULL, NULL, '', 1, 218, 221),
(191, NULL, 'N', '2018-02-07 21:36:42', 'A', 'N', 'N', NULL, 3, 'CASA ', '6135591305', '.', NULL, NULL, '', 1, 219, 222),
(192, NULL, 'S', '2018-02-08 12:55:50', 'A', 'N', 'N', NULL, 7, 'GLACE CLEIA ', '6132086243', 'Eu estou indo para o ensino médio, ou músico, toco violino, sou do grupo jovem adonai, tenho 16 anos', NULL, NULL, '', 1, 220, 223),
(193, NULL, 'S', '2018-02-08 13:51:27', 'D', 'N', 'N', NULL, 2, 'ERIDAN OU EDER', '6130226004', '...', 'Não', 'Não', '', 1, 221, 224),
(194, 'Escola de Evangelização Santo André', 'S', '2018-02-08 14:08:22', 'A', 'N', 'N', NULL, 9, 'MãE ', '61985254244', 'Gosto de comer hambúrguer', 'Não', 'Jamais amigos boca foi feita pra cumê', '', 1, 222, 225),
(195, 'Coroinhas', 'N', '2018-02-08 18:50:34', 'A', 'N', 'N', NULL, 4, 'PAI LICLAUDIO', '61981043721', 'Meu nome é Letícia e meu primeiro retiro de 4 dias sou do grupo jovem ADONAI e quero ser santa', 'Um comprimido e um spray nasal anti alérgico', 'Não', '', 1, 223, 226),
(196, NULL, 'S', '2018-02-08 19:41:19', 'A', 'N', 'N', NULL, 4, 'MãE', '6133760781', 'Bom eu sou uma pessoa, legal (eu acho kkk),tenho asma porém,  não tenho crise quase nunca, é só isso', 'Não', 'Não', '', 1, 224, 227),
(197, 'Coroinhas e grupo jovem Fillis Mater Dei', 'S', '2018-02-08 23:01:47', 'A', 'N', 'N', NULL, 2, 'MãE ', '61984887216', 'Sou timida, mas fui meio obrigada a ser extrovertida com o grupo jovem. Aaah não sei me descrever kk... Aaah gosto de colocar um sorriso no rosto das pessoas e sou aquela que todo mundo recorre para alguma ajuda. Digo o que as pessoas precisam ouvir e não o que querem.', 'Falho muito nisso', 'Nenhuma, só sou fresca kk', '', 1, 225, 228),
(198, NULL, 'S', '2018-02-08 23:14:50', 'A', 'N', 'N', NULL, 3, 'MãE', '61985864901', 'Sou de igreja desde sempre.', NULL, NULL, '', 1, 226, 229),
(199, NULL, 'S', '2018-02-09 00:01:48', 'A', 'N', 'N', NULL, 8, 'JOSé RIBAMAR ', '61981215733', 'Pessoa tranquila, bom humor.', NULL, NULL, '', 1, 227, 230),
(200, NULL, 'N', '2018-02-09 00:26:19', 'A', 'N', 'N', NULL, 7, 'MãE', '61986155796', 'Sou divertida, alegre e gosto muito de fazer amizades novas.', 'Não', 'Não', '', 1, 228, 231),
(201, NULL, 'N', '2018-02-09 12:34:26', 'A', 'N', 'N', NULL, 7, 'MARIBEL', '61999515144', 'Tenho 26 anos, formado em Agronomia e trabalho numa propriedade rural da familia.', 'Nunca pratiquei meditacao.', 'Nenhuma', '', 1, 229, 232),
(202, NULL, 'N', '2018-02-09 13:22:02', 'A', 'N', 'N', NULL, 7, 'JOSEJA SOMBRA', '61992952077', 'Bem, eu tenho fobia de lugar cheio. Porém achei que ir pro retiro ia me ajudar nisso', NULL, NULL, '', 1, 230, 233),
(203, NULL, 'S', '2018-02-09 13:30:25', 'A', 'N', 'N', NULL, 2, 'ROSANGELA', '93992049717', 'Meu nome é Alexsandra, tenho 22 anos, acabei de me formar em engenharia civil, e no meu último ano foi um pouco difícil conciliar faculdade com a igreja, o que fez me afastar um pouco, porém sempre entreguei meu sonho e minhas dificuldades nas mãos de Deus com a intercessão da Virgem Maria para que não desistisse.\r\nParticipei do Santifique-se em 2017 e foi uma experiência sensacional, e tenho certeza que será melhor ainda, porque hoje tenho mais a agradecer do que pedir.', 'Não', 'Não', '', 1, 231, 234),
(204, NULL, 'S', '2018-02-09 20:27:20', 'A', 'N', 'N', NULL, 7, 'JOSé RIBAMAR COELHO DA SILVA ', '61981215733', 'Tenho 14 anos, tenho vontade de crescer vivendo a juventude santa como Dom Bosco pregava', NULL, NULL, '', 1, 232, 235),
(205, NULL, 'N', '2018-04-18 23:20:11', 'A', 'S', 'N', NULL, NULL, 'JOSE ARNALDO', '61993003405', 'Nem sei o que dizer', NULL, NULL, '', 3, 1, 141),
(206, 'GEJ Dom bosco', 'S', '2018-04-19 12:06:03', 'A', 'S', NULL, NULL, NULL, 'ROSA', '6130826060', 'Tira esse campo rsrs', NULL, NULL, '', 3, 61, 123);
INSERT INTO `tb_inscricao` (`co_inscricao`, `ds_pastoral`, `ds_retiro`, `dt_cadastro`, `st_status`, `ds_membro_ativo`, `st_equipe_trabalho`, `ds_situacao_atual_grupo`, `nu_camisa`, `no_responsavel`, `nu_tel_responsavel`, `ds_descricao`, `ds_medicacao`, `ds_alimentacao`, `ds_motivo`, `co_evento`, `co_pessoa`, `co_imagem`) VALUES
(207, 'Gej Dom Bosco', 'S', '2018-04-23 15:24:20', 'A', 'S', 'N', NULL, NULL, 'GENI MãE ', '61986719608', '.', 'não', 'não', '', 3, 104, 107),
(208, NULL, 'N', '2018-04-23 22:14:54', 'A', 'S', 'N', NULL, NULL, 'ELIENE', '61992439969', NULL, NULL, NULL, '', 3, 72, 80),
(209, NULL, 'S', '2018-04-24 15:47:46', 'A', 'S', NULL, NULL, NULL, 'MáRCIA ', '61996252678', 'Sou alegre.', 'Não.', 'Não.', '', 3, 211, 214),
(210, NULL, 'N', '2018-04-24 15:58:02', 'A', 'S', 'N', NULL, NULL, 'LUCILENE AGUIAR', '6133588725_', NULL, NULL, NULL, '', 3, 31, 30),
(211, 'GEJ DOM BOSCO', 'S', '2018-04-24 16:27:14', 'A', 'S', NULL, NULL, NULL, 'PAI', '61992197688', 'Amigável e simples', 'Não', 'Não', '', 3, 39, 15),
(212, 'GEJ DOM BOSCO', 'S', '2018-04-24 17:28:24', 'A', 'S', NULL, NULL, NULL, 'MãE  EURIDES ', '61986130447', NULL, NULL, 'Lactose', '', 3, 73, 22),
(213, 'Gej Dom Bosco', 'S', '2018-04-24 18:30:57', 'D', 'S', 'N', NULL, NULL, 'MãE ', '61984569701', NULL, NULL, NULL, '', 3, 49, 49),
(214, 'Gej Dom Bosco', 'S', '2018-04-25 15:22:00', 'D', 'S', NULL, NULL, NULL, 'MARIA DE JESUS ', '61992240268', 'Sou linda e amo o meu grupo lindo, anseio por esse abastecimento!', 'remedio para enxaqueca apenas, de 8 em 8hrs', NULL, '', 3, 95, 97),
(215, 'Gej', 'S', '2018-04-25 16:06:03', 'A', 'S', NULL, NULL, NULL, 'MARIA NAZARE', '61981429638', '...', NULL, NULL, '', 3, 88, 90),
(216, NULL, 'S', '2018-04-25 17:16:45', 'A', 'S', NULL, NULL, NULL, 'SANDRA LIMA DE OLIVEIRA', '61981990261', 'sou uma pessoa carismática, faço amizade com facilidade, sorridente, que quer servi cada vez mais a Deus,busco a santidade.', 'Sim, fica comigo', 'Não', '', 3, 133, 136),
(217, 'GEJ', 'S', '2018-04-25 18:24:59', 'A', 'S', 'N', NULL, NULL, 'DENISE', '6134595330_', NULL, NULL, NULL, '', 3, 10, 10),
(218, 'GEJ Dom Bosco', 'S', '2018-04-25 21:52:45', 'A', 'S', NULL, NULL, NULL, 'EDI ', '61986521612', NULL, NULL, 'Fungo (cogumelos)', '', 3, 25, 25),
(219, NULL, 'S', '2018-04-26 09:52:29', 'A', 'S', 'N', NULL, NULL, 'MARIA JOSÉ CUNHA RIBEIRO', '6133593245_', NULL, '- Não.', '- Não.', '', 3, 16, 16),
(220, 'Gej', 'S', '2018-04-26 21:08:52', 'A', 'S', NULL, NULL, NULL, 'EDILEUSA', '6133596361', 'Meigazinha ♥️', 'Antialérgico', 'Nao', '', 3, 53, 53),
(221, 'Gej', 'S', '2018-04-26 21:14:05', 'A', 'S', 'N', NULL, NULL, 'EDILEUSA', '61992226161', 'Legal', NULL, NULL, '', 3, 97, 131),
(222, 'Gej dom bosco', 'S', '2018-04-28 14:26:17', 'D', 'N', 'N', NULL, NULL, 'MARCIA ', '61985175039', 'Sou uma menina bem risonha mais quando estou num retiro choro que só, sou amigável, amo crianças, apaixonada por Jesus sacramentado e nossa senhora Aparecida', 'Não', 'Nenhuma', '', 3, 67, 69),
(223, NULL, 'S', '2018-04-29 10:48:28', 'A', 'N', NULL, NULL, NULL, 'DILVA', '6133595307', NULL, NULL, NULL, '', 3, 233, 240),
(224, NULL, 'S', '2018-04-29 10:50:07', 'A', 'N', NULL, NULL, NULL, 'LIDIANE MAE', '61984774148', NULL, 'Não', 'Não', '', 3, 234, 241),
(225, 'Gej Dom Boeco', 'S', '2018-04-30 11:27:22', 'A', 'S', 'N', NULL, NULL, 'TIA ZETE', '6130835505', NULL, NULL, 'N posso comer sem carne kkkkk', '', 3, 181, 184),
(226, 'Equipe Jovem AJUC', 'S', '2018-04-30 11:35:58', 'D', 'N', NULL, NULL, NULL, 'MARIA', '6191452408', 'Sou católico carismático/tradicional, escravo a Jesus por meio da Virgem Maria. Tenho 24 anos. Trabalho e estudo...', 'Sim, vitamina B e biotina, uma vez por dia', 'Nenhuma graças a Deus', '', 3, 235, 242),
(227, NULL, 'S', '2018-04-30 11:58:51', 'A', 'S', 'N', NULL, NULL, 'MARIZETE', '6196814642', NULL, NULL, NULL, '', 3, 236, 243),
(228, 'GEJ Dom Bosco', 'S', '2018-04-30 13:18:51', 'A', 'S', NULL, NULL, NULL, 'MãE ', '61981214179', 'Estou aguardando ansiosamente por esse retiro!', NULL, NULL, '', 3, 14, 14),
(229, 'GEJ Dom Bosco', 'S', '2018-04-30 14:24:41', 'A', 'S', NULL, NULL, NULL, 'MARIA ', '61992240268', 'Gosto de interagir com todos e sou um pouco vergonhosa', 'Não', 'Não, mas faço dieta sobre prescrição médica', '', 3, 62, 63),
(230, 'Gej Dom Bosco', 'S', '2018-05-01 11:45:34', 'A', 'S', NULL, NULL, NULL, 'MARIZETE BISPO REIS ', '61999376262', 'Sou uma menina extrovertida e bonita kkkkkkk', 'Não', 'Não', '', 3, 123, 126),
(231, 'Gej Dom Bosco', 'S', '2018-05-01 14:02:57', 'A', 'S', NULL, NULL, NULL, 'DELCIA APARECIDA JOSé MACêDO', '61986118724', 'Não muito a falar sobre mim, sou católica e luto a cada dia para ser mais, amo minha Mãezinha das Graças e procuro viver minha vocação. Sou intercessora aonde vou e busco ser também através do meu testemunho o Evangelho de Cristo perto das pessoas.', NULL, NULL, '', 3, 85, 87),
(232, 'GEJ Dom Bosco', 'S', '2018-05-01 14:19:28', 'A', 'S', NULL, NULL, NULL, 'MARIA LOUZENICE CARVALHO DA SILVA ', '6130131416', NULL, NULL, NULL, '', 3, 135, 138),
(233, 'GEJ Dom Bosco', 'S', '2018-05-01 14:25:12', 'A', 'S', NULL, NULL, NULL, 'MARIA LOUZENICE CARVALHO DA SILVA ', '6130131416', NULL, NULL, NULL, '', 3, 173, 176),
(234, 'Grupo de Evangelização de Jovens Dom Bosco', 'S', '2018-05-04 10:59:22', 'A', 'S', NULL, NULL, NULL, 'MãE', '61991774916', 'Sou tímido, é tmmj !', NULL, NULL, '', 3, 189, 5),
(235, NULL, 'S', '2018-05-06 19:48:42', 'A', 'S', 'N', NULL, NULL, 'ALEMIRA DONA ROSA', '6134599984', NULL, 'Não', 'Não', '', 3, 127, 130),
(236, NULL, 'S', '2018-05-09 18:43:52', 'A', 'S', NULL, NULL, NULL, 'SELMéLIA', '6130831451', NULL, NULL, NULL, '', 3, 117, 120),
(237, NULL, 'S', '2018-05-09 21:51:37', 'A', 'S', NULL, NULL, NULL, 'DEUS', '6130826060', 'sou uma pessoa devota de Dom Bosco', NULL, NULL, '', 3, 6, 244),
(238, 'Pastoral familiar', 'S', '2018-05-12 21:23:25', 'A', 'S', NULL, NULL, NULL, 'LUCIANO', '6136244679', '...', 'Não', 'Não', '', 3, 140, 143),
(239, 'Gej Dom Bosco', 'S', '2018-05-14 22:58:05', 'A', 'S', 'N', NULL, NULL, 'MARIA ', '61991822946', 'Sou mt feliz! ', NULL, NULL, '', 3, 147, 248),
(240, NULL, 'S', '2018-05-15 22:51:05', 'A', 'N', NULL, NULL, NULL, 'JANAINA LOPES ', '61992641163', NULL, NULL, NULL, '', 3, 65, 67),
(241, NULL, 'S', '2018-05-20 14:59:17', 'A', 'N', NULL, NULL, NULL, 'FERNANDA', '61984527524', '.', '.', NULL, '', 3, 237, 249),
(242, 'Grupo jovem Ajuc', 'S', '2018-05-20 21:00:51', 'D', 'N', NULL, NULL, NULL, 'MãE ', '6192795334', 'Sou doido', 'Não, a medicação que me usa', 'Quero tudo que tiver', '', 3, 238, 250),
(243, 'Gej', 'S', '2018-05-27 23:48:08', 'D', 'S', NULL, NULL, NULL, 'MARIA ', '6130835611', NULL, 'Não', 'Não', '', 3, 240, 253),
(244, 'GEJ DOM BOSCO', 'S', '2018-05-29 09:08:10', 'D', 'S', NULL, NULL, NULL, 'ROSILEDA', '61992724933', NULL, NULL, NULL, '', 3, 36, 35),
(245, NULL, 'S', '2018-05-31 19:19:05', 'D', 'S', NULL, NULL, NULL, 'SONIA', '6134588070', NULL, NULL, NULL, '', 3, 3, 3),
(246, NULL, 'S', '2018-06-04 18:19:01', 'A', 'S', NULL, NULL, NULL, 'WESLEY', '6198579058', NULL, NULL, NULL, '', 3, 142, 255),
(247, NULL, 'S', '2018-06-04 20:05:38', 'A', 'N', NULL, NULL, NULL, 'MãE ', '6186130447', 'sou irmã da melhor pessoa desse brasil vulgo kamila', NULL, NULL, '', 3, 241, 256),
(248, 'GEJ Dom Bosco', 'S', '2018-06-04 21:53:38', 'D', 'S', NULL, NULL, NULL, 'PAI ARNALDO', '61993003405', NULL, NULL, NULL, '', 3, 37, 91),
(249, 'GEJ', 'S', '2018-06-04 23:41:10', 'A', 'S', NULL, NULL, NULL, 'JESUS CRISTO', '61983232905', 'Sou bem legal, amo o GEJ!', NULL, NULL, '', 3, 90, 92),
(250, NULL, 'S', '2018-06-07 11:29:21', 'A', 'S', NULL, NULL, NULL, 'LILIAN BESSA', '61983701441', NULL, NULL, NULL, '', 3, 218, 221),
(251, NULL, 'S', '2018-06-09 17:52:49', 'D', 'N', NULL, NULL, NULL, 'JOELMA ', '61992419993', NULL, 'Não', 'Não', '', 3, 68, 70),
(252, 'Música', 'S', '2018-06-17 17:34:57', 'A', 'S', NULL, NULL, NULL, 'PAI', '61984827324', 'Sou muito risonho , estou a disposição de quem precisa de ajuda , gosto muito de se interagir', 'Não', 'Não', '', 3, 187, 190),
(253, NULL, 'S', '2018-06-18 08:36:15', 'A', 'S', NULL, NULL, NULL, 'IVANILDES MAIA ', '61982789273', NULL, NULL, NULL, '', 3, 203, 206),
(254, NULL, 'S', '2018-06-21 08:27:50', 'D', 'S', NULL, NULL, NULL, 'IVANILDES', '6134586671', NULL, 'Não', 'Não', '', 3, 59, 60),
(255, NULL, 'S', '2018-06-21 08:29:41', 'D', 'S', NULL, NULL, NULL, 'IVANILDES ', '6134586671', NULL, 'Não', 'Não', '', 3, 57, 58),
(256, NULL, 'S', '2018-06-21 13:20:13', 'A', 'S', NULL, NULL, NULL, 'SIMONE', '6198785437', NULL, 'Puran t4\r\nPela manhã em jejum', NULL, '', 3, 143, 257),
(257, NULL, 'N', '2018-06-30 00:23:43', 'A', 'S', NULL, NULL, NULL, 'EDILEUZA MãE', '61992474253', NULL, 'Nenhum.', 'Intolerante a lactose.', '', 3, 55, 56),
(258, 'Grupo de jovens(Jedi)', 'S', '2018-06-30 14:11:20', 'A', 'N', NULL, NULL, NULL, 'MãE MARIA JOSé ', '61985180784', 'Bom, so queria dizer que sou apaixonada por Jesus haha', 'Omenax remédio para o estômago, bebo somente as uma vez ao dia que é pela manhã.', NULL, '', 3, 70, 72),
(259, NULL, 'S', '2018-06-30 21:31:48', 'A', 'N', 'N', NULL, NULL, 'MINISTéRIO DE MúSICA RAINHA DA PAZ', '61984827324', 'Sou uma pessoa legal gosto de conhecer pessoas novas', 'Não', 'Não', '', 3, 186, 189),
(260, NULL, 'N', '2018-07-02 11:55:36', 'A', 'N', 'N', NULL, NULL, 'SEBASTIANA GONçALVES', '61984327005', 'Oi,\r\nBom, não sei muito bem o que falar rs, tenho 20 anos e não participo de nenhuma pastoral no momento, digamos que estou a procura do lugar onde devo servir a Deus.', NULL, NULL, '', 3, 162, 165),
(261, 'Grupo Jovem JEDI', 'S', '2018-07-02 21:10:24', 'A', 'N', 'N', NULL, NULL, 'NEIDE ', '61991621818', NULL, NULL, NULL, '', 3, 52, 52),
(262, NULL, 'S', '2018-07-02 22:33:19', 'A', 'N', 'N', NULL, NULL, 'MARIA ADILINA NUNES MARTINS ', '61984946694', 'Sou Ariane, tenho 19 anos, moro com  minha mãe e meu irmão mais velho. Venho de uma família de base cristã, e tenho frequentado a igreja e buscar ter um relacionamento agradável com Jesus!!!', NULL, NULL, '', 3, 242, 258),
(263, NULL, 'S', '2018-07-03 14:21:10', 'A', 'S', 'N', NULL, NULL, 'MARIA JOSé ', '61991340627', 'Meu nome é Leandro nasci em Teresina, mas moro em Brasília desde os 2 anos de idade, tenho um filho de dois anos que se chama Miguel.', 'Não', NULL, '', 3, 56, 259),
(264, 'Gej', 'S', '2018-07-03 18:28:45', 'A', 'S', 'N', NULL, NULL, 'MãE', '6134598976', 'Sou uma.pessoa difertida', 'Não', 'Não', '', 3, 219, 222),
(265, 'Catequistas', 'S', '2018-07-03 20:48:35', 'A', 'N', 'N', NULL, NULL, 'PAI', '6130814673', 'Sou uma pessoa difertida', 'Não', 'Não', '', 3, 164, 167),
(266, NULL, 'S', '2018-07-03 20:58:46', 'A', 'N', 'N', NULL, NULL, 'MARCIA', '61992232118', 'Só.uma menina.timida  porém muita amiga dipostar aprendr', 'Nao', NULL, '', 3, 134, 137),
(267, NULL, 'S', '2018-07-04 11:18:05', 'A', 'S', 'N', NULL, NULL, 'GUTO', '61984235595', NULL, NULL, NULL, '', 3, 145, 148),
(268, 'Gej', 'S', '2018-07-04 12:08:16', 'A', 'N', 'N', NULL, NULL, 'SOLANGE', '6133571919', NULL, NULL, NULL, '', 3, 29, 29),
(269, NULL, 'N', '2019-01-05 17:26:32', 'A', 'S', 'S', NULL, 8, 'ZE DO BIGODE', '61993003405', NULL, NULL, NULL, NULL, 37, 1, 261),
(270, NULL, 'N', '2019-01-13 16:08:10', 'D', 'N', 'N', NULL, 6, 'SHIRLEI', '61985458403', 'Boa tarde, Sou estudante e gosto de estar buscando conhecer mais o universo espiritual,', 'Não', 'Não', 'Desistente', 37, 243, 263),
(271, 'GEJ Dom Bosco', 'S', '2019-01-14 10:19:22', 'A', 'S', 'S', NULL, 4, 'GENI GOMES ', '61999661105', 'Lindíssima da cabeça aos PÉS.', 'Não pessoal.', 'Se eu ficar mais de 1h sem comer, passo mal.', NULL, 37, 104, 264),
(272, NULL, 'S', '2019-01-17 16:42:38', 'A', 'N', 'N', NULL, 7, 'ANNA CAROLINA DA SILVA LUIZ', '6133586345', NULL, NULL, NULL, '', 37, 244, 265),
(273, NULL, 'N', '2019-01-18 14:44:59', 'D', 'N', 'N', NULL, 9, 'CLEONICE DO CARMO', '61994434101', NULL, 'Não', 'Não', 'Desistentes', 37, 245, 266),
(274, 'Catequese', 'S', '2019-01-19 18:36:25', 'D', 'N', 'N', NULL, 7, 'ROSELI MACEDO', '16992555474', 'Meus nome é Edwirges, tenho 29 anos. Estou precisando me reecontrar na fé.', 'Não', 'Não', 'Não vai poder!', 37, 246, 267),
(275, NULL, 'N', '2019-01-20 21:55:19', 'A', 'N', 'N', NULL, 5, 'TEREZA ', '61992678292', 'Sou uma pessoa que não sou de falar muito, sou tímida, resumindo não sei falar sobre mim.', 'Não', 'Não', '', 37, 247, 268),
(276, NULL, 'S', '2019-01-20 21:56:34', 'D', 'N', 'N', NULL, 3, 'MáRCIA FRANCINA ', '61985175039', 'Um pouco risonha, adora falar, e a que chora muito tmb, animada', 'Não', 'Nenhuma', 'Não comparecerá.', 37, 67, 269),
(277, NULL, 'S', '2019-01-20 21:59:00', 'D', 'N', 'N', NULL, 2, 'MáRCIA FRANCINA', '61985175039', NULL, NULL, 'Nenhuma', 'Não comparecerá', 37, 177, 180),
(278, 'Grupo jovem Luiz e  fogo', 'S', '2019-01-20 22:00:10', 'D', 'N', 'N', NULL, 8, 'MARISA DE FáTIMA MIRANDA ', '61991157538', 'Eu sou uma pessoa determinada e confio muito em Deus', 'Tomo hormônio \r\nCálcio \r\nFluxetina\r\nGlifagen', 'Nao tenho', 'Não tem dinheiro para ir ao retiro', 37, 20, 20),
(279, 'Ajuc', 'S', '2019-01-20 22:00:58', 'D', 'N', 'N', NULL, 4, 'EDILENE SILVA', '61992829568', 'Tenho 17 anos e já fiz o retiro ano passado, gostei muito e quero fazer de novo', NULL, 'Intolerância a lactose', 'Desistente', 37, 158, 161),
(280, NULL, 'S', '2019-01-20 22:01:18', 'D', 'N', 'N', NULL, 8, 'LUZIA', '61983455785', NULL, 'Sim. Anticoncecional', 'Intolerância a lactose', 'Desistência', 37, 248, 270),
(281, NULL, 'S', '2019-01-20 22:02:18', 'D', 'N', 'N', NULL, 4, 'CLEIA BRAGA', '61992005632', NULL, 'Não', 'Não', 'Desistente', 37, 249, 271),
(282, 'Grupo Fuc', 'S', '2019-01-20 22:03:04', 'A', 'N', 'N', NULL, 7, 'ANTONIA', '61986053149', NULL, 'Não', 'Não', '', 37, 250, 272),
(283, NULL, 'N', '2019-01-20 22:11:46', 'D', 'N', 'N', NULL, 4, 'ANGéLICA', '6132537681', 'Sou Mariana Salles tenho 1,58 sou zoada por não chegar a 1,60. Jovem apaixonada por Maria, filha de um casal maravilhooosaaa irmã mais velha de 3 garotos maravilhosos. Coordenadora de um grupo de jovens cheio de amor e união. Em uma caminhada difícil porém com um namorado e amigos sempre cmg.', 'Não', 'Não', 'Desiatencia', 37, 251, 273),
(284, NULL, 'S', '2019-01-20 22:15:51', 'A', 'N', 'N', NULL, 4, 'SELMéLIA CAMPOS SANTOS ', '61991521943', NULL, NULL, NULL, NULL, 37, 252, 274),
(285, 'Grupo jovem ajuc', 'S', '2019-01-20 22:18:24', 'A', 'N', 'N', NULL, 2, 'FABIANA', '61999615844', NULL, NULL, 'Amendoim, castanha, nozes e amêndoas', '', 37, 253, 275),
(286, NULL, 'S', '2019-01-20 22:20:27', 'A', 'S', 'S', NULL, 3, 'LUCIANO', '6136244679', NULL, NULL, NULL, NULL, 37, 140, 276),
(287, NULL, 'N', '2019-01-20 22:21:42', 'A', 'S', 'N', NULL, 2, 'DUCARMO', '6130410144', NULL, 'Nao', 'Nao', '', 37, 254, 277),
(288, 'Renovação carismática católica', 'S', '2019-01-20 22:25:08', 'D', 'N', 'N', NULL, 6, 'LUIZ', '61991723442', 'Sou católico', 'Não', 'Não', 'Desiatencia', 37, 56, 259),
(289, 'GEJ Dom Bosco', 'S', '2019-01-20 23:00:39', 'A', 'S', 'S', NULL, 6, 'EDI MARCELINA DE JESUS', '61986521612', NULL, 'Beclosol, soro nasal e loratadina (tratamento da rinite)', 'Cogumelos', NULL, 37, 25, 278),
(290, NULL, 'N', '2019-01-20 23:31:06', 'A', 'N', 'N', NULL, 7, 'MAE', '61998459548', NULL, NULL, NULL, '', 37, 255, 279),
(291, NULL, 'S', '2019-01-20 23:51:16', 'D', 'N', 'N', NULL, 9, 'MãE ', '61996226916', 'Tenho alguns anos de caminhada, sou pregadora( mais não gosto de falar muito) \r\nMe chamam de bombom( pode chamar também)\r\nTenho 20 anos \r\nGosto de cantar\r\nAinda tenho que crescer muito espiritualmente', NULL, NULL, 'Desistência', 37, 256, 280),
(292, NULL, 'S', '2019-01-21 00:12:05', 'D', 'N', 'N', NULL, 7, 'MãE ', '61995138360', 'Bom sou bem tímida tenho bastante vergonha,gosto muito de sorri,um pouquinho difícil de fazer amizades.', NULL, 'Carne de porco(tudo que contém \r\nCarne de porco)', '', 37, 257, 281),
(293, NULL, 'S', '2019-01-21 00:24:51', 'A', 'S', 'N', NULL, 8, 'DAYANE MOREIRA  MãE ', '61995593633', 'Sou uma pessoa comunicativa, espontânea, extrovertida e compreensiva. As vezes impaciente.', 'Sim. Todas as noites as 21', 'Não', NULL, 37, 109, 112),
(294, 'Gej dom bosco', 'S', '2019-01-21 07:25:45', 'A', 'S', 'S', NULL, 4, 'EDILEUZA', '61992474253', NULL, 'Sim, Omeprazol.', 'Intolerância a lactose', NULL, 37, 55, 282),
(295, 'GEJ', 'S', '2019-01-21 09:48:15', 'A', 'S', 'S', NULL, 9, 'ELIENE LIMA ', '6134594937', NULL, NULL, NULL, NULL, 37, 72, 283),
(296, NULL, 'S', '2019-01-21 10:14:20', 'D', 'N', 'N', NULL, 3, 'ANNE MARY BARROS SOBRINHO', '61992506224', NULL, 'Não', 'Não', 'Não Veio', 37, 258, 284),
(297, 'Grupo de Jovens', 'N', '2019-01-21 10:39:54', 'A', 'N', 'N', NULL, 7, 'MARIA JOSé ', '61985180784', NULL, NULL, NULL, '', 37, 70, 72),
(298, 'Justo/eac', 'S', '2019-01-21 10:51:18', 'A', 'N', 'N', NULL, 4, 'MIRIAN ', '61982263156', 'Sou bem extrovertida, gosto de fazer novas amizades, as vezes tenho facilidade pra fazer isso as vezes não, quando vou participar de qualquer coisa me entrego completamente.', 'Não', 'Não', '', 37, 259, 285),
(299, 'Grupo jovem', 'S', '2019-01-21 11:01:27', 'A', 'S', 'S', NULL, 4, 'ROSA ', '6134599984', NULL, 'Não', 'Não', NULL, 37, 127, 286),
(300, NULL, 'S', '2019-01-21 11:14:08', 'D', 'N', 'N', NULL, 3, 'JOSE NEIDE ', '61994186718', NULL, NULL, NULL, 'Não Veio', 37, 260, 287),
(301, NULL, 'S', '2019-01-21 11:15:38', 'D', 'N', 'N', NULL, 9, 'FABIO VINíCIUS ', '61993996974', 'Eu estive no retiro Yeshua eu me senti tocado quando falaram desse retiro de carnaval.  Então quis fazer a inscrição', NULL, NULL, 'Não vai poder!', 37, 261, 288),
(302, NULL, 'N', '2019-01-21 11:48:00', 'D', 'N', 'N', NULL, 3, 'CLEBERSON', '61996812452', '', NULL, NULL, 'Não veio', 37, 262, 289),
(303, 'GEJ DOM BOSCO', 'S', '2019-01-21 11:56:00', 'A', 'S', 'S', NULL, 3, 'PAI', '61992197688', 'Sou do GEJ e sou feliz.', 'Não', 'Não', NULL, 37, 39, 15),
(304, 'GEJ Dom bosco', 'S', '2019-01-21 11:57:35', 'A', 'S', 'S', NULL, 5, 'ROSA', '6130826060', 'Lilian Bessa <lililasp@gmail.com>\r\nter, 30 de out de 2018 17:31\r\npara eu\r\n\r\nComo o trigo que morre e se entrega a terra\r\n\r\nQuero morrer por Ti Amado meu,\r\n\r\nDia após dia até a última gota', NULL, NULL, '', 37, 61, 290),
(305, 'Coroinhas', 'S', '2019-01-21 12:28:54', 'D', 'N', 'N', NULL, 6, 'MãE', '6130459380', NULL, NULL, NULL, 'Desistiu', 37, 263, 291),
(306, 'G.E.J. DOM BOSCO', 'S', '2019-01-21 13:16:55', 'A', 'S', 'S', NULL, 7, 'MARIA JOSé', '6133593245', 'Membro do GEJ, integrante da comissão do retiro de carnaval 2019.', 'Não', 'Não', NULL, 37, 16, 292),
(307, 'Pós-crisma', 'S', '2019-01-21 14:04:12', 'A', 'N', 'N', NULL, 3, 'JOELMA LUIZ DA MOTA MENDONçA ', '61984044255', NULL, NULL, NULL, '', 37, 264, 293),
(308, NULL, 'N', '2019-01-21 14:22:21', 'D', 'N', 'N', NULL, 4, 'ZE DO BIGODE', '61993003405', NULL, NULL, NULL, '', 37, 147, 248),
(309, 'Música', 'S', '2019-01-21 14:54:58', 'D', 'N', 'N', NULL, 8, 'MARIA IVAN MENDES NUNES ', '61993203570', NULL, NULL, 'Não como carne nenhuma, nem frango, nem peixe.', 'Desistência.', 37, 265, 294),
(310, NULL, 'S', '2019-01-21 15:03:10', 'A', 'S', 'S', NULL, 7, 'MARIZETE MãE ', '6130835505', NULL, NULL, NULL, NULL, 37, 236, 295),
(311, NULL, 'S', '2019-01-21 15:35:20', 'D', 'N', 'N', NULL, 8, 'EDNA DE OLIVEIRA ARANTES', '6133767432', NULL, NULL, NULL, 'Desistente', 37, 266, 296),
(312, NULL, 'N', '2019-01-21 17:55:49', 'D', 'N', 'N', NULL, 3, 'MãE ', '61985202790', NULL, 'Não', 'Não', '', 37, 267, 297),
(313, 'Gej Dom Bosco', 'S', '2019-01-21 18:39:26', 'A', 'S', 'S', NULL, 3, 'JOSé ARNALDO', '61993003405', NULL, 'Sim', NULL, NULL, 37, 37, 298),
(314, NULL, 'N', '2019-01-21 19:33:46', 'A', 'N', 'N', NULL, 7, 'SUELI ', '61984059117', 'Sou muito brincalhona , extrovertida mais bem seria quando tem que ser!', 'Não', 'Não', '', 37, 268, 299),
(315, NULL, 'S', '2019-01-22 00:09:40', 'A', 'S', 'S', NULL, 3, 'MARIZETE BISPO REIS ', '61999376262', NULL, 'Não', 'Não', NULL, 37, 123, 300),
(316, 'GEJ DOM BOSCO', 'S', '2019-01-22 22:06:04', 'A', 'S', 'S', NULL, 8, 'MãE', '61985776626', 'Eu gosto de açaí e tenho uma madrinha que tem o maior pé', 'Não', 'Quiabo', NULL, 37, 237, 301),
(317, NULL, 'S', '2019-01-23 14:20:00', 'A', 'S', 'N', NULL, 5, 'MARIA ADILINA', '61984946694', NULL, NULL, NULL, '', 37, 242, 302),
(319, NULL, 'S', '2019-01-24 20:55:23', 'A', 'N', 'N', NULL, 8, 'LIDIANE', '61992232118', 'Tímida legal amiga', 'Não', 'Não', NULL, 37, 134, 313),
(320, NULL, 'S', '2019-01-24 22:04:09', 'A', 'N', 'N', NULL, 4, 'MARIA', '6133593657', 'Meu nome é Rayssa, \r\nTenho 22 anos,\r\nSou professora de natação, \r\nSou comunicativa, gosto de fazer novas amizades, amo ir á missa e participar de eventos da igreja.', 'Não', 'Não', NULL, 37, 271, 314),
(321, NULL, 'S', '2019-01-24 23:33:03', 'A', 'N', 'N', NULL, 4, 'MARIA', '61998133042', 'Meu nome é Polyana, tenho 20 anos, curso Direito  e estou no 7º Semestre. Gosto de fazer novas amizades e estar próxima de Deus.', 'Não', 'Não', NULL, 37, 272, 315),
(322, 'Gej Dom Bosco', 'S', '2019-01-25 10:33:26', 'A', 'S', 'S', NULL, 3, 'DELCIA APARECIDA JOSé MACêDO', '61994193625', 'Sou católica apostólica romana e membro do GEJ Dom Bosco há quase 2 anos. Esse ano integro a comissão desse retiro de carnaval maravilhoso e espero ajudar no que for necessário para que o mesmo aconteça da melhor forma possível.', NULL, NULL, NULL, 37, 85, 87),
(323, 'Catequese', 'N', '2019-01-25 10:34:57', 'A', 'N', 'N', NULL, 3, 'SEBASTIANA', '61984327005', NULL, 'Não', 'Não', NULL, 37, 162, 316),
(324, 'Nossa senhora de Fátima', 'S', '2019-01-25 20:11:44', 'D', 'N', 'N', NULL, 8, 'MARIA DO CARMO', '6136253201', 'Gostou muito de participar de retiro de igreja , e primeiro retiro que vou fazer no tempo de carnaval', 'Não', 'Não', 'Não vai mais.', 37, 273, 317),
(325, NULL, 'N', '2019-01-25 20:18:26', 'D', 'N', 'N', NULL, 2, 'LUCILEIDE DO NASCIMENTO MIRANDA ', '6198225122', NULL, 'Não', 'Não', 'Desistiu', 37, 274, 318),
(326, 'GRUPO JOVEM, VICENTINO,CERIMONIARIO', 'S', '2019-01-25 22:14:47', 'A', 'N', 'N', NULL, 8, 'JOÃO VICTOR LUZIANO', '61996143499', 'Sou de Formosa, tenho 18 anos, participo da paróquia Santa luzia, onde eu fico a frente de duas pastorais coroinhas  e grupo jovem JP2.', 'Não', 'Não', NULL, 37, 275, 319),
(327, NULL, 'S', '2019-01-25 23:02:28', 'A', 'S', 'S', NULL, 7, 'RAISSA RODRIGUES', '61985067172', NULL, NULL, NULL, NULL, 37, 60, 61),
(328, NULL, 'S', '2019-01-26 08:34:06', 'A', 'S', 'S', NULL, 3, 'LEDA MãE', '61992724933', NULL, NULL, NULL, NULL, 37, 36, 320),
(329, 'Catequese', 'S', '2019-01-26 10:37:16', 'D', 'N', 'N', NULL, 2, 'MãE ', '61986486945', 'Tenho 20 anos , sou catequista desde dos 15 , canto na igreja , sou carismática , animada , bem comunicativa e extrovertida . Não tenho frescura com nada gosto de tudo e todo tipo de comida .', NULL, NULL, 'Desistência', 37, 276, 321),
(330, NULL, 'S', '2019-01-26 22:55:22', 'A', 'N', 'N', NULL, 8, 'DONA ELIETE', '6186315346', NULL, 'Não', 'Não', NULL, 37, 206, 209),
(331, 'Renovação Carismática Católica', 'N', '2019-01-27 18:09:20', 'A', 'S', 'N', NULL, 3, 'ADELIZA SARAIVA DOS SANTOS', '6133596039', NULL, 'Não', 'Não', NULL, 37, 277, 322),
(332, NULL, 'S', '2019-01-28 11:31:12', 'A', 'N', 'N', NULL, 6, 'LEANDRO', '61994174728', 'Sou uma pessoa muito calma e', 'Não', 'Nenhuma', NULL, 37, 278, 323),
(333, NULL, 'S', '2019-01-28 14:58:27', 'A', 'N', 'N', NULL, 8, 'PADRINHO', '6130826060', 'sou uma pessoa sonhadora, um cristão!', 'não', 'não como carne vermelha, não bebo refrigerante', NULL, 37, 6, 324),
(334, 'Gej Dom Bosco', 'S', '2019-01-28 15:41:42', 'A', 'S', 'S', NULL, 4, 'MARIA DE JESUS ', '61992240268', 'amo servir, nasci pra isso !', NULL, NULL, NULL, 37, 95, 325),
(335, 'GEJÃO', 'S', '2019-01-28 19:54:33', 'A', 'S', 'S', NULL, 5, 'SELMELIA CAMPOS SANTOS', '61991521943', 'Sou desse barco já, a gente vai é para o céu ! <3', NULL, NULL, NULL, 37, 117, 326),
(336, 'GEJÃO', 'S', '2019-01-28 21:44:27', 'A', 'S', 'S', NULL, 10, 'MARIA VILANIR', '61983232905', 'QUERO É SER SANTO. BORA TB ?', NULL, NULL, NULL, 37, 90, 327),
(337, NULL, 'S', '2019-01-29 08:22:22', 'A', 'S', 'S', NULL, 3, 'LUCIA NERI', '6133588725', NULL, NULL, NULL, NULL, 37, 31, 328),
(338, NULL, 'S', '2019-01-29 13:21:46', 'A', 'S', 'S', NULL, 4, 'IVANILDES ', '6134586671', 'Amo o GEJ ❣️', 'Não', 'Não', NULL, 37, 57, 58),
(339, NULL, 'S', '2019-01-29 13:23:33', 'A', 'S', 'S', NULL, 7, 'IVANILDES ', '6134586671', 'Eu amo o GEJ', 'Não', 'Não', NULL, 37, 59, 60),
(340, 'GEJ DOM BOSCO', 'S', '2019-01-29 22:11:05', 'A', 'S', 'S', NULL, 3, 'DENISE', '6134595330', '.', 'Não', 'Não', NULL, 37, 10, 329),
(341, 'GEJ Dom Bosco', 'S', '2019-01-31 11:56:24', 'A', 'S', 'S', NULL, 8, 'MãE', '61991774916', 'Sou tímido apesar de não parecer, sou um rapaz bem participativo no que for preciso e necessário.', NULL, 'Ovo.', NULL, 37, 189, 330),
(342, 'JEDI', 'S', '2019-01-31 15:11:46', 'A', 'N', 'N', NULL, 7, 'RITA ALEXANDRINO MIRANDA', '61985160924', 'Uma pessoa bem tranquila, amigável e bem disposto para tudo.', 'Alodipina, uma vez ao dia pela manha', NULL, NULL, 37, 279, 331),
(343, 'Justo, Cerimoniario Da Santissima Trindade', 'S', '2019-02-02 13:21:21', 'A', 'N', 'N', NULL, 7, 'LUDMILLA MARIA ', '61981773752', 'Sou uma pessoa Legal, comunicativa, brincalhona, estou sempre buscando melhorar, sou sempre feliz, to sempre sorrindo para todos e tudo', 'Nenhuma', 'Nenhuma', NULL, 37, 280, 332),
(344, NULL, 'N', '2019-02-04 14:13:35', 'A', 'N', 'N', NULL, 8, 'MARTA', '6133595819', NULL, NULL, 'frutos do mar', NULL, 37, 281, 333),
(345, NULL, 'N', '2019-02-06 10:53:36', 'A', 'N', 'N', NULL, 4, 'IBSEM GOIANO FREIRE', '6133578741', NULL, 'Não', 'Não', NULL, 37, 282, 334),
(346, NULL, 'S', '2019-02-06 16:33:07', 'A', 'S', 'S', NULL, 4, 'MARIA ', '61992240268', 'Extrovertida, alegre não tenho tempo ruim para nada', 'Não', 'Não', NULL, 37, 62, 335),
(347, 'Gej Dom Bosco', 'S', '2019-02-06 16:43:36', 'A', 'S', 'S', NULL, 5, 'WESLEY', '61985739058', NULL, NULL, NULL, NULL, 37, 142, 336),
(348, NULL, 'N', '2019-02-07 00:20:37', 'A', 'N', 'N', NULL, 2, 'ALBERTO LOURENçO DE LIMA NETO', '61999873009', 'Sou da Paróquia Maria de Nazaré em Samambaia Sul, participo do ministério de intercessão do grupo jovem Adonai e conheci o Gej Dom Bosco em uma missão realizada na cidade Ocidental no dia 21/07/2018. Estou ansiosa para poder participar do Santifique-se, pois ouvi falar muito bem do retiro e tenho certeza de que será um avivamento para minha alma que anda um tanto desanimada nos últimos dias...', NULL, NULL, NULL, 37, 283, 337),
(349, NULL, 'S', '2019-02-07 14:10:17', 'A', 'N', 'N', NULL, 4, 'MARIA ZILDA', '6133590830', 'Natália, tenho 18 anos, curso direito, gosto de fazer novas amizades sempre, e quero me aproximar de Deus cada vez mais.', 'Não', 'Não', NULL, 37, 284, 338),
(350, NULL, 'N', '2019-02-07 22:25:29', 'D', 'N', 'N', NULL, 8, 'EDIONE APARECIDA E SILVA COELHO', '61996446583', 'Vestibulanda de medicina, solteira,  participo da igreja católica há 4 anos, já participei de grupo jovem (fui coordenadora por um ano aproximadamente),  sou uma pessoa tranquila, comunicativa e que tenta absorver o máximo das experiências vividas.', 'Anticoncepcional (todos os dias as 16:00)\r\nAddera D3 (sexta feira após o almoço) \r\nUso de antialérgico em caso de crise alérgica (rinite ou dermatite de contato)', NULL, 'Desistente', 37, 285, 339),
(351, NULL, 'S', '2019-02-07 23:25:53', 'A', 'N', 'N', NULL, 6, 'CARLOS ROBERTO', '61996748164', NULL, NULL, NULL, NULL, 37, 286, 340),
(352, NULL, 'S', '2019-02-08 11:37:12', 'D', 'N', 'N', NULL, 5, 'GILCILENE', '61992101477', NULL, NULL, NULL, 'Desistência', 37, 287, 341),
(353, NULL, 'S', '2019-02-08 11:40:14', 'D', 'N', 'N', NULL, 2, 'CASA DA MINHA AVó ', '6135360250', 'Sou uma pessoa educada sou engraçada amo esta na presença do Senhor e quero conhecer um pouco mais sobre o retiro de vocês gosto de novas amizades.', 'Nenhuma', 'Nenhum', 'Não vai mais.', 37, 288, 342),
(354, 'Catequese', 'S', '2019-02-09 09:55:01', 'D', 'N', 'N', NULL, 6, 'PRISCILA', '61981284027', 'Extrovertida,simpática, super simples, amo ajudar o próximo...', 'Remédio controlado uma vez ao dia.', 'Nenhuma', 'Problemas de família!', 37, 289, 343),
(355, NULL, 'S', '2019-02-09 12:40:42', 'D', 'N', 'N', NULL, 5, 'ADEMAR OU SANDRA', '6133568751', NULL, 'Não.', 'Não.', 'Desistncia.', 37, 290, 344),
(356, 'Grupo jovem', 'N', '2019-02-09 16:06:05', 'A', 'N', 'N', NULL, 3, 'MãE ', '61996636754', 'Formada em enfermagem, católica, participando de grupo jovem JEDI.', 'Cloridrato de ciclobenzaprina, iaz', 'Não', NULL, 37, 291, 345),
(357, NULL, 'S', '2019-02-10 22:38:33', 'A', 'N', 'N', NULL, 7, 'ROSANEUSA', '61999282507', NULL, NULL, NULL, NULL, 37, 292, 346),
(358, 'Pastoral da Juventude', 'S', '2019-02-10 22:42:24', 'A', 'N', 'N', NULL, 3, 'LúCIA DUDA', '61986280131', 'Eu namoro, tenho 18 anos, minha cor favorita é amarelo e eu sou devota de Santa Terezinha do Menino Jesus e de São Rafael Arcanjo.', 'Não', 'Nenhuma', NULL, 37, 4, 4),
(359, NULL, 'S', '2019-02-11 12:50:39', 'D', 'N', 'N', NULL, 1, 'KêNIA', '61984474122', NULL, NULL, NULL, 'DESISTIU!', 37, 293, 347),
(360, NULL, 'N', '2019-02-11 19:10:11', 'D', 'N', 'N', NULL, 4, 'MãE ', '61981452800', NULL, NULL, NULL, 'MOTIVOS PESSOAIS.', 37, 294, 348),
(361, NULL, 'S', '2019-02-12 10:11:19', 'D', 'N', 'N', NULL, 2, 'MãE', '61981810890', 'Sou nem extrovertida, amo dançar, interagir e sorrir. Aproveita cada momento como se fosse os últimos.', 'Não', 'Nenhuma, como de tudo kkk', 'Sem condições para pagamento.', 37, 295, 349),
(362, NULL, 'N', '2019-02-13 09:05:17', 'D', 'N', 'N', NULL, 7, 'PAI ', '61998425042', NULL, NULL, NULL, 'Desistência', 37, 296, 350),
(363, NULL, 'S', '2019-02-13 10:47:11', 'A', 'N', 'N', NULL, 1, 'TERESA ', '61985285904', NULL, NULL, NULL, NULL, 37, 297, 351),
(364, 'Gej Dom Bosco', 'S', '2019-02-13 13:17:35', 'A', 'S', 'S', NULL, 10, 'ANTONIA SIMONE RAMOS LIMA MACIEL ', '6198575437', NULL, 'Puran T4 50 mg 30 minutos antes do café da manhã', 'Massa, trigo, chocolate', NULL, 37, 143, 257),
(365, NULL, 'S', '2019-02-13 19:07:47', 'D', 'N', 'N', NULL, 6, 'LúCIA ', '6191352908', 'Mãe do Isaac Sávio, com o desejo ardente de retomar a vida missionária.', NULL, NULL, 'Não veio', 37, 298, 352),
(366, 'Musica', 'S', '2019-02-13 19:22:30', 'A', 'N', 'N', NULL, 3, 'MãE ', '61999299714', NULL, NULL, NULL, NULL, 37, 107, 110),
(367, NULL, 'S', '2019-02-14 00:17:00', 'D', 'N', 'N', NULL, 3, 'RITA MARIA', '61982572351', NULL, NULL, NULL, 'Desistência', 37, 19, 19),
(368, 'JUVENTUDE MISSIONÁRIA SALESIANA', 'S', '2019-02-14 10:20:16', 'A', 'N', 'N', NULL, 8, 'IZANILDA ', '6135850167', 'Sou um jovem conservador que estuda direito e é um rapaz que segue as leis de Deus, inclusive aquelas que outras pessoas insistem em desrespeitá-las como fazer sexo antes do casamento. Este é o Marcelo Alves.', 'Nope!', 'Nope!', NULL, 37, 299, 353),
(369, 'Gej Dom Bosco', 'S', '2019-02-14 11:47:22', 'A', 'S', 'S', NULL, 3, 'MãE ', '61981214179', 'Tenho 17 anos e quero me aprofundar mais no amor de Deus.', 'Não', 'Não', NULL, 37, 14, 354),
(370, NULL, 'N', '2019-02-14 14:55:31', 'D', 'N', 'N', NULL, 4, 'MARIA SELMA MARTINS ', '61985997899', NULL, NULL, NULL, 'Não irá mais para o retiro devido o trabalho.', 37, 300, 355),
(371, NULL, 'N', '2019-02-14 15:11:51', 'A', 'N', 'N', NULL, 7, 'ILZA HELENA DA SILVA', '61981159435', NULL, NULL, NULL, NULL, 37, 301, 356),
(372, NULL, 'N', '2019-02-14 21:51:19', 'A', 'N', 'N', NULL, 8, 'ANTONIA SIMONE RAMOS LIMA MACIEL ', '61985785437', NULL, NULL, NULL, NULL, 37, 302, 357),
(373, NULL, 'N', '2019-02-14 22:05:08', 'A', 'N', 'N', NULL, 2, 'ANTONIA SIMONE RAMOS LIMA MACIEL ', '61985785437', NULL, 'Não', 'Lactose', NULL, 37, 303, 358),
(374, 'Gej', 'S', '2019-02-15 10:28:10', 'A', 'S', 'S', NULL, 8, 'MARIA CéLIA MIRANDA DOS SANTOS', '6133598257', NULL, NULL, NULL, NULL, 37, 34, 28),
(375, 'Coroinhas', 'S', '2019-02-15 23:13:05', 'D', 'N', 'N', NULL, 3, 'MARILEIS GUIMARãES ', '6134587850', 'Tenho um ano de caminhada que iniciou em um retiro que foi um divisor de águas para mim. Sinto como se só comecei a viver de fato após compreender o amor que Deus tem por mim e a cada dia o desejo de servi-lo com sinceridade e comprometimento, e também de persistir no caminho em busca da Santidade.', 'Não.', 'Não.', 'Vai para outro retiro', 37, 304, 359),
(376, NULL, 'S', '2019-02-16 10:38:53', 'A', 'N', 'N', NULL, 8, 'NATALICIO OLIVEIRA ALMEIDA', '61995175025', 'Fiz a crisma em 2015 e participei de um retiro que foi maravilhoso', 'Não', 'Não', NULL, 37, 305, 360),
(377, NULL, 'S', '2019-02-16 17:05:39', 'A', 'N', 'N', NULL, 3, 'IRANI FARIAS DA SILVA ', '61992415372', NULL, 'Remédios controlados', NULL, NULL, 37, 306, 361),
(378, NULL, 'N', '2019-02-17 14:51:44', 'A', 'S', 'S', NULL, 7, 'TIA', '6130835505', 'Venha descobrir.', 'Não.', 'Não.', NULL, 37, 181, 362),
(379, NULL, 'N', '2019-02-18 09:53:14', 'D', 'N', 'N', NULL, 7, 'MARCIA TENORIO BARBOSA FARIAS', '61984052490', NULL, NULL, 'MILHO', 'retirante não vai mais poder ir ao retiro, o mesmo terá que cuidar do filho !', 37, 307, 363),
(380, NULL, 'N', '2019-02-18 11:01:53', 'D', 'N', 'N', NULL, 2, 'MãE  SAMARA', '61986379774', 'sou extrovertida, sou participativa e tenho um gênio forte', NULL, NULL, 'Não comparecerá', 37, 308, 364),
(381, 'Grupo jovem J.U.S.T.O', 'S', '2019-02-18 17:55:38', 'A', 'N', 'S', NULL, 9, 'TIO FOFãO', '61986444870', 'Bom tenho 38 anos , me chamam de tia lu ou tia fofuxa , sou uma pessoa que busca incessantemente me preencher do amor de Deus', 'Não', 'Não', NULL, 37, 309, 365),
(382, NULL, 'S', '2019-02-18 18:12:25', 'A', 'N', 'N', NULL, 7, 'AURI PAIVA', '61999388013', 'Uma pessoa disposta a vontade do Senhor.', 'Não.', 'Não.', NULL, 37, 310, 366),
(383, NULL, 'S', '2019-02-18 18:16:25', 'A', 'N', 'S', NULL, 10, 'TIA FOFUXA', '61984248986', NULL, 'Remédios para enxaqueca', 'Peixe', NULL, 37, 311, 367),
(384, NULL, 'N', '2019-02-18 20:21:52', 'A', 'N', 'N', NULL, 9, 'PAULO ROGERIO ', '61981623646', NULL, NULL, NULL, NULL, 37, 312, 368),
(385, NULL, 'S', '2019-02-18 20:22:49', 'A', 'N', 'N', NULL, 9, 'IODETE', '6133723160', 'Meu nome é Eduardo tenho 17 anos gosto de fazer amizades,sou tímido etc... Esses dias sentir que devo me entregar no meu máximo aos deveres da igreja todos os retiros que eu poder fazer e não me comprometer com os meus outros compromissos eu irei fazer e esse foi um dos motivos para q eu faça o santifique-se, é eu acho que isso não me resume bem mais é um pouco sobre mim', 'Não', 'Nem uma', NULL, 37, 313, 369),
(386, 'J.U.S.T.O/Guardiã', 'S', '2019-02-18 22:38:20', 'A', 'N', 'N', NULL, 7, 'ANA LúCIA', '61984248986', NULL, NULL, NULL, NULL, 37, 314, 370),
(387, 'Vicentinos jovens', 'S', '2019-02-18 22:59:10', 'A', 'N', 'N', NULL, 6, 'MãE GILMARA CARDOSO CAMPOS ', '61984087583', NULL, NULL, NULL, NULL, 37, 315, 371),
(388, NULL, 'S', '2019-02-19 07:25:58', 'A', 'N', 'N', NULL, 2, 'LILIANE', '6133710726', 'Sou ruiva ,pequena , extrovertida', 'Não', 'Não', NULL, 37, 316, 372),
(389, NULL, 'N', '2019-02-19 17:30:55', 'D', 'N', 'N', NULL, 6, 'YARA', '61981551338', 'Gosto de fazer amizades, sou tranquila de lidar me dou bem com as pessoas ao redor', 'Não', 'Não', 'Não veio', 37, 317, 373),
(390, NULL, 'N', '2019-02-19 19:06:40', 'A', 'N', 'N', NULL, 6, 'CAMILA', '61991434270', 'Eu quero sair mudade desese encontro eu sou uma pessoa boa quero me transforma', 'Não tenho nenhum uso de médicacao', 'Nenhuma restrição alimentar', NULL, 37, 318, 374),
(391, 'Grupo Jovem Arcanjos', 'S', '2019-02-20 09:50:10', 'A', 'N', 'N', NULL, 3, 'JOSELMA DE CACIA DA SILVA PEREIRA', '61982830710', '\"Sou apaixonada em eventos da igreja, principalmente pelo fato de estar perto de Deus e Nossa Senhora!\"', NULL, NULL, NULL, 37, 169, 172),
(392, NULL, 'N', '2019-02-20 12:25:10', 'A', 'N', 'N', NULL, 8, 'IEURI MELANIA', '61985182318', 'Pessoa que sempre foi cristão, que deseja participar de um retiro para conhecer novas pessoas, e me aproximar do que é sagrado, estudante de filosofia da UnB, estou tendo contato com vários pensadores e como é a epistemologia do mundo, e a resposta sempre teve na igreja para mim, assim quero entrar na igreja católica, e estou conhecendo seus meios, através de missas e retiros e estudos.', 'nao', 'nao', NULL, 37, 319, 375),
(393, 'catequese', 'N', '2019-02-20 12:28:54', 'A', 'N', 'N', NULL, 2, 'IRAILDES GOMES', '6130835519', NULL, NULL, NULL, NULL, 37, 320, 376),
(394, 'Grupo Jovem Arcanjos', 'S', '2019-02-20 14:24:35', 'A', 'N', 'N', NULL, 7, 'JOSELMA DE CACIA DA SILVA PEREIRA', '61982830710', '\"Sou apaixonado em retiros, principalmente pelo fato de estar perto de Jesus e Nossa Senhora!\"', NULL, NULL, NULL, 37, 170, 173),
(395, NULL, 'N', '2019-02-20 14:31:58', 'A', 'N', 'N', NULL, 8, 'MãE', '61984256270', 'Meu nome e Jonas Faso parte do ministério de música rainha da paz .Eu estou indo a esse retiro para ver se me preencho mais do espírito santo', 'Não', 'Não', NULL, 37, 187, 190),
(396, NULL, 'N', '2019-02-20 17:06:14', 'A', 'N', 'N', NULL, 8, 'ANA LUCIA', '61984248986', NULL, NULL, NULL, NULL, 37, 321, 377),
(397, NULL, 'S', '2019-02-20 18:24:10', 'A', 'N', 'N', NULL, 4, 'BRUNA ', '61991091755', 'Sou uma pessoa calma gosto muito de sorrir e de fazer novas amizades', 'Não', 'Não', NULL, 37, 82, 84),
(398, 'Ministério de Coroinhas e Acólitos / PASCOM', 'N', '2019-02-21 18:20:46', 'A', 'N', 'N', NULL, 6, 'ABADIA ALVINO', '61985254513', NULL, 'Não.', 'Não.', NULL, 37, 322, 378),
(399, NULL, 'S', '2019-02-21 19:48:08', 'A', 'N', 'N', NULL, 7, 'MARIA MEDEIROS DA COSTA', '61999701675', NULL, NULL, NULL, NULL, 37, 113, 116),
(400, 'música', 'S', '2019-02-21 22:28:22', 'A', 'N', 'N', NULL, 8, 'NILSON', '6133843340', NULL, NULL, NULL, NULL, 37, 116, 119),
(401, 'Musica', 'S', '2019-02-21 22:44:05', 'A', 'N', 'N', NULL, 4, 'ROSE MARY PIMENTEL', '61991999329', NULL, NULL, NULL, NULL, 37, 114, 117),
(402, 'Grupo Justo', 'S', '2019-02-22 19:17:47', 'A', 'N', 'N', NULL, 2, 'JANDIRA DA MOTA CORREIA', '61984191021', 'Sou tímida e ao mesmo tempo engraçada, não sou de conversar muito.\r\nAcho que é isso', 'Dorflex, Paracetamol e Ibuprofeno.', 'Não posso comer e nem tomar nada que tenha leite, não como bacon e nem salsicha e sou alérgica a chocolate.', NULL, 37, 323, 379),
(403, 'Santíssima Trindade', 'N', '2019-02-24 14:33:49', 'D', 'N', 'N', NULL, 4, 'MãE THAIS ', '61991334352', 'Tenho 18 aninhos, e a um tempo atrás me mudei pra longe de minha igreja depois disso ficou difícil eu conseguir ir às missas, sempre gostei muito da minha igreja e por mais que tivessem outras perto da minha nova casa eu não gostava tanto como gostava da santíssima então nisso me afastei, sinto muita falta, vou voltar a frequenta-la e procurei este retiro como forma de me reencontrar com Deus.', 'Não', 'Não', 'Desistencia', 37, 324, 380),
(404, NULL, 'S', '2019-02-24 15:59:12', 'A', 'N', 'N', NULL, 7, 'MãE', '55619844676', NULL, NULL, NULL, NULL, 37, 188, 191),
(405, 'EAC', 'S', '2019-02-24 21:16:27', 'A', 'N', 'N', NULL, 8, 'MARIA JOSE', '6133710980', 'Sou muito estrovetido, brinco muito,um pouco sério,e um pouco nervoso com algumas coisas.', NULL, NULL, NULL, 37, 325, 381),
(406, NULL, 'N', '2019-02-24 22:15:58', 'A', 'N', 'N', NULL, 7, 'UALISON', '61991806361', NULL, NULL, NULL, NULL, 37, 326, 382),
(407, 'Liturgia e Grupo Jovem', 'S', '2019-02-24 22:32:12', 'A', 'N', 'N', NULL, 6, 'ELIZETE RODRIGUES', '61984179640', NULL, NULL, NULL, NULL, 37, 327, 383),
(408, 'Pastoral da música', 'S', '2019-02-25 08:05:58', 'A', 'N', 'N', NULL, 7, 'NEUZA ', '61996912605', NULL, 'Não', 'Não', NULL, 37, 115, 118),
(409, NULL, 'S', '2019-02-25 09:11:13', 'A', 'N', 'N', NULL, 4, 'ELIAR', '61999626703', NULL, 'Tegretol CR 200mg tomo 2 comprimidos de noite e 1 comprimido de manhã', NULL, NULL, 37, 183, 186),
(410, 'Acólitos e Cerimoniários da Paróquia São José Operário', 'N', '2019-02-25 11:25:13', 'A', 'N', 'N', NULL, 5, 'SôNIA OLIVEIRA DE MORAES', '61986175756', 'Tenho algum tempo de caminhada na Igreja, mas procuro me aprofundar mais na espiritualidade. Gosto de estudar sobre a Fé católica e sobre os santos.\r\nFaço cursinho, mas ainda não tenho certeza sobre o curso superior que quero ingressar.\r\nMinha família gosta de sempre estar junto pois somos meio apegados, e é bom pois crescemos juntos na Fé.\r\nGosto de ler e estar junto dos amigos.', 'Não, mas tenho Asma Crônica.', 'Não', NULL, 37, 328, 384),
(411, 'Saúde etc', 'S', '2019-02-25 12:10:57', 'A', 'N', 'N', NULL, 4, 'MATHEUS', '61981979118', 'Sou missionária da Divina Misericórdia portadora de dor crônica, Deus é mais em minha vida pra servir os outros. Uso bengala pra um pouco de apoio mas não preciso de ajuda, Deus é mais comigo', 'Sim mas vou levar na bolsa e é tomado com água', 'Não como nenhuma carne animal só a clara de ovo podem levar ovo pra lá pra fazerem pra mim no almoço?  Só como a clara, a gema não.', NULL, 37, 329, 385),
(412, NULL, 'S', '2019-02-25 13:05:26', 'A', 'N', 'N', NULL, 9, 'TERESINHA', '61993723025', 'sou o vitor', 'nao', 'nao', NULL, 37, 330, 386),
(413, NULL, 'N', '2019-02-25 13:40:12', 'A', 'N', 'N', NULL, 1, 'ONELE DOMINGOS DA GLóRIA ', '6199785546', NULL, NULL, NULL, NULL, 37, 331, 387),
(414, 'Músicos', 'S', '2019-02-25 14:19:27', 'A', 'N', 'N', NULL, 7, 'MãE', '61996761700', NULL, NULL, NULL, NULL, 37, 332, 388),
(415, 'Música e cerimoniário', 'S', '2019-02-25 18:25:24', 'A', 'N', 'N', NULL, 7, 'ISABEL MARIA', '61983761058', NULL, NULL, NULL, NULL, 37, 333, 389),
(416, NULL, 'S', '2019-02-25 20:16:42', 'A', 'N', 'N', NULL, 7, 'MãE ', '6134599830', NULL, 'Não', 'Não', NULL, 37, 334, 390),
(417, NULL, 'S', '2019-02-25 20:28:47', 'A', 'N', 'N', NULL, 2, 'MARIA LUCIA ', '6130246814', 'Meu nome é isabela, tenho 22 anos sou católica, não frequento nenhum tipo de grupo jovem, mais fui tocada para participar desse retiro.', 'Nenhum', 'Nenhuma', NULL, 37, 335, 391),
(418, NULL, 'N', '2019-02-26 00:35:48', 'D', 'N', 'N', NULL, 3, 'LILIAN ', '61981040036', NULL, 'N', 'N', 'VAI PARA OUTRO RETIRO.', 37, 336, 392),
(419, NULL, 'N', '2019-02-26 19:38:07', 'A', 'N', 'N', NULL, 7, 'MãE ', '61999299714', 'Sou muito tranquilo,comunicativo e solidário.', NULL, NULL, NULL, 37, 337, 393),
(420, NULL, 'N', '2019-02-27 09:55:06', 'A', 'N', 'N', NULL, 4, 'LETíCIA BESSA', '61991058681', NULL, NULL, NULL, NULL, 37, 218, 394),
(421, NULL, 'N', '2019-02-27 09:59:07', 'A', 'N', 'N', NULL, 3, 'MARIA LOUZENICE CARVALHO DA SILVA ', '6130131416', NULL, NULL, NULL, NULL, 37, 135, 395),
(422, NULL, 'N', '2019-02-27 10:03:11', 'A', 'N', 'N', NULL, 3, 'MARIA LOUZENICE CARVALHO DA SILVA ', '6130131416', NULL, NULL, NULL, NULL, 37, 173, 396),
(423, NULL, 'S', '2019-02-28 11:15:03', 'A', 'N', 'N', NULL, 8, 'CLODOALDO PAI', '61992859045', NULL, NULL, NULL, NULL, 37, 166, 169),
(424, NULL, 'S', '2019-02-28 11:19:51', 'A', 'N', 'N', NULL, 1, 'JOãO VIANER MAIA PAI', '61982504169', NULL, 'Não.', 'Não.', NULL, 37, 338, 397),
(425, 'Acólitos', 'N', '2019-02-28 11:40:52', 'A', 'N', 'N', NULL, 7, 'MARIA ÂNGELA RIBEIRO DE LIMA ', '6130328502', ':)', 'Não', 'Não', NULL, 37, 339, 398),
(426, 'Acólitos', 'N', '2019-02-28 11:47:39', 'A', 'N', 'N', NULL, 7, 'MARIA ÂNGELA RIBEIRO DE LIMA', '6130328502', ':)', 'Não', 'Não', NULL, 37, 340, 399),
(427, NULL, 'N', '2019-02-28 16:15:24', 'A', 'N', 'N', NULL, 8, 'IRMãS DA CARIDADE', '6133593104', NULL, NULL, NULL, NULL, 37, 341, 400),
(428, 'Um serviço a igreja (Escola de Evangelização Santo André)', 'S', '2019-02-28 19:58:41', 'A', 'N', 'N', NULL, 4, 'VALéRIA MãE', '61996515557', NULL, 'Não', 'Não', NULL, 37, 342, 401),
(429, NULL, 'N', '2019-02-28 21:02:17', 'A', 'N', 'N', NULL, 7, 'NATALICIO OLIVEIRA ALMEIDA', '61991271502', 'E um lugar que eu sempre quis ter conhecido', NULL, NULL, NULL, 37, 343, 402),
(430, NULL, 'S', '2019-03-01 08:05:30', 'A', 'N', 'N', NULL, 4, 'ROSALITA NUNES MÃE ', '61985338446', NULL, 'Não.', 'Não.', NULL, 37, 344, 403),
(431, 'Grupo jovem', 'S', '2019-03-01 08:29:09', 'A', 'N', 'N', NULL, 7, 'MARIA ', '61984858518', NULL, NULL, NULL, NULL, 37, 345, 404),
(432, 'Catequese', 'S', '2019-03-01 10:07:20', 'A', 'N', 'N', NULL, 2, 'ÂNGELA DA COSTA SILVA', '61983036086', 'Meu nome é Steffany, tenho 21 anos, sou catequista da Paróquia São José- Taguatinga Norte, Já participei de alguns retiros, mas de carnaval vai ser  o primeiro.. Espero ter uma experiência maravilhosa e ter dias abençoados!', NULL, 'Não posso tomar leite, nem comer queijo.. (Gastrite)', NULL, 37, 346, 405),
(433, NULL, 'S', '2019-03-01 14:22:19', 'A', 'N', 'N', NULL, 8, 'ELZA MOREIRA DE SOUZA', '61986397701', 'Gosto de jogos e música. :)', 'Não.', 'Sem restrição.', NULL, 37, 139, 142),
(434, NULL, 'S', '2019-03-01 14:26:51', 'A', 'N', 'N', NULL, 2, 'LOURDES BARBOSA RAFACHO MOURA', '61984349435', NULL, NULL, 'Não como carne, só ovo.', NULL, 37, 347, 406),
(435, NULL, 'N', '2019-03-01 14:45:59', 'A', 'N', 'N', NULL, 8, 'GERALDO RABELO SUCUPIRA', '61985560803', NULL, NULL, NULL, NULL, 37, 348, 407),
(436, NULL, NULL, NULL, 'D', 'N', 'N', NULL, NULL, '', '', NULL, NULL, NULL, NULL, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_membro`
--

CREATE TABLE `tb_membro` (
  `co_membro` int(11) NOT NULL,
  `st_estuda` varchar(1) DEFAULT NULL,
  `st_trabalha` varchar(1) DEFAULT NULL,
  `ds_conhecimento` text,
  `st_status` varchar(1) DEFAULT NULL,
  `st_batizado` varchar(1) DEFAULT NULL,
  `st_eucaristia` varchar(1) DEFAULT NULL,
  `st_crisma` varchar(1) DEFAULT NULL,
  `co_pessoa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_modulo`
--

CREATE TABLE `tb_modulo` (
  `co_modulo` int(11) NOT NULL,
  `no_modulo` varchar(50) DEFAULT NULL,
  `dt_cadastro` datetime DEFAULT NULL,
  `co_projeto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `tb_modulo`
--

INSERT INTO `tb_modulo` (`co_modulo`, `no_modulo`, `dt_cadastro`, `co_projeto`) VALUES
(1, 'Sistema', '2019-03-27 11:15:00', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_pacote`
--

CREATE TABLE `tb_pacote` (
  `co_pacote` int(11) NOT NULL,
  `no_pacote` varchar(50) DEFAULT NULL,
  `ds_descricao` text,
  `dt_cadastro` datetime DEFAULT NULL,
  `dt_lancamento` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_pagamento`
--

CREATE TABLE `tb_pagamento` (
  `co_pagamento` int(11) NOT NULL,
  `nu_total` decimal(8,2) DEFAULT NULL,
  `nu_valor_pago` decimal(8,2) DEFAULT NULL,
  `nu_valor_desconto` decimal(8,2) DEFAULT NULL,
  `nu_parcelas` int(2) DEFAULT NULL,
  `tp_situacao` varchar(1) DEFAULT 'N' COMMENT 'N - Não iniciado / I - Iniciado / C - Concluido',
  `ds_observacao` text,
  `co_inscricao` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `tb_pagamento`
--

INSERT INTO `tb_pagamento` (`co_pagamento`, `nu_total`, `nu_valor_pago`, `nu_valor_desconto`, `nu_parcelas`, `tp_situacao`, `ds_observacao`, `co_inscricao`) VALUES
(1, '160.00', '160.00', '0.00', 2, 'C', NULL, 1),
(2, '150.00', NULL, '0.00', 1, 'N', NULL, 2),
(3, '150.00', '60.00', '0.00', 2, 'I', NULL, 3),
(4, '150.00', '150.00', '0.00', 1, 'C', NULL, 4),
(5, '150.00', '150.00', '0.00', 1, 'C', NULL, 5),
(6, '150.00', '150.00', '0.00', 1, 'C', NULL, 6),
(7, '150.00', '150.00', '0.00', 1, 'C', NULL, 7),
(8, '150.00', '150.00', '0.00', 2, 'C', NULL, 8),
(9, '150.00', '80.00', '0.00', 2, 'I', NULL, 9),
(10, '150.00', NULL, '0.00', 1, 'N', NULL, 10),
(11, '150.00', '150.00', '0.00', 1, 'C', NULL, 12),
(12, '150.00', '150.00', '0.00', 2, 'C', NULL, 13),
(14, '150.00', '150.00', '0.00', 1, 'C', NULL, 14),
(15, '150.00', '150.00', '0.00', 1, 'C', NULL, 15),
(16, '160.00', '160.00', '0.00', 1, 'C', NULL, 16),
(17, '150.00', NULL, '0.00', 1, 'N', NULL, 17),
(18, '150.00', '150.00', '0.00', 1, 'C', NULL, 18),
(19, '150.00', NULL, '0.00', 1, 'N', NULL, 23),
(20, '150.00', NULL, '0.00', 1, 'N', NULL, 19),
(21, '150.00', NULL, '0.00', 1, 'N', NULL, 20),
(22, '150.00', '150.00', '0.00', 1, 'C', NULL, 21),
(23, '150.00', '100.00', '0.00', 2, 'I', NULL, 22),
(24, '150.00', '150.00', '0.00', 2, 'C', NULL, 25),
(25, '150.00', '150.00', '0.00', 1, 'C', NULL, 24),
(26, '160.00', NULL, '0.00', 1, 'N', NULL, 26),
(27, '150.00', '150.00', '0.00', 2, 'C', NULL, 27),
(28, '150.00', NULL, '0.00', 1, 'N', NULL, 28),
(29, '150.00', '150.00', '0.00', 2, 'C', NULL, 29),
(30, '150.00', NULL, '0.00', 1, 'N', NULL, 30),
(31, '150.00', NULL, '0.00', 1, 'N', NULL, 31),
(32, '150.00', '150.00', '0.00', 2, 'C', NULL, 32),
(34, '150.00', '150.00', '0.00', 1, 'C', NULL, 33),
(35, '150.00', '150.00', '0.00', 1, 'C', NULL, 34),
(37, '150.00', '150.00', '0.00', 1, 'C', NULL, 35),
(42, '160.00', '150.00', '0.00', 1, 'C', NULL, 36),
(43, '150.00', NULL, '0.00', 1, 'N', NULL, 37),
(44, '150.00', NULL, '0.00', 1, 'N', NULL, 38),
(45, '150.00', '150.00', '0.00', 2, 'C', NULL, 39),
(46, '150.00', '150.00', '0.00', 1, 'C', NULL, 40),
(47, '150.00', NULL, '0.00', 1, 'N', NULL, 41),
(48, '160.00', '150.00', '0.00', 1, 'C', NULL, 42),
(49, '160.00', NULL, '0.00', 1, 'N', NULL, 43),
(50, '150.00', '150.00', '0.00', 1, 'C', NULL, 44),
(51, '150.00', '150.00', '0.00', 2, 'C', NULL, 45),
(52, '150.00', '150.00', '0.00', 1, 'C', NULL, 46),
(53, '0.00', '0.00', '0.00', 1, 'C', NULL, 47),
(54, '150.00', '160.00', '0.00', 1, 'C', NULL, 48),
(55, '150.00', '150.00', '0.00', 1, 'C', NULL, 49),
(56, '150.00', '50.00', '0.00', 2, 'I', NULL, 50),
(57, '150.00', NULL, '0.00', 1, 'N', NULL, 51),
(58, '150.00', NULL, '0.00', 1, 'N', NULL, 52),
(59, '160.00', NULL, '0.00', 1, 'N', NULL, 53),
(60, '150.00', NULL, '0.00', 1, 'N', NULL, 54),
(61, '160.00', NULL, '0.00', 1, 'N', NULL, 56),
(62, '150.00', NULL, '0.00', 1, 'N', NULL, 57),
(63, '150.00', NULL, '0.00', 1, 'N', NULL, 55),
(64, '150.00', NULL, '0.00', 1, 'N', NULL, 58),
(65, '150.00', '150.00', '0.00', 1, 'C', NULL, 59),
(66, '150.00', NULL, '0.00', 1, 'N', NULL, 60),
(67, '150.00', '150.00', '0.00', 1, 'C', NULL, 61),
(68, '160.00', '160.00', '0.00', 1, 'C', NULL, 62),
(69, '160.00', '160.00', '0.00', 1, 'C', NULL, 63),
(70, '160.00', '160.00', '0.00', 1, 'C', NULL, 64),
(71, '150.00', NULL, '0.00', 1, 'N', NULL, 65),
(72, '150.00', NULL, '0.00', 1, 'N', NULL, 66),
(73, '150.00', NULL, '0.00', 1, 'N', NULL, 67),
(74, '150.00', '150.00', '0.00', 1, 'C', NULL, 68),
(75, '160.00', '150.00', '0.00', 1, 'C', NULL, 69),
(76, '150.00', NULL, '0.00', 1, 'N', NULL, 70),
(77, '150.00', '150.00', '0.00', 1, 'C', NULL, 71),
(78, '150.00', NULL, '0.00', 1, 'N', NULL, 72),
(79, '150.00', NULL, '0.00', 1, 'N', NULL, 73),
(80, '150.00', '150.00', '0.00', 1, 'C', NULL, 74),
(81, '150.00', '150.00', '0.00', 1, 'C', NULL, 75),
(82, '0.00', '0.00', '0.00', 1, 'C', NULL, 76),
(83, '150.00', NULL, '0.00', 1, 'N', NULL, 77),
(84, '160.00', '160.00', '0.00', 1, 'C', NULL, 78),
(85, '150.00', NULL, '0.00', 1, 'N', NULL, 79),
(87, '150.00', NULL, '0.00', 2, 'N', NULL, 81),
(88, '150.00', NULL, '0.00', 1, 'N', NULL, 82),
(89, '150.00', '150.00', '0.00', 1, 'C', NULL, 83),
(90, '160.00', '160.00', '0.00', 1, 'C', NULL, 84),
(91, '160.00', '150.00', '0.00', 1, 'C', NULL, 85),
(92, '160.00', '160.00', '0.00', 1, 'C', NULL, 86),
(93, '160.00', '160.00', '0.00', 1, 'C', NULL, 87),
(94, '150.00', '150.00', '0.00', 1, 'C', NULL, 88),
(95, '0.00', '0.00', '0.00', 1, 'C', NULL, 89),
(96, '160.00', '160.00', '0.00', 1, 'C', NULL, 90),
(97, '160.00', '150.00', '0.00', 1, 'C', NULL, 91),
(98, '150.00', '150.00', '0.00', 3, 'C', NULL, 92),
(99, '160.00', NULL, '0.00', 1, 'N', NULL, 93),
(100, '150.00', NULL, '0.00', 1, 'N', NULL, 94),
(101, '160.00', NULL, '0.00', 1, 'N', NULL, 95),
(102, '150.00', '150.00', '0.00', 1, 'C', NULL, 97),
(103, '150.00', '150.00', '0.00', 1, 'C', NULL, 96),
(104, '150.00', '150.00', '0.00', 1, 'C', NULL, 98),
(105, '150.00', '150.00', '0.00', 1, 'C', NULL, 99),
(106, '160.00', '160.00', '0.00', 1, 'C', NULL, 100),
(107, '160.00', '160.00', '0.00', 1, 'C', NULL, 101),
(108, '150.00', '160.00', '0.00', 1, 'C', NULL, 102),
(109, '160.00', '150.00', '0.00', 1, 'C', NULL, 103),
(110, '160.00', NULL, '0.00', 1, 'N', NULL, 104),
(111, '150.00', '160.00', '0.00', 1, 'C', NULL, 105),
(112, '150.00', '75.00', '0.00', 2, 'I', NULL, 106),
(113, '150.00', '150.00', '0.00', 1, 'C', NULL, 107),
(114, '150.00', NULL, '0.00', 1, 'N', NULL, 108),
(115, '160.00', '160.00', '0.00', 1, 'C', NULL, 109),
(116, '150.00', '150.00', '0.00', 1, 'C', NULL, 110),
(117, '150.00', '150.00', '0.00', 1, 'C', NULL, 111),
(118, '150.00', '150.00', '0.00', 2, 'C', NULL, 112),
(119, '150.00', '150.00', '0.00', 1, 'C', NULL, 113),
(120, '160.00', '160.00', '0.00', 1, 'C', NULL, 114),
(121, '0.00', '0.00', '0.00', 1, 'C', NULL, 115),
(122, '150.00', '150.00', '0.00', 2, 'C', NULL, 116),
(123, '150.00', '150.00', '0.00', 1, 'C', NULL, 117),
(124, '150.00', '150.00', '0.00', 1, 'C', NULL, 118),
(125, '160.00', NULL, '0.00', 1, 'N', NULL, 119),
(126, '160.00', '160.00', '0.00', 1, 'C', NULL, 121),
(127, '150.00', '150.00', '0.00', 1, 'C', NULL, 122),
(128, '150.00', NULL, '0.00', 1, 'N', NULL, 120),
(129, '150.00', '150.00', '0.00', 1, 'C', NULL, 123),
(131, '150.00', NULL, '0.00', 1, 'N', NULL, 124),
(132, '160.00', '160.00', '0.00', 1, 'C', NULL, 125),
(133, '160.00', '160.00', '0.00', 1, 'C', NULL, 126),
(134, '150.00', NULL, '0.00', 1, 'N', NULL, 127),
(135, '150.00', '150.00', '0.00', 1, 'C', NULL, 128),
(136, '160.00', '160.00', '0.00', 1, 'C', NULL, 129),
(137, '160.00', '160.00', '0.00', 1, 'C', NULL, 130),
(140, '150.00', '80.00', '0.00', 1, 'I', NULL, 131),
(141, '160.00', '160.00', '0.00', 1, 'C', NULL, 133),
(142, '160.00', '160.00', '0.00', 1, 'C', NULL, 134),
(143, '150.00', '150.00', '0.00', 1, 'C', NULL, 135),
(144, '150.00', NULL, '0.00', 1, 'N', NULL, 136),
(145, '150.00', NULL, '0.00', 1, 'N', NULL, 137),
(146, '150.00', '80.00', '0.00', 1, 'I', NULL, 132),
(147, '160.00', '160.00', '0.00', 1, 'C', NULL, 138),
(148, '150.00', NULL, '0.00', 1, 'N', NULL, 139),
(149, '150.00', '150.00', '0.00', 1, 'C', NULL, 140),
(150, '150.00', '150.00', '0.00', 1, 'C', NULL, 141),
(151, '150.00', '150.00', '0.00', 1, 'C', NULL, 142),
(152, '160.00', '160.00', '0.00', 1, 'C', NULL, 144),
(153, '160.00', '160.00', '0.00', 1, 'C', NULL, 143),
(154, '130.00', '130.00', '0.00', 1, 'C', NULL, 145),
(155, '160.00', '160.00', '0.00', 1, 'C', NULL, 146),
(156, '150.00', '150.00', '0.00', 1, 'C', NULL, 147),
(157, '150.00', '150.00', '0.00', 1, 'C', NULL, 148),
(158, '150.00', '150.00', '0.00', 1, 'C', NULL, 149),
(159, '150.00', '150.00', '0.00', 1, 'C', NULL, 150),
(160, '150.00', '150.00', '0.00', 1, 'C', NULL, 152),
(161, '150.00', '150.00', '0.00', 1, 'C', NULL, 153),
(162, '150.00', NULL, '0.00', 1, 'N', NULL, 151),
(163, '150.00', '150.00', '0.00', 1, 'C', NULL, 154),
(164, '150.00', NULL, '0.00', 1, 'N', NULL, 155),
(165, '160.00', '160.00', '0.00', 1, 'C', NULL, 156),
(166, '130.00', '130.00', '0.00', 1, 'C', NULL, 157),
(167, '150.00', '150.00', '0.00', 1, 'C', NULL, 158),
(168, '150.00', '150.00', '0.00', 1, 'C', NULL, 159),
(169, '150.00', '150.00', '0.00', 1, 'C', NULL, 160),
(170, '160.00', '150.00', '0.00', 1, 'C', NULL, 161),
(171, '150.00', '150.00', '0.00', 1, 'C', NULL, 162),
(172, '0.00', '0.00', '0.00', 1, 'C', NULL, 163),
(173, '150.00', NULL, '0.00', 1, 'N', NULL, 164),
(174, '150.00', NULL, '0.00', 1, 'N', NULL, 165),
(175, '160.00', '150.00', '0.00', 1, 'C', NULL, 166),
(176, '150.00', '150.00', '0.00', 1, 'C', NULL, 167),
(177, '160.00', '160.00', '0.00', 1, 'C', NULL, 168),
(178, '150.00', '150.00', '0.00', 1, 'C', NULL, 169),
(179, '150.00', '160.00', '0.00', 1, 'C', NULL, 170),
(180, '150.00', '160.00', '0.00', 1, 'C', NULL, 171),
(181, '160.00', '160.00', '0.00', 1, 'C', NULL, 172),
(182, '150.00', NULL, '0.00', 1, 'N', NULL, 173),
(183, '150.00', '150.00', '0.00', 1, 'C', NULL, 174),
(184, '150.00', '160.00', '0.00', 1, 'C', NULL, 175),
(185, '150.00', '150.00', '0.00', 1, 'C', NULL, 176),
(186, '150.00', '160.00', '0.00', 1, 'C', NULL, 177),
(187, '150.00', '150.00', '0.00', 1, 'C', NULL, 178),
(188, '150.00', '150.00', '0.00', 1, 'C', NULL, 179),
(189, '160.00', NULL, '0.00', 1, 'N', NULL, 180),
(190, '150.00', NULL, '0.00', 1, 'N', NULL, 181),
(191, '150.00', NULL, '0.00', 1, 'N', NULL, 182),
(192, '160.00', '115.00', '0.00', 2, 'I', NULL, 183),
(193, '160.00', NULL, '0.00', 1, 'N', NULL, 184),
(194, '150.00', NULL, '0.00', 1, 'N', NULL, 185),
(195, '160.00', NULL, '0.00', 1, 'N', NULL, 186),
(196, '160.00', '0.00', '0.00', 1, 'C', NULL, 187),
(197, '150.00', '160.00', '0.00', 1, 'C', NULL, 188),
(198, '150.00', NULL, '0.00', 1, 'N', NULL, 189),
(199, '150.00', NULL, '0.00', 1, 'N', NULL, 190),
(200, '150.00', NULL, '0.00', 1, 'N', NULL, 191),
(201, '150.00', '150.00', '0.00', 1, 'C', NULL, 192),
(202, '150.00', NULL, '0.00', 1, 'N', NULL, 193),
(203, '150.00', '150.00', '0.00', 1, 'C', NULL, 194),
(204, '150.00', NULL, '0.00', 1, 'N', NULL, 195),
(205, '150.00', NULL, '0.00', 1, 'N', NULL, 196),
(206, '150.00', '150.00', '0.00', 1, 'C', NULL, 197),
(207, '150.00', NULL, '0.00', 1, 'N', NULL, 198),
(208, '160.00', '150.00', '0.00', 1, 'C', NULL, 199),
(209, '70.00', NULL, '0.00', 1, 'N', NULL, 200),
(210, '70.00', '150.00', '0.00', 1, 'C', NULL, 201),
(211, '150.00', '150.00', '0.00', 1, 'C', NULL, 202),
(212, '160.00', NULL, '0.00', 1, 'N', NULL, 203),
(213, '150.00', NULL, '0.00', 1, 'N', NULL, 204),
(214, '80.00', '60.00', '20.00', 1, 'C', NULL, 205),
(215, '80.00', '80.00', '0.00', 1, 'C', NULL, 206),
(216, '80.00', '80.00', '0.00', 1, 'C', NULL, 207),
(217, '80.00', '80.00', '0.00', 1, 'C', NULL, 208),
(218, '80.00', '80.00', '0.00', 1, 'C', NULL, 209),
(219, '80.00', '80.00', '0.00', 1, 'C', NULL, 210),
(220, '80.00', '40.00', '0.00', 2, 'I', NULL, 211),
(221, '80.00', '80.00', '0.00', 1, 'C', NULL, 212),
(222, '80.00', NULL, '0.00', 1, 'N', NULL, 213),
(223, '80.00', NULL, '0.00', 1, 'N', NULL, 214),
(224, '80.00', '80.00', '0.00', 2, 'C', NULL, 215),
(225, '80.00', '80.00', '0.00', 1, 'C', NULL, 216),
(226, '80.00', '40.00', '0.00', 2, 'I', NULL, 217),
(227, '80.00', '80.00', '0.00', 3, 'C', NULL, 218),
(228, '80.00', '80.00', '0.00', 1, 'C', NULL, 219),
(229, '80.00', '80.00', '0.00', 1, 'C', NULL, 221),
(230, '80.00', '80.00', '0.00', 2, 'C', NULL, 220),
(231, '80.00', NULL, '0.00', 1, 'N', NULL, 222),
(232, '80.00', '80.00', '0.00', 1, 'C', NULL, 223),
(233, '80.00', '80.00', '0.00', 1, 'C', NULL, 224),
(234, '80.00', NULL, '0.00', 1, 'N', NULL, 226),
(235, '80.00', '80.00', '0.00', 1, 'C', NULL, 225),
(236, '80.00', '0.01', '0.00', 1, 'I', NULL, 227),
(237, '80.00', NULL, '0.00', 2, 'N', NULL, 229),
(238, '80.00', NULL, '0.00', 1, 'N', NULL, 228),
(239, '80.00', '80.00', '0.00', 1, 'C', NULL, 231),
(240, '80.00', '80.00', '0.00', 2, 'C', NULL, 233),
(241, '80.00', '80.00', '0.00', 2, 'C', NULL, 232),
(242, '80.00', '0.01', '0.00', 2, 'I', NULL, 230),
(243, '80.00', '80.00', '0.00', 2, 'C', NULL, 234),
(244, '80.00', '80.00', '0.00', 1, 'C', NULL, 235),
(245, '80.00', '80.00', '0.00', 1, 'C', NULL, 236),
(246, '80.00', '80.00', '0.00', 1, 'C', NULL, 237),
(247, '80.00', '80.00', '0.00', 1, 'C', NULL, 238),
(248, '80.00', '60.00', '20.00', 1, 'C', NULL, 239),
(249, '80.00', '80.00', '0.00', 1, 'C', NULL, 240),
(250, '80.00', '80.00', '0.00', 1, 'C', NULL, 241),
(251, '80.00', NULL, '0.00', 1, 'N', NULL, 242),
(252, '80.00', NULL, '0.00', 1, 'N', NULL, 243),
(253, '80.00', '80.00', '0.00', 1, 'C', NULL, 244),
(254, '80.00', NULL, '0.00', 1, 'N', NULL, 245),
(255, '80.00', '80.00', '0.00', 1, 'C', NULL, 247),
(256, '80.00', NULL, '0.00', 1, 'N', NULL, 248),
(257, '80.00', '80.00', '0.00', 1, 'C', NULL, 246),
(258, '80.00', '80.00', '0.00', 1, 'C', NULL, 249),
(259, '80.00', '80.00', '0.00', 1, 'C', NULL, 250),
(260, '80.00', NULL, '0.00', 1, 'N', NULL, 251),
(261, '80.00', '80.00', '0.00', 1, 'C', NULL, 252),
(262, '80.00', '80.00', '0.00', 1, 'C', NULL, 253),
(263, '80.00', '80.00', '0.00', 1, 'C', NULL, 256),
(264, '80.00', NULL, '0.00', 1, 'N', NULL, 255),
(265, '80.00', NULL, '0.00', 1, 'N', NULL, 254),
(266, '80.00', '80.00', '0.00', 1, 'C', NULL, 257),
(267, '80.00', '80.00', '0.00', 1, 'C', NULL, 258),
(268, '80.00', '80.00', '0.00', 1, 'C', NULL, 259),
(269, '80.00', NULL, '0.00', 1, 'N', NULL, 260),
(270, '80.00', '80.00', NULL, 2, 'C', NULL, 261),
(271, '80.00', '80.00', '0.00', 1, 'C', NULL, 262),
(272, '80.00', '80.00', '0.00', 1, 'C', NULL, 263),
(273, '80.00', '80.00', '0.00', 1, 'C', NULL, 264),
(274, '80.00', '80.00', '0.00', 1, 'C', NULL, 266),
(275, '80.00', NULL, '0.00', 1, 'N', NULL, 265),
(276, '80.00', '0.01', '0.00', 2, 'I', NULL, 267),
(277, '80.00', NULL, '0.00', 1, 'N', NULL, 268),
(278, '150.00', '15.00', '145.00', 1, 'C', 'Desconto pelo ADM (55 ultima parcela da máquina de foto 30 do site no mês de janeiro + 30 do site mês de fevereiro + 30 do site do mês de março) Totalizando os 145 de desconto', 269),
(279, '170.00', NULL, NULL, 1, 'N', NULL, 271),
(280, '160.00', NULL, NULL, 1, 'N', NULL, 270),
(281, '160.00', '170.00', NULL, 1, 'C', NULL, 272),
(282, '160.00', NULL, NULL, 1, 'N', NULL, 273),
(283, '160.00', NULL, NULL, 1, 'N', NULL, 278),
(284, '170.00', NULL, NULL, 1, 'N', NULL, 279),
(285, '160.00', NULL, NULL, 1, 'N', NULL, 280),
(286, '160.00', NULL, NULL, 1, 'N', NULL, 281),
(287, '160.00', '130.00', '30.00', 1, 'C', 'promoção', 282),
(288, '160.00', NULL, NULL, 1, 'N', NULL, 277),
(289, '160.00', NULL, NULL, 1, 'N', NULL, 276),
(290, '160.00', '140.00', '30.00', 1, 'C', 'Promoção', 275),
(291, '160.00', NULL, NULL, 1, 'N', NULL, 274),
(292, '160.00', NULL, NULL, 1, 'N', NULL, 283),
(293, '160.00', '160.00', NULL, 1, 'C', NULL, 285),
(294, '160.00', '170.00', NULL, 1, 'C', NULL, 284),
(295, '170.00', '160.00', NULL, 1, 'C', NULL, 286),
(296, '160.00', NULL, NULL, 1, 'N', NULL, 287),
(297, '160.00', NULL, NULL, 1, 'N', NULL, 288),
(298, '160.00', '160.00', NULL, 1, 'C', NULL, 289),
(299, '160.00', '170.00', NULL, 1, 'C', NULL, 290),
(300, '160.00', NULL, NULL, 1, 'N', NULL, 291),
(301, '160.00', NULL, NULL, 1, 'N', NULL, 292),
(302, '170.00', '170.00', NULL, 2, 'C', '.', 293),
(303, '160.00', '160.00', NULL, 1, 'C', NULL, 294),
(304, '160.00', '170.00', NULL, 1, 'C', NULL, 295),
(305, '160.00', NULL, NULL, 1, 'N', NULL, 296),
(306, '160.00', '170.00', NULL, 1, 'C', NULL, 297),
(307, '160.00', '170.00', NULL, 1, 'C', NULL, 298),
(308, '170.00', '160.00', NULL, 1, 'C', NULL, 299),
(309, '170.00', NULL, NULL, 1, 'N', NULL, 300),
(310, '160.00', NULL, NULL, 1, 'N', NULL, 301),
(311, '170.00', '160.00', '0.00', 1, 'C', 'não teve desconto', 303),
(312, '170.00', '170.00', NULL, 1, 'C', NULL, 304),
(313, '160.00', '160.00', NULL, 1, 'C', NULL, 305),
(314, '160.00', NULL, NULL, 1, 'N', NULL, 302),
(315, '160.00', '160.00', NULL, 1, 'C', NULL, 306),
(316, '160.00', '160.00', NULL, 1, 'C', NULL, 307),
(317, '160.00', NULL, NULL, 1, 'N', NULL, 308),
(318, '170.00', NULL, NULL, 1, 'N', NULL, 309),
(319, '160.00', '140.00', '20.00', 1, 'C', 'PROMOÇÃO IRMÃOS !', 310),
(320, '160.00', NULL, NULL, 1, 'N', NULL, 311),
(321, '160.00', NULL, NULL, 1, 'N', NULL, 312),
(322, '160.00', '170.00', NULL, 1, 'C', NULL, 313),
(323, '160.00', '100.00', NULL, 1, 'I', NULL, 314),
(324, '160.00', '150.00', '10.00', 1, 'C', 'PROMOÇÃO IRMÃOS !', 315),
(325, '160.00', '170.00', NULL, 1, 'C', NULL, 316),
(326, '160.00', '160.00', NULL, 1, 'C', NULL, 317),
(328, '160.00', '130.00', '30.00', 1, 'C', 'PAGO PELAS IRMÃS DA CARIDADE.', 319),
(329, '170.00', '170.00', NULL, 1, 'C', NULL, 320),
(330, '170.00', '170.00', NULL, 1, 'C', NULL, 321),
(331, '160.00', '160.00', NULL, 1, 'C', NULL, 322),
(332, '160.00', '170.00', NULL, 1, 'C', NULL, 323),
(333, '160.00', NULL, NULL, 1, 'N', NULL, 325),
(334, '160.00', NULL, NULL, 1, 'N', NULL, 324),
(335, '160.00', '170.00', NULL, 1, 'C', NULL, 326),
(336, '160.00', '160.00', NULL, 1, 'C', NULL, 327),
(337, '160.00', '170.00', NULL, 1, 'C', NULL, 328),
(338, '170.00', NULL, NULL, 1, 'N', NULL, 329),
(339, '160.00', '160.00', NULL, 1, 'C', NULL, 330),
(340, '170.00', '160.00', NULL, 1, 'C', NULL, 331),
(341, '160.00', '170.00', NULL, 1, 'C', NULL, 332),
(342, '160.00', '160.00', NULL, 1, 'C', NULL, 333),
(343, '160.00', NULL, NULL, 1, 'N', NULL, 334),
(344, '160.00', '100.00', '60.00', 1, 'C', '.VENDEU RIFAS', 335),
(345, '160.00', '45.00', '115.00', 1, 'C', 'SERVO SEM CONDIÇÕES !', 336),
(346, '160.00', '170.00', NULL, 1, 'C', NULL, 337),
(347, '160.00', '135.00', '25.00', 1, 'C', 'DESCONTO CASAIS !', 338),
(348, '160.00', '135.00', '25.00', 1, 'C', 'PROMOÇÃO CASAIS', 339),
(349, '160.00', '160.00', NULL, 2, 'C', '.', 340),
(350, '160.00', '160.00', NULL, 1, 'C', NULL, 341),
(351, '160.00', '80.00', '0.00', 2, 'I', '.', 342),
(352, '170.00', '170.00', NULL, 1, 'C', NULL, 343),
(353, '160.00', '170.00', NULL, 1, 'C', NULL, 344),
(354, '160.00', '130.00', '30.00', 1, 'C', 'Valor promocional à vista.', 345),
(355, '160.00', '150.00', '10.00', 1, 'C', 'desconto irmãos', 346),
(356, '160.00', '145.00', '25.00', 1, 'C', 'desconto casal', 347),
(357, '160.00', '170.00', NULL, 1, 'C', NULL, 348),
(358, '160.00', '170.00', NULL, 1, 'C', NULL, 349),
(359, '160.00', NULL, NULL, 1, 'N', NULL, 350),
(360, '170.00', '170.00', NULL, 1, 'C', NULL, 351),
(361, '170.00', NULL, NULL, 1, 'N', NULL, 352),
(362, '160.00', NULL, NULL, 1, 'N', NULL, 353),
(363, '170.00', NULL, NULL, 1, 'N', NULL, 354),
(364, '160.00', NULL, NULL, 1, 'N', NULL, 355),
(365, '160.00', '160.00', NULL, 1, 'C', NULL, 356),
(366, '160.00', '170.00', '0.00', 2, 'C', '.', 357),
(367, '160.00', '170.00', '0.00', 2, 'C', '.', 358),
(368, '160.00', NULL, NULL, 1, 'N', NULL, 359),
(369, '160.00', '70.00', '0.00', 2, 'I', '.', 360),
(370, '160.00', NULL, NULL, 1, 'N', NULL, 361),
(371, '170.00', '170.00', NULL, 1, 'C', NULL, 362),
(372, '160.00', '160.00', NULL, 1, 'C', NULL, 363),
(373, '170.00', '145.00', '25.00', 1, 'C', 'desconto casal', 364),
(374, '160.00', '130.00', '30.00', 1, 'C', 'Promoção.', 366),
(375, '160.00', NULL, NULL, 1, 'N', NULL, 365),
(376, '170.00', '170.00', NULL, 1, 'C', NULL, 367),
(377, '160.00', '170.00', NULL, 1, 'C', NULL, 368),
(378, '160.00', '150.00', '10.00', 1, 'C', 'servo', 369),
(379, '170.00', NULL, NULL, 1, 'N', NULL, 371),
(380, '160.00', NULL, NULL, 1, 'N', NULL, 370),
(381, '170.00', '150.00', '20.00', 1, 'C', 'Desconto Casal', 372),
(382, '170.00', '150.00', '20.00', 1, 'C', 'DESCONTO CASAL', 373),
(383, '160.00', '160.00', NULL, 1, 'C', NULL, 374),
(384, '160.00', NULL, NULL, 1, 'N', NULL, 375),
(385, '160.00', '150.00', '20.00', 1, 'C', 'Valor promocional.', 376),
(386, '160.00', NULL, NULL, 1, 'N', NULL, 377),
(387, '160.00', '160.00', '0.00', 1, 'C', 'sem desconto', 378),
(388, '160.00', NULL, NULL, 1, 'N', NULL, 379),
(389, '160.00', NULL, NULL, 1, 'N', NULL, 380),
(390, '160.00', '150.00', '10.00', 1, 'C', '.', 381),
(391, '160.00', '170.00', NULL, 1, 'C', NULL, 382),
(392, '160.00', '150.00', '10.00', 1, 'C', 'servo', 383),
(393, '160.00', '160.00', NULL, 1, 'C', 'não teve desconto', 384),
(394, '160.00', '170.00', NULL, 1, 'C', NULL, 385),
(395, '160.00', '150.00', '10.00', 1, 'C', 'SEM CONDIÇÕES', 386),
(396, '160.00', NULL, NULL, 1, 'N', NULL, 387),
(397, '160.00', '170.00', NULL, 1, 'C', NULL, 388),
(398, '160.00', NULL, NULL, 1, 'N', NULL, 389),
(399, '160.00', '130.00', '30.00', 1, 'C', 'PAGO PELAS IRMÃS DA CARIDADE.', 390),
(400, '170.00', '140.00', '30.00', 1, 'C', 'Desconto irmãos', 391),
(401, '160.00', '85.00', '85.00', 1, 'C', 'Sorteio promocional do instagram.', 392),
(402, '160.00', '85.00', '85.00', 1, 'C', 'Sorteio promocional do instagram.', 393),
(403, '170.00', '150.00', '20.00', 1, 'C', 'Desconto irmaos', 394),
(404, '170.00', '130.00', '30.00', 1, 'C', 'PAGO PELAS IRMÃS DA CARIDADE.', 395),
(405, '160.00', '130.00', '30.00', 1, 'C', 'Valor do retiro alterado por conta da promoção.', 396),
(406, '170.00', '170.00', NULL, 1, 'C', NULL, 397),
(407, '160.00', '160.00', NULL, 1, 'C', NULL, 398),
(408, '160.00', NULL, NULL, 1, 'N', NULL, 399),
(409, '160.00', '125.00', '35.00', 1, 'C', 'Casal.', 400),
(410, '160.00', '125.00', '35.00', 1, 'C', 'Casal.', 401),
(411, '160.00', '150.00', '10.00', 1, 'C', 'SEM CONDIÇÕES', 402),
(412, '160.00', NULL, NULL, 1, 'N', NULL, 403),
(413, '170.00', '130.00', '40.00', 1, 'C', 'desconto do dia', 404),
(414, '170.00', '130.00', '30.00', 1, 'C', 'Promoção.', 405),
(415, '160.00', '140.00', '20.00', 1, 'C', 'Valor promocional no cartão.', 407),
(416, '160.00', '140.00', '20.00', 1, 'C', 'Valor do retiro alterado por conta da promoção.', 406),
(417, '160.00', '130.00', '30.00', 1, 'C', 'Promoção do dia.', 408),
(418, '160.00', '140.00', '20.00', 1, 'C', 'Valor do retiro alterado por conta da promoção.', 409),
(419, '160.00', '170.00', NULL, 1, 'C', NULL, 410),
(420, '160.00', '170.00', NULL, 1, 'C', NULL, 411),
(421, '160.00', '130.00', '30.00', 1, 'C', 'Valor promocional à vista.', 412),
(422, '160.00', NULL, NULL, 1, 'N', NULL, 413),
(423, '160.00', '130.00', '30.00', 1, 'C', 'Valor alterado do retiro por conta da promoção.', 414),
(424, '160.00', '130.00', '30.00', 1, 'C', 'Valor do retiro alterado por conta da promoção.', 415),
(425, '160.00', '130.00', '30.00', 1, 'C', 'Valor promocional à vista.', 416),
(426, '170.00', '140.00', '20.00', 1, 'C', 'promoção', 417),
(427, '170.00', NULL, NULL, 1, 'N', NULL, 418),
(428, '160.00', '130.00', '30.00', 1, 'C', 'Promoção.', 419),
(429, '160.00', '130.00', '30.00', 1, 'C', 'PAGO PELAS IRMÃS DA CARIDADE.', 420),
(430, '160.00', '130.00', '30.00', 1, 'C', 'PAGO PELAS IRMÃS DA CARIDADE.', 421),
(431, '160.00', '130.00', '30.00', 1, 'C', 'PAGO PELAS IRMÃS DA CARIDADE.', 422),
(432, '160.00', NULL, NULL, 1, 'N', NULL, 424),
(433, '170.00', NULL, NULL, 1, 'N', NULL, 423),
(434, '160.00', '130.00', '30.00', 1, 'C', 'promoção', 425),
(435, '160.00', '130.00', '40.00', 1, 'C', 'PROMOÇÃO', 426),
(436, '160.00', '130.00', '30.00', 1, 'C', 'Desconto irmãs da caridade.', 427),
(437, '170.00', NULL, NULL, 1, 'N', NULL, 428),
(438, '160.00', '150.00', '10.00', 1, 'C', 'desconto a vista saiu a 150,00', 429),
(439, '160.00', NULL, NULL, 1, 'N', NULL, 431),
(440, '160.00', NULL, NULL, 1, 'N', NULL, 430),
(441, '160.00', '130.00', '30.00', 1, 'C', 'Promoção de ultimas vagas', 432),
(442, '160.00', NULL, NULL, 1, 'N', NULL, 433),
(443, '160.00', '160.00', NULL, 1, 'C', 'Não tem desconto', 434),
(444, '160.00', NULL, NULL, 1, 'N', NULL, 435);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_pagina`
--

CREATE TABLE `tb_pagina` (
  `co_pagina` int(11) NOT NULL,
  `dt_cadastro` datetime DEFAULT NULL,
  `ds_titulo_url_amigavel` varchar(255) DEFAULT NULL COMMENT 'Url amigável da página',
  `nu_visualizacao` int(11) DEFAULT NULL,
  `nu_usuario` int(11) DEFAULT NULL COMMENT 'Número de usuário que visitou a página'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `tb_pagina`
--

INSERT INTO `tb_pagina` (`co_pagina`, `dt_cadastro`, `ds_titulo_url_amigavel`, `nu_visualizacao`, `nu_usuario`) VALUES
(1, '2019-03-25 17:28:54', 'web/', 1, 1),
(2, '2019-03-25 17:29:59', 'web/Inscricoes/CadastroRetiro', 2, 2),
(3, '2019-03-27 12:16:54', 'web/IndexWeb/Index', 1, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_pagina_visita`
--

CREATE TABLE `tb_pagina_visita` (
  `co_pagina_visita` int(11) NOT NULL,
  `co_visita` int(11) NOT NULL,
  `co_pagina` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `tb_pagina_visita`
--

INSERT INTO `tb_pagina_visita` (`co_pagina_visita`, `co_visita`, `co_pagina`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 3),
(4, 3, 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_parcelamento`
--

CREATE TABLE `tb_parcelamento` (
  `co_parcelamento` int(11) NOT NULL,
  `nu_parcela` int(2) DEFAULT NULL,
  `nu_valor_parcela` decimal(8,2) DEFAULT NULL,
  `nu_valor_parcela_pago` decimal(8,2) DEFAULT NULL,
  `dt_vencimento` date DEFAULT NULL,
  `dt_vencimento_pago` date DEFAULT NULL,
  `ds_observacao` text,
  `co_tipo_pagamento` int(11) NOT NULL,
  `co_pagamento` int(11) NOT NULL,
  `co_usuario` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `tb_parcelamento`
--

INSERT INTO `tb_parcelamento` (`co_parcelamento`, `nu_parcela`, `nu_valor_parcela`, `nu_valor_parcela_pago`, `dt_vencimento`, `dt_vencimento_pago`, `ds_observacao`, `co_tipo_pagamento`, `co_pagamento`, `co_usuario`) VALUES
(1032, 1, '160.00', '160.00', '2018-01-21', '2018-01-25', '', 2, 137, 0),
(1033, 1, '160.00', '160.00', '2018-01-21', '2018-01-26', '', 2, 136, 0),
(1034, 1, '150.00', '150.00', '2018-01-21', '2018-01-31', '', 2, 135, 0),
(1035, 1, '150.00', NULL, '2018-01-21', NULL, NULL, 1, 134, 0),
(1036, 1, '160.00', '160.00', '2018-01-21', '2018-01-25', '', 2, 133, 0),
(1037, 1, '160.00', '160.00', '2018-01-21', '2018-01-25', '', 2, 132, 0),
(1039, 1, '150.00', '150.00', '2018-01-21', '2018-01-24', '', 1, 129, 0),
(1040, 1, '150.00', '150.00', '2018-01-21', '2018-01-26', '', 3, 127, 0),
(1041, 1, '160.00', '160.00', '2018-01-21', '2018-01-25', '', 2, 126, 0),
(1042, 1, '150.00', NULL, '2018-01-21', NULL, NULL, 1, 128, 0),
(1043, 1, '160.00', NULL, '2018-01-21', NULL, NULL, 1, 125, 0),
(1044, 1, '150.00', '150.00', '2018-01-21', '2018-01-10', '', 3, 124, 0),
(1045, 1, '150.00', '150.00', '2018-01-21', '2018-01-09', '', 3, 123, 0),
(1046, 1, '50.00', '50.00', '2018-01-21', '2018-01-21', NULL, 1, 122, 0),
(1047, 1, '0.00', '0.00', '2018-01-21', '2018-01-11', '', 1, 121, 0),
(1048, 1, '160.00', '160.00', '2018-01-21', '2018-01-25', '', 3, 120, 0),
(1049, 1, '150.00', '150.00', '2018-01-21', '2018-01-08', '', 1, 119, 0),
(1051, 1, '150.00', '150.00', '2018-01-21', '2018-02-05', '', 1, 117, 0),
(1052, 1, '150.00', '150.00', '2018-01-21', '2018-02-05', '', 1, 116, 0),
(1053, 1, '150.00', '160.00', '2018-01-21', '2018-01-31', 'Pagou 10 à mais', 1, 115, 0),
(1054, 1, '150.00', NULL, '2018-01-21', NULL, NULL, 1, 114, 0),
(1055, 1, '150.00', '150.00', '2018-01-21', '2018-02-04', '', 1, 113, 0),
(1057, 1, '150.00', '160.00', '2018-01-21', '2017-02-06', '', 1, 111, 0),
(1058, 1, '160.00', NULL, '2018-01-21', NULL, NULL, 1, 110, 0),
(1059, 1, '160.00', '150.00', '2018-01-21', '2018-02-05', '', 1, 109, 0),
(1060, 1, '150.00', '160.00', '2018-01-21', '2018-02-06', '', 1, 108, 0),
(1061, 1, '160.00', '160.00', '2018-01-21', '2018-01-12', NULL, 2, 107, 0),
(1062, 1, '160.00', '160.00', '2018-01-21', '2018-01-12', NULL, 2, 106, 0),
(1063, 1, '150.00', '150.00', '2018-01-21', '2018-01-26', '', 3, 105, 0),
(1064, 1, '150.00', '150.00', '2018-01-21', '2018-01-12', NULL, 1, 104, 0),
(1065, 1, '150.00', '150.00', '2018-01-21', '2018-01-26', '', 3, 102, 0),
(1066, 1, '150.00', '150.00', '2018-01-21', '2018-01-15', '', 1, 103, 0),
(1067, 1, '160.00', NULL, '2018-01-21', NULL, NULL, 1, 101, 0),
(1068, 1, '150.00', NULL, '2018-01-21', NULL, NULL, 1, 100, 0),
(1069, 1, '160.00', NULL, '2018-01-21', NULL, NULL, 1, 99, 0),
(1070, 1, '30.00', '30.00', '2018-01-21', '2018-01-21', NULL, 1, 98, 0),
(1071, 1, '160.00', '160.00', '2018-01-21', '2018-01-12', NULL, 2, 97, 0),
(1072, 1, '160.00', '160.00', '2018-01-21', '2018-01-26', 'Pagou 10,00 à mais.', 1, 96, 0),
(1073, 1, '0.00', '0.00', '2018-01-21', '2018-01-15', '', 1, 95, 0),
(1074, 1, '150.00', '150.00', '2018-01-21', '2018-02-08', '', 1, 94, 0),
(1075, 1, '160.00', '160.00', '2018-01-21', '2018-02-24', '', 2, 93, 0),
(1076, 1, '160.00', '160.00', '2018-01-21', '2017-02-06', '', 1, 92, 0),
(1077, 1, '160.00', '1500.00', '2018-01-21', '2018-02-08', '', 1, 91, 0),
(1078, 1, '160.00', '160.00', '2018-01-21', '2018-01-09', 'Depositou 10,00 à mais', 1, 90, 0),
(1079, 1, '150.00', '150.00', '2018-01-21', '2018-02-06', '', 1, 89, 0),
(1080, 1, '150.00', NULL, '2018-01-21', NULL, NULL, 1, 88, 0),
(1082, 1, '150.00', NULL, '2018-01-21', NULL, NULL, 1, 85, 0),
(1083, 1, '160.00', '160.00', '2018-01-21', '2018-01-29', 'Devolver 10,00', 3, 84, 0),
(1084, 1, '150.00', NULL, '2018-01-21', NULL, NULL, 1, 83, 0),
(1085, 1, '0.00', '0.00', '2018-01-21', '2018-02-01', NULL, 1, 82, 0),
(1086, 1, '150.00', '150.00', '2018-01-21', '2018-01-22', '', 1, 81, 0),
(1087, 1, '150.00', '150.00', '2018-01-21', '2018-02-21', '', 1, 80, 0),
(1088, 1, '150.00', NULL, '2018-01-21', NULL, NULL, 1, 79, 0),
(1089, 1, '150.00', NULL, '2018-01-21', NULL, NULL, 1, 78, 0),
(1090, 1, '150.00', '150.00', '2018-01-21', '2018-01-12', NULL, 1, 77, 0),
(1091, 1, '150.00', NULL, '2018-01-21', NULL, NULL, 1, 76, 0),
(1092, 1, '160.00', '150.00', '2018-01-21', '2018-02-09', '', 1, 75, 0),
(1093, 1, '150.00', '150.00', '2018-01-21', '2018-02-06', '', 1, 74, 0),
(1094, 1, '150.00', NULL, '2018-01-21', NULL, NULL, 1, 73, 0),
(1095, 1, '150.00', NULL, '2018-01-21', NULL, NULL, 1, 72, 0),
(1096, 1, '150.00', NULL, '2018-01-21', NULL, NULL, 1, 71, 0),
(1097, 1, '160.00', '160.00', '2018-01-21', '2018-01-26', '', 2, 70, 0),
(1098, 1, '150.00', '150.00', '2018-01-21', '2018-01-12', NULL, 1, 69, 0),
(1099, 1, '150.00', '160.00', '2018-01-21', '2018-01-30', '', 2, 68, 0),
(1100, 1, '150.00', '150.00', '2018-01-21', '2018-02-08', '', 1, 67, 0),
(1101, 1, '150.00', NULL, '2018-01-21', NULL, NULL, 1, 66, 0),
(1102, 1, '150.00', '150.00', '2018-01-21', '2018-01-12', NULL, 1, 65, 0),
(1103, 1, '150.00', NULL, '2018-01-21', NULL, NULL, 1, 64, 0),
(1104, 1, '150.00', NULL, '2018-01-21', NULL, NULL, 1, 62, 0),
(1105, 1, '160.00', NULL, '2018-01-21', NULL, NULL, 1, 61, 0),
(1106, 1, '150.00', NULL, '2018-01-21', NULL, NULL, 1, 63, 0),
(1107, 1, '150.00', NULL, '2018-01-21', NULL, NULL, 1, 60, 0),
(1108, 1, '160.00', NULL, '2018-01-21', NULL, NULL, 1, 59, 0),
(1109, 1, '150.00', NULL, '2018-01-21', NULL, NULL, 1, 58, 0),
(1110, 1, '150.00', NULL, '2018-01-21', NULL, NULL, 1, 57, 0),
(1111, 1, '50.00', '50.00', '2018-01-21', '2018-01-21', NULL, 1, 56, 0),
(1112, 1, '150.00', '150.00', '2018-01-21', '2018-02-05', '', 1, 55, 0),
(1113, 1, '150.00', '160.00', '2018-01-21', '2018-02-25', '', 2, 54, 0),
(1114, 1, '0.00', '0.00', '2018-01-21', '2018-02-01', NULL, 1, 53, 0),
(1115, 1, '150.00', '160.00', '2018-01-21', '2018-02-24', '', 2, 52, 0),
(1116, 1, '150.00', '150.00', '2018-01-21', '2018-02-01', '', 1, 51, 0),
(1117, 1, '150.00', '150.00', '2018-01-21', '2018-01-12', NULL, 1, 50, 0),
(1118, 1, '160.00', NULL, '2018-01-21', NULL, NULL, 1, 49, 0),
(1119, 1, '160.00', '150.00', '2018-01-21', '2018-02-05', '', 1, 48, 0),
(1120, 1, '150.00', NULL, '2018-01-21', NULL, NULL, 1, 47, 0),
(1121, 1, '150.00', '150.00', '2018-01-21', '2018-02-04', '', 1, 46, 0),
(1122, 1, '50.00', '50.00', '2018-01-21', '2018-01-21', NULL, 1, 45, 0),
(1123, 1, '150.00', NULL, '2018-01-21', NULL, NULL, 1, 44, 0),
(1124, 1, '150.00', NULL, '2018-01-21', NULL, NULL, 1, 43, 0),
(1125, 1, '160.00', '150.00', '2018-01-21', '2018-02-06', '', 1, 42, 0),
(1126, 1, '150.00', '15000.00', '2018-01-21', '2018-02-09', '', 1, 37, 0),
(1127, 1, '150.00', '150.00', '2018-01-21', '2018-01-12', NULL, 1, 35, 0),
(1128, 1, '150.00', '150.00', '2018-01-21', '2018-01-12', NULL, 1, 34, 0),
(1129, 1, '75.00', '75.00', '2018-01-21', '2018-01-21', NULL, 1, 32, 0),
(1130, 1, '150.00', NULL, '2018-01-21', NULL, NULL, 1, 31, 0),
(1131, 1, '150.00', NULL, '2018-01-21', NULL, NULL, 1, 30, 0),
(1132, 1, '75.00', '75.00', '2018-01-21', '2018-01-21', NULL, 1, 29, 0),
(1133, 1, '150.00', NULL, '2018-01-21', NULL, NULL, 1, 28, 0),
(1135, 1, '160.00', NULL, '2018-01-21', NULL, NULL, 1, 26, 0),
(1136, 1, '50.00', '50.00', '2018-01-21', '2018-01-21', NULL, 1, 24, 0),
(1137, 1, '150.00', '150.00', '2018-01-21', '2018-01-12', NULL, 1, 25, 0),
(1138, 1, '150.00', NULL, '2018-01-21', NULL, NULL, 1, 19, 0),
(1140, 1, '150.00', '150.00', '2018-01-21', '2018-01-29', '', 1, 22, 0),
(1141, 1, '150.00', NULL, '2018-01-21', NULL, NULL, 1, 21, 0),
(1142, 1, '150.00', NULL, '2018-01-21', NULL, NULL, 1, 20, 0),
(1143, 1, '150.00', '150.00', '2018-01-21', '2017-02-06', '', 1, 18, 0),
(1144, 1, '150.00', NULL, '2018-01-21', NULL, NULL, 1, 17, 0),
(1145, 1, '160.00', '160.00', '2018-01-21', '2018-01-26', '', 2, 16, 0),
(1146, 1, '150.00', '150.00', '2018-01-21', '2018-01-12', NULL, 1, 15, 0),
(1147, 1, '150.00', '150.00', '2018-01-21', '2018-02-21', '', 1, 14, 0),
(1148, 1, '50.00', '50.00', '2018-01-21', '2018-01-21', NULL, 1, 12, 0),
(1149, 1, '150.00', '150.00', '2018-01-21', '2018-02-08', '', 1, 11, 0),
(1150, 1, '150.00', NULL, '2018-01-21', NULL, NULL, 1, 10, 0),
(1151, 1, '80.00', '80.00', '2018-01-21', '2018-01-21', NULL, 1, 9, 0),
(1152, 1, '50.00', '50.00', '2018-01-21', '2018-01-21', NULL, 1, 8, 0),
(1153, 1, '150.00', '150.00', '2018-01-21', '2018-01-12', NULL, 1, 7, 0),
(1154, 1, '150.00', '150.00', '2018-01-21', '2018-02-05', '', 1, 6, 0),
(1155, 1, '150.00', '150.00', '2018-01-21', '2018-01-26', '', 1, 5, 0),
(1156, 1, '150.00', NULL, '2018-01-21', NULL, NULL, 1, 4, 0),
(1157, 1, '60.00', '60.00', '2018-01-21', '2018-01-21', NULL, 1, 3, 0),
(1158, 1, '150.00', NULL, '2018-01-21', NULL, NULL, 1, 2, 0),
(1160, 1, '80.00', '80.00', '2018-01-22', '2018-01-22', NULL, 1, 140, 0),
(1161, 1, '150.00', '160.00', '2018-01-22', '2018-01-31', '', 2, 141, 0),
(1162, 1, '150.00', '160.00', '2018-01-22', '2018-01-31', '', 2, 142, 0),
(1163, 1, '150.00', '150.00', '2018-01-22', '2018-01-31', 'Pagou 10,00 à mais', 1, 143, 0),
(1165, 1, '150.00', NULL, '2018-01-23', NULL, NULL, 3, 144, 0),
(1166, 1, '150.00', NULL, '2018-01-23', NULL, NULL, 1, 145, 0),
(1167, 1, '80.00', '80.00', '2018-01-23', '2018-01-23', NULL, 1, 146, 0),
(1168, 1, '150.00', NULL, '2018-01-23', NULL, NULL, 1, 131, 0),
(1169, 1, '160.00', '160.00', '2018-01-23', '2018-01-25', '', 2, 147, 0),
(1170, 1, '150.00', NULL, '2018-01-23', NULL, NULL, 3, 148, 0),
(1172, 1, '150.00', '150.00', '2018-01-24', '2018-02-04', '', 1, 149, 0),
(1173, 1, '150.00', '150.00', '2018-01-24', '2018-02-06', '', 1, 150, 0),
(1174, 1, '150.00', '150.00', '2018-01-24', '2018-01-26', '', 1, 151, 0),
(1175, 1, '160.00', '160.00', '2018-01-24', '2018-02-24', '', 2, 152, 0),
(1176, 1, '160.00', '160.00', '2018-01-24', '2018-02-24', '', 2, 153, 0),
(1177, 2, '100.00', '100.00', '2018-01-25', '2018-02-04', '', 1, 12, 0),
(1179, 2, '100.00', '100.00', '2018-01-25', '2018-01-31', '', 1, 45, 0),
(1180, 2, '75.00', '75.00', '2018-01-25', '2018-02-05', '', 1, 32, 0),
(1181, 2, '75.00', '75.00', '2018-01-25', '2018-02-05', '', 1, 29, 0),
(1182, 2, '100.00', '100.00', '2018-01-25', '2018-01-31', '', 1, 24, 0),
(1183, 2, '100.00', NULL, '2018-01-25', NULL, NULL, 1, 56, 0),
(1184, 2, '60.00', '160.00', '2018-01-25', '2018-02-08', '', 1, 98, 0),
(1185, 3, '60.00', NULL, '2018-01-30', NULL, NULL, 1, 98, 0),
(1187, 2, '90.00', NULL, '2018-01-25', NULL, NULL, 1, 3, 0),
(1188, 2, '100.00', '100.00', '2018-01-25', '2017-02-06', '', 1, 122, 0),
(1189, 2, '100.00', '100.00', '2018-01-25', '2018-02-08', '', 1, 8, 0),
(1190, 2, '70.00', NULL, '2018-01-25', NULL, NULL, 1, 140, 0),
(1191, 2, '70.00', NULL, '2018-01-25', NULL, NULL, 1, 146, 0),
(1192, 2, '70.00', NULL, '2018-01-25', NULL, NULL, 1, 9, 0),
(1193, 1, '130.00', '130.00', '2018-01-25', '2018-01-26', 'Desconto por ser de Formosa', 3, 154, 0),
(1194, 1, '160.00', '160.00', '2018-01-25', '2018-01-25', '', 2, 155, 0),
(1197, 1, '150.00', '150.00', '2018-01-26', '2018-01-27', '', 1, 156, 0),
(1198, 1, '150.00', '150.00', '2018-01-26', '2018-02-06', '', 1, 158, 0),
(1199, 1, '150.00', '150.00', '2018-01-26', '2018-01-27', '', 1, 159, 0),
(1200, 1, '75.00', '75.00', '2018-01-27', '2018-01-27', '', 3, 157, 0),
(1201, 2, '75.00', '75.00', '2018-01-27', '2018-02-08', '', 1, 157, 0),
(1202, 1, '150.00', '150.00', '2018-01-27', '2018-01-25', '', 3, 160, 0),
(1203, 1, '150.00', '150.00', '2018-01-27', '2018-01-25', '', 3, 161, 0),
(1204, 1, '150.00', NULL, '2018-01-27', NULL, NULL, 1, 162, 0),
(1205, 1, '150.00', '150.00', '2018-01-27', '2018-02-06', '', 1, 163, 0),
(1206, 1, '150.00', NULL, '2018-01-27', NULL, NULL, 1, 164, 0),
(1207, 1, '100.00', '100.00', '2018-01-28', '2018-01-28', '', 1, 23, 0),
(1208, 2, '50.00', NULL, '2018-01-28', NULL, NULL, 1, 23, 0),
(1209, 1, '160.00', '160.00', '2018-01-28', '2018-02-08', '', 2, 165, 0),
(1210, 1, '130.00', '130.00', '2018-01-29', '2018-01-29', 'Desconto de 20,00 do pessoal de Formosa.', 3, 166, 0),
(1212, 1, '150.00', '150.00', '2018-01-29', '2018-02-05', '', 1, 167, 0),
(1214, 1, '150.00', '150.00', '2018-01-29', '2018-02-05', '', 1, 168, 0),
(1215, 1, '150.00', '150.00', '2018-01-30', '2018-01-31', 'Desconto, meninos das irmãs.', 1, 169, 0),
(1216, 1, '150.00', '150.00', '2018-01-30', '2018-01-31', 'Desconto meninos das irmãs', 1, 170, 0),
(1217, 1, '150.00', '150.00', '2018-01-30', '2018-02-01', 'Desconto de 60,00\r\nAutorizado pela coordenação.', 3, 171, 0),
(1220, 1, '0.00', '0.00', '2018-02-01', '2018-02-02', NULL, 1, 172, 0),
(1221, 1, '150.00', NULL, '2018-02-01', NULL, NULL, 1, 173, 0),
(1222, 1, '150.00', NULL, '2018-02-01', NULL, NULL, 1, 174, 0),
(1223, 1, '150.00', '150.00', '2018-02-02', NULL, '', 1, 175, 0),
(1224, 1, '150.00', '150.00', '2018-02-02', '2018-02-04', '', 1, 176, 0),
(1225, 1, '160.00', '160.00', '2018-02-02', '2018-02-04', '', 2, 177, 0),
(1226, 1, '150.00', '15000.00', '2018-02-03', '2018-02-09', '', 1, 178, 0),
(1227, 1, '150.00', '160.00', '2018-02-03', '2018-02-06', '', 1, 179, 0),
(1229, 1, '150.00', '160.00', '2018-02-03', '2018-02-06', '', 3, 180, 0),
(1230, 1, '160.00', '160.00', '2018-02-03', '2018-02-06', '', 2, 181, 0),
(1231, 1, '150.00', NULL, '2018-02-04', NULL, NULL, 1, 182, 0),
(1233, 1, '150.00', '15000.00', '2018-02-04', '2018-02-09', '', 1, 183, 0),
(1234, 1, '150.00', '160.00', '2018-02-04', '2018-02-24', '', 2, 184, 0),
(1236, 1, '150.00', '150.00', '2018-02-04', '2018-02-08', '', 1, 185, 0),
(1237, 1, '150.00', '160.00', '2018-02-05', '2018-02-08', '', 1, 186, 0),
(1238, 1, '150.00', '15000.00', '2018-02-05', '2018-02-09', '', 1, 187, 0),
(1239, 1, '150.00', '150.00', '2018-02-05', '2018-02-08', '', 1, 188, 0),
(1240, 1, '150.00', NULL, '2018-02-05', NULL, NULL, 1, 189, 0),
(1241, 1, '75.00', '105.00', '2018-02-05', '2018-02-05', '', 1, 27, 0),
(1242, 2, '75.00', '75.00', '2018-02-05', '2018-02-21', '', 1, 27, 0),
(1243, 1, '75.00', '105.00', '2018-02-05', '2018-02-05', '', 1, 118, 0),
(1244, 2, '75.00', '75.00', '2018-02-05', '2018-02-05', '', 1, 118, 0),
(1245, 1, '150.00', NULL, '2018-02-05', NULL, NULL, 1, 190, 0),
(1246, 1, '160.00', NULL, '2018-02-05', NULL, NULL, 2, 191, 0),
(1249, 1, '150.00', NULL, '2018-02-07', NULL, NULL, 1, 193, 0),
(1250, 1, '150.00', NULL, '2018-02-07', NULL, NULL, 1, 194, 0),
(1251, 1, '150.00', NULL, '2018-02-07', NULL, NULL, 1, 195, 0),
(1253, 1, '0.00', '0.00', '2018-02-07', '2018-02-07', '', 1, 196, 0),
(1254, 1, '150.00', '160.00', '2018-02-07', '2018-02-09', '', 2, 197, 0),
(1255, 1, '150.00', NULL, '2018-02-07', NULL, NULL, 1, 198, 0),
(1257, 1, '150.00', NULL, '2018-02-07', NULL, NULL, 1, 199, 0),
(1258, 1, '150.00', NULL, '2018-02-07', NULL, NULL, 1, 200, 0),
(1260, 1, '150.00', '15000.00', '2018-02-08', '2018-02-09', '', 1, 201, 0),
(1261, 1, '150.00', NULL, '2018-02-08', NULL, NULL, 1, 202, 0),
(1263, 1, '150.00', '150.00', '2018-02-08', '2018-02-08', '', 1, 203, 0),
(1264, 1, '150.00', NULL, '2018-02-08', NULL, NULL, 1, 204, 0),
(1266, 1, '75.00', NULL, '2018-02-08', NULL, NULL, 1, 87, 0),
(1267, 2, '75.00', NULL, '2018-02-08', NULL, NULL, 1, 87, 0),
(1268, 1, '150.00', NULL, '2018-02-08', NULL, NULL, 1, 205, 0),
(1270, 1, '80.00', '150.00', '2018-02-08', '2018-02-08', '', 1, 192, 0),
(1271, 2, '80.00', NULL, '2018-02-08', NULL, NULL, 1, 192, 0),
(1272, 1, '75.00', '75.00', '2018-02-08', '2018-02-08', '', 1, 112, 0),
(1273, 2, '75.00', NULL, '2018-02-08', NULL, NULL, 1, 112, 0),
(1274, 1, '150.00', '150.00', '2018-02-08', '2018-02-09', '', 1, 206, 0),
(1276, 1, '150.00', NULL, '2018-02-08', NULL, NULL, 1, 207, 0),
(1278, 1, '160.00', '150.00', '2018-02-09', '2018-02-09', '', 1, 208, 0),
(1279, 1, '150.00', NULL, '2018-02-09', NULL, NULL, 1, 209, 0),
(1280, 1, '160.00', '150.00', '2018-02-09', '2018-02-09', '', 3, 210, 0),
(1281, 1, '150.00', '150.00', '2018-02-09', '2018-02-09', '', 1, 211, 0),
(1282, 1, '160.00', NULL, '2018-02-09', NULL, NULL, 2, 212, 0),
(1283, 1, '150.00', NULL, '2018-02-09', NULL, NULL, 1, 213, 0),
(1285, 1, '80.00', '80.00', '2018-04-19', '2018-06-23', '', 2, 215, 0),
(1286, 1, '80.00', '80.00', '2018-04-23', '2018-07-05', '', 2, 216, 0),
(1287, 1, '80.00', '80.00', '2018-04-23', '2018-07-02', 'Pago nesta data para Lucrece !', 2, 217, 0),
(1288, 1, '80.00', '80.00', '2018-04-24', '2018-07-02', 'Pago pra Fernanda', 1, 218, 0),
(1292, 1, '80.00', '40.00', '2018-04-24', '2018-07-04', 'Pago para Lucrece', 1, 220, 0),
(1293, 1, '80.00', '80.00', '2018-04-24', '2018-07-03', '', 2, 221, 0),
(1294, 1, '80.00', NULL, '2018-04-24', NULL, NULL, 1, 222, 0),
(1295, 1, '80.00', NULL, '2018-04-25', NULL, NULL, 1, 223, 0),
(1297, 1, '80.00', '80.00', '2018-04-25', '2018-06-16', '', 1, 225, 0),
(1298, 1, '80.00', '40.00', '2018-04-25', '2018-06-14', '', 3, 226, 0),
(1300, 1, '80.00', '80.00', '2018-04-26', '2018-05-05', 'Dinheiro Lucreci', 1, 228, 0),
(1304, 1, '80.00', NULL, '2018-04-28', NULL, '', 1, 231, 0),
(1307, 1, '80.00', '80.00', '2018-04-29', '2018-07-05', '', 1, 232, 0),
(1308, 1, '80.00', '80.00', '2018-04-29', '2018-07-05', '', 3, 233, 0),
(1309, 1, '80.00', NULL, '2018-04-30', NULL, NULL, 1, 234, 0),
(1310, 1, '80.00', '80.00', '2018-04-30', '2018-07-04', '', 2, 235, 0),
(1311, 1, '80.00', '0.01', '2018-04-30', '2018-07-05', 'So pra entrar na lista', 1, 236, 0),
(1312, 1, '80.00', NULL, '2018-04-30', NULL, 'Dinheiro pago pelo ADM', 1, 237, 0),
(1313, 1, '80.00', NULL, '2018-04-30', NULL, NULL, 1, 238, 0),
(1314, 1, '80.00', '80.00', '2018-05-01', '2018-06-23', '', 2, 239, 0),
(1315, 1, '80.00', '40.00', '2018-05-01', '2018-07-02', 'Pago para Lucrece', 1, 240, 0),
(1316, 1, '80.00', '40.00', '2018-05-01', '2018-06-30', 'Pago para Lucrece', 1, 241, 0),
(1318, 1, '80.00', '70.00', '2018-05-04', '2018-06-30', 'Pago para Lucrece\r\nFalta 10,00 reais que a Fernanda Gomes irá pagar.', 1, 243, 0),
(1319, 1, '80.00', '80.00', '2018-05-06', '2018-07-02', 'Pago para Lucrece', 1, 244, 0),
(1320, 1, '80.00', '80.00', '2018-05-09', '2018-07-01', '', 1, 245, 0),
(1321, 1, '80.00', '80.00', '2018-05-09', '2018-07-03', '', 1, 246, 0),
(1322, 1, '80.00', '80.00', '2018-05-12', '2018-05-15', '', 1, 247, 0),
(1324, 1, '80.00', '80.00', '2018-05-15', '2018-07-03', 'Pago nesta data para Lucrece', 2, 249, 0),
(1325, 1, '80.00', '80.00', '2018-05-20', '2018-07-02', 'Para Fernanda', 1, 250, 0),
(1326, 1, '80.00', NULL, '2018-05-20', NULL, NULL, 1, 251, 0),
(1327, 1, '80.00', NULL, '2018-05-27', NULL, NULL, 2, 252, 0),
(1334, 1, '26.67', '30.00', '2018-05-28', '2018-05-19', 'Pago à Fernanda.', 1, 227, 0),
(1337, 2, '25.00', NULL, '2018-05-28', NULL, NULL, 1, 227, 0),
(1338, 3, '25.00', '50.00', '2018-05-28', '2018-06-17', '', 1, 227, 0),
(1340, 1, '80.00', NULL, '2018-05-31', NULL, NULL, 1, 254, 0),
(1341, 1, '80.00', '80.00', '2018-06-04', '2018-07-03', '', 1, 255, 0),
(1342, 1, '80.00', NULL, '2018-06-04', NULL, NULL, 1, 256, 0),
(1343, 1, '80.00', '80.00', '2018-06-04', '2018-07-01', '', 2, 257, 0),
(1344, 1, '80.00', '80.00', '2018-06-04', '2018-07-02', '', 1, 258, 0),
(1345, 1, '80.00', '80.00', '2018-06-07', '2018-07-03', '', 1, 259, 0),
(1346, 1, '80.00', NULL, '2018-06-10', NULL, NULL, 1, 260, 0),
(1347, 1, '80.00', '80.00', '2018-06-15', '2018-06-15', 'Pago!', 1, 229, 0),
(1348, 1, '80.00', '80.00', '2018-06-17', '2018-07-03', '', 1, 261, 0),
(1349, 1, '80.00', '80.00', '2018-06-18', '2018-07-05', '', 1, 262, 0),
(1352, 1, '40.00', '25.00', '2018-06-19', '2018-06-19', 'Pagamento para Leticia', 1, 230, 0),
(1353, 2, '40.00', '55.00', '2018-06-19', '2018-06-19', 'Pag. Para Letícia', 2, 230, 0),
(1354, 1, '40.00', '25.00', '2018-06-19', '2018-06-19', 'Pag. Para Letícia', 1, 224, 0),
(1355, 2, '40.00', '55.00', '2018-06-19', '2018-06-19', 'Pag. Para Letícia', 2, 224, 0),
(1356, 1, '80.00', '80.00', '2018-06-21', '2018-07-01', '', 2, 263, 0),
(1357, 1, '80.00', NULL, '2018-06-21', NULL, NULL, 1, 264, 0),
(1358, 1, '80.00', NULL, '2018-06-21', NULL, NULL, 1, 265, 0),
(1361, 1, '80.00', '80.00', '2018-06-21', '2018-06-21', 'Pago para Lucrece', 1, 253, 0),
(1362, 1, '0.00', '80.00', '2018-06-23', '2018-06-23', 'Pago para a Letícia', 1, 219, 0),
(1363, 1, '80.00', '80.00', '2018-06-30', '2018-07-04', '', 1, 266, 0),
(1364, 1, '80.00', '80.00', '2018-06-30', '2018-07-04', '', 1, 267, 0),
(1366, 1, '80.00', '80.00', '2018-07-01', '2018-07-03', '', 1, 268, 0),
(1367, 1, '60.00', '60.00', '2018-07-01', '2018-07-01', '', 2, 214, 0),
(1368, 1, '60.00', '60.00', '2018-07-01', '2018-07-01', '', 2, 248, 0),
(1369, 1, '80.00', NULL, '2018-07-02', NULL, NULL, 1, 269, 0),
(1371, 1, '80.00', '80.00', '2018-07-02', '2018-07-03', '', 1, 271, 0),
(1372, 2, '30.00', NULL, '2018-07-03', NULL, NULL, 1, 237, 0),
(1373, 2, '10.00', '10.00', '2018-07-03', '2018-07-14', '', 1, 243, 0),
(1374, 1, '80.00', '80.00', '2018-07-03', '2018-07-05', '', 1, 272, 0),
(1376, 2, '40.00', '40.00', '2018-07-03', '2018-07-03', '', 1, 240, 0),
(1377, 2, '40.00', '40.00', '2018-07-03', '2018-07-03', '', 1, 241, 0),
(1378, 2, '40.00', NULL, '2018-07-03', NULL, NULL, 1, 226, 0),
(1379, 1, '80.00', '80.00', '2018-07-03', '2018-07-03', '', 1, 273, 0),
(1380, 1, '80.00', '80.00', '2018-07-03', '2018-07-03', 'Meninas das irmãs\r\nPago para Letícia', 1, 274, 0),
(1381, 1, '80.00', NULL, '2018-07-03', NULL, NULL, 1, 275, 0),
(1382, 1, '80.00', '0.01', '2018-07-04', '2018-07-05', 'SO pra entrar na lista', 1, 276, 0),
(1383, 1, '80.00', NULL, '2018-07-04', NULL, NULL, 1, 277, 0),
(1385, 1, '40.00', '40.00', '2018-07-05', '2018-07-04', '', 1, 270, 0),
(1386, 2, '40.00', '40.00', '2018-07-05', '2018-07-05', 'Pago para lilian', 1, 270, 0),
(1387, 2, '40.00', NULL, '2018-07-05', NULL, NULL, 1, 220, 0),
(1390, 1, '80.00', '0.01', '2018-07-05', '2018-07-05', 'So pra aparecer na lista', 1, 242, 0),
(1391, 2, '79.99', NULL, '2018-07-05', NULL, NULL, 1, 242, 0),
(1392, 2, '79.99', NULL, '2018-07-05', NULL, NULL, 1, 276, 0),
(1397, 1, '170.00', NULL, '2019-01-14', NULL, NULL, 2, 279, 0),
(1398, 1, '160.00', NULL, '2019-01-14', NULL, NULL, 1, 280, 0),
(1399, 1, '160.00', '170.00', '2019-01-17', '2019-02-25', '', 3, 281, 33),
(1400, 1, '160.00', NULL, '2019-01-18', NULL, NULL, 1, 282, 0),
(1401, 1, '160.00', NULL, '2019-01-20', NULL, NULL, 1, 283, 0),
(1402, 1, '160.00', NULL, '2019-01-20', NULL, NULL, 3, 284, 0),
(1403, 1, '160.00', NULL, '2019-01-20', NULL, NULL, 3, 285, 0),
(1404, 1, '160.00', NULL, '2019-01-20', NULL, NULL, 1, 286, 0),
(1406, 1, '160.00', NULL, '2019-01-20', NULL, NULL, 1, 288, 0),
(1407, 1, '160.00', NULL, '2019-01-20', NULL, NULL, 1, 289, 0),
(1409, 1, '160.00', NULL, '2019-01-20', NULL, NULL, 1, 291, 0),
(1410, 1, '160.00', NULL, '2019-01-20', NULL, NULL, 1, 292, 0),
(1411, 1, '160.00', '160.00', '2019-01-20', '2019-02-23', '', 1, 293, 33),
(1412, 1, '160.00', '170.00', '2019-01-20', '2019-01-21', 'retirante pagou no dia 21/01, comprovante de pagamento enviado para o Linneker !', 2, 294, 8),
(1413, 1, '160.00', '160.00', '2019-01-20', '2019-02-23', '', 1, 295, 33),
(1414, 1, '160.00', NULL, '2019-01-20', NULL, NULL, 1, 296, 0),
(1415, 1, '160.00', NULL, '2019-01-20', NULL, NULL, 3, 297, 0),
(1417, 1, '160.00', '160.00', '2019-01-20', '2019-02-25', '', 1, 298, 33),
(1418, 1, '160.00', '170.00', '2019-01-20', '2019-02-11', '', 3, 299, 33),
(1419, 1, '160.00', NULL, '2019-01-20', NULL, NULL, 1, 300, 0),
(1420, 1, '160.00', NULL, '2019-01-21', NULL, NULL, 1, 301, 0),
(1422, 1, '160.00', '160.00', '2019-01-21', '2019-02-28', '', 1, 303, 5),
(1423, 1, '160.00', '170.00', '2019-01-21', '2019-02-15', '', 2, 304, 32),
(1426, 1, '160.00', NULL, '2019-01-21', NULL, NULL, 3, 305, 0),
(1427, 1, '160.00', '170.00', '2019-01-21', '2019-02-27', '', 3, 306, 33),
(1428, 1, '160.00', '170.00', '2019-01-21', '2019-01-29', 'Conta da Vick.', 3, 307, 4),
(1431, 1, '170.00', '160.00', '2019-01-21', '2019-02-23', 'Taynara pagou  em mãos o valor de R$160,00 referente ao retiro.', 1, 308, 32),
(1432, 1, '170.00', NULL, '2019-01-21', NULL, NULL, 2, 309, 0),
(1433, 1, '160.00', NULL, '2019-01-21', NULL, NULL, 1, 310, 0),
(1435, 1, '170.00', '170.00', '2019-01-21', '2019-02-13', '', 2, 312, 32),
(1436, 1, '160.00', '160.00', '2019-01-21', '2019-02-17', '', 1, 313, 33),
(1437, 1, '160.00', NULL, '2019-01-21', NULL, NULL, 1, 314, 0),
(1438, 1, '160.00', '160.00', '2019-01-21', '2019-02-08', '', 1, 315, 8),
(1440, 1, '15.00', '15.00', '2019-01-21', '2019-01-31', 'Pagos a Letícia no dia da missa de Dom Bosco', 1, 278, 1),
(1441, 1, '160.00', '160.00', '2019-01-21', '2019-02-20', 'Conta do Banco do Brasil - Thay', 3, 316, 5),
(1442, 1, '160.00', NULL, '2019-01-21', NULL, NULL, 1, 317, 0),
(1443, 1, '170.00', NULL, '2019-01-21', NULL, NULL, 2, 318, 0),
(1445, 1, '160.00', NULL, '2019-01-21', NULL, NULL, 1, 320, 0),
(1447, 1, '160.00', NULL, '2019-01-21', NULL, NULL, 1, 321, 0),
(1448, 1, '160.00', '170.00', '2019-01-21', '2019-02-13', '', 2, 322, 32),
(1450, 1, '160.00', '100.00', '2019-01-21', '2019-02-23', 'Pagará o restante no retiro', 1, 323, 33),
(1452, 1, '160.00', '170.00', '2019-01-22', '2019-02-12', '', 2, 325, 33),
(1453, 1, '160.00', '160.00', '2019-01-23', '2019-02-16', 'Eu, Karen Geovanna recebi o valor de R$160,00 em mãos referente ao pagamento do retiro da inscrita Ariane e repassei o dinheiro para o Linneker.', 1, 326, 32),
(1456, 1, '170.00', '170.00', '2019-01-24', '2019-02-14', 'Pagamento Via site', 2, 329, 1),
(1457, 1, '170.00', '170.00', '2019-01-24', '2019-02-16', 'Pago pra Letícia na maquinha', 2, 330, 1),
(1458, 1, '160.00', '160.00', '2019-01-25', '2019-02-20', '', 1, 331, 33),
(1459, 1, '160.00', '170.00', '2019-01-25', '2019-02-17', 'Pagamento Pelo Site', 2, 332, 1),
(1460, 1, '160.00', NULL, '2019-01-25', NULL, NULL, 1, 333, 0),
(1461, 1, '160.00', NULL, '2019-01-25', NULL, NULL, 1, 334, 0),
(1462, 1, '160.00', '170.00', '2019-01-25', '2019-02-07', '', 3, 335, 33),
(1463, 1, '160.00', '160.00', '2019-01-25', '2019-02-15', '', 1, 336, 5),
(1464, 1, '160.00', '170.00', '2019-01-26', '2019-02-23', '', 2, 337, 4),
(1465, 1, '170.00', NULL, '2019-01-26', NULL, NULL, 2, 338, 0),
(1466, 1, '160.00', '160.00', '2019-01-26', '2019-02-24', '', 1, 339, 33),
(1467, 1, '170.00', '160.00', '2019-01-27', '2019-02-10', '', 1, 340, 32),
(1468, 1, '160.00', '170.00', '2019-01-28', '2019-02-21', '', 3, 341, 33),
(1469, 1, '160.00', '160.00', '2019-01-28', '2019-02-22', '', 1, 342, 5),
(1470, 1, '160.00', NULL, '2019-01-28', NULL, NULL, 1, 343, 0),
(1472, 1, '160.00', '100.00', '2019-01-28', '2019-02-09', '', 1, 344, 4),
(1475, 1, '160.00', '170.00', '2019-01-29', '2019-02-23', '', 2, 346, 4),
(1479, 1, '160.00', '160.00', '2019-01-31', '2019-02-09', '', 1, 350, 33),
(1481, 1, '160.00', '170.00', '2019-02-03', '2019-02-28', '', 2, 352, 5),
(1482, 1, '160.00', '170.00', '2019-02-04', '2019-02-07', 'retirante depositou nesta data na conta da Vick, comprovante de pagamento está em minha posse !', 3, 353, 8),
(1492, 1, '80.00', '80.00', '2019-02-06', '2019-02-06', 'Pagamento feito pela Karen', 1, 349, 1),
(1493, 2, '80.00', '80.00', '2019-02-06', '2019-03-01', 'Paguei em mãos o valor faltante de R$80,00 em mãos para Leticia Bessa no dia 01.03.2019 - Karen Geovanna', 1, 349, 1),
(1494, 1, '160.00', '170.00', '2019-02-07', '2019-02-11', '', 3, 357, 33),
(1495, 1, '160.00', '170.00', '2019-02-07', '2019-02-16', 'Foi passado o cartão de crédito na maquininha com a Letícia.', 2, 358, 32),
(1496, 1, '160.00', NULL, '2019-02-07', NULL, NULL, 1, 359, 0),
(1497, 1, '170.00', '170.00', '2019-02-07', '2019-02-09', 'pago no cartão de crédito pelo site !', 2, 360, 8),
(1498, 1, '170.00', NULL, '2019-02-08', NULL, NULL, 2, 361, 0),
(1500, 1, '160.00', NULL, '2019-02-08', NULL, NULL, 1, 362, 0),
(1501, 1, '160.00', NULL, '2019-02-09', NULL, NULL, 1, 363, 0),
(1502, 1, '160.00', NULL, '2019-02-09', NULL, NULL, 1, 364, 0),
(1503, 1, '160.00', '160.00', '2019-02-09', '2019-02-21', '', 3, 365, 33),
(1504, 1, '160.00', '70.00', '2019-02-10', '2019-02-14', '', 3, 366, 33),
(1505, 1, '160.00', '70.00', '2019-02-10', '2019-02-14', '', 3, 367, 33),
(1506, 1, '160.00', NULL, '2019-02-11', NULL, NULL, 1, 368, 0),
(1508, 1, '160.00', '70.00', '2019-02-11', '2019-02-14', '', 3, 369, 33),
(1509, 1, '160.00', NULL, '2019-02-12', NULL, NULL, 1, 370, 0),
(1510, 1, '170.00', '170.00', '2019-02-13', '2019-02-16', 'Pago pra Letícia maquininha', 2, 371, 1),
(1511, 1, '160.00', '160.00', '2019-02-13', '2019-02-23', '', 1, 372, 33),
(1514, 1, '160.00', NULL, '2019-02-13', NULL, NULL, 1, 375, 0),
(1515, 1, '170.00', '170.00', '2019-02-14', '2019-02-16', 'A Priscila foi na casa das Bessas para passar o cartão de crédito na maquininha, ela pagou o dela e o do namorado dela no cartão.', 2, 376, 32),
(1516, 1, '160.00', '170.00', '2019-02-14', '2019-02-14', '', 3, 377, 33),
(1518, 1, '170.00', NULL, '2019-02-14', NULL, NULL, 2, 379, 0),
(1519, 1, '160.00', NULL, '2019-02-14', NULL, NULL, 1, 380, 0),
(1522, 2, '90.00', NULL, '2019-02-15', NULL, NULL, 1, 369, 0),
(1523, 2, '90.00', '100.00', '2019-02-15', '2019-02-27', '', 1, 367, 8),
(1524, 2, '90.00', '100.00', '2019-02-15', '2019-02-27', '', 1, 366, 8),
(1525, 1, '160.00', '160.00', '2019-02-15', '2019-02-23', 'Cartão de débito', 3, 383, 33),
(1526, 1, '160.00', NULL, '2019-02-15', NULL, NULL, 3, 384, 0),
(1528, 1, '160.00', NULL, '2019-02-16', NULL, NULL, 1, 386, 0),
(1529, 1, '80.00', '80.00', '2019-02-17', '2019-02-17', 'A Thaynara recebeu R$80,00 em mãos referente ao pagamento do retirante Matheus e repassou para a Letícia.', 1, 351, 32),
(1530, 2, '80.00', NULL, '2019-02-17', NULL, NULL, 1, 351, 0),
(1531, 1, '85.00', '130.00', '2019-02-17', '2019-02-16', 'Foi pago para a Letícia no cartão de crédito passado na maquininha.', 2, 302, 32),
(1532, 2, '30.00', '40.00', '2019-02-17', '2019-02-20', 'Depositado na conta de Victtória Leal', 3, 302, 33),
(1534, 1, '160.00', NULL, '2019-02-18', NULL, NULL, 1, 388, 0),
(1535, 1, '160.00', NULL, '2019-02-18', NULL, NULL, 1, 389, 0),
(1537, 1, '160.00', '170.00', '2019-02-18', '2019-02-27', '', 2, 391, 33),
(1541, 1, '160.00', '170.00', '2019-02-18', '2019-02-22', 'Conta da Letícia', 3, 394, 5),
(1543, 1, '160.00', NULL, '2019-02-18', NULL, NULL, 1, 396, 0),
(1545, 1, '160.00', '170.00', '2019-02-19', '2019-02-25', '', 3, 397, 33),
(1547, 1, '160.00', NULL, '2019-02-19', NULL, NULL, 1, 398, 0),
(1555, 1, '170.00', '170.00', '2019-02-20', '2019-02-27', '', 2, 406, 8),
(1556, 1, '160.00', '160.00', '2019-02-21', '2019-02-25', '', 3, 407, 5),
(1558, 1, '160.00', NULL, '2019-02-21', NULL, NULL, 1, 408, 0),
(1563, 1, '125.00', '125.00', '2019-02-22', '2019-02-23', 'Conta da Vick.', 3, 410, 5),
(1565, 1, '125.00', '125.00', '2019-02-22', '2019-02-22', 'Conta Vick.', 3, 409, 5),
(1566, 1, '150.00', '150.00', '2019-02-23', '2019-02-23', '', 1, 411, 4),
(1567, 1, '150.00', '150.00', '2019-02-23', '2019-02-23', '', 1, 395, 33),
(1568, 1, '160.00', NULL, '2019-02-24', NULL, NULL, 3, 412, 0),
(1575, 1, '160.00', '140.00', '2019-02-25', '2019-02-25', 'O valor do retiro foi alterado, a retirante pagou via depósito.', 1, 418, 32),
(1577, 1, '160.00', '170.00', '2019-02-25', '2019-02-25', 'Conta Letícia', 3, 419, 5),
(1578, 1, '170.00', '170.00', '2019-02-25', '2019-03-02', 'Pago no retiro', 2, 420, 1),
(1580, 1, '130.00', '130.00', '2019-02-25', '2019-02-26', 'Conta da Leticia', 3, 417, 5),
(1581, 1, '170.00', NULL, '2019-02-25', NULL, NULL, 2, 422, 0),
(1586, 1, '130.00', '130.00', '2019-02-25', '2019-02-25', '', 1, 423, 32),
(1587, 1, '130.00', '130.00', '2019-02-25', '2019-02-25', 'Valor da promoção à vista.', 3, 424, 33),
(1588, 1, '130.00', '130.00', '2019-02-25', '2019-02-25', 'Valor do desconto à vista.', 3, 405, 33),
(1589, 1, '140.00', '140.00', '2019-02-25', '2019-02-25', 'Valor promocional no cartão.', 2, 416, 33),
(1592, 1, '140.00', '140.00', '2019-02-25', '2019-02-25', '', 2, 415, 33),
(1593, 1, '130.00', '130.00', '2019-02-25', '2019-02-25', '', 3, 354, 33),
(1594, 1, '130.00', '130.00', '2019-02-25', '2019-02-25', '', 1, 425, 33),
(1595, 1, '130.00', '130.00', '2019-02-25', '2019-02-25', '', 1, 421, 33),
(1596, 1, '170.00', NULL, '2019-02-26', NULL, NULL, 2, 427, 0),
(1597, 1, '130.00', '130.00', '2019-02-26', '2019-02-25', 'Pagamento foi realizado via depósito, comprovante foi enviado para o Lucas.', 1, 374, 5),
(1598, 1, '130.00', '130.00', '2019-02-26', '2019-02-26', 'Pagamento foi feito via depósito e a Thaynara mandou a foto do comprovante.', 3, 414, 32),
(1600, 1, '130.00', '130.00', '2019-02-26', '2019-02-26', '', 1, 428, 32),
(1607, 1, '135.00', '135.00', '2019-02-27', '2019-02-27', 'PAGO PARA LETICIA', 1, 348, 8),
(1608, 1, '135.00', '135.00', '2019-02-27', '2019-02-27', 'PAGO PARA LETÍCIA!', 1, 347, 8),
(1609, 1, '130.00', '130.00', '2019-02-27', '2019-02-27', '', 1, 431, 5),
(1610, 1, '130.00', '130.00', '2019-02-27', '2019-02-27', '', 1, 430, 5),
(1611, 1, '45.00', '45.00', '2019-02-27', '2019-02-27', 'PAGO PARA VICK !', 1, 345, 8),
(1612, 1, '130.00', '130.00', '2019-02-27', '2019-02-27', '', 1, 429, 5),
(1613, 1, '130.00', '130.00', '2019-02-27', '2019-02-27', '', 1, 399, 5),
(1614, 1, '140.00', '140.00', '2019-02-27', '2019-02-27', '', 1, 319, 8),
(1615, 1, '130.00', '130.00', '2019-02-27', '2019-02-27', '', 1, 404, 5),
(1616, 1, '150.00', '150.00', '2019-02-27', '2019-02-27', 'PAGO', 1, 324, 8),
(1617, 1, '130.00', '130.00', '2019-02-27', '2019-02-27', '', 1, 328, 5),
(1619, 1, '140.00', '150.00', '2019-02-27', '2019-02-27', '', 1, 385, 33),
(1620, 1, '150.00', '150.00', '2019-02-27', '2019-02-27', '', 2, 403, 8),
(1621, 1, '140.00', '140.00', '2019-02-27', '2019-02-27', 'Pago !', 2, 400, 8),
(1622, 1, '130.00', '140.00', '2019-02-27', '2019-02-22', '', 2, 290, 8),
(1623, 1, '75.00', '85.00', '2019-02-27', '2019-02-27', '', 2, 402, 33),
(1624, 1, '75.00', '85.00', '2019-02-27', '2019-02-27', '', 2, 401, 33),
(1625, 1, '150.00', '140.00', '2019-02-27', '2018-02-27', '', 2, 426, 8),
(1626, 1, '145.00', '145.00', '2019-02-27', '2019-02-27', '', 2, 373, 8),
(1627, 1, '135.00', '145.00', '2019-02-27', '2019-02-27', '', 2, 356, 8),
(1628, 1, '150.00', '150.00', '2019-02-28', '2019-02-27', 'Pago pro Linneker na maquininha', 2, 381, 1),
(1629, 1, '150.00', '150.00', '2019-02-28', '2019-02-27', 'Pago pro Linneker na maquininha', 2, 382, 1),
(1630, 1, '170.00', NULL, '2019-02-28', NULL, NULL, 2, 432, 0),
(1631, 1, '160.00', NULL, '2019-02-28', NULL, NULL, 1, 433, 0),
(1634, 1, '120.00', '130.00', '2019-02-28', '2019-02-27', '', 1, 435, 8),
(1635, 1, '130.00', '130.00', '2019-02-28', '2019-02-28', '', 1, 434, 8),
(1637, 1, '170.00', NULL, '2019-02-28', NULL, NULL, 2, 437, 0),
(1640, 1, '130.00', '130.00', '2019-02-28', '2019-02-28', 'Irmãs da caridade', 1, 436, 27),
(1641, 1, '160.00', '160.00', '2019-02-28', '2019-02-28', '', 1, 311, 27),
(1642, 1, '160.00', '160.00', '2019-02-28', '2019-02-28', '', 1, 393, 5),
(1643, 1, '150.00', '150.00', '2019-02-28', '2019-02-28', '', 1, 438, 27),
(1644, 1, '150.00', '150.00', '2019-02-28', '2019-02-28', '', 1, 355, 27),
(1646, 1, '160.00', '160.00', '2019-02-28', '2019-02-28', '', 1, 387, 27),
(1647, 1, '160.00', NULL, '2019-03-01', NULL, NULL, 1, 439, 0),
(1648, 1, '160.00', NULL, '2019-03-01', NULL, NULL, 1, 440, 0),
(1652, 1, '160.00', NULL, '2019-03-01', NULL, NULL, 1, 442, 0),
(1653, 1, '170.00', NULL, '2019-03-01', NULL, NULL, 2, 1, 0),
(1655, 1, '160.00', NULL, '2019-03-01', NULL, NULL, 1, 444, 0),
(1658, 1, '160.00', '160.00', '2019-03-01', '2019-03-01', 'esta inscrição substitui a vaga e valor pago pela Priscila pois a mesma desistiu de participar!', 1, 443, 27),
(1659, 1, '130.00', '130.00', '2019-03-01', '2019-03-01', '', 1, 441, 27),
(1660, 1, '130.00', '130.00', '2019-03-01', '2019-03-01', '', 1, 287, 27),
(1661, 1, '130.00', '130.00', '2019-03-02', '2019-03-02', 'Pago no retiro', 1, 413, 1),
(1662, 1, '150.00', '150.00', '2019-03-02', '2019-03-02', '', 1, 378, 1),
(1663, 1, '150.00', '150.00', '2019-03-02', '2019-03-02', '', 1, 392, 1),
(1664, 1, '150.00', '150.00', '2019-03-02', '2019-03-02', '', 1, 390, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_pedido_camisa`
--

CREATE TABLE `tb_pedido_camisa` (
  `co_pedido_camisa` int(11) NOT NULL,
  `no_pessoa` varchar(80) DEFAULT NULL,
  `st_pedido` varchar(1) DEFAULT 'N' COMMENT 'S - Sim / N - Não',
  `st_estoque` varchar(1) DEFAULT 'N' COMMENT 'Para pedidos do nosso estoque S - Sim / N - Não',
  `st_entregue` varchar(1) DEFAULT 'N' COMMENT 'S - Sim / N - Não',
  `tp_situacao` varchar(1) DEFAULT 'N' COMMENT 'S - Sim / N - Não',
  `dt_cadastro` datetime DEFAULT NULL,
  `dt_pedido` date DEFAULT NULL,
  `dt_entregue` date DEFAULT NULL,
  `nu_camisa` int(2) DEFAULT NULL,
  `co_cor_camisa` int(11) NOT NULL,
  `co_camisa` int(11) NOT NULL,
  `co_inscricao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_perfil`
--

CREATE TABLE `tb_perfil` (
  `co_perfil` int(11) NOT NULL,
  `no_perfil` varchar(45) NOT NULL COMMENT 'Nome do Perfil',
  `st_status` varchar(1) NOT NULL DEFAULT 'A' COMMENT '''A - Ativo / I - Inativo'''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `tb_perfil`
--

INSERT INTO `tb_perfil` (`co_perfil`, `no_perfil`, `st_status`) VALUES
(1, 'Master', 'A'),
(2, 'Conselheiros', 'A'),
(3, 'Membros', 'A'),
(4, 'Comissão', 'A'),
(5, 'Líderes', 'A'),
(6, 'Fundadores', 'A'),
(7, 'Coordenadores', 'A'),
(8, 'Coord. Administrativo', 'A'),
(9, 'Coord. Formativo', 'A'),
(10, 'Coord. Missionário', 'A'),
(11, 'Lider Música', 'A'),
(12, 'Equipe Música', 'A'),
(13, 'Líder Ornamentação', 'A'),
(14, 'Equipe Ornamentação', 'A'),
(15, 'Líder Animação', 'A'),
(16, 'Equipe Animação', 'A'),
(17, 'Líder Intercessão', 'A'),
(18, 'Equipe Intercessão', 'A'),
(19, 'Líder Teatro', 'A'),
(20, 'Equipe Teatro', 'A'),
(21, 'Líder Comunicação', 'A'),
(22, 'Equipe Comunicação', 'A'),
(23, 'Caminho', 'A'),
(24, 'Elo 1', 'A'),
(25, 'Elo 2', 'A'),
(26, 'Elo 3', 'A'),
(27, 'Elo 4', 'A'),
(28, 'Coord. Caminho', 'A');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_perfil_agenda`
--

CREATE TABLE `tb_perfil_agenda` (
  `co_perfil_agenda` int(11) NOT NULL,
  `co_agenda` int(11) NOT NULL,
  `co_perfil` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `tb_perfil_agenda`
--

INSERT INTO `tb_perfil_agenda` (`co_perfil_agenda`, `co_agenda`, `co_perfil`) VALUES
(1, 1, 4),
(2, 1, 2),
(18, 1, 3),
(3, 2, 4),
(4, 2, 2),
(19, 2, 3),
(11, 3, 8),
(12, 3, 2),
(20, 3, 3),
(22, 4, 7),
(23, 4, 3),
(24, 4, 2),
(15, 5, 3),
(25, 5, 8),
(16, 6, 3),
(26, 6, 3),
(17, 7, 3),
(27, 7, 3),
(28, 8, 3),
(29, 9, 3),
(30, 10, 3),
(31, 11, 3),
(32, 12, 3),
(33, 13, 3),
(34, 14, 3),
(35, 15, 27),
(36, 15, 26),
(37, 15, 25),
(38, 15, 24),
(39, 15, 23),
(40, 16, 27),
(41, 16, 26),
(42, 16, 25),
(43, 16, 24),
(44, 16, 23),
(45, 17, 3),
(46, 18, 3),
(47, 19, 3),
(48, 20, 18),
(49, 21, 3),
(50, 22, 3),
(51, 23, 3),
(52, 24, 3),
(53, 25, 3),
(54, 26, 3),
(55, 27, 3),
(56, 28, 3),
(57, 29, 3),
(58, 30, 3),
(59, 31, 3),
(60, 32, 3),
(61, 33, 3),
(62, 34, 3),
(63, 35, 3),
(64, 36, 3),
(65, 36, 3),
(66, 37, 3);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_perfil_assinante`
--

CREATE TABLE `tb_perfil_assinante` (
  `co_perfil_assinante` int(11) NOT NULL,
  `no_perfil` varchar(45) DEFAULT NULL,
  `st_status` varchar(1) DEFAULT NULL,
  `co_assinante` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_perfil_funcionalidade`
--

CREATE TABLE `tb_perfil_funcionalidade` (
  `co_perfil_funcionalidade` int(11) NOT NULL,
  `co_funcionalidade` int(11) NOT NULL,
  `co_perfil` int(11) NOT NULL,
  `co_perfil_assinante` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `tb_perfil_funcionalidade`
--

INSERT INTO `tb_perfil_funcionalidade` (`co_perfil_funcionalidade`, `co_funcionalidade`, `co_perfil`, `co_perfil_assinante`) VALUES
(1, 1, 1, 0),
(4, 41, 10, 0),
(5, 41, 2, 0),
(6, 42, 3, 0),
(7, 43, 4, 0),
(8, 43, 2, 0),
(9, 44, 4, 0),
(10, 44, 2, 0),
(11, 45, 4, 0),
(12, 45, 2, 0),
(13, 46, 4, 0),
(14, 46, 2, 0),
(15, 47, 8, 0),
(16, 47, 2, 0),
(17, 48, 8, 0),
(18, 48, 2, 0),
(19, 49, 8, 0),
(20, 49, 2, 0),
(21, 50, 8, 0),
(22, 50, 2, 0),
(25, 51, 4, 0),
(26, 51, 2, 0),
(27, 52, 4, 0),
(28, 52, 2, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_pessoa`
--

CREATE TABLE `tb_pessoa` (
  `co_pessoa` int(11) NOT NULL,
  `nu_cpf` varchar(15) DEFAULT NULL,
  `no_pessoa` varchar(100) DEFAULT NULL,
  `nu_rg` varchar(45) DEFAULT NULL,
  `dt_cadastro` datetime DEFAULT NULL,
  `dt_nascimento` date DEFAULT NULL,
  `st_sexo` varchar(1) DEFAULT NULL COMMENT 'M - Masculino ou F - Feminino',
  `co_endereco` int(11) NOT NULL,
  `co_contato` int(11) NOT NULL,
  `co_imagem` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `tb_pessoa`
--

INSERT INTO `tb_pessoa` (`co_pessoa`, `nu_cpf`, `no_pessoa`, `nu_rg`, `dt_cadastro`, `dt_nascimento`, `st_sexo`, `co_endereco`, `co_contato`, `co_imagem`) VALUES
(1, '72681438187', 'LEONARDO MACHADO CARVALHO BESSA', '2077811', '2019-01-05 17:26:32', '1984-07-06', 'M', 1, 1, 0),
(2, '06820934165', 'AMANDA TOMINAGA', '3856116', '2019-01-24 19:52:49', '2002-08-27', 'F', 2, 2, 0),
(3, '04267851182', 'IGOR BORGES LEITE', '3009052', '2018-05-31 19:18:54', '1996-02-25', 'M', 3, 3, 0),
(4, '07332354179', 'BRENDA NAYANE DUDA MOREIRA', '3481937', '2019-02-10 22:42:22', '2000-07-12', 'F', 4, 4, 0),
(6, '05418337157', 'HENRIQUE CARVALHO ASSUNçãO', NULL, '2019-02-26 09:29:43', '1996-02-12', 'M', 239, 6, 0),
(7, '03667767110', 'AMANDA SILVA LIMA', '3325124', '2017-12-04 17:17:34', '1998-05-06', 'F', 7, 7, 0),
(8, '07353224142', 'JERLANE SOARES MAGALHãES DA SILVA', '3739423', '2017-12-04 17:42:47', '2001-02-06', 'F', 8, 8, 0),
(9, '07970134157', 'JOãO VICTOR PEREIRA FERNANDES ', '3947853', '2017-12-04 17:46:51', '2002-03-18', 'M', 9, 9, 0),
(10, '06050858110', 'KAREN GEOVANNA FIGUEREDO DOS SANTOS', NULL, '2019-01-29 22:47:06', '1998-04-17', 'F', 10, 10, 0),
(11, '00666264120', 'THAIS LIMA ROCHA ', '2582737', '2017-12-04 19:22:18', '1988-05-21', 'F', 11, 11, 0),
(13, '02858427143', 'FABRíCIO ALVES OLIVEIRA ', '3558631', '2017-12-04 22:16:26', '2001-07-05', 'M', 13, 13, 0),
(14, '07128618155', 'ISABELA ARáUJO DOS SANTOS', '3694686', '2019-02-14 11:47:20', '2001-07-14', 'F', 14, 14, 0),
(16, '04705500156', 'LUCAS CUNHA RIBEIRO', '3089535', '2019-01-21 13:16:54', '1994-06-09', 'M', 16, 16, 0),
(17, '06565286132', 'WALLISSON MATíAS DE SOUSA ', '3563548', '2017-12-05 09:49:57', '1998-12-24', 'M', 17, 17, 0),
(18, '05418222171', 'MANUELA CORREA MARANGONI', NULL, '2017-12-05 11:06:05', '2000-02-25', 'F', 18, 18, 0),
(19, '06408735100', 'PRISCILA MARTINS MATIAS', '3480987', '2019-02-14 00:16:58', '1999-02-03', 'F', 19, 19, 0),
(20, '03509067185', 'MéRCIA BATISTA MIRANDA', '3042300', '2019-01-20 22:00:09', '1994-09-17', 'F', 20, 20, 0),
(21, '07728521110', 'VERôNICA CRISTINA DE LIMA RIBEIRO', '3714612', '2017-12-06 00:39:45', '2000-09-13', 'F', 21, 21, 0),
(23, '05870295106', 'DIOGO DA SILVA CARDOSO', NULL, '2017-12-06 23:15:25', '1996-12-17', 'M', 23, 23, 0),
(24, '06411059160', 'CáSSIO RODRIGUES CASTRO', NULL, '2017-12-07 00:26:21', '1997-03-16', 'M', 24, 24, 0),
(25, '07025713180', 'CATHERINE MENDES DE JESUS', '3876679', '2019-01-20 23:00:39', '2003-12-02', 'F', 25, 25, 0),
(26, '06820939124', 'EDUARDO PIRES TOMINAGA', '3734569', '2017-12-07 20:21:09', '2000-10-17', 'M', 26, 26, 0),
(27, '05241966137', 'THAINARA TONHA DE SANTANA', '3211173', '2018-01-29 10:32:37', '1999-03-22', 'F', 27, 27, 0),
(29, '05257971143', 'ÉRICA STEPHANIE DE SOUSA CARVALHO', '3737683', '2018-07-04 12:08:03', '2000-12-02', 'F', 29, 29, 0),
(31, '04898784151', 'LUCRECE NERI PORTELA', '3239132', '2019-02-27 17:59:54', '1996-11-06', 'F', 31, 31, 0),
(32, '05063803199', 'PEDRO AUGUSTO PACHECO', '3167740', '2017-12-09 15:40:18', '2000-08-25', 'M', 32, 32, 0),
(33, '07981379164', 'GABRIELLA LIMA TONHA', '536533829', '2017-12-09 16:52:51', '2002-05-25', 'F', 33, 33, 0),
(34, '06597113110', 'RAUL DIAS MIRANDA CARDOSO', '3374856', '2019-02-15 10:28:07', '2001-04-27', 'M', 34, 34, 0),
(36, '03874430103', 'LUANA RIBEIRO BESSA', '2944508', '2019-01-26 08:34:05', '1993-08-17', 'F', 36, 36, 0),
(37, '03904086111', 'LETíCIA MACHADO CARVALHO BESSA', '2807680', '2019-01-23 13:24:08', '1992-08-27', 'F', 37, 37, 0),
(39, '05519198179', 'VITóRIA PRUDêNCIO LIMA', '3287537', '2019-01-21 11:55:59', '1998-06-21', 'F', 39, 39, 0),
(41, '06968592118', 'GABRIELA MENDES SOUZA', '3616392', '2017-12-11 19:17:46', '1999-08-19', 'F', 41, 41, 0),
(42, '07909568100', 'DANIELA MENDES DE SOUZA', '3850639', '2017-12-11 19:23:37', '2001-05-27', 'F', 42, 42, 0),
(44, '05704088147', 'VITOR HUGO BARROSO', '3362969', '2017-12-12 13:46:24', '1999-08-25', 'M', 44, 44, 0),
(47, '03601286106', 'ANTONIO CARLOS RAMOS LIMA', '2652417', '2017-12-14 12:21:53', '1989-10-26', 'M', 47, 47, 0),
(48, '06828355105', 'LARISSA MESQUITA', NULL, '2017-12-16 14:24:06', '1998-10-02', 'F', 48, 48, 0),
(49, '05365778111', 'CARLOS CHRISTIAN', '1129660', '2018-04-24 18:30:45', '1996-05-25', 'M', 49, 49, 0),
(50, '07581435164', 'DANIELLE PATRíCIA GUEDES E SILVA', '3791489', '2017-12-18 15:05:43', '2003-01-23', 'F', 50, 50, 0),
(51, '06697775106', 'BáRBARA SILVA', '3286', '2017-12-18 19:02:07', '1998-06-07', 'F', 51, 51, 0),
(52, '06794961148', 'PAULLO VINíCIUS PEREIRA FOGAçA', '3265417', '2018-07-02 21:10:12', '1994-04-26', 'M', 52, 52, 0),
(53, '04419358181', 'KAROLINA MOTA', NULL, '2018-04-26 21:08:40', '1997-04-30', 'F', 53, 53, 0),
(54, '02567125302', 'MARIA GABRIELA ALVES RODRIGUES', NULL, '2017-12-18 22:16:45', '1996-12-02', 'F', 54, 55, 0),
(55, '06932064111', 'MONIQUE VIEIRA PEREIRA PINHEIRO', '3298085', '2019-01-21 07:25:45', '1999-08-09', 'F', 55, 56, 0),
(56, '04516310139', 'LEANDRO AZEVEDO XAVIER', '3335626', '2019-01-20 22:25:08', '1991-03-23', 'M', 56, 57, 0),
(57, '03894443162', 'THAIS OLIVEIRA DA COSTA MAIA', '2950728', '2019-01-29 13:21:45', '1993-04-23', 'F', 57, 58, 0),
(58, '06980866192', 'LETíCIA MARTINS DE SOUSA', '36493740', '2017-12-19 13:18:08', '2000-02-23', 'F', 58, 59, 0),
(59, '03643347111', 'KEITER DA SILVA MAIA', NULL, '2019-01-29 13:23:31', '1992-11-22', 'M', 59, 60, 0),
(60, '05566516181', 'RONIEL RODRIGUES ALBUQUERQUE', '3208574', '2019-01-25 23:02:27', '1996-03-04', 'M', 60, 61, 0),
(61, '02351127129', 'LILIAN MACHADO CARVALHO BESSA', '2529020', '2019-01-21 11:57:34', '1988-10-31', 'F', 61, 62, 0),
(62, '07844250194', 'THAMIRES BARBOSA DE ALMEIDA', '3837418', '2019-02-06 16:33:04', '2001-08-13', 'F', 62, 63, 0),
(63, '07572266126', 'ANNA CAROLINY RODRIGUES LAURO', '3827115', '2018-02-01 15:53:02', '2002-05-10', 'F', 63, 64, 0),
(64, '05301006142', 'CLARISSE VITóRIA FRANçA PEREIRA', '3355675', '2017-12-21 16:01:28', '1996-03-01', 'F', 64, 65, 0),
(65, '04894739119', 'JOYCE LOPES FERREIRA', NULL, '2018-05-15 22:50:52', '1998-10-28', 'F', 65, 67, 0),
(66, '04583473109', 'SABRINA BELARMINA DE ABREU', '3050440', '2017-12-24 15:13:28', '1994-01-21', 'F', 66, 68, 0),
(67, '00441485189', 'KARINE VICTORIA OLIVEIRA DA SILVA', '3709850', '2019-01-20 21:56:34', '2000-07-20', 'F', 67, 69, 0),
(68, '04321849101', 'LETICIA PEREIRA DA SILVA', '3002886', '2018-06-09 17:52:39', '1999-08-03', 'F', 68, 70, 0),
(69, '07323321174', 'EVELYN RIBEIRO', '3577258', '2017-12-26 13:34:49', '1999-08-13', 'F', 69, 71, 0),
(70, '73386626149', 'TAYNARA RIBEIRO DE LIMA', '3692530', '2019-01-21 10:39:53', '2000-02-21', 'F', 70, 72, 0),
(71, '04900199192', 'ADRIEL CLEMENTINO DOS SANTOS', NULL, '2017-12-27 14:49:41', '1995-06-05', 'M', 71, 73, 0),
(72, '04804195157', 'LINNEKER LIMA ROBERTO GOMES', '2812768', '2019-01-23 13:23:21', '1995-10-04', 'M', 72, 74, 0),
(73, '06244035135', 'KAMILA SILVA', '3433231', '2019-01-21 09:43:10', '1999-01-17', 'F', 73, 75, 0),
(74, '04915965104', 'MARIA TAYANNE', NULL, '2017-12-28 13:35:44', '2000-07-02', 'F', 74, 76, 0),
(75, '04223342193', 'LUAMAR DE SOUSA DA SILVA', '2.670.559', '2017-12-28 22:26:05', '1994-03-04', 'F', 75, 77, 0),
(76, '07048585170', 'CAROLINA  FRANçA DOS SANTOS', '3680244', '2018-04-08 00:24:45', '2000-06-27', 'F', 237, 78, 0),
(77, '70602523125', 'ISABELLA GARCIA MENDES', NULL, '2017-12-30 09:07:52', '1999-07-20', 'F', 77, 79, 0),
(79, '07413552132', 'LAURA DOS SANTOS BUSSOLO', '3313317', '2017-12-30 12:02:00', '2001-06-01', 'F', 79, 81, 0),
(80, '04715844109', 'MAYLLA SOUZA BALZANI', '3241579', '2017-12-30 16:18:32', '1994-04-08', 'F', 80, 82, 0),
(81, '12600380680', 'JESSIKA LAYANE DA CRUZ ROCHA', '19738421', '2018-01-01 17:15:10', '1997-12-14', 'F', 81, 83, 0),
(82, '05016948380', 'BRENA KESSIA APOLINARIO', '20072527220', '2019-02-20 18:24:08', '1990-05-11', 'F', 82, 84, 0),
(83, '05684281109', 'MARIA RITA DE FRANçA OLIVEIRA', '3500655', '2018-01-01 22:40:30', '2002-09-22', 'F', 83, 85, 0),
(84, '13882346612', 'DEIVSON RODRIGO CARVALHO DE LIMA', '20888916', '2018-01-02 21:48:11', '1998-01-17', 'M', 84, 86, 0),
(85, '05297937175', 'VICTTóRIA MACêDO LEAL', '3427266', '2019-02-14 15:40:32', '1998-08-18', 'F', 85, 87, 0),
(86, '05774088103', 'GUSTAVO RODRIGUES VIANA', NULL, '2018-01-03 15:48:20', '1999-02-06', 'M', 86, 88, 0),
(87, '07645973102', 'EDILENE DA CRUZ SILVA', '3804308', '2018-01-04 10:54:06', '2001-01-31', 'F', 87, 89, 0),
(88, '73184500187', 'GLEICE IZABEL DE AZEVEDO', '3244113', '2018-04-25 16:05:49', '1998-11-10', 'F', 88, 90, 0),
(90, '06737827195', 'GABRIEL DA SILVA BARBOSA', '389567', '2019-01-28 21:44:26', '1998-03-02', 'M', 90, 92, 0),
(91, '07680580154', 'PALOMA MARIA FERREIRA DA SILVA', NULL, '2018-01-05 14:49:10', '2001-10-02', 'F', 91, 93, 0),
(92, '05687859160', 'MARIA LETíCIA SOUZA DE JESUS', '3237347', '2018-01-05 15:24:15', '2002-03-22', 'F', 92, 94, 0),
(93, '70773500103', 'DANIEL SILVA ALMEIDA', '3724042', '2018-01-05 16:11:53', '2001-07-26', 'M', 93, 95, 0),
(95, '06609588139', 'THAYNARA BARBOSA DE ALMEIDA', '3421561', '2019-01-29 22:47:29', '1998-05-25', 'F', 95, 97, 0),
(96, '07584039170', 'JENNIFER BIANCA CâNDIDO SOUZA', NULL, '2018-01-06 19:04:42', '2000-10-04', 'F', 96, 98, 0),
(97, '05241971130', 'JOãO DIEGO TONHA DOS SANTOS', '3211162', '2018-04-26 21:13:51', '1996-09-15', 'M', 97, 99, 0),
(98, '00792679121', 'MAYSA PEREIRA DIAS', '3161236', '2018-01-06 00:00:00', '1997-07-13', 'F', 98, 100, 0),
(100, '06175307186', 'FERNANDA SOARES CONCEIçãO', '3607166', '2018-01-06 21:44:40', '2000-08-05', 'F', 100, 102, 0),
(101, '05287289111', 'LETíCIA MARIA LIMA GOMES', '3359694', '2018-01-06 22:00:18', '2001-01-18', 'F', 101, 103, 0),
(103, '06333726176', 'AMANDA NEVES DE CARVALHO', NULL, '2018-01-07 00:00:00', '2001-06-02', 'F', 103, 105, 0),
(104, '05310353100', 'FERNANDA GOMES DE FREITAS MOURA', '3431295', '2019-02-27 17:59:12', '1998-11-25', 'F', 104, 107, 0),
(105, '06142723199', 'PEDRO HENRIQUE PIRES FONTES', '3458321', '2018-01-07 20:22:29', '1999-04-12', 'M', 105, 108, 0),
(106, '55246290182', 'RONNY KEN DIAS TOMINAGA', '1176717', '2018-01-07 20:39:13', '1973-03-03', 'M', 106, 109, 0),
(107, '05014533183', 'BIANCA CECI MARIA DA SILVA VIEIRA JUSTINIANO PINTO', '5903835', '2019-02-13 19:22:27', '1995-02-02', 'F', 107, 110, 0),
(108, '05747827103', 'VICTOR HUGO SOUZA RODRIGUES', '3394541', '2018-01-07 22:31:42', '1997-06-19', 'M', 108, 111, 0),
(109, '06848992135', 'TAYANE MOREIRA DA MOTA', '3378297', '2019-01-21 00:29:26', '1998-08-01', 'F', 109, 112, 0),
(110, '07500097131', 'LAURA MARINA DA SILVA DOCA CHAGAS', '3769811', '2018-01-08 18:18:17', '2004-01-20', 'F', 110, 113, 0),
(111, '06056363112', 'ANA KAROLYNA FIGUEREDO DOS SANTOS', '3331977', '2018-01-08 19:49:01', '1997-02-17', 'F', 111, 114, 0),
(112, '06708192128', 'BRUNO LIMA DE SOUZA', NULL, '2018-01-08 20:22:46', '1996-08-20', 'M', 112, 115, 0),
(113, '05608352130', 'MURILLO MEDEIROS DA COSTA', '2956219', '2019-02-21 19:48:06', '1996-06-29', 'M', 113, 116, 0),
(114, '03937448179', 'NATHALYA PIMENTEL TEMOTE', '2947285', '2019-02-21 22:44:03', '1992-02-14', 'F', 114, 117, 0),
(115, '05931650121', 'PEDRO HENRIQUE DA SILVA DUTRA', '3395545', '2019-02-25 08:05:57', '1997-03-20', 'M', 115, 118, 0),
(116, '03482796122', 'JOãO CARLOS DA COSTA SOUZA', '2934513', '2019-02-21 22:28:20', '1993-07-08', 'M', 116, 119, 0),
(117, '06601467111', 'JESSICA CAMILA CAMPOS SANTOS', '3346717', '2019-01-28 19:54:32', '1998-02-01', 'F', 117, 120, 0),
(118, '03109823594', 'LARA DE SOUSA ALMEIDA', '3708412', '2018-01-09 15:19:35', '2001-04-22', 'F', 118, 121, 0),
(119, '07666266103', 'LARISSA NOBRE DA CRUZ', '3181458', '2018-01-09 22:06:43', '2000-07-03', 'F', 119, 122, 0),
(121, '03931104192', 'BRUNA ALVES DE ALMEIDA', '3634483', '2018-01-11 20:14:55', '2000-02-18', 'F', 121, 124, 0),
(122, '06552593171', 'DéBORA DUARTE HONóRIO', '3361495', '2018-01-12 11:16:48', '2000-07-29', 'F', 122, 125, 0),
(123, '06623316132', 'MARIA CLáUDIA BISPO REIS', '3751734', '2019-01-22 00:09:39', '2003-07-20', 'F', 123, 126, 0),
(124, '06050851107', 'YARA RAQUEL FIGUERêDO ROCHA', '3810048', '2018-01-12 12:47:15', '2002-01-05', 'F', 124, 127, 0),
(125, '03382088100', 'ELTON BARAúNA DE SOUZA', NULL, '2018-01-13 11:31:01', '1994-01-08', 'M', 125, 128, 0),
(126, '02740998104', 'VITOR RIBEIRO DA SILVA', '3327850', '2018-01-13 13:14:57', '1999-03-08', 'M', 126, 129, 0),
(127, '06333037125', 'TAYNARA RODRIGUES DE AZEVEDO', '3219262', '2019-01-21 11:01:27', '1998-05-20', 'F', 127, 130, 0),
(129, '05698978158', 'ROMULO DIAS MIRANDA CARDOSO', '3078508', '2018-02-05 21:01:54', '1997-05-23', 'M', 129, 132, 0),
(130, '05957853100', 'EMANUELLE BEATRIZ DE SOUZA PEREIRA', '23020', '2018-01-16 11:58:03', '2000-06-17', 'F', 130, 133, 0),
(131, '10988854651', 'THAíS ARAúJO XAVIER', '19401646', '2018-01-16 12:00:04', '1998-01-07', 'F', 131, 134, 0),
(132, '81192010191', 'LEILA PIRES TOMINAGA', '1665334', '2018-01-16 14:41:05', '1978-12-24', 'F', 132, 135, 0),
(133, '02403923109', 'MARIANA LIMA DE OLIVEIRA', '2794242', '2019-01-25 10:52:12', '1988-06-02', 'F', 133, 136, 0),
(134, '08566215109', 'ELLEN PATRICIA FONSECA', '3928513', '2019-01-24 20:55:21', '2002-06-01', 'F', 134, 137, 0),
(135, '08102844132', 'CAMILA CARVALHO DA SILVA', '3880945', '2019-02-27 09:59:04', '2002-04-30', 'F', 135, 138, 0),
(136, '05434057104', 'BRUNNA NATIELY HERCULANO VIEIRA', '3266229', '2018-01-16 22:53:21', '2004-06-01', 'F', 136, 139, 0),
(137, '06622524114', 'JHONY FERREIRA', '3440140', '2018-01-17 20:04:06', '1998-09-08', 'M', 137, 140, 0),
(139, '07484604119', 'JEFFERSON FILLIPE DE SOUZA LOPES', '3775465', '2019-03-01 14:22:16', '2001-02-02', 'M', 139, 142, 0),
(140, '06353356110', 'YANKA EVELYN RODRIGUES DOS SANTOS', '3463730', '2019-01-20 22:20:26', '2002-03-16', 'F', 140, 143, 0),
(141, '06762820166', 'GABRIELLE RODRIGUES OLIVEIRA', '3181561', '2018-01-17 21:26:51', '2000-03-04', 'F', 141, 144, 0),
(142, '03267732158', 'ANTÔNIA SIMONE RAMOS LIMA MACIEL', '2584628', '2019-02-06 16:43:34', '1987-12-29', 'F', 142, 145, 0),
(143, '00879718102', 'WESLEY BARBOSA DE CARVALHO MACIEL LIMA', '2284654', '2019-02-13 13:17:33', '1985-02-26', 'M', 143, 146, 0),
(144, '86287770163', 'SILVIA MIKI YAMAMOTO', '1903836', '2018-01-18 16:37:04', '1979-03-04', 'F', 144, 147, 0),
(145, '07041741117', 'LARISSA GONçALVES FERREIRA', '3543511', '2018-07-04 11:17:53', '1999-03-13', 'F', 145, 148, 0),
(146, '06731639117', 'MARIA EDUARDA FREITAS', '3580457', '2018-01-18 21:26:11', '2002-03-14', 'F', 146, 149, 0),
(147, '01304694160', 'MARIA KARLENE RAMOS LIMA', '2410507', '2019-01-26 21:01:19', '1986-08-24', 'F', 147, 150, 0),
(157, '07164686114', 'CECíLIA RúBIA NASCIMENTO SILVA', '3895703', '2018-01-22 16:11:54', '2003-08-28', 'F', 157, 160, 0),
(158, '05498099100', 'BEATRIZ SILVA DE SOUSA', '3839065', '2019-01-20 22:00:58', '2002-01-18', 'F', 158, 161, 0),
(159, '06698074195', 'MATHEUS SALVINO AZEVEDO', '3570685', '2018-01-22 21:46:13', '2001-03-27', 'M', 159, 162, 0),
(160, '07664674140', 'WESLEY SALVINO DE FARIAS', '3501198', '2018-01-22 21:55:41', '2001-09-10', 'M', 160, 163, 0),
(161, '02766014160', 'VICTOR SAMUEL AZEVEDO DE OLIVEIRA', '1574959', '2018-01-22 22:07:15', '2000-04-01', 'M', 161, 164, 0),
(162, '05814614102', 'SINARA CAROLINE QUEIROZ SIMAS', '3369895', '2019-01-25 10:34:56', '1996-12-25', 'F', 162, 165, 0),
(163, '08395416601', 'LUIZ ANTóNIO BIZERRA DE OLIVEIRA', '2550906', '2018-01-23 13:42:29', '1987-06-29', 'M', 163, 166, 0),
(164, '08088901154', 'JOSé EDUARDO BARBOSA BARROS', '3870162', '2018-07-03 20:48:24', '2002-02-19', 'M', 164, 167, 0),
(165, '02783919150', 'GUILHERME MOREIRA FERREIRA', NULL, '2018-01-23 22:55:35', '2001-02-03', 'M', 165, 168, 0),
(166, '06945544133', 'GUILHERME BALBINO DA SILVA', '3419756', '2019-02-28 11:15:00', '2000-07-19', 'M', 166, 169, 0),
(167, '06183496189', 'MARINA LOPES RODRIGUES', NULL, '2018-01-24 10:40:47', '1999-07-24', 'F', 167, 170, 0),
(168, '73098230100', 'BEATRIZ FEITOSA DIAS', '3326686', '2018-01-24 11:32:07', '2001-12-14', 'F', 168, 171, 0),
(169, '03203937123', 'LETíCIA DA SILVA PEREIRA', '3644877', '2019-02-20 09:50:08', '2001-05-16', 'F', 169, 172, 0),
(170, '03203938103', 'RIVELINO NUNES PEREIRA FILHO', '3644879', '2019-02-20 14:24:32', '2003-01-15', 'M', 170, 173, 0),
(171, '04719974120', 'SAMARA DESCONZI', '4325615', '2018-01-25 14:44:32', '1994-09-13', 'F', 171, 174, 0),
(172, '07900479180', 'WESLEY ALVES DE CASTRO', '3875385', '2018-01-25 18:44:53', '2002-08-16', 'M', 172, 175, 0),
(173, '08102854103', 'LUDIMILA CARVALHO DA SILVA', '3882414', '2019-02-27 10:03:09', '2002-04-30', 'F', 173, 176, 0),
(174, '01860707130', 'DEISE MENDES', '5074472', '2018-01-26 09:37:32', '1987-02-17', 'F', 174, 177, 0),
(175, '07137599176', 'FERNANDA KARLA RODRIGUES LIMA', '3585236', '2018-01-26 13:55:38', '2000-03-15', 'F', 175, 178, 0),
(176, '62293245390', 'LAIANE DE OLIVEIRA SLVA', '05727226120157', '2018-01-26 22:32:56', '2002-08-04', 'F', 176, 179, 0),
(177, '07217842166', 'KAMILLY VICTORIA OLIVEIRA DA SILVA', '3709308', '2019-01-20 21:59:00', '2001-12-05', 'F', 177, 180, 0),
(178, '04436682137', 'GUILHERME VALE SILVA MATOS', NULL, '2018-01-27 15:19:30', '1997-09-02', 'M', 178, 181, 0),
(179, '06856422164', 'GABRIELLA VALE SILVA MATOS', NULL, '2018-01-27 15:27:16', '2000-10-11', 'F', 179, 182, 0),
(180, '06040545135', 'IZABELLA VAZ BANDEIRA', '3945332', '2018-01-27 18:47:05', '2002-03-10', 'F', 180, 183, 0),
(181, '06750144179', 'DION LUCAS SERAFIM BISPO', '3395631', '2019-02-17 14:51:42', '1997-08-04', 'M', 181, 184, 0),
(182, '02908039184', 'FERNANDA COêLHO DO NASCIMENTO', '2968317', '2018-01-28 22:46:17', '1996-07-06', 'F', 182, 185, 0),
(183, '05557418180', 'MONIKE NARDI', '4285949', '2019-02-25 09:11:10', '1998-07-29', 'F', 183, 186, 0),
(184, '04939491196', 'ARLAN SANTOS COIMBRA', '3136252', '2018-01-29 21:33:01', '1995-10-02', 'M', 184, 187, 0),
(185, '00143567160', 'LEONARA ALMEIDA', '2914006', '2018-01-30 11:12:00', '1998-02-16', 'F', 185, 188, 0),
(186, '05574670127', 'KEYSON GABRIEL RODRIGUES DE SOUSA', '3744078', '2018-06-30 21:31:36', '2002-12-26', 'M', 186, 189, 0),
(187, '07698409147', 'JONAS RODRIGUES DE SOUSA', '3922129', '2019-02-20 14:31:56', '2004-02-17', 'M', 187, 190, 0),
(188, '06049564108', 'JOãO VICTOR OLIVEIRA BARROS', '3793321', '2019-02-24 15:59:11', '2001-01-27', 'M', 188, 191, 0),
(189, '05858600174', 'AMAURY COSTA SILVA RAMOS', '3094934', '2019-01-31 11:56:22', '1996-12-17', 'M', 189, 192, 0),
(190, '06354574154', 'LUIZ MIGUEL BARBOSA BARROS', '3364481', '2018-02-01 15:21:39', '2000-07-07', 'M', 190, 193, 0),
(191, '00034280103', 'JOSE FERREIRA DOS SANTOS', '4587456', '2018-02-01 21:30:00', '1984-11-23', 'M', 191, 194, 0),
(192, '05461718183', 'LUY BRENNO SANTOS DE SOUZA', '3305358', '2018-02-01 22:34:48', '2002-05-12', 'M', 192, 195, 0),
(193, '04716421503', 'ERNANDO SOUZA DE PAULA', '1108213479', '2018-02-02 11:05:14', '1995-03-06', 'M', 193, 196, 0),
(194, '07606595160', 'HIGOR RODRIGUES DIAS', '3795126', '2018-02-02 15:29:32', '2004-08-15', 'M', 194, 197, 0),
(196, '06089979198', 'HELLEN THAIS DIAS RODRIGUES', '3127539', '2018-02-02 15:54:49', '1995-12-11', 'F', 196, 199, 0),
(197, '03685852124', 'DIEGO ROCHA DA SILVA', '2801200', '2018-02-03 12:31:21', '1995-11-14', 'M', 197, 200, 0),
(198, '04756906133', 'SONIARA APARECIDA MENDES MAIA', '2808318', '2018-02-03 22:41:21', '1989-12-20', 'F', 198, 201, 0),
(199, '04243396175', 'RAQUEL DA COSTA SILVA', '3746218', '2018-02-03 22:44:49', '1990-08-12', 'F', 199, 202, 0),
(200, '02969348101', 'JULIA FARAJ BENN', '2799971', '2018-02-03 22:49:55', '1997-04-04', 'F', 200, 203, 0),
(201, '04969369135', 'MATHEUS MARTINS DA COSTA', '3587574', '2018-02-04 13:23:13', '1994-02-13', 'M', 201, 204, 0),
(202, '04905680174', 'WEMERSON ANDRADE MESSIAS SANTOS', '3126912', '2018-02-04 17:30:48', '1995-06-19', 'M', 202, 205, 0),
(203, '05836568111', 'KAREN MIALICHI DA SILVA MAIA', '3582719', '2018-06-18 08:36:03', '2000-01-29', 'F', 203, 206, 0),
(204, '08155386180', 'GABRIEL DE SOUZA LIMA', '3864239', '2018-02-05 11:46:42', '2003-04-08', 'M', 204, 207, 0),
(205, '05721877189', 'POLYANNA DA COSTA LIMA', '20538', '2018-02-05 02:06:05', '1999-02-27', 'F', 205, 208, 0),
(206, '13736212658', 'JONATAS FRADIQUE BARROSO', '20621259', '2019-01-26 22:55:21', '2001-12-14', 'M', 206, 209, 0),
(207, '08685566100', 'LAíS VIEIRA SOUSA', '3968383', '2018-02-05 18:13:42', '2004-08-13', 'F', 207, 210, 0),
(208, '02871349118', 'ANA LíDIA DE HOLANDA NUNES', '2952356', '2018-02-05 20:35:53', '2001-07-04', 'F', 208, 211, 0),
(209, '03531877127', 'ALEX GEHLHAAR', '5467661', '2018-02-05 22:17:10', '1990-11-07', 'M', 209, 212, 0),
(210, '05999058163', 'JOYCE FERREIRA GOMES', '3440139', '2018-02-05 22:38:17', '1997-02-21', 'F', 210, 213, 0),
(211, '04027231120', 'JOYCE MARQUES SANTANA', '3408815', '2018-04-24 15:47:32', '1998-01-07', 'F', 211, 214, 0),
(212, '00458796131', 'TIAGO MOREIRA GOMES', '3646693', '2018-02-07 08:00:35', '2001-08-24', 'M', 212, 215, 0),
(213, '04387114169', 'ABIGAYL KATHLEEN COSTA DA PENHA', '3031380', '2018-02-07 09:41:06', '1993-09-15', 'F', 213, 216, 0),
(214, '09011125185', 'MARIA LUIZA CAMARGO RAPOSO DE MELO', NULL, '2018-02-07 11:50:45', '2003-11-11', 'F', 214, 217, 0),
(215, '04768775128', 'ELLIEL KASSIO', NULL, '2018-02-07 13:11:40', '1998-09-03', 'M', 215, 218, 0),
(216, '06212376123', 'DANIEL NEGREIRO MARCIEL', '3097828', '2018-02-07 13:41:02', '1998-05-14', 'M', 216, 219, 0),
(217, '05190377156', 'CARLOS AUGUSTO SILVA DAMACENA', '3201756', '2018-02-07 20:40:54', '1995-12-05', 'M', 217, 220, 0),
(218, '05728016103', 'MARIA LUIZA DE SOUSA CAMPOS BRAGA', '3384476', '2019-02-27 09:55:00', '1996-01-19', 'F', 218, 221, 0),
(219, '08991212174', 'MARCOS GABRIEL VASCO DA SILVA', '3810461', '2018-07-03 18:28:35', '2004-11-19', 'M', 219, 222, 0),
(220, '07419326100', 'GUILHERME HENRIQUE DA SILVA COSTA', '3759715', '2018-02-08 12:55:50', '2001-12-24', 'M', 220, 223, 0),
(221, '05606259109', 'ÉRIKA PEREIRA DO PRADO', '3317440', '2018-02-08 13:51:27', '1996-10-22', 'F', 221, 224, 0),
(222, '03726852182', 'RAFAEL FONTENELE', '2844393', '2018-02-08 14:08:22', '1991-12-05', 'M', 222, 225, 0),
(223, '07759869177', 'LETíCIA COELHO BRITO', NULL, '2018-02-08 18:50:34', '2004-10-08', 'F', 223, 226, 0),
(224, '08502378155', 'TAMIRES FERREIRA BARBOSA FELIX', NULL, '2018-02-08 19:41:19', '2004-05-30', 'F', 224, 227, 0),
(225, '03488383105', 'BRUNNA ADRYAH GUIMARãES MOURãO', NULL, '2018-02-08 23:01:47', '2001-10-16', 'F', 225, 228, 0),
(226, '07977141116', 'JúLIA VITóRIA NEGREIRO MARCIEL', '3807699', '2018-02-08 23:14:50', '2002-06-22', 'F', 226, 229, 0),
(227, '05546104180', 'JOãO VICTOR ALVES COELHO', '3299020', '2018-02-09 00:01:48', '2002-04-12', 'M', 227, 230, 0),
(228, '07257508127', 'CAMILA SANTOS GABRIEL', '3719629', '2018-02-09 00:26:19', '2003-02-15', 'F', 228, 231, 0),
(229, '03592193147', 'VITOR VALENTIN BENETTI', '5086293', '2018-02-09 12:34:26', '1991-05-16', 'M', 229, 232, 0),
(230, '07756279174', 'GEOVANNA EMILY ARAúJO SILVA', NULL, '2018-02-09 13:22:02', '2003-04-19', 'F', 230, 233, 0),
(231, '95397434272', 'ALEXSANDRA MAIBERG HAUSSER', '6619507', '2018-02-09 13:30:25', '1995-10-05', 'F', 231, 234, 0),
(232, '05546110155', 'PEDRO PAULO ALVES COELHO', '3.528.368', '2018-02-09 20:27:20', '2003-09-01', 'M', 232, 235, 0),
(233, '04337020365', 'FRANCISCO HENRIQUE MOTA DE SOUZA', '5879927', '2018-04-29 10:48:28', '1996-01-30', 'M', 245, 236, 0),
(234, '06352478107', 'SUYANE TALLITA REIS SILVA', '3460572', '2018-04-29 10:50:07', '1998-07-11', 'F', 246, 237, 0),
(235, '04268513159', 'WINDSOR ALEXANDRE DOS SANTOS SOUZA', '3045945', '2018-04-30 11:35:58', '1993-06-06', 'M', 247, 238, 0),
(236, '07275083183', 'SáVIO BISPO REIS', NULL, '2019-01-21 15:03:08', '2000-09-04', 'M', 248, 239, 0),
(237, '05550465167', 'JACKSON ALVES', '3343427', '2019-01-22 22:06:03', '1996-07-07', 'M', 279, 240, 0),
(238, '05229468106', 'RAFAEL SILVA DE OLIVEIRA', '05229468106', '2018-05-20 21:00:51', '1993-12-04', 'M', 280, 241, 0),
(240, '07499217140', 'BRENO SILVA DE JESUS', '3776706', '2018-05-27 23:48:08', '2001-02-13', 'M', 282, 243, 0),
(241, '05141394123', 'ANA CAROLINA SILVA', '3124534', '2018-06-04 20:05:38', '1996-01-08', 'F', 283, 244, 0),
(242, '06383077163', 'ARIANE NUNES DA SILVA', '3472927', '2019-01-23 14:19:59', '1999-03-01', 'F', 284, 245, 0),
(243, '04206677921', 'MARCIA MELNEK', '85847058', '2019-01-13 16:08:10', '1983-08-03', 'F', 287, 246, 0),
(244, '04944595140', 'ÍTALO FERNANDO DA SILVA LUIZ', '3158490', '2019-01-17 16:42:38', '1995-05-18', 'M', 288, 247, 0),
(245, '04720774148', 'RAFAEL FREITAS DA SILVA', '3060082', '2019-01-18 14:44:59', '1993-06-25', 'M', 289, 248, 0),
(246, '39439641835', 'EDWIRGES CASSIA DE MACEDO', '467680097', '2019-01-19 18:36:25', '1989-10-20', 'F', 290, 249, 0),
(247, '05212276152', 'DANIELA SANTOS DE ALMEIDA', NULL, '2019-01-20 21:55:19', '1998-01-16', 'F', 291, 250, 0),
(248, '02937355145', 'JAKELINE VILELA DE SOUSA', NULL, '2019-01-20 22:01:18', '1994-08-15', 'F', 292, 251, 0),
(249, '00879041102', 'ANDERSON BRAGA INOCENTES', '3.289.218', '2019-01-20 22:02:18', '1996-10-14', 'M', 293, 252, 0),
(250, '05321176116', 'MATHEUS KLISMANN CARVALHO COSTA', '3238804', '2019-01-20 22:03:04', '1997-07-15', 'M', 294, 253, 0),
(251, '03428527100', 'MARIANA SALLES DE MELO', '3346790', '2019-01-20 22:11:46', '1998-02-28', 'F', 295, 254, 0),
(252, '05715367190', 'THAíS CRISTINA CAMPOS SANTOS', '3346747', '2019-01-20 22:15:51', '1996-02-05', 'F', 296, 255, 0),
(253, '06602130102', 'MARIA FERNANDA PIRES DA SILVA', '3307821', '2019-01-20 22:18:24', '2000-01-21', 'F', 297, 256, 0),
(254, '05519731373', 'RELKA MARIA PONTE AGUIAR', '20074073936', '2019-01-20 22:21:42', '1994-01-12', 'F', 298, 257, 0),
(255, '07119942182', 'GEOVANNA VICTHORIA CARDOSO SIQUEIRA', NULL, '2019-01-20 23:31:06', '2001-06-09', 'F', 299, 258, 0),
(256, '06817128137', 'ANA CAROLINA MEIRELES FELIPE', '3105779', '2019-01-20 23:51:16', '1998-03-13', 'F', 300, 259, 0),
(257, '07899778182', 'KEYCE CRISTINA OLIVEIRA DOS SANTOS', '3942048', '2019-01-21 00:12:05', '2004-10-10', 'F', 301, 260, 0),
(258, '04930461197', 'MARIA GIOVANNA BARROS FERNANDES', '3820878', '2019-01-21 10:30:20', '2001-09-02', 'F', 302, 261, 0),
(259, '01851898140', 'GABRIELLEN CINTIA DE OLIVEIRA CAMPOS', '3599038', '2019-01-21 10:51:18', '2000-03-09', 'F', 303, 262, 0),
(260, '07140603138', 'BEATRIZ SIMõES DA SILVA MELO', '3690093', '2019-01-21 11:14:08', '2000-11-27', 'F', 304, 263, 0),
(261, '07606456127', 'GUSTAVO VINíCIUS ALVES BARBOSA PIMENTA', '3798185', '2019-01-21 11:24:06', '2001-12-18', 'M', 305, 264, 0),
(262, '08293377178', 'DEISYRE BISPO CARDOSO', NULL, '2019-01-21 11:48:00', '2003-03-26', 'F', 306, 265, 0),
(263, '05963855101', 'ESTER CRISTINA DURVAL PEREIRA', '3923333', '2019-01-21 12:28:54', '2002-04-12', 'F', 307, 266, 0),
(264, '03075910180', 'SARA DA MOTA MENDONçA', '3334043', '2019-01-21 14:04:12', '2001-10-14', 'F', 308, 267, 0),
(265, '04949392140', 'CAIO CéSAR NUNES CABILó', '356871', '2019-01-21 15:20:32', '1998-08-22', 'M', 309, 268, 0),
(266, '04056176159', 'DANILO ARANTES SEBASTIãO', '3833327', '2019-01-21 15:35:20', '2000-07-26', 'M', 310, 269, 0),
(267, '01135804109', 'ISABELA CRISTINA CAPITULINO XIMENES ARAGãO', '3681195', '2019-01-21 17:55:49', '2002-09-10', 'F', 311, 270, 0),
(268, '05877553186', 'MARIA CLARA DOS SANTOS RIBEIRO', '3497005', '2019-01-21 19:33:46', '2001-04-24', 'F', 312, 271, 0),
(271, '05401945140', 'RAYSSA PEREIRA DE OLIVEIRA', '3323385', '2019-01-24 22:04:09', '1996-12-28', 'F', 315, 274, 0),
(272, '04103487160', 'POLYANA VELOSO DE OLIVEIRA', '3305217', '2019-01-24 23:33:03', '1988-08-14', 'F', 316, 275, 0),
(273, '00139964100', 'JEANE SILVA DE ANDRADE', '2854961', '2019-01-25 20:11:44', '1990-04-09', 'F', 317, 276, 0),
(274, '18320684714', 'LETICIA MIRANDA MORAES', '307498972', '2019-01-25 20:18:26', '2001-07-07', 'F', 318, 277, 0),
(275, '07195528189', 'JOÃO VICTOR LUZIANO PEREIRA CALISTO', '6697317', '2019-01-25 22:14:47', '2001-01-19', 'M', 319, 278, 0),
(276, '06352404162', 'ALINE CARVALHO DE LIMA', NULL, '2019-01-26 10:37:16', '1998-06-29', 'F', 320, 279, 0),
(277, '06587335160', 'JUCéLIA SARAIVA DOS SANTOS', NULL, '2019-01-27 18:09:20', '1998-02-28', 'F', 321, 280, 0),
(278, '03472358165', 'AYRTON FERREIRA LOPES', '3003429', '2019-01-28 11:31:12', '1994-05-29', 'M', 322, 281, 0),
(279, '06586182107', 'MATHEUS HUMBERTO MIRANDA RIBEIRO', '3022280', '2019-01-31 15:11:46', '1999-01-29', 'M', 323, 282, 0),
(280, '06673024178', 'GABRIEL WALKER', '3561444', '2019-02-02 13:21:21', '1999-07-07', 'M', 324, 283, 0),
(281, '07715403105', 'JOAO VICTOR RIBEIRO DA SILVA', '3833792', '2019-02-04 14:13:35', '2002-11-25', 'M', 325, 284, 0),
(282, '02334436224', 'RAQUEL BESERRA', '1363090', '2019-02-06 10:53:36', '1998-01-29', 'F', 326, 285, 0),
(283, '07097287195', 'GABRIELLY MANGABEIRA LOURENçO DE LIMA', '3681153', '2019-02-07 00:20:37', '2002-04-26', 'F', 327, 286, 0),
(284, '04522772130', 'NATALIA AFONSO SOARES', NULL, '2019-02-07 14:10:17', '2000-04-30', 'F', 328, 287, 0),
(285, '07441849160', 'ANA FLáVIA MOREIRA E SILVA COELHO', '3740487', '2019-02-07 22:25:29', '2000-02-09', 'F', 329, 288, 0),
(286, '04995846190', 'ALAN MATOS LOURENçO', '3145877', '2019-02-07 23:25:53', '1995-07-11', 'M', 330, 289, 0),
(287, '06085749104', 'MILENA DE OLIVEIRA', NULL, '2019-02-08 11:37:12', '1998-06-30', 'F', 331, 290, 0),
(288, '08368052327', 'VICTORIA CRISTINA SOUSA LIMA', '0583227520169', '2019-02-08 11:40:14', '2000-06-30', 'F', 332, 291, 0),
(289, '04252687136', 'ADRIANA ARRUDA DE JESUS', '2518260', '2019-02-09 09:55:01', '1993-02-17', 'F', 333, 292, 0),
(290, '03510723147', 'NATHáLIA SARAIVA DE SOUZA', '2869058', '2019-02-09 12:40:42', '1991-10-24', 'F', 334, 293, 0),
(291, '05194514140', 'CAROLINA ROMEIRO MORAES', '2879779', '2019-02-09 16:06:05', '1997-09-05', 'F', 335, 294, 0),
(292, '05977268173', 'JOãO PAULO MOREIRA DA NOBREGA', '3322358', '2019-02-10 22:38:33', '1999-12-15', 'M', 336, 295, 0),
(293, '04728267199', 'ANA CAROLINA FERREIRA DA COSTA', '3536302', '2019-02-11 12:50:39', '2003-01-30', 'F', 337, 296, 0),
(294, '06639749173', 'MARIA JULIA DE FREITAS', '3621573', '2019-02-11 19:10:11', '2002-02-10', 'F', 338, 297, 0),
(295, '05738747194', 'LORRANE HESTER PEREIRA ROCHA', '3350896', '2019-02-12 10:11:19', '2001-07-18', 'F', 339, 298, 0),
(296, '05618299186', 'DIERFE DE DEUS LIMA', '3037829', '2019-02-13 09:05:17', '1998-03-22', 'M', 340, 299, 0),
(297, '70275105105', 'ANDRESSA CARVALHO DA SILVA', NULL, '2019-02-13 10:47:11', '2000-07-12', 'F', 341, 300, 0),
(298, '04530557103', 'KARINA BARBOSA MENDES', '2992293', '2019-02-13 19:07:47', '1994-07-27', 'F', 342, 301, 0),
(299, '07397443303', 'MARCELO ALVES DA SILVA', '3520963', '2019-02-14 10:20:16', '1999-06-25', 'M', 343, 302, 0),
(300, '05134023140', 'ANA KAROLINY MARTINS TAVARES', '3023086', '2019-02-14 14:55:31', '1994-11-15', 'F', 344, 303, 0),
(301, '07399613141', 'BRUNO SILVA DOS SANTOS', '3980763', '2019-02-14 15:11:51', '2001-01-02', 'M', 345, 304, 0),
(302, '01389936104', 'WELINGTON BARBOSA DE CARVALHO MACIEL LIMA', '2412467', '2019-02-14 21:51:19', '1987-04-14', 'M', 346, 305, 0),
(303, '01518921132', 'ANA PAULA  CARVALHO DA SILVA', '2423176', '2019-02-14 22:05:08', '1988-08-08', 'F', 347, 306, 0),
(304, '07573284152', 'SARAH GUIMARãES PEREIRA CAVALCANTE', '3817835', '2019-02-15 23:13:05', '2002-03-07', 'F', 348, 307, 0),
(305, '03878397127', 'SANDRA RAQUEL DE OLIVEIRA SILVA', '2857357', '2019-02-16 10:38:53', '1990-01-17', 'F', 349, 308, 0),
(306, '04425611136', 'DANIELA FARIAS GOMES', '3804660', '2019-02-16 17:05:39', '2001-08-19', 'F', 350, 309, 0),
(307, '04107752151', 'LUCAS BARBOSA FARIAS', '2638201', '2019-02-18 09:53:14', '1992-03-12', 'M', 351, 310, 0),
(308, '05969953180', 'DANYELLE SOUZA SILVA', '3626902', '2019-02-18 11:01:53', '2003-12-23', 'F', 352, 311, 0),
(309, '02379728160', 'ANA LúCIA GOMES FIGUEIRó ALVES', '1865710', '2019-02-18 17:55:38', '1980-04-19', 'F', 353, 312, 0),
(310, '03275210157', 'STEPHANIE PAIVA SILVA', '3058976', '2019-02-18 18:12:25', '1997-07-30', 'F', 354, 313, 0),
(311, '87494299149', 'TIO FOFãO', '1761141', '2019-02-18 18:16:25', '1978-12-30', 'M', 355, 314, 0),
(312, '70935284141', 'LUíS FELLYPE MORAES DE AQUINO', '3553008', '2019-02-18 20:21:52', '2000-08-23', 'M', 356, 315, 0),
(313, '06137617157', 'EDUARDO MIRANDA DE SOUZA SANTANA', '3700790', '2019-02-18 20:22:49', '2001-10-14', 'M', 357, 316, 0),
(314, '02562538110', 'BáRBARA SANY GOMES ALVES', '3342514', '2019-02-18 22:38:20', '2000-10-05', 'F', 358, 317, 0),
(315, '06231690105', 'MARIA EDUARDA CARDOSO DE ARAUJO', NULL, '2019-02-18 22:59:10', '2003-03-29', 'F', 359, 318, 0),
(316, '06622619174', 'FLáVIA CAROLINA FERREIRA LINHARES', '3501793', '2019-02-19 07:25:58', '1999-04-21', 'F', 360, 319, 0),
(317, '05272520181', 'YASMIM OLIVEIRA FERREIRA DOS SANTOS', '3044396', '2019-02-19 17:30:55', '1992-10-11', 'F', 361, 320, 0),
(318, '08060127144', 'RENATA FRANCISCA NOGUEIRA DOS SANTOS', '38883880', '2019-02-19 19:06:40', '2001-11-04', 'F', 362, 321, 0),
(319, '05339850137', 'TIAGO STEFERSON DA SILVA ARAÚJO', '3235485', '2019-02-20 12:25:10', '1995-03-10', 'M', 363, 322, 0),
(320, '05603569190', 'BIANCA GOMES DE SOUZA', '3249294', '2019-02-20 12:28:54', '1996-01-19', 'F', 364, 323, 0),
(321, '05880597148', 'JOãO VICTOR FERREIRA DE ARAúJO', '3385270', '2019-02-20 17:06:14', '1998-07-25', 'M', 365, 324, 0),
(322, '07702576154', 'GABRIEL ALVINO MARTINS', NULL, '2019-02-21 18:20:46', '2001-11-07', 'M', 366, 325, 0),
(323, '06024657102', 'LARISSA CORREIA MARIANO', '3440871', '2019-02-22 19:17:47', '1999-02-27', 'F', 367, 326, 0),
(324, '11228775605', 'BáRBARA HELENA SOUSA CIRILO', '3313414', '2019-02-24 14:33:49', '2000-09-18', 'F', 368, 327, 0),
(325, '07670429135', 'ARTHUR SIMON BARBOSA DA SILVA E SA', '3809220', '2019-02-24 21:16:27', '2003-10-04', 'M', 369, 328, 0),
(326, '11120352657', 'WANDERSON FERNANDES DE SOUZA', '49444762', '2019-02-24 22:15:58', '1993-05-13', 'M', 370, 329, 0),
(327, '05896884133', 'CLARA REGINA RODRIGUES', '3630361', '2019-02-24 22:32:12', '2001-06-20', 'F', 371, 330, 0),
(328, '07188202150', 'MARIA RITA OLIVEIRA FEITOSA', '3707525', '2019-02-25 11:25:13', '2000-10-02', 'F', 372, 331, 0),
(329, '72985020344', 'LUCIANNE KAREN NOGUEIRA CORREIA', '132075506', '2019-02-25 12:10:57', '1976-07-16', 'F', 373, 332, 0),
(330, '07154102101', 'VITOR ARAUJO MARIANO', '3709322', '2019-02-25 13:05:26', '1999-09-06', 'M', 374, 333, 0),
(331, '06611566139', 'RHAíSSA DOMINGOS DE CASTRO', '3451464', '2019-02-25 13:40:12', '1997-11-27', 'F', 375, 334, 0),
(332, '05787935128', 'PAULO VICTOR DA SILVA SOUZA', NULL, '2019-02-25 14:19:27', '1999-05-28', 'M', 376, 335, 0),
(333, '06689223116', 'JANDERSON WíLLAME GONçALVES BEZERRA', '3567998', '2019-02-25 18:25:24', '2002-12-11', 'M', 377, 336, 0),
(334, '01637891180', 'THIAGO MARINHO DE OLIVEIRA VILAS BOAS', '3704028', '2019-02-25 20:16:42', '2000-08-18', 'M', 378, 337, 0),
(335, '05701818101', 'ISABELA MAITER VERAS DE SOUZA', '3355258', '2019-02-25 20:28:47', '1996-11-19', 'F', 379, 338, 0),
(336, '07393099942', 'GABRIELLA ANDRADE DOS SANTOS LIMA', '3252780', '2019-02-26 00:35:48', '1993-02-21', 'F', 380, 339, 0),
(337, '04384294190', 'HENRIQUE NUNES DE SOUSA', '4945345', '2019-02-26 19:38:07', '1993-06-07', 'M', 381, 340, 0),
(338, '07048559179', 'MARIANA LILIAN LIMA MAIA', '3082211', '2019-02-28 11:19:51', '1998-08-24', 'F', 382, 341, 0),
(339, '06259635125', 'CARLOS EDUARDO RIBEIRO DOS SANTOS', '3417133', '2019-02-28 11:40:52', '2000-03-12', 'M', 383, 342, 0),
(340, '06256485106', 'PEDRO HENRIQUE RIBEIRO DOS SANTOS', '3417142', '2019-02-28 11:47:39', '1997-12-08', 'M', 384, 343, 0),
(341, '13834759708', 'GLAUCIA PENHA MENDES', NULL, '2019-02-28 16:15:24', '1984-04-28', 'F', 385, 344, 0),
(342, '06702153171', 'GABRIELE SOUZA CONDE', NULL, '2019-02-28 19:58:41', '1999-08-06', 'F', 386, 345, 0),
(343, '08472945103', 'SAMARA ADRIELLY DE OLIVEIRA GASPAR', NULL, '2019-02-28 21:02:17', '2003-10-01', 'F', 387, 346, 0),
(344, '04780102146', 'THIAGO NUNES NEVES', '3109677', '2019-03-01 08:05:30', '1997-02-26', 'M', 388, 347, 0),
(345, '07099105175', 'JOãO DAVID DE JESUS COSTA', '7110571', '2019-03-01 08:29:09', '1999-06-24', 'M', 389, 348, 0),
(346, '04752608138', 'STEFFANY SILVA SOBRINHO', '3025005', '2019-03-01 10:07:20', '1997-03-23', 'F', 390, 349, 0),
(347, '02946012107', 'RAFAELA BARBOSA RAFACHO MOURA', '5285840', '2019-03-01 14:26:51', '1998-11-29', 'F', 391, 350, 0),
(348, '06319309148', 'RAFAEL OLIVEIRA SUCUPIRA', '3479165', '2019-03-01 14:45:59', '2002-03-17', 'M', 392, 351, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_plano`
--

CREATE TABLE `tb_plano` (
  `co_plano` int(11) NOT NULL,
  `dt_cadastro` datetime DEFAULT NULL,
  `no_plano` varchar(100) DEFAULT NULL,
  `nu_mes_ativo` int(1) DEFAULT NULL COMMENT 'Número de meses ativo do plano (1, 3, 6, 12 e 24)',
  `st_status` varchar(1) DEFAULT 'A' COMMENT 'Status do plano A - Ativo / I - Inativo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_plano_assinante`
--

CREATE TABLE `tb_plano_assinante` (
  `co_plano_assinante` int(11) NOT NULL,
  `nu_valor` decimal(10,2) DEFAULT NULL,
  `dt_cadastro` datetime DEFAULT NULL,
  `ds_observacao` text,
  `co_plano` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_plano_assinante_assinatura`
--

CREATE TABLE `tb_plano_assinante_assinatura` (
  `co_plano_assinante_assinatura` int(11) NOT NULL,
  `dt_cadastro` datetime DEFAULT NULL,
  `dt_expiracao` date DEFAULT NULL COMMENT 'data de expiriração da assinatura',
  `nu_filiais` int(11) DEFAULT '0' COMMENT 'Número de filiais para a assinatura',
  `nu_valor_assinatura` decimal(6,2) DEFAULT NULL COMMENT 'Valor final da assinatura',
  `nu_profissionais` int(3) DEFAULT NULL COMMENT 'Número de profissionais que o sistema ira gerenciar',
  `co_assinante` int(11) NOT NULL,
  `co_plano_assinante` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_plano_pacote`
--

CREATE TABLE `tb_plano_pacote` (
  `co_plano_pacote` int(10) NOT NULL COMMENT 'Planos do Módulo',
  `co_plano` int(11) NOT NULL,
  `co_pacote` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_projeto`
--

CREATE TABLE `tb_projeto` (
  `co_projeto` int(11) NOT NULL,
  `no_projeto` varchar(80) DEFAULT NULL,
  `dt_cadastro` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `tb_projeto`
--

INSERT INTO `tb_projeto` (`co_projeto`, `no_projeto`, `dt_cadastro`) VALUES
(1, 'Web Gej', '2019-03-27 10:50:32');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_sessao`
--

CREATE TABLE `tb_sessao` (
  `co_sessao` int(11) NOT NULL,
  `no_sessao` varchar(80) DEFAULT NULL,
  `dt_cadastro` datetime DEFAULT NULL,
  `co_modulo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `tb_sessao`
--

INSERT INTO `tb_sessao` (`co_sessao`, `no_sessao`, `dt_cadastro`, `co_modulo`) VALUES
(1, 'Sistema', '2019-03-27 11:15:50', 1),
(2, 'Site', '2019-03-27 11:16:02', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_tamanho_camisa`
--

CREATE TABLE `tb_tamanho_camisa` (
  `co_tamanho_camisa` int(2) NOT NULL,
  `no_tamanho` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `tb_tamanho_camisa`
--

INSERT INTO `tb_tamanho_camisa` (`co_tamanho_camisa`, `no_tamanho`) VALUES
(1, 'BL PP'),
(2, 'BL P'),
(3, 'BL M'),
(4, 'BL G'),
(5, 'BL GG'),
(6, 'P'),
(7, 'M'),
(8, 'G'),
(9, 'GG'),
(10, 'XG');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_tipo_pagamento`
--

CREATE TABLE `tb_tipo_pagamento` (
  `co_tipo_pagamento` int(11) NOT NULL,
  `ds_tipo_pagamento` varchar(45) DEFAULT NULL,
  `sg_tipo_pagamento` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `tb_tipo_pagamento`
--

INSERT INTO `tb_tipo_pagamento` (`co_tipo_pagamento`, `ds_tipo_pagamento`, `sg_tipo_pagamento`) VALUES
(1, 'Dinheiro', 'DI'),
(2, 'Cartão de Crédito', 'CC'),
(3, 'Depósito Bancário', 'DB');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_trafego`
--

CREATE TABLE `tb_trafego` (
  `co_trafego` int(11) NOT NULL,
  `nu_ip` varchar(20) DEFAULT NULL,
  `ds_pais` varchar(100) DEFAULT NULL,
  `ds_code_pais` varchar(100) DEFAULT NULL,
  `ds_uf` varchar(45) DEFAULT NULL,
  `ds_estado` varchar(100) DEFAULT NULL,
  `ds_cidade` varchar(120) DEFAULT NULL,
  `ds_navegador` varchar(45) DEFAULT NULL,
  `ds_sistema_operacional` varchar(45) DEFAULT NULL,
  `ds_dispositivo` varchar(45) DEFAULT NULL,
  `ds_agente` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `tb_trafego`
--

INSERT INTO `tb_trafego` (`co_trafego`, `nu_ip`, `ds_pais`, `ds_code_pais`, `ds_uf`, `ds_estado`, `ds_cidade`, `ds_navegador`, `ds_sistema_operacional`, `ds_dispositivo`, `ds_agente`) VALUES
(1, '::1', 'Desconhecido', 'Desconhecida', 'Desconhecida', 'Desconhecida', 'Desconhecida', 'Firefox', 'Windows 10', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0'),
(2, '::1', 'Desconhecido', 'Desconhecida', 'Desconhecida', 'Desconhecida', 'Desconhecida', 'Firefox', 'Windows 10', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0'),
(3, '127.0.0.1', 'Desconhecido', 'Desconhecida', 'Desconhecida', 'Desconhecida', 'Desconhecida', 'Firefox', 'Windows 10', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0'),
(4, '127.0.0.1', 'Desconhecido', 'Desconhecida', 'Desconhecida', 'Desconhecida', 'Desconhecida', 'Firefox', 'Windows 10', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0'),
(5, '127.0.0.1', 'Desconhecido', 'Desconhecida', 'Desconhecida', 'Desconhecida', 'Desconhecida', 'Firefox', 'Windows 10', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0'),
(6, '127.0.0.1', 'Desconhecido', 'Desconhecida', 'Desconhecida', 'Desconhecida', 'Desconhecida', 'Firefox', 'Windows 10', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_usuario`
--

CREATE TABLE `tb_usuario` (
  `co_usuario` int(10) NOT NULL,
  `ds_senha` varchar(100) NOT NULL,
  `ds_code` varchar(50) NOT NULL COMMENT 'Senha criptografada',
  `st_status` varchar(1) NOT NULL DEFAULT 'I' COMMENT '''A - Ativo / I - Inativo''',
  `st_troca_senha` varchar(1) DEFAULT 'N',
  `dt_cadastro` datetime NOT NULL,
  `co_imagem` int(10) NOT NULL,
  `co_pessoa` int(11) NOT NULL,
  `co_assinante` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `tb_usuario`
--

INSERT INTO `tb_usuario` (`co_usuario`, `ds_senha`, `ds_code`, `st_status`, `st_troca_senha`, `dt_cadastro`, `co_imagem`, `co_pessoa`, `co_assinante`) VALUES
(1, '123456**', 'TVRJek5EVTJLaW89', 'A', 'S', '2016-10-31 00:00:00', 1, 1, 0),
(2, 'Lucrece0611', 'VEhWamNtVmpaVEEyTVRFPQ==', 'A', 'N', '2017-12-09 00:00:00', 31, 31, 0),
(3, 'raul**123', 'Y21GMWJDb3FNVEl6', 'A', 'N', '2017-12-10 00:00:00', 34, 34, 0),
(4, 'santosdecalcajeansjpII123', 'YzJGdWRHOXpaR1ZqWVd4allXcGxZVzV6YW5CSlNURXlNdz09', 'A', 'N', '2017-12-10 00:00:00', 36, 36, 0),
(5, 'pe.pio2309', 'Y0dVdWNHbHZNak13T1E9PQ==', 'A', 'N', '2017-12-11 00:00:00', 37, 37, 0),
(6, 'OPACObrubs123', 'VDFCQlEwOWljblZpY3pFeU13PT0=', 'A', 'N', '2017-12-11 00:00:00', 39, 39, 0),
(7, '311088*lili**', 'TXpFeE1EZzRLbXhwYkdrcUtnPT0=', 'A', 'N', '2017-12-20 00:00:00', 62, 61, 0),
(8, 'Maria10', 'VFdGeWFXRXhNQT09', 'A', 'N', '2017-12-27 00:00:00', 74, 72, 0),
(9, 'Ultimagot4', 'Vld4MGFXMWhaMjkwTkE9PQ==', 'I', 'N', '2017-12-27 00:00:00', 75, 73, 0),
(10, 'Dieguinho10', 'UkdsbFozVnBibWh2TVRBPQ==', 'I', 'N', '2018-01-06 00:00:00', 99, 97, 0),
(11, 'MA130797', 'VFVFeE16QTNPVGM9', 'I', 'N', '2018-01-06 00:00:00', 100, 98, 0),
(12, 'An020601', 'UVc0d01qQTJNREU9', 'I', 'N', '2018-01-07 00:00:00', 105, 103, 0),
(13, 'euamominhaMAE123', 'WlhWaGJXOXRhVzVvWVUxQlJURXlNdz09', 'A', 'N', '2018-01-31 00:00:00', 192, 189, 0),
(16, '120296120296hca*', 'TVRJd01qazJNVEl3TWprMmFHTmhLZz09', 'I', 'N', '2018-04-09 22:33:17', 6, 6, 0),
(17, 'Samambaia123', 'VTJGdFlXMWlZV2xoTVRJeg==', 'A', 'N', '2018-04-23 16:55:21', 239, 104, 0),
(18, 'Maria24', 'VFdGeWFXRXlOQT09', 'A', 'N', '2018-05-04 23:31:15', 150, 147, 0),
(19, 'noss@senhor@lov3', 'Ym05emMwQnpaVzVvYjNKQWJHOTJNdz09', 'A', 'N', '2018-05-12 19:43:46', 245, 25, 0),
(20, 'Bxfc2ilcrk', 'UW5obVl6SnBiR055YXc9PQ==', 'A', 'N', '2018-05-12 21:37:29', 246, 16, 0),
(21, 'mari10873388', 'YldGeWFURXdPRGN6TXpnNA==', 'I', 'N', '2018-05-14 15:06:15', 247, 133, 0),
(22, 'yanka22', 'ZVdGdWEyRXlNZz09', 'A', 'N', '2018-05-20 21:16:50', 251, 140, 0),
(24, '8906', 'T0Rrd05nPT0=', 'A', 'N', '2018-05-21 15:26:19', 145, 142, 0),
(25, 'wesley585978', 'ZDJWemJHVjVOVGcxT1RjNA==', 'A', 'N', '2018-05-25 20:34:45', 146, 143, 0),
(26, '241064', 'TWpReE1EWTA=', 'A', 'N', '2018-05-31 15:55:29', 254, 117, 0),
(27, '95250255', 'T1RVeU5UQXlOVFU9', 'A', 'N', '2019-01-05 17:30:31', 262, 95, 0),
(32, '7140kahh', 'TnpFME1HdGhhR2c9', 'A', 'N', '2019-01-29 22:12:58', 329, 10, 0),
(33, '170599', 'TVRjd05UazU=', 'A', 'N', '2019-02-07 09:43:02', 87, 85, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_usuario_perfil`
--

CREATE TABLE `tb_usuario_perfil` (
  `co_usuario_perfil` int(11) NOT NULL,
  `co_usuario` int(10) NOT NULL,
  `co_perfil` int(11) NOT NULL,
  `co_perfil_assinante` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `tb_usuario_perfil`
--

INSERT INTO `tb_usuario_perfil` (`co_usuario_perfil`, `co_usuario`, `co_perfil`, `co_perfil_assinante`) VALUES
(59, 1, 1, 0),
(50, 7, 2, 0),
(171, 8, 2, 0),
(176, 5, 2, 0),
(180, 4, 2, 0),
(34, 10, 3, 0),
(35, 11, 3, 0),
(36, 12, 3, 0),
(49, 7, 3, 0),
(51, 7, 3, 0),
(58, 1, 3, 0),
(92, 19, 3, 0),
(108, 6, 3, 0),
(110, 23, 3, 0),
(113, 24, 3, 0),
(114, 22, 3, 0),
(116, 25, 3, 0),
(125, 13, 3, 0),
(135, 3, 3, 0),
(144, 26, 3, 0),
(158, 20, 3, 0),
(162, 28, 3, 0),
(164, 9, 3, 0),
(165, 29, 3, 0),
(166, 30, 3, 0),
(167, 31, 3, 0),
(170, 8, 3, 0),
(175, 5, 3, 0),
(179, 4, 3, 0),
(185, 21, 3, 0),
(188, 18, 3, 0),
(193, 32, 3, 0),
(195, 27, 3, 0),
(205, 33, 3, 0),
(212, 16, 3, 0),
(215, 17, 3, 0),
(219, 2, 3, 0),
(157, 20, 4, 0),
(169, 8, 4, 0),
(174, 5, 4, 0),
(178, 4, 4, 0),
(192, 32, 4, 0),
(194, 27, 4, 0),
(204, 33, 4, 0),
(48, 7, 6, 0),
(173, 5, 6, 0),
(177, 4, 6, 0),
(57, 1, 7, 0),
(124, 13, 7, 0),
(134, 3, 7, 0),
(187, 18, 7, 0),
(218, 2, 7, 0),
(56, 1, 8, 0),
(168, 8, 8, 0),
(172, 5, 8, 0),
(186, 18, 8, 0),
(214, 17, 8, 0),
(217, 2, 8, 0),
(133, 3, 9, 0),
(123, 13, 10, 0),
(156, 20, 11, 0),
(155, 20, 12, 0),
(107, 6, 17, 0),
(213, 17, 21, 0),
(216, 2, 21, 0),
(91, 19, 23, 0),
(154, 20, 24, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_visita`
--

CREATE TABLE `tb_visita` (
  `co_visita` int(11) NOT NULL,
  `dt_realizado` datetime DEFAULT NULL,
  `dt_atualizado` datetime DEFAULT NULL,
  `nu_visitas` int(11) DEFAULT NULL,
  `co_trafego` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `tb_visita`
--

INSERT INTO `tb_visita` (`co_visita`, `dt_realizado`, `dt_atualizado`, `nu_visitas`, `co_trafego`) VALUES
(1, '2019-03-25 17:28:54', '2019-03-25 17:29:59', 2, 1),
(2, '2019-03-27 12:16:54', '2019-03-27 12:16:54', 1, 5),
(3, '2019-03-27 12:18:07', '2019-03-27 12:18:07', 1, 6);

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `tb_acesso`
--
ALTER TABLE `tb_acesso`
  ADD PRIMARY KEY (`co_acesso`,`co_usuario`,`co_trafego`),
  ADD KEY `fk_TB_ACESSO_TB_USUARIO1_idx` (`co_usuario`),
  ADD KEY `fk_TB_ACESSO_TB_TRAFEGO1_idx` (`co_trafego`);

--
-- Índices de tabela `tb_administrativo`
--
ALTER TABLE `tb_administrativo`
  ADD PRIMARY KEY (`co_administrativo`);

--
-- Índices de tabela `tb_agenda`
--
ALTER TABLE `tb_agenda`
  ADD PRIMARY KEY (`co_agenda`,`co_usuario`,`co_endereco`,`co_categoria_agenda`,`co_evento`),
  ADD KEY `fk_TB_AGENDA_TB_USUARIO1_idx` (`co_usuario`),
  ADD KEY `fk_TB_AGENDA_TB_ENDERECO1_idx` (`co_endereco`),
  ADD KEY `fk_TB_AGENDA_TB_CATEGORIA_AGENDA1_idx` (`co_categoria_agenda`),
  ADD KEY `fk_TB_AGENDA_TB_EVENTO1_idx` (`co_evento`);

--
-- Índices de tabela `tb_anotacao`
--
ALTER TABLE `tb_anotacao`
  ADD PRIMARY KEY (`co_anotacao`,`co_historia`),
  ADD KEY `fk_TB_ANOTACAO_TB_HISTORIA1_idx` (`co_historia`);

--
-- Índices de tabela `tb_assinante`
--
ALTER TABLE `tb_assinante`
  ADD PRIMARY KEY (`co_assinante`,`co_empresa`,`co_pessoa`),
  ADD KEY `fk_TB_ASSINANTE_TB_EMPRESA1_idx` (`co_empresa`),
  ADD KEY `fk_TB_ASSINANTE_TB_PESSOA1_idx` (`co_pessoa`);

--
-- Índices de tabela `tb_assinante_filial`
--
ALTER TABLE `tb_assinante_filial`
  ADD PRIMARY KEY (`co_assinante_filial`,`co_assinante`,`co_assinante_matriz`),
  ADD KEY `fk_TB_ASSINANTE_FILIAL_TB_ASSINANTE1_idx` (`co_assinante`),
  ADD KEY `fk_TB_ASSINANTE_FILIAL_TB_ASSINANTE_MATRIZ1_idx` (`co_assinante_matriz`);

--
-- Índices de tabela `tb_assinante_matriz`
--
ALTER TABLE `tb_assinante_matriz`
  ADD PRIMARY KEY (`co_assinante_matriz`,`co_assinante`),
  ADD KEY `fk_TB_ASSINANTE_MATRIZ_TB_ASSINANTE1_idx` (`co_assinante`);

--
-- Índices de tabela `tb_auditoria`
--
ALTER TABLE `tb_auditoria`
  ADD PRIMARY KEY (`co_auditoria`,`co_usuario`),
  ADD KEY `fk_TB_AUDITORIA_TB_USUARIO1_idx` (`co_usuario`);

--
-- Índices de tabela `tb_auditoria_itens`
--
ALTER TABLE `tb_auditoria_itens`
  ADD PRIMARY KEY (`co_auditoria_itens`,`co_auditoria_tabela`),
  ADD KEY `fk_TB_AUDITORIA_ITENS_TB_AUDITORIA_TABELA1_idx` (`co_auditoria_tabela`);

--
-- Índices de tabela `tb_auditoria_tabela`
--
ALTER TABLE `tb_auditoria_tabela`
  ADD PRIMARY KEY (`co_auditoria_tabela`,`co_auditoria`),
  ADD KEY `fk_TB_AUDITORIA_TABELA_TB_AUDITORIA1_idx` (`co_auditoria`);

--
-- Índices de tabela `tb_camisa`
--
ALTER TABLE `tb_camisa`
  ADD PRIMARY KEY (`co_camisa`,`co_imagem`),
  ADD KEY `fk_TB_CAMISA_TB_IMAGEM1_idx` (`co_imagem`);

--
-- Índices de tabela `tb_camisa_cor_camisa`
--
ALTER TABLE `tb_camisa_cor_camisa`
  ADD PRIMARY KEY (`co_camisa_cor_camisa`,`co_camisa`,`co_cor_camisa`),
  ADD KEY `fk_TB_COR_CAMISA_has_TB_CAMISA_TB_CAMISA1_idx` (`co_camisa`),
  ADD KEY `fk_TB_COR_CAMISA_has_TB_CAMISA_TB_COR_CAMISA1_idx` (`co_cor_camisa`);

--
-- Índices de tabela `tb_categoria_agenda`
--
ALTER TABLE `tb_categoria_agenda`
  ADD PRIMARY KEY (`co_categoria_agenda`);

--
-- Índices de tabela `tb_categoria_evento`
--
ALTER TABLE `tb_categoria_evento`
  ADD PRIMARY KEY (`co_categoria_evento`);

--
-- Índices de tabela `tb_comissao_evento`
--
ALTER TABLE `tb_comissao_evento`
  ADD PRIMARY KEY (`co_comissao_evento`,`co_evento`,`co_usuario`);

--
-- Índices de tabela `tb_contato`
--
ALTER TABLE `tb_contato`
  ADD PRIMARY KEY (`co_contato`);

--
-- Índices de tabela `tb_controller`
--
ALTER TABLE `tb_controller`
  ADD PRIMARY KEY (`co_controller`);

--
-- Índices de tabela `tb_cor_camisa`
--
ALTER TABLE `tb_cor_camisa`
  ADD PRIMARY KEY (`co_cor_camisa`);

--
-- Índices de tabela `tb_empresa`
--
ALTER TABLE `tb_empresa`
  ADD PRIMARY KEY (`co_empresa`,`co_pessoa`,`co_endereco`,`co_contato`,`co_imagem`),
  ADD KEY `fk_TB_EMPRESA_TB_PESSOA1_idx` (`co_pessoa`),
  ADD KEY `fk_TB_EMPRESA_TB_ENDERECO1_idx` (`co_endereco`),
  ADD KEY `fk_TB_EMPRESA_TB_CONTATO1_idx` (`co_contato`),
  ADD KEY `fk_TB_EMPRESA_TB_IMAGEM1_idx` (`co_imagem`);

--
-- Índices de tabela `tb_endereco`
--
ALTER TABLE `tb_endereco`
  ADD PRIMARY KEY (`co_endereco`);

--
-- Índices de tabela `tb_evento`
--
ALTER TABLE `tb_evento`
  ADD PRIMARY KEY (`co_evento`,`co_imagem`,`co_agenda`,`co_categoria_evento`),
  ADD KEY `fk_TB_EVENTO_TB_IMAGEM1_idx` (`co_imagem`),
  ADD KEY `fk_TB_EVENTO_TB_AGENDA1_idx` (`co_agenda`),
  ADD KEY `fk_TB_EVENTO_TB_CATEGORIA_EVENTO1_idx` (`co_categoria_evento`);

--
-- Índices de tabela `tb_fluxo_caixa`
--
ALTER TABLE `tb_fluxo_caixa`
  ADD PRIMARY KEY (`co_fluxo_caixa`,`co_evento`),
  ADD KEY `fk_TB_FLUXO_CAIXA_TB_EVENTO1_idx` (`co_evento`);

--
-- Índices de tabela `tb_funcionalidade`
--
ALTER TABLE `tb_funcionalidade`
  ADD PRIMARY KEY (`co_funcionalidade`,`co_controller`),
  ADD KEY `fk_TB_FUNCIONALIDADE_TB_CONTROLLER1_idx` (`co_controller`);

--
-- Índices de tabela `tb_historia`
--
ALTER TABLE `tb_historia`
  ADD PRIMARY KEY (`co_historia`,`co_sessao`),
  ADD KEY `fk_TB_HISTORIA_TB_SESSAO1_idx` (`co_sessao`);

--
-- Índices de tabela `tb_historico_historia`
--
ALTER TABLE `tb_historico_historia`
  ADD PRIMARY KEY (`co_historico_historia`,`co_historia`),
  ADD KEY `fk_TB_HISTORICO_HISTORIA_TB_HISTORIA1_idx` (`co_historia`);

--
-- Índices de tabela `tb_imagem`
--
ALTER TABLE `tb_imagem`
  ADD PRIMARY KEY (`co_imagem`);

--
-- Índices de tabela `tb_imagem_assinante`
--
ALTER TABLE `tb_imagem_assinante`
  ADD PRIMARY KEY (`co_imagem_assinante`,`co_assinante`,`co_imagem`),
  ADD KEY `fk_TB_ASSINANTE_has_TB_IMAGEM_TB_IMAGEM1_idx` (`co_imagem`),
  ADD KEY `fk_TB_ASSINANTE_has_TB_IMAGEM_TB_ASSINANTE1_idx` (`co_assinante`);

--
-- Índices de tabela `tb_imagem_evento`
--
ALTER TABLE `tb_imagem_evento`
  ADD PRIMARY KEY (`co_imagem_evento`,`co_evento`,`co_imagem`),
  ADD KEY `fk_TB_EVENTO_has_TB_IMAGEM_TB_IMAGEM1_idx` (`co_imagem`),
  ADD KEY `fk_TB_EVENTO_has_TB_IMAGEM_TB_EVENTO1_idx` (`co_evento`);

--
-- Índices de tabela `tb_inscricao`
--
ALTER TABLE `tb_inscricao`
  ADD PRIMARY KEY (`co_inscricao`,`co_evento`,`co_pessoa`,`co_imagem`),
  ADD KEY `fk_TB_INSCRICAO_TB_EVENTO1_idx` (`co_evento`),
  ADD KEY `fk_TB_INSCRICAO_TB_PESSOA1_idx` (`co_pessoa`),
  ADD KEY `fk_TB_INSCRICAO_TB_IMAGEM1_idx` (`co_imagem`);

--
-- Índices de tabela `tb_membro`
--
ALTER TABLE `tb_membro`
  ADD PRIMARY KEY (`co_membro`,`co_pessoa`),
  ADD KEY `fk_TB_MEMBRO_TB_PESSOA1_idx` (`co_pessoa`);

--
-- Índices de tabela `tb_modulo`
--
ALTER TABLE `tb_modulo`
  ADD PRIMARY KEY (`co_modulo`,`co_projeto`),
  ADD KEY `fk_TB_MODULO_TB_PROJETO1_idx` (`co_projeto`);

--
-- Índices de tabela `tb_pacote`
--
ALTER TABLE `tb_pacote`
  ADD PRIMARY KEY (`co_pacote`);

--
-- Índices de tabela `tb_pagamento`
--
ALTER TABLE `tb_pagamento`
  ADD PRIMARY KEY (`co_pagamento`,`co_inscricao`),
  ADD KEY `fk_TB_PAGAMENTO_TB_INSCRICAO1_idx` (`co_inscricao`);

--
-- Índices de tabela `tb_pagina`
--
ALTER TABLE `tb_pagina`
  ADD PRIMARY KEY (`co_pagina`);

--
-- Índices de tabela `tb_pagina_visita`
--
ALTER TABLE `tb_pagina_visita`
  ADD PRIMARY KEY (`co_pagina_visita`,`co_visita`,`co_pagina`),
  ADD KEY `fk_TB_PAGINA_has_TB_VISITA_TB_VISITA1_idx` (`co_visita`),
  ADD KEY `fk_TB_PAGINA_has_TB_VISITA_TB_PAGINA1_idx` (`co_pagina`);

--
-- Índices de tabela `tb_parcelamento`
--
ALTER TABLE `tb_parcelamento`
  ADD PRIMARY KEY (`co_parcelamento`,`co_tipo_pagamento`,`co_pagamento`,`co_usuario`),
  ADD KEY `fk_TB_PARCELAMENTO_TB_TIPO_PAGAMENTO1_idx` (`co_tipo_pagamento`),
  ADD KEY `fk_TB_PARCELAMENTO_TB_PAGAMENTO1_idx` (`co_pagamento`),
  ADD KEY `fk_TB_PARCELAMENTO_TB_USUARIO1_idx` (`co_usuario`);

--
-- Índices de tabela `tb_pedido_camisa`
--
ALTER TABLE `tb_pedido_camisa`
  ADD PRIMARY KEY (`co_pedido_camisa`,`co_cor_camisa`,`co_camisa`,`co_inscricao`),
  ADD KEY `fk_TB_PEDIDO_CAMISA_TB_COR_CAMISA1_idx` (`co_cor_camisa`),
  ADD KEY `fk_TB_PEDIDO_CAMISA_TB_CAMISA1_idx` (`co_camisa`),
  ADD KEY `fk_TB_PEDIDO_CAMISA_TB_INSCRICAO1_idx` (`co_inscricao`);

--
-- Índices de tabela `tb_perfil`
--
ALTER TABLE `tb_perfil`
  ADD PRIMARY KEY (`co_perfil`);

--
-- Índices de tabela `tb_perfil_agenda`
--
ALTER TABLE `tb_perfil_agenda`
  ADD PRIMARY KEY (`co_perfil_agenda`,`co_agenda`,`co_perfil`),
  ADD KEY `fk_TB_PERFIL_AGENDA_TB_AGENDA1_idx` (`co_agenda`),
  ADD KEY `fk_TB_PERFIL_AGENDA_TB_PERFIL1_idx` (`co_perfil`);

--
-- Índices de tabela `tb_perfil_assinante`
--
ALTER TABLE `tb_perfil_assinante`
  ADD PRIMARY KEY (`co_perfil_assinante`,`co_assinante`),
  ADD KEY `fk_TB_PERFIL_ASSINANTE_TB_ASSINANTE1_idx` (`co_assinante`);

--
-- Índices de tabela `tb_perfil_funcionalidade`
--
ALTER TABLE `tb_perfil_funcionalidade`
  ADD PRIMARY KEY (`co_perfil_funcionalidade`,`co_funcionalidade`,`co_perfil`,`co_perfil_assinante`),
  ADD KEY `fk_tb_perfil_tb_funcionalidade_tb_funcionalidade1_idx` (`co_funcionalidade`),
  ADD KEY `fk_tb_perfil_tb_funcionalidade_tb_perfil1_idx` (`co_perfil`),
  ADD KEY `fk_TB_PERFIL_FUNCIONALIDADE_TB_PERFIL_ASSINANTE1_idx` (`co_perfil_assinante`);

--
-- Índices de tabela `tb_pessoa`
--
ALTER TABLE `tb_pessoa`
  ADD PRIMARY KEY (`co_pessoa`,`co_endereco`,`co_contato`,`co_imagem`),
  ADD KEY `fk_TB_PESSOA_TB_ENDERECO1_idx` (`co_endereco`),
  ADD KEY `fk_TB_PESSOA_TB_CONTATO1_idx` (`co_contato`),
  ADD KEY `fk_TB_PESSOA_TB_IMAGEM1_idx` (`co_imagem`);

--
-- Índices de tabela `tb_plano`
--
ALTER TABLE `tb_plano`
  ADD PRIMARY KEY (`co_plano`);

--
-- Índices de tabela `tb_plano_assinante`
--
ALTER TABLE `tb_plano_assinante`
  ADD PRIMARY KEY (`co_plano_assinante`,`co_plano`),
  ADD KEY `fk_TB_PLANO_ASSINANTE_TB_PLANO1_idx` (`co_plano`);

--
-- Índices de tabela `tb_plano_assinante_assinatura`
--
ALTER TABLE `tb_plano_assinante_assinatura`
  ADD PRIMARY KEY (`co_plano_assinante_assinatura`,`co_assinante`,`co_plano_assinante`),
  ADD KEY `fk_TB_PLANO_ASSINANTE_ASSINATURA_TB_ASSINANTE1_idx` (`co_assinante`),
  ADD KEY `fk_TB_PLANO_ASSINANTE_ASSINATURA_TB_PLANO_ASSINANTE1_idx` (`co_plano_assinante`);

--
-- Índices de tabela `tb_plano_pacote`
--
ALTER TABLE `tb_plano_pacote`
  ADD PRIMARY KEY (`co_plano_pacote`,`co_plano`,`co_pacote`),
  ADD KEY `fk_TB_PLANO_has_TB_MODULO_TB_MODULO1_idx` (`co_pacote`),
  ADD KEY `fk_TB_PLANO_has_TB_MODULO_TB_PLANO1_idx` (`co_plano`);

--
-- Índices de tabela `tb_projeto`
--
ALTER TABLE `tb_projeto`
  ADD PRIMARY KEY (`co_projeto`);

--
-- Índices de tabela `tb_sessao`
--
ALTER TABLE `tb_sessao`
  ADD PRIMARY KEY (`co_sessao`,`co_modulo`),
  ADD KEY `fk_TB_SESSAO_TB_MODULO1_idx` (`co_modulo`);

--
-- Índices de tabela `tb_tamanho_camisa`
--
ALTER TABLE `tb_tamanho_camisa`
  ADD PRIMARY KEY (`co_tamanho_camisa`);

--
-- Índices de tabela `tb_tipo_pagamento`
--
ALTER TABLE `tb_tipo_pagamento`
  ADD PRIMARY KEY (`co_tipo_pagamento`);

--
-- Índices de tabela `tb_trafego`
--
ALTER TABLE `tb_trafego`
  ADD PRIMARY KEY (`co_trafego`);

--
-- Índices de tabela `tb_usuario`
--
ALTER TABLE `tb_usuario`
  ADD PRIMARY KEY (`co_usuario`,`co_imagem`,`co_pessoa`,`co_assinante`),
  ADD KEY `fk_TB_USUARIO_TB_IMAGEM1_idx` (`co_imagem`),
  ADD KEY `fk_TB_USUARIO_TB_PESSOA1_idx` (`co_pessoa`),
  ADD KEY `fk_TB_USUARIO_TB_ASSINANTE1_idx` (`co_assinante`);

--
-- Índices de tabela `tb_usuario_perfil`
--
ALTER TABLE `tb_usuario_perfil`
  ADD PRIMARY KEY (`co_usuario_perfil`,`co_usuario`,`co_perfil`,`co_perfil_assinante`),
  ADD KEY `fk_tb_usuario_tb_perfil_tb_perfil1_idx` (`co_perfil`),
  ADD KEY `fk_tb_usuario_tb_perfil_tb_usuario_idx` (`co_usuario`),
  ADD KEY `fk_TB_USUARIO_PERFIL_TB_PERFIL_ASSINANTE1_idx` (`co_perfil_assinante`);

--
-- Índices de tabela `tb_visita`
--
ALTER TABLE `tb_visita`
  ADD PRIMARY KEY (`co_visita`,`co_trafego`),
  ADD KEY `fk_TB_VISITA_TB_TRAFEGO1_idx` (`co_trafego`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `tb_acesso`
--
ALTER TABLE `tb_acesso`
  MODIFY `co_acesso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `tb_administrativo`
--
ALTER TABLE `tb_administrativo`
  MODIFY `co_administrativo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `tb_agenda`
--
ALTER TABLE `tb_agenda`
  MODIFY `co_agenda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de tabela `tb_anotacao`
--
ALTER TABLE `tb_anotacao`
  MODIFY `co_anotacao` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_assinante`
--
ALTER TABLE `tb_assinante`
  MODIFY `co_assinante` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_assinante_filial`
--
ALTER TABLE `tb_assinante_filial`
  MODIFY `co_assinante_filial` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_assinante_matriz`
--
ALTER TABLE `tb_assinante_matriz`
  MODIFY `co_assinante_matriz` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_auditoria`
--
ALTER TABLE `tb_auditoria`
  MODIFY `co_auditoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de tabela `tb_auditoria_itens`
--
ALTER TABLE `tb_auditoria_itens`
  MODIFY `co_auditoria_itens` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT de tabela `tb_auditoria_tabela`
--
ALTER TABLE `tb_auditoria_tabela`
  MODIFY `co_auditoria_tabela` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de tabela `tb_camisa`
--
ALTER TABLE `tb_camisa`
  MODIFY `co_camisa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_camisa_cor_camisa`
--
ALTER TABLE `tb_camisa_cor_camisa`
  MODIFY `co_camisa_cor_camisa` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_categoria_agenda`
--
ALTER TABLE `tb_categoria_agenda`
  MODIFY `co_categoria_agenda` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `tb_categoria_evento`
--
ALTER TABLE `tb_categoria_evento`
  MODIFY `co_categoria_evento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `tb_comissao_evento`
--
ALTER TABLE `tb_comissao_evento`
  MODIFY `co_comissao_evento` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_contato`
--
ALTER TABLE `tb_contato`
  MODIFY `co_contato` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=352;

--
-- AUTO_INCREMENT de tabela `tb_controller`
--
ALTER TABLE `tb_controller`
  MODIFY `co_controller` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `tb_cor_camisa`
--
ALTER TABLE `tb_cor_camisa`
  MODIFY `co_cor_camisa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_empresa`
--
ALTER TABLE `tb_empresa`
  MODIFY `co_empresa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_endereco`
--
ALTER TABLE `tb_endereco`
  MODIFY `co_endereco` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=393;

--
-- AUTO_INCREMENT de tabela `tb_evento`
--
ALTER TABLE `tb_evento`
  MODIFY `co_evento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de tabela `tb_fluxo_caixa`
--
ALTER TABLE `tb_fluxo_caixa`
  MODIFY `co_fluxo_caixa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT de tabela `tb_funcionalidade`
--
ALTER TABLE `tb_funcionalidade`
  MODIFY `co_funcionalidade` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT de tabela `tb_historia`
--
ALTER TABLE `tb_historia`
  MODIFY `co_historia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `tb_historico_historia`
--
ALTER TABLE `tb_historico_historia`
  MODIFY `co_historico_historia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `tb_imagem`
--
ALTER TABLE `tb_imagem`
  MODIFY `co_imagem` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=408;

--
-- AUTO_INCREMENT de tabela `tb_imagem_assinante`
--
ALTER TABLE `tb_imagem_assinante`
  MODIFY `co_imagem_assinante` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_imagem_evento`
--
ALTER TABLE `tb_imagem_evento`
  MODIFY `co_imagem_evento` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_inscricao`
--
ALTER TABLE `tb_inscricao`
  MODIFY `co_inscricao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=437;

--
-- AUTO_INCREMENT de tabela `tb_membro`
--
ALTER TABLE `tb_membro`
  MODIFY `co_membro` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_modulo`
--
ALTER TABLE `tb_modulo`
  MODIFY `co_modulo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `tb_pacote`
--
ALTER TABLE `tb_pacote`
  MODIFY `co_pacote` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_pagamento`
--
ALTER TABLE `tb_pagamento`
  MODIFY `co_pagamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=445;

--
-- AUTO_INCREMENT de tabela `tb_pagina`
--
ALTER TABLE `tb_pagina`
  MODIFY `co_pagina` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `tb_pagina_visita`
--
ALTER TABLE `tb_pagina_visita`
  MODIFY `co_pagina_visita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `tb_parcelamento`
--
ALTER TABLE `tb_parcelamento`
  MODIFY `co_parcelamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1665;

--
-- AUTO_INCREMENT de tabela `tb_pedido_camisa`
--
ALTER TABLE `tb_pedido_camisa`
  MODIFY `co_pedido_camisa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_perfil`
--
ALTER TABLE `tb_perfil`
  MODIFY `co_perfil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de tabela `tb_perfil_agenda`
--
ALTER TABLE `tb_perfil_agenda`
  MODIFY `co_perfil_agenda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT de tabela `tb_perfil_assinante`
--
ALTER TABLE `tb_perfil_assinante`
  MODIFY `co_perfil_assinante` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_perfil_funcionalidade`
--
ALTER TABLE `tb_perfil_funcionalidade`
  MODIFY `co_perfil_funcionalidade` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de tabela `tb_pessoa`
--
ALTER TABLE `tb_pessoa`
  MODIFY `co_pessoa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=349;

--
-- AUTO_INCREMENT de tabela `tb_plano`
--
ALTER TABLE `tb_plano`
  MODIFY `co_plano` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_plano_assinante`
--
ALTER TABLE `tb_plano_assinante`
  MODIFY `co_plano_assinante` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_plano_assinante_assinatura`
--
ALTER TABLE `tb_plano_assinante_assinatura`
  MODIFY `co_plano_assinante_assinatura` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_plano_pacote`
--
ALTER TABLE `tb_plano_pacote`
  MODIFY `co_plano_pacote` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Planos do Módulo';

--
-- AUTO_INCREMENT de tabela `tb_projeto`
--
ALTER TABLE `tb_projeto`
  MODIFY `co_projeto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `tb_sessao`
--
ALTER TABLE `tb_sessao`
  MODIFY `co_sessao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `tb_tamanho_camisa`
--
ALTER TABLE `tb_tamanho_camisa`
  MODIFY `co_tamanho_camisa` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `tb_tipo_pagamento`
--
ALTER TABLE `tb_tipo_pagamento`
  MODIFY `co_tipo_pagamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `tb_trafego`
--
ALTER TABLE `tb_trafego`
  MODIFY `co_trafego` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `tb_usuario`
--
ALTER TABLE `tb_usuario`
  MODIFY `co_usuario` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de tabela `tb_usuario_perfil`
--
ALTER TABLE `tb_usuario_perfil`
  MODIFY `co_usuario_perfil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

--
-- AUTO_INCREMENT de tabela `tb_visita`
--
ALTER TABLE `tb_visita`
  MODIFY `co_visita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
