-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 27-Jun-2019 às 16:45
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

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`codcliente`, `nome`, `email`, `senha`, `celular`, `cpf`, `cep`, `endereco`, `numero`, `complemento`, `bairro`, `cidade`, `estado`, `foto`) VALUES
(1, 'Ana', 'ana@gmail.com', '123', '44343', '3331', '3131', 'gfgfgf', '12', 'ggfd', 'ffdfd', 'fdfd', 'fdfd', 'df'),
(2, 'Ana', 'ana@gmail.com', '123', '44343', '3331', '3131', 'gfgfgf', '12', 'ggfd', 'ffdfd', 'fdfd', 'fdfd', 'df');

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
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `codproduto` int(11) NOT NULL,
  `descricao` varchar(150) NOT NULL,
  `categoria` varchar(100) NOT NULL,
  `manual` varchar(300) NOT NULL,
  `preco` varchar(12) NOT NULL,
  `imagem` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `produto`
--

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acesso_restrito`
--
ALTER TABLE `acesso_restrito`
  ADD PRIMARY KEY (`pk_restrito`);

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
  ADD PRIMARY KEY (`codcliente`);

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
  MODIFY `codcliente` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `produto`
--
ALTER TABLE `produto`
  MODIFY `codproduto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `perfilcliente`
--
ALTER TABLE `perfilcliente`
  ADD CONSTRAINT `perfilcliente_ibfk_2` FOREIGN KEY (`codpedido`) REFERENCES `pedido` (`codpedido`);
  
  

