-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 09-Dez-2022 às 22:14
-- Versão do servidor: 5.7.36
-- versão do PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `viagem`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `fiscal`
--

DROP TABLE IF EXISTS `fiscal`;
CREATE TABLE IF NOT EXISTS `fiscal` (
  `matricula` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `cpf` int(11) NOT NULL,
  PRIMARY KEY (`matricula`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `fiscal`
--

INSERT INTO `fiscal` (`matricula`, `nome`, `cpf`) VALUES
(9, 'er', 123),
(5, 'Claraa', 562149876),
(6, 'Clara', 562149876),
(10, 'Maria Clara', 123456);

-- --------------------------------------------------------

--
-- Estrutura da tabela `motorista`
--

DROP TABLE IF EXISTS `motorista`;
CREATE TABLE IF NOT EXISTS `motorista` (
  `matricula` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `rota` varchar(100) NOT NULL,
  PRIMARY KEY (`matricula`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `onibus`
--

DROP TABLE IF EXISTS `onibus`;
CREATE TABLE IF NOT EXISTS `onibus` (
  `numeroOnibus` int(11) NOT NULL,
  `Placa` int(11) NOT NULL,
  PRIMARY KEY (`Placa`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reclamacao`
--

DROP TABLE IF EXISTS `reclamacao`;
CREATE TABLE IF NOT EXISTS `reclamacao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reclamacaoAvaria` varchar(200) NOT NULL,
  `reclamacaoUsuario` varchar(200) NOT NULL,
  `ocorrencia` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `supervisor`
--

DROP TABLE IF EXISTS `supervisor`;
CREATE TABLE IF NOT EXISTS `supervisor` (
  `nome` varchar(50) NOT NULL,
  `cpf` int(11) NOT NULL,
  `endereco` varchar(100) NOT NULL,
  `matricula` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`matricula`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `iduser` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(50) DEFAULT NULL,
  `fone` varchar(50) DEFAULT NULL,
  `login` varchar(50) DEFAULT NULL,
  `senha` varchar(50) DEFAULT NULL,
  `perfil` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`iduser`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`iduser`, `usuario`, `fone`, `login`, `senha`, `perfil`) VALUES
(1, 'Administrador', '111111111', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin'),
(2, 'vinicius', '11111', 'vini', '202cb962ac59075b964b07152d234b70', 'user');

-- --------------------------------------------------------

--
-- Estrutura da tabela `viagem`
--

DROP TABLE IF EXISTS `viagem`;
CREATE TABLE IF NOT EXISTS `viagem` (
  `horaChegada` time NOT NULL,
  `quilometragem` int(11) NOT NULL,
  `posto` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
