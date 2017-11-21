-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 21-Nov-2017 às 18:47
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
  `task` varchar(80) NOT NULL,
  `descricao` varchar(500) NOT NULL,
  `prioridade` int(2) NOT NULL,
  `arquivos` int(10) NOT NULL,
  `usuario_criou` varchar(40) NOT NULL,
  `usuario_done` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `task_tabela`
--

INSERT INTO `task_tabela` (`task`, `descricao`, `prioridade`, `arquivos`, `usuario_criou`, `usuario_done`) VALUES
('Nova task 01', 'Este é um exemplo.', 1, 0, 'Thalita Alves Pereira', ''),
('Nova task 02', 'Esta task estará com o DONE marcado', 2, 0, 'Thalita Alves Pereira', 'Thalita Alves Pereira'),
('Nova task 03', 'Esta descrição foi modificada pelo programa', 3, 0, 'Thalita Alves Pereira', ''),
('Nova task 04 - Nome maior para mostrar caracteres', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec nec mi sit amet sapien malesuada placerat. Duis gravida mi vitae lacus egestas molestie id nec risus. Ut accumsan dui ac vehicula efficitur.', 4, 0, 'Thalita Alves Pereira', '');

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