INSERT INTO `produto` (`codproduto`, `descricao`, `categoria`, `manual`, `preco`, `imagem`) VALUES
(null, 'Kit para Arduino', 'Kits Did&aacute;ticos', '', '59.00', 'kitarduino.png'),
(null, 'Kit Iniciante V8 para Arduino', 'Kits Did&aacute;ticos', '', '199.00', 'kitiniciantev8.png'),
(null, 'Kit Avancado V4 para Arduino', 'Kits Did&aacute;ticos', '', '250.00', 'kitavancadov4.png'),
(null, 'Master Kit: Kit Iniciante V8 + Kit Avan&ccedil;ado V4', 'Kits Did&aacute;ticos', '', '389.00', 'kitiniciantev8v4.png'),
(null, 'Kit Iniciante para Robotica', 'Kits Did&aacute;ticos', '', '349.00', 'kitrobotica.png'),
(null, 'Arduino Shield - Ethernet W5500', 'Shields para Arduino', '', '119.00', 'ethernetw5500.png'),
(null, 'Arduino Shield - Padawan', 'Shields para Arduino', '', '49.00', 'padawan.png'),
(null, 'Arduino Shield - Albatross Master', 'Shields para Arduino', '', '69.00', 'albastrossmaster.png'),
(null, 'Arduino Shield - CNC V3', 'Shields para Arduino', '', '29.00', 'cncv3.png'),
(null, 'Arduino Shield - Joystick', 'Shields para Arduino', '', '49.00', 'joystick.png'),
(null, 'Placa Nano V3 + Cabo USB para Arduino', 'Placas Arduino', '', '39.00', 'placananov3.png'),
(null, 'Placa RC FTDI V1.1', 'Placas Arduino', '', '35.00', 'placarcftdi.png'),
(null, 'Placa STM32F103C8T6 ARM Cortex M3', 'Placas Arduino', '', '35.00', 'cortexm3.png'),
(null, 'Placa Uno R3 + Cabo USB para Arduino', 'Placas Arduino', '', '54.00', 'placaunor3.png'),
(null, 'ATmega328 com Arduino Optiboot (UNO)', 'Placas Arduino', '', '21.50', 'atmega328.png'),
(null, 'Bra&ccedil;o Rob&oacute;tico RoboARM', 'Originais RoboCore', '', '149.00', 'braco.png'),
(null, 'BlackBoard Pro Mini - 5V/16MHz', 'Originais RoboCore', '', '25.00', 'board.png'),
(null, 'Kit Resistor 500', 'Originais RoboCore', '', '29.00', 'resistor.png'),
(null, 'M&oacute;dulo Display Serial', 'Originais RoboCore', '', '25.00', 'display.png'),
(null, 'Sensor de Som', 'Originais RoboCore', '', '12.00', 'sensor.png'),
(null, 'Mult&igrave;metro Digital Hikari HM-1001', 'Novidades', '', '39.00', 'multi.png'),
(null, 'Linux para Makers', 'Novidades', '', '75.00', 'linux.png'),
(null, 'Micro Servo MG90S TowerPro', 'Novidades', '', '25.00', 'servo.png'),
(null, 'Carregador de Bateria iMax B6 com Fonte', 'Novidades', '', '215.00', 'carregador.png'),
(null, 'Fita LED RGB Endere&ccedil;ável WS2812B 5050 - 1 metro', 'Novidades', '', '59.00', 'fita.png'),
(null, 'Albatross - Fonte 12V 1A para m&oacute;dulos escravos', 'Automa&ccedil;&atilde;o Resid', '', '19.00', 'escravos.png'),
(null, 'Albatross Slave - Rel&ecirc;', 'Automa&ccedil;&atilde;o Resid', '', '289.00', 'slave.png'),
(null, 'Cabo de Rede 3,0m - Patch Cord', 'Automa&ccedil;&atilde;o Resid', '', '8.50', 'cabo.png'),
(null, 'Albatross cabo IR - 5m', 'Automa&ccedil;&atilde;o Resid', '', '9.00', 'caboir.png'),
(null, 'Válvula Solenoide 1/2 x 1/2', 'Automa&ccedil;&atilde;o Resid', '', '49.00', 'valvula.png'),
(null, 'Bot&atilde;o Arcade Amarelo', 'Itens Eletr&ocirc;nicos', '', '9.00', 'yellowp.png'),
(null, 'Bot&atilde;o Arcade Azul', 'Itens Eletr&ocirc;nicos', '', '9.00', 'blup.png'),
(null, 'Bot&atilde;o Arcade Verde', 'Itens Eletr&ocirc;nicos', '', '9.00', 'greenp.png'),
(null, 'Bot&atilde;o Arcade Vermelho', 'Itens Eletr&ocirc;nicos', '', '9.00', 'redp.png'),
(null, 'Joystick Arcade', 'Itens Eletr&ocirc;nicos', '', '49.00', 'jostick.png'),
(null, 'Cart&atilde;o de Mem&oacute;ria MicroSD 16GB Classe 10 Sandisk', 'Embarcados', '', '39.00', 'caard.png'),
(null, 'Cart&atilde;o de Mem&oacute;ria MicroSD 32GB Classe 10 Sandisk', 'Embarcados', '', '99.00', 'card.png'),
(null, 'Guia do Maker para o Apocalipse Zumbi', 'Embarcados', '', '59.00', 'zumbi.png'),
(null, 'WorkPlate 400', 'Embarcados', '', '14.90', 'work.png'),
(null, 'C&acirc;mera para Raspberry Pi Rev 1.3', 'Embarcados', '', '69.90', 'rasp.png'),
(null, 'M&oacute;dulo WiFi - ESP8266', 'Internet das Coisas', '', '25.00', 'modulo.png'),
(null, 'ESP32 - WiFi & Bluetooth', ' Internet das Coisas', '', '79.00', 'eps.png'),
(null, 'M&oacute;dulo Ethernet ENC28J60', 'Internet das Coisas', '', '29.00', 'enc.png'),
(null, 'NodeMCU ESP8266-12 V2', 'Internet das Coisas', '', '49.00', 'node.png'),
(null, 'Adaptador para ESP8266', ' Internet das Coisas', '', '14.90', 'epss.png'),
(null, 'Adaptador HDMI - VGA com Audio', 'Cabos e Conectores', '', '49.00', 'hdmivga.png'),
(null, 'Adaptador P4 F&ecirc;mea - Borne', 'Cabos e Conectores', '', '2.90', 'pp.png'),
(null, 'Adaptador P4 Macho - Borne', 'Cabos e Conectores', '', '2.90', 'pm.png'),
(null, 'Borne Emenda 2 Vias', 'Cabos e Conectores', '', '2.50', 'borne.png'),
(null, 'Deans Style T-Connectors', 'Cabos e Conectores', '', '10.00', 'style.png'),
(null, 'Caixa de Redu&ccedil;&atilde;o Orbit500 4:1', 'Caixas de Redu&ccedil;&atilde;o', '', '99.00', 'caixab.png'),
(null, 'Orbit500 - Bloco Frontal', 'Caixas de Redu&ccedil;&atilde;o', '', '42.00', 'orbit.png'),
(null, 'Orbit500 - Engrenagem Planeta / Pinh&atilde;o (Jogo)', 'Caixas de Redu&ccedil;&atilde;o', '', '10.00', 'engre.png'),
(null, 'Orbit500 - Eixo 8mm', 'Caixas de Redu&ccedil;&atilde;o', '', '15.00', 'eixo.png'),
(null, 'Orbit500 - Prato de Sa&igrave;da p/ Eixo', 'Caixas de Redu&ccedil;&atilde;o', '', '14.50', 'pratoo.png'),
(null, 'LCD 16x2 5V Laranja no Preto', 'Displays e LCDs', '', '16.90', 'lcd.png'),
(null, 'LCD 16x2 5V Preto no Verde com Barra de Pinos Soldada', 'Displays e LCDs', '', '23.90', 'lcdb.png'),
(null, 'LCD 16x2 Com Interface I2C', 'Displays e LCDs', '', '39.00', 'lcda.png'),
(null, 'LCD 20x4 5V Preto no Verde', 'Displays e LCDs', '', '40.90', 'lcdv.png'),
(null, 'Display LCD TFT Touch 3.5 para Raspberry Pi', 'Displays e LCDs', '', '159.00', 'lcdtft.png'),
(null, 'Circuito Meia Ponte BTN7970B', 'Drivers de Motores', '', '24.90', 'ponte.png'),
(null, 'Circuito Ponte-H - L293D', 'Drivers de Motores', '', '9.90', 'ponteh.png'),
(null, 'Driver para motor de passo DM322E 50VDC / 2.2A', 'Drivers de Motores', '', '199.00', 'motor.png'),
(null, 'Driver de Motor de Passo A4988', 'Drivers de Motores', '', '14.90', 'motorp.png'),
(null, 'SyRen 25A', 'Drivers de Motores', '', '499.00', 'syren.png'),
(null, 'Alicate de Bico Longo HK-507', 'Ferramentas', '', '19.90', 'alicate.png'),
(null, 'Alicate de Corte de Precis&atilde;o', 'Ferramentas', '', '19.00', 'alicatep.png'),
(null, 'Chave Phillips 1/8 x 3 Pol PH0 - Stanley', 'Ferramentas', '', '4.50', 'chavep.png'),
(null, 'Mult&igrave;metro Digital DT-830D', 'Ferramentas', '', '39.00', 'multid.png'),
(null, 'Kit de Chaves Philips e Fenda', 'Ferramentas', '', '45.00', 'kitchave.png'),
(null, 'Bateria LiPo 11,1V 2200mAh 30C', 'Fontes e Baterias', '', '149.00', 'fonteb.png'),
(null, 'Fonte Ajustá&aacute;vel para Protoboard', 'Itens Eletr&ocirc;nicos', '', '9.90', 'proto.png'),
(null, 'Monitor de Tens&atilde;o para Baterias 1S-8S', 'Fontes e Baterias', '', '19.00', 'tensao.png'),
(null, 'Fonte de Alimenta&ccedil;&atilde;o Vari&aacute;vel 0~32V / 0~3A HF-3203', 'Fontes e Baterias', '', '599.00', 'fonteali.png'),
(null, 'Fonte Industrial 12V 5A', 'Fontes e Baterias', '', '69.00', 'fontei.png');


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
