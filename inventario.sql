-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql:3306
-- Tempo de geração: 25/09/2023 às 10:10
-- Versão do servidor: 8.1.0
-- Versão do PHP: 8.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE DATABASE IF NOT EXISTS Inventario;
USE Inventario;

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `inventario`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `Inventory`
--

CREATE TABLE `Inventory` (
  `InventoryID` int NOT NULL,
  `Quantity` int DEFAULT NULL,
  `ProductID` int DEFAULT NULL,
  `Location` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `Inventory`
--

INSERT INTO `Inventory` (`InventoryID`, `Quantity`, `ProductID`, `Location`) VALUES
(1, 4, 2, 'Container 1 ');

-- --------------------------------------------------------

--
-- Estrutura para tabela `Product`
--

CREATE TABLE `Product` (
  `ProductID` int NOT NULL,
  `Description` text,
  `Category` varchar(255) DEFAULT NULL,
  `ProductName` varchar(255) DEFAULT NULL,
  `Image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `Product`
--

INSERT INTO `Product` (`ProductID`, `Description`, `Category`, `ProductName`, `Image`) VALUES
(1, 'Biciclera GSM Aro 21', 'Esporte', 'Bicicleta GSM', 'https://static3.tcdn.com.br/img/img_prod/394779/bicicleta_29_gts_m1_freio_a_disco_24v_shimano_tourney_suspensao_new_expert_2023_4254_1_300754e1f88d60376ad4c08f980f0165.jpg'),
(2, 'Computador i7, 32 gigas de ram', 'Eletronico', 'Notebook', 'https://www.havan.com.br/media/catalog/product/cache/73a52df140c4d19dbec2b6c485ea6a50/n/o/notebook-samsung-book-intel-core-i5-8gb-ram-256gb-tela-de-15-6-w11-home_808248.jpg');

-- --------------------------------------------------------

--
-- Estrutura para tabela `Reorders`
--

CREATE TABLE `Reorders` (
  `ReorderID` int NOT NULL,
  `ProductID` int DEFAULT NULL,
  `Quantity` int DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL,
  `DateCompleted` date DEFAULT NULL,
  `DateRequested` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `Inventory`
--
ALTER TABLE `Inventory`
  ADD PRIMARY KEY (`InventoryID`),
  ADD KEY `ProductID` (`ProductID`);

--
-- Índices de tabela `Product`
--
ALTER TABLE `Product`
  ADD PRIMARY KEY (`ProductID`);

--
-- Índices de tabela `Reorders`
--
ALTER TABLE `Reorders`
  ADD PRIMARY KEY (`ReorderID`),
  ADD KEY `ProductID` (`ProductID`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `Inventory`
--
ALTER TABLE `Inventory`
  MODIFY `InventoryID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `Product`
--
ALTER TABLE `Product`
  MODIFY `ProductID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `Reorders`
--
ALTER TABLE `Reorders`
  MODIFY `ReorderID` int NOT NULL AUTO_INCREMENT;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `Inventory`
--
ALTER TABLE `Inventory`
  ADD CONSTRAINT `Inventory_ibfk_1` FOREIGN KEY (`ProductID`) REFERENCES `Product` (`ProductID`);

--
-- Restrições para tabelas `Reorders`
--
ALTER TABLE `Reorders`
  ADD CONSTRAINT `Reorders_ibfk_1` FOREIGN KEY (`ProductID`) REFERENCES `Product` (`ProductID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
