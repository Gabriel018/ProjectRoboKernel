-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 14-Jun-2019 às 14:35
-- Versão do servidor: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `robokernel`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `administrador`
--

CREATE TABLE `administrador` (
  `codadm` int(11) NOT NULL,
  `nome` varchar(150) NOT NULL,
  `login` varchar(20) NOT NULL,
  `senha` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `codcliente` int(10) NOT NULL,
  `nome` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `senha` varchar(12) NOT NULL,
  `celular` varchar(16) NOT NULL,
  `cpf` varchar(12) NOT NULL,
  `cep` varchar(9) NOT NULL,
  `endereco` varchar(150) NOT NULL,
  `numero` varchar(5) NOT NULL,
  `complemento` varchar(5) NOT NULL,
  `bairro` varchar(25) NOT NULL,
  `cidade` varchar(25) NOT NULL,
  `estado` varchar(25) NOT NULL,
  `foto` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `itensproduto`
--

CREATE TABLE `itensproduto` (
  `coditem` int(10) NOT NULL,
  `codproduto` int(10) NOT NULL,
  `informacao` varchar(150) NOT NULL,
  `dicas` varchar(150) NOT NULL,
  `recomendacao` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedido`
--

CREATE TABLE `pedido` (
  `codpedido` int(11) NOT NULL,
  `qtd` varchar(20) NOT NULL,
  `total` varchar(20) NOT NULL,
  `totalgeral` varchar(20) NOT NULL,
  `frete` varchar(20) NOT NULL,
  `peso` varchar(20) NOT NULL,
  `tamanho` varchar(20) NOT NULL,
  `avaliação` varchar(20) NOT NULL,
  `codcliente` int(10) NOT NULL,
  `codproduto` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `perfilcliente`
--

CREATE TABLE `perfilcliente` (
  `codcliente` int(10) NOT NULL,
  `codproduto` int(10) NOT NULL,
  `codpedido` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `codproduto` int(11) NOT NULL,
  `descricao` varchar(150) NOT NULL,
  `categoria` varchar(100) NOT NULL,
  `manual` varchar(300) NOT NULL,
  `valor` varchar(12) NOT NULL,
  `foto` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`codadm`);

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`codcliente`);

--
-- Indexes for table `itensproduto`
--
ALTER TABLE `itensproduto`
  ADD PRIMARY KEY (`coditem`);

--
-- Indexes for table `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`codpedido`);

--
-- Indexes for table `perfilcliente`
--
ALTER TABLE `perfilcliente`
  ADD PRIMARY KEY (`codcliente`);

--
-- Indexes for table `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`codproduto`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
