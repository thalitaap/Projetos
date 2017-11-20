-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 20-Nov-2017 às 00:35
-- Versão do servidor: 5.6.35
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dashboardbd`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `task_tabela`
--

CREATE TABLE `task_tabela` (
  `task` varchar(40) NOT NULL,
  `descricao` varchar(100) NOT NULL,
  `prioridade` int(2) NOT NULL,
  `arquivos` int(10) NOT NULL,
  `usuario_criou` varchar(40) NOT NULL,
  `usuario_done` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `task_tabela`
--

INSERT INTO `task_tabela` (`task`, `descricao`, `prioridade`, `arquivos`, `usuario_criou`, `usuario_done`) VALUES
('nome', 'descrição qualquer', 5, 0, '', ''),
('task nome 001', 'descrição de task 001', 1, 0, '', ''),
('Um nome aleatório', 'Esta é uma descrição da task acima nomeada', 2, 0, '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `task_tabela`
--
ALTER TABLE `task_tabela`
  ADD PRIMARY KEY (`task`),
  ADD UNIQUE KEY `task` (`task`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
