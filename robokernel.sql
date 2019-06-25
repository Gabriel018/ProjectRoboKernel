-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 25-Jun-2019 às 15:10
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cadastro`
--

CREATE TABLE `cadastro` (
  `id` int(10) NOT NULL,
  `email` varchar(150) NOT NULL,
  `pais` varchar(25) NOT NULL,
  `senha` varchar(25) NOT NULL,
  `confsenha` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cadastro`
--

INSERT INTO `cadastro` (`id`, `email`, `pais`, `senha`, `confsenha`) VALUES
(0, 'usuario_2', '', '?l}ÜjQî.€Íx…J', ''),
(1, 'madara', 'user', '202cb962ac59075b964b07152', 'user'),
(2, 'admin', '', '21232f297a57a5a743894a0e4', '');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`codproduto`, `descricao`, `categoria`, `manual`, `valor`, `foto`) VALUES
(1, 'Kit para Arduino', 'Kits Didáticos', '00', '59.00', 'kitarduino.png'),
(2, 'Kit Iniciante V8 para Arduino', 'Kits Didáticos', '00', '199.00', '1011_1_X.png'),
(3, 'Kit Avançado V4 para Arduino', 'Kits Didáticos', '00', '250.00', '1010_1_X.png'),
(4, 'Master Kit: Kit Iniciante V8 + Kit Avançado V4', 'Kits Didáticos', '00', '389.00', '1034_1_H.png'),
(5, 'Kit Iniciante para Robótica', 'Kits Didáticos', '00', '349.00', '854_1_H.png'),
(6, 'Arduino Shield - Ethernet W5500', 'Shields para Arduino', '00', '119.00', '1004_1_H.png'),
(7, 'Arduino Shield - Padawan', 'Shields para Arduino', '00', '49.00', '669_1_H.png'),
(8, 'Arduino Shield - Albatross Master', 'Shields para Arduino', '00', '69.00', '482_1_H.png'),
(9, 'Arduino Shield - CNC V3', 'Shields para Arduino', '00', '29.00', '904_1_H.png'),
(10, 'Arduino Shield - Joystick', 'Shields para Arduino', '00', '49.00', '545_1_H.png'),
(11, 'Placa Nano V3 + Cabo USB para Arduino', 'Placas Arduino', '00', '39.00', '1048_1_H.png'),
(12, 'Placa RC FTDI V1.1', 'Placas Arduino', '00', '35.00', '516_1_H.png'),
(13, 'Placa STM32F103C8T6 ARM Cortex M3', 'Placas Arduino', '00', '35.00', '1067_1_H.png'),
(14, 'Placa Uno R3 + Cabo USB para Arduino', 'Placas Arduino', '00', '54.00', '1065_1_H.png'),
(15, 'ATmega328 com Arduino Optiboot (UNO)', 'Placas Arduino', '00', '21.50', '229_1_H.png'),
(16, 'Braço Robótico RoboARM', 'Originais RoboCore', '00', '149.00', '1080_1_H.png'),
(17, 'BlackBoard Pro Mini - 5V/16MHz', 'Originais RoboCore', '00', '25.00', '730_1_H.png'),
(18, 'Kit Resistor 500', 'Originais RoboCore', '00', '29.00', '715_1_H.png'),
(19, 'Módulo Display Serial', 'Originais RoboCore', '00', '25.00', '750_1_H.png'),
(20, 'Sensor de Som', 'Originais RoboCore', '00', '12.00', '507_1_H.png'),
(21, 'Multímetro Digital Hikari HM-1001', 'Novidades', '00', '39.00', '1148_1_H.png'),
(22, 'Linux para Makers', 'Novidades', '00', '75.00', '1142_1_H.png'),
(23, 'Micro Servo MG90S TowerPro', 'Novidades', '00', '25.00', '1152_1_H.png'),
(24, 'Carregador de Bateria iMax B6 com Fonte', 'Novidades', '00', '215.00', '1154_1_H.png'),
(25, 'Fita LED RGB Endereçável WS2812B 5050 - 1 metro', 'Novidades', '00', '59.00', '1125_1_H.png'),
(26, 'Albatross - Fonte 12V 1A para módulos escravos', 'Automação Resid', '00', '19.00', '484_1_H.png'),
(27, 'Albatross Slave - Relê', 'Automação Resid', '00', '289.00', '480_2_H.png'),
(28, 'Cabo de Rede 3,0m - Patch Cord', 'Automação Resid', '00', '8.50', '517_1_H.png'),
(29, 'Albatross cabo IR - 5m', 'Automação Resid', '00', '9.00', '481_1_H.png'),
(30, 'Válvula Solenoide 1/2 x 1/2', 'Automação Resid', '00', '49.00', '718_2_H.png'),
(31, 'Botão Arcade Amarelo', 'Itens Eletrônicos', '00', '9.00', '834_1_H.png'),
(32, 'Botão Arcade Azul', 'Itens Eletrônicos', '00', '9.00', '836_1_H.png'),
(33, 'Botão Arcade Verde', 'Itens Eletrônicos', '00', '9.00', '835_1_H.png'),
(34, 'Botão Arcade Vermelho', 'Itens Eletrônicos', '00', '9.00', '833_1_H.png'),
(35, 'Joystick Arcade', 'Itens Eletrônicos', '00', '49.00', '837_1_H.png'),
(36, 'Cartão de Memória MicroSD 16GB Classe 10 Sandisk', 'Embarcados', '00', '39.00', '706_1_H.png'),
(37, 'Cartão de Memória MicroSD 32GB Classe 10 Sandisk', 'Embarcados', '00', '99.00', '755_1_H.png'),
(38, 'Guia do Maker para o Apocalipse Zumbi', 'Embarcados', '00', '59.00', '724_1_H.png'),
(39, 'WorkPlate 400', 'Embarcados', '00', '14.90', '898_1_H.png'),
(40, 'Câmera para Raspberry Pi Rev 1.3', 'Embarcados', '00', '69.90', '1071_1_H.png'),
(41, 'Módulo WiFi - ESP8266', 'Internet das Coisas', '00', '25.00', '652_1_H.png'),
(42, 'ESP32 - WiFi & Bluetooth', ' Internet das Coisas', '00', '79.00', '1013_1_H.png'),
(43, 'Módulo Ethernet ENC28', 'Internet das Coisas', '00', '29.00', '707_1_H.png'),
(44, 'NodeMCU ESP8266-12 V2', 'Internet das Coisas', '00', '49.00', '789_1_H.png'),
(45, 'Adaptador para ESP8266', ' Internet das Coisas', '00', '14.90', '951_1_H.png'),
(46, 'Adaptador HDMI - VGA com Audio', 'Cabos e Conectores', '00', '49.00', '871_1_H.png'),
(47, 'Adaptador P4 Fêmea - Borne', 'Cabos e Conectores', '00', '2.90', '697_1_H.png'),
(48, 'Adaptador P4 Macho - Borne', 'Cabos e Conectores', '00', '2.90', '917_1_H.png'),
(49, 'Borne Emenda 2 Vias', 'Cabos e Conectores', '00', '2.50', '956_1_H.png'),
(50, 'Deans Style T-Connectors', 'Cabos e Conectores', '00', '10.00', '39_1_H.png'),
(51, 'Caixa de Redução Orbit500 4:1', 'Caixas de Redução', '00', '99.00', '968_1_H.png'),
(52, 'Orbit500 - Bloco Frontal', 'Caixas de Redução', '00', '42.00', '849_1_H.png'),
(53, 'Orbit500 - Engrenagem Planeta / Pinhão (Jogo)', 'Caixas de Redução', '00', '10.00', '846_1_H.png'),
(54, 'Orbit500 - Eixo 8mm', 'Caixas de Redução', '00', '15.00', '850_1_H.png'),
(55, 'Orbit500 - Prato de Saída p/ Eixo', 'Caixas de Redução', '00', '14.50', '986_1_H.png'),
(56, 'LCD 16x2 5V Laranja no Preto', 'Displays e LCDs', '00', '16.90', '127_1_H.png'),
(57, 'LCD 16x2 5V Preto no Verde com Barra de Pinos Soldada', 'Displays e LCDs', '00', '23.90', '79_1_H.png'),
(58, 'LCD 16x2 Com Interface I2C', 'Displays e LCDs', '00', '39.00', '705_1_H.png'),
(59, 'LCD 20x4 5V Preto no Verde', 'Displays e LCDs', '00', '40.90', '876_1_H.png'),
(60, 'Display LCD TFT Touch 3.5 para Raspberry Pi', 'Displays e LCDs', '00', '159.00', '1002_1_H.png'),
(61, 'Circuito Meia Ponte BTN7970B', 'Drivers de Motores', '00', '24.90', '438_1_H.png'),
(62, 'Circuito Ponte-H - L293D', 'Drivers de Motores', '00', '9.90', '591_1_H.png'),
(63, 'Driver para motor de passo DM322E 50VDC / 2.2A', 'Drivers de Motores', '00', '199.00', '1018_1_H.png'),
(64, 'Driver de Motor de Passo A4988', 'Drivers de Motores', '00', '14.90', '291_1_H.png'),
(65, 'SyRen 25A', 'Drivers de Motores', '00', '499.00', '873_1_H.png'),
(66, 'Alicate de Bico Longo HK-507', 'Ferramentas', '00', '19.90', '624_1_H.png'),
(67, 'Alicate de Corte de Precisão', 'Ferramentas', '00', '19.00', '982_1_H.png'),
(68, 'Chave Phillips 1/8 x 3 Pol PH0 - Stanley', 'Ferramentas', '00', '4.50', '1003_1_H.png'),
(69, 'Multímetro Digital DT-830D', 'Ferramentas', '00', '39.00', '870_1_H.png'),
(70, 'Kit de Chaves Philips e Fenda', 'Ferramentas', '00', '45.00', '930_1_H.png'),
(71, 'Bateria LiPo 11,1V 2200mAh 30C', 'Fontes e Baterias', '00', '149.00', '962_1_H.png'),
(72, 'Fonte Ajustável para Protoboard', 'Itens Eletrônicos', '00', '9.90', '1151_1_H.png'),
(73, 'Monitor de Tensão para Baterias 1S-8S', 'Fontes e Baterias', '00', '19.00', '905_1_H.png'),
(74, 'Fonte de Alimentação Variável 0~32V / 0~3A HF-3203', 'Fontes e Baterias', '00', '599.00', '404_1_H.png'),
(75, 'Fonte Industrial 12V 5A', 'Fontes e Baterias', '00', '69.00', '931_1_H.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`codadm`);

--
-- Indexes for table `cadastro`
--
ALTER TABLE `cadastro`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`codcliente`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `cpf` (`cpf`);

--
-- Indexes for table `itensproduto`
--
ALTER TABLE `itensproduto`
  ADD PRIMARY KEY (`coditem`),
  ADD KEY `codproduto` (`codproduto`);

--
-- Indexes for table `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`codpedido`),
  ADD KEY `codproduto` (`codproduto`),
  ADD KEY `codcliente` (`codcliente`);

--
-- Indexes for table `perfilcliente`
--
ALTER TABLE `perfilcliente`
  ADD PRIMARY KEY (`codcliente`),
  ADD KEY `codproduto` (`codproduto`),
  ADD KEY `codpedido` (`codpedido`);

--
-- Indexes for table `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`codproduto`);

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `itensproduto`
--
ALTER TABLE `itensproduto`
  ADD CONSTRAINT `itensproduto_ibfk_1` FOREIGN KEY (`codproduto`) REFERENCES `produtos` (`codproduto`);

--
-- Limitadores para a tabela `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`codproduto`) REFERENCES `produtos` (`codproduto`),
  ADD CONSTRAINT `pedido_ibfk_2` FOREIGN KEY (`codcliente`) REFERENCES `cliente` (`codcliente`);

--
-- Limitadores para a tabela `perfilcliente`
--
ALTER TABLE `perfilcliente`
  ADD CONSTRAINT `perfilcliente_ibfk_1` FOREIGN KEY (`codproduto`) REFERENCES `produtos` (`codproduto`),
  ADD CONSTRAINT `perfilcliente_ibfk_2` FOREIGN KEY (`codpedido`) REFERENCES `pedido` (`codpedido`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
