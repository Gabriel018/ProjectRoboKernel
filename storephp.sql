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

INSERT INTO produto (codproduto,descricao,categoria,preco,imagem) VALUES
(null, 'Kit para Arduino', 'Kits Didáticos', '59.00', 'kitarduino.png'),
(null, 'Kit Iniciante V8 para Arduino', 'Kits Didáticos', '199.00', 'kitiniciantev8.png'),
(null, 'Kit Avancado V4 para Arduino', 'Kits Didáticos','250.00', 'kitavancadov4.png'),
(null, 'Master Kit: Kit Iniciante V8 + Kit Avançado V4', 'Kits Didáticos','389.00', 'kitiniciantev8v4.png'),
(null, 'Kit Iniciante para Robotica', 'Kits Didáticos','349.00', 'kitrobotica.png'),
(null, 'Arduino Shield - Ethernet W5500', 'Shields para Arduino','119.00', 'ethernetw5500.png'),
(null, 'Arduino Shield - Padawan', 'Shields para Arduino','49.00', 'padawan.png'),
(null, 'Arduino Shield - Albatross Master', 'Shields para Arduino','69.00', 'albastrossmaster.png'),
(null, 'Arduino Shield - CNC V3', 'Shields para Arduino','29.00', 'cncv3.png'),
(null, 'Arduino Shield - Joystick', 'Shields para Arduino','49.00', 'joystick.png'),
(null, 'Placa Nano V3 + Cabo USB para Arduino', 'Placas Arduino','39.00', 'placananov3.png'),
(null, 'Placa RC FTDI V1.1', 'Placas Arduino','35.00', 'placarcftdi.png'),
(null, 'Placa STM32F103C8T6 ARM Cortex M3', 'Placas Arduino','35.00', 'cortexm3.png'),
(null, 'Placa Uno R3 + Cabo USB para Arduino', 'Placas Arduino','54.00', 'placaunor3.png'),
(null, 'ATmega328 com Arduino Optiboot (UNO)', 'Placas Arduino','21.50', 'atmega328.png'),
(null, 'Braço Robótico RoboARM', 'Originais RoboCore','149.00', 'braco.png'),
(null, 'BlackBoard Pro Mini - 5V/16MHz', 'Originais RoboCore','25.00', 'board.png'),
(null, 'Kit Resistor 500', 'Originais RoboCore','29.00', 'resistor.png'),
(null, 'Módulo Display Serial', 'Originais RoboCore','25.00', 'display.png'),
(null, 'Sensor de Som', 'Originais RoboCore','12.00', 'sensor.png'),
(null, 'Multímetro Digital Hikari HM-1001', 'Novidades','39.00', 'multi.png'),
(null, 'Linux para Makers', 'Novidades','75.00', 'linux.png'),
(null, 'Micro Servo MG90S TowerPro', 'Novidades','25.00', 'servo.png'),
(null, 'Carregador de Bateria iMax B6 com Fonte', 'Novidades','215.00', 'carregador.png'),
(null, 'Fita LED RGB Endereçável WS2812B 5050 - 1 metro', 'Novidades','59.00', 'fita.png'),
(null, 'Albatross - Fonte 12V 1A para módulos escravos', 'Automação Resid','19.00', 'escravos.png'),
(null, 'Albatross Slave - Relê', 'Automação Resid','289.00', 'slave.png'),
(null, 'Cabo de Rede 3,0m - Patch Cord', 'Automação Resid', '8.50', 'cabo.png'),
(null, 'Albatross cabo IR - 5m', 'Automação Resid', '9.00', 'caboir.png'),
(null, 'Válvula Solenoide 1/2 x 1/2', 'Automação Resid','49.00', 'valvula.png'),
(null, 'Botão Arcade Amarelo', 'Itens Eletrônicos','9.00', 'yellowp.png'),
(null, 'Botão Arcade Azul', 'Itens Eletrônicos','9.00', 'blup.png'),
(null, 'Botão Arcade Verde', 'Itens Eletrônicos','9.00', 'greenp.png'),
(null, 'Botão Arcade Vermelho', 'Itens Eletrônicos','9.00', 'redp.png'),
(null, 'Joystick Arcade', 'Itens Eletrônicos','49.00', 'jostick.png'),
(null, 'Cartão de Memória MicroSD 16GB Classe 10 Sandisk', 'Embarcados', '39.00', 'caard.png'),
(null, 'Cartão de Memória MicroSD 32GB Classe 10 Sandisk', 'Embarcados','99.00', 'card.png'),
(null, 'Guia do Maker para o Apocalipse Zumbi', 'Embarcados', '59.00', 'zumbi.png'),
(null, 'WorkPlate 400', 'Embarcados','14.90', 'work.png'),
(null, 'Câmera para Raspberry Pi Rev 1.3', 'Embarcados', '69.90', 'rasp.png'),
(null, 'Módulo WiFi - ESP8266', 'Internet das Coisas','25.00', 'modulo.png'),
(null, 'ESP32 - WiFi & Bluetooth', ' Internet das Coisas', '79.00', 'eps.png'),
(null, 'Módulo Ethernet ENC28J60', 'Internet das Coisas','29.00', 'enc.png'),
(null, 'NodeMCU ESP8266-12 V2', 'Internet das Coisas', '49.00', 'node.png'),
(null, 'Adaptador para ESP8266', ' Internet das Coisas','14.90', 'epss.png'),
(null, 'Adaptador HDMI - VGA com Audio', 'Cabos e Conectores','49.00', 'hdmivga.png'),
(null, 'Adaptador P4 Fêmea - Borne', 'Cabos e Conectores','2.90', 'pp.png'),
(null, 'Adaptador P4 Macho - Borne', 'Cabos e Conectores','2.90', 'pm.png'),
(null, 'Borne Emenda 2 Vias', 'Cabos e Conectores','2.50', 'borne.png'),
(null, 'Deans Style T-Connectors', 'Cabos e Conectores', '10.00', 'style.png'),
(null, 'Caixa de Redução Orbit500 4:1', 'Caixas de Redução','99.00', 'caixab.png'),
(null, 'Orbit500 - Bloco Frontal', 'Caixas de Redução','42.00', 'orbit.png'),
(null, 'Orbit500 - Engrenagem Planeta / Pinhão (Jogo)', 'Caixas de Redução', '10.00', 'engre.png'),
(null, 'Orbit500 - Eixo 8mm', 'Caixas de Redução','15.00', 'eixo.png'),
(null, 'Orbit500 - Prato de Saída p/ Eixo', 'Caixas de Redução', '14.50', 'pratoo.png'),
(null, 'LCD 16x2 5V Laranja no Preto', 'Displays e LCDs', '16.90', 'lcd.png'),
(null, 'LCD 16x2 5V Preto no Verde com Barra de Pinos Soldada', 'Displays e LCDs','23.90', 'lcdb.png'),
(null, 'LCD 16x2 Com Interface I2C', 'Displays e LCDs','39.00', 'lcda.png'),
(null, 'LCD 20x4 5V Preto no Verde', 'Displays e LCDs','40.90', 'lcdv.png'),
(null, 'Display LCD TFT Touch 3.5 para Raspberry Pi', 'Displays e LCDs','159.00', 'lcdtft.png'),
(null, 'Circuito Meia Ponte BTN7970B', 'Drivers de Motores', '24.90', 'ponte.png'),
(null, 'Circuito Ponte-H - L293D', 'Drivers de Motores','9.90', 'ponteh.png'),
(null, 'Driver para motor de passo DM322E 50VDC / 2.2A', 'Drivers de Motores', '199.00', 'motor.png'),
(null, 'Driver de Motor de Passo A4988', 'Drivers de Motores','14.90', 'motorp.png'),
(null, 'SyRen 25A', 'Drivers de Motores', '499.00', 'syren.png'),
(null, 'Alicate de Bico Longo HK-507', 'Ferramentas','19.90', 'alicate.png'),
(null, 'Alicate de Corte de Precisão', 'Ferramentas', '19.00', 'alicatep.png'),
(null, 'Chave Phillips 1/8 x 3 Pol PH0 - Stanley', 'Ferramentas', '4.50', 'chavep.png'),
(null, 'Multímetro Digital DT-830D', 'Ferramentas', '39.00', 'multid.png'),
(null, 'Kit de Chaves Philips e Fenda', 'Ferramentas', '45.00', 'kitchave.png'),
(null, 'Bateria LiPo 11,1V 2200mAh 30C', 'Fontes e Baterias', '149.00', 'fonteb.png'),
(null, 'Fonte Ajustável para Protoboard', 'Itens Eletrônicos','9.90', 'proto.png'),
(null, 'Monitor de Tensão para Baterias 1S-8S', 'Fontes e Baterias', '19.00', 'tensao.png'),
(null, 'Fonte de Alimentação Variável 0~32V / 0~3A HF-3203', 'Fontes e Baterias', '599.00', 'fonteali.png'),
(null, 'Fonte Industrial 12V 5A', 'Fontes e Baterias', '69.00', 'fontei.png');

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
