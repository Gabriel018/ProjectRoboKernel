-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 18-Jun-2019 às 01:21
-- Versão do servidor: 10.1.39-MariaDB
-- versão do PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `storephp`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `acesso_restrito`
--

CREATE TABLE `acesso_restrito` (
  `pk_restrito` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telefone` varchar(255) NOT NULL,
  `login` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `acesso_restrito`
--

INSERT INTO `acesso_restrito` (`pk_restrito`, `nome`, `email`, `telefone`, `login`, `senha`) VALUES
(1, 'admin', 'admin@gmail.com', '2199997070', 'admin', '123');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `codcliente` int(11) NOT NULL,
  `nome` varchar(60) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `cpf` varchar(14) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `dtnasc` date NOT NULL,
  `cep` varchar(9) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `endereco` varchar(80) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `numero` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `complemento` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `bairro` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `cidade` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `estado` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `telefone` varchar(14) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `celular` varchar(14) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `email` varchar(60) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `senha` varchar(8) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `imagem` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`codcliente`, `nome`, `cpf`, `dtnasc`, `cep`, `endereco`, `numero`, `complemento`, `bairro`, `cidade`, `estado`, `telefone`, `celular`, `email`, `senha`, `imagem`) VALUES
(2, 'Duke', '3545454', '2019-03-07', '21220310', 'Rua Paster', '12', '443443', 'Botafogo', 'Rio de Janeiro', 'RJ', '12345', '1234', '8ghhb@gmail.com', '123', 'Lighthouse.jpg'),
(3, 'Marcos', '0999849439', '2019-03-14', '21220310', 'Estrada Coronel Vieira', '3232', '332', 'IrajÃ¡', 'Rio de Janeiro', 'RJ', '434343', '44343', 'ana@gmail.com', '123', 'Jellyfish.jpg'),
(4, 'Duke', '4545454', '2019-03-11', '21220310', 'Estrada Coronel Vieira', '33', '3rrer', 'IrajÃ¡', 'Rio de Janeiro', 'RJ', 'reerer', 'rere', 'ana@gmail.com', '123', ''),
(5, 'Antonia Maria ', '33232', '2019-03-19', '21220310', 'Estrada Coronel Vieira', 'ww', 'ww', 'IrajÃ¡', 'Rio de Janeiro', 'RJ', 'eewew', 'ewew', 'ana@gmail.com', '123', 'aaca0f5eb4d2d98a6ce6dffa99f8254b.jpg'),
(6, 'Antonia Maria ', '089438438894', '2019-03-13', '21220310', 'Estrada Coronel Vieira', '333', '33', 'IrajÃ¡', 'Rio de Janeiro', 'RJ', '4343434', '34433443', 'ana@gmail.com', '123', '61264f154350bdb13fc53dd5969f6d3a.jpg'),
(7, 'Antonia Maria ', '4545454', '2019-03-13', '21220310', 'Estrada Coronel Vieira', '122', '222', 'IrajÃ¡', 'Rio de Janeiro', 'RJ', '4343434', 'ewew', 'marcos@gmail.com', '123', 'd1e6fd33016c4365a14d6970da07bf09.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `codfuncionario` int(11) NOT NULL,
  `nome` varchar(60) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `email` varchar(60) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `senha` varchar(8) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `funcionario`
--

INSERT INTO `funcionario` (`codfuncionario`, `nome`, `email`, `senha`) VALUES
(1, 'Maron 5', 'mm@gmail.com', '123'),
(2, 'Marcela', 'marcela@gmail.com', '123');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedido`
--

CREATE TABLE `pedido` (
  `codpedido` int(11) NOT NULL,
  `qtd` int(11) NOT NULL,
  `preco` float(10,2) NOT NULL,
  `total` float(10,2) NOT NULL,
  `codcliente` int(11) NOT NULL,
  `codproduto` int(11) NOT NULL,
  `codfuncionario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pedido`
--

INSERT INTO `pedido` (`codpedido`, `qtd`, `preco`, `total`, `codcliente`, `codproduto`, `codfuncionario`) VALUES
(1, 1, 2200.00, 2200.00, 2, 5, 2019),
(2, 2, 800.00, 3000.00, 2, 7, 2019),
(3, 2, 800.00, 800.00, 2, 7, 2019),
(4, 1, 2500.00, 3300.00, 2, 8, 2019),
(5, 1, 2200.00, 5500.00, 2, 5, 2019);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `codproduto` int(11) NOT NULL,
  `descricao` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `categoria` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `preco` float(10,2) NOT NULL,
  `imagem` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`codproduto`, `descricao`, `categoria`, `preco`, `imagem`) VALUES
(5, 'Computador i7', 'informatica', 2200.00, 'c9d5fab1742cf6dcd5565009c450da96.jpg'),
(6, 'Notebook i7 ', 'informatica', 2200.00, '395f559f5909cbd42050bf1f420afea4.jpg'),
(7, 'Nobreak', 'acessorio', 400.00, '237539865c6d5daddc910cae30a3bcd8.jpg'),
(8, 'Notebook i5', 'informatica', 2500.00, '997e61d17463fcd8d88c6ed09ec7315a.jpg'),
(9, 'teclado', 'acessorio', 30.00, '732a595f481ab805eab637231b140560.jpg'),
(10, 'Maleta Notebook', 'acessorio', 120.00, 'a82f26c44522a330cbac5805f3c37f16.jpg'),
(11, 'Kit de ferramentas', 'manutencao', 150.00, '71864097ebd381c25010c2ab05089750.jpg'),
(12, 'Monitor', 'acessorio', 700.00, '530b9a28d324a183aa1e1b968ca6eb30.jpg'),
(13, 'Impressora', 'acessorio', 3800.00, '7e557ed033bb094777f0299925a662e1.jpg'),
(14, 'Impressora Samsung', 'acessorio', 4200.00, 'e8e064aff4d5974c5dadf9309783dd30.jpg'),
(15, 'Kit DidÃ¡tico', 'EducaÃ§Ã£o', 200.00, '3b3751447aae77d6b44236f90a679d5d.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acesso_restrito`
--
ALTER TABLE `acesso_restrito`
  ADD PRIMARY KEY (`pk_restrito`);

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`codcliente`);

--
-- Indexes for table `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`codfuncionario`);

--
-- Indexes for table `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`codpedido`);

--
-- Indexes for table `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`codproduto`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acesso_restrito`
--
ALTER TABLE `acesso_restrito`
  MODIFY `pk_restrito` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cliente`
--
ALTER TABLE `cliente`
  MODIFY `codcliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `funcionario`
--
ALTER TABLE `funcionario`
  MODIFY `codfuncionario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pedido`
--
ALTER TABLE `pedido`
  MODIFY `codpedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `produto`
--
ALTER TABLE `produto`
  MODIFY `codproduto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
