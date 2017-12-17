-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 22-Nov-2017 às 20:17
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
  `arquivos` blob NOT NULL,
  `arquivo_nome` varchar(100) NOT NULL,
  `arquivo_tipo` varchar(50) NOT NULL,
  `usuario_criou` varchar(40) NOT NULL,
  `usuario_done` varchar(40) NOT NULL,
  `ID` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `task_tabela`
--

INSERT INTO `task_tabela` (`task`, `descricao`, `prioridade`, `arquivos`, `arquivo_nome`, `arquivo_tipo`, `usuario_criou`, `usuario_done`, `ID`) VALUES
('Nova task 01', 'Este é um exemplo.', 1, 0x30, '', '', 'Thalita Alves Pereira', '', 1),
('Nova task 02', 'Esta task estará com o DONE marcado', 2, 0x30, '', '', 'Thalita Alves Pereira', 'Thalita Alves Pereira', 2),
('Nova task 03', 'Esta descrição foi modificada pelo programa', 3, 0x30, '', '', 'Thalita Alves Pereira', '', 3),
('Nova task 04 - Nome maior para mostrar caracteres', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec nec mi sit amet sapien malesuada placerat. Duis gravida mi vitae lacus egestas molestie id nec risus. Ut accumsan dui ac vehicula efficitur.', 4, 0x30, '', '', 'Thalita Alves Pereira', '', 4),
('Nova task 05', 'Esta task contém anexo.', 5, 0x446f63756d656e746f206578656d706c6f20706172612075706c6f6164206465206172717569766f730d0a3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d, 'exemplo.txt', 'text/plain', 'Thalita Alves Pereira', '', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `task_tabela`
--
ALTER TABLE `task_tabela`
  ADD PRIMARY KEY (`task`),
  ADD UNIQUE KEY `task` (`task`),
  ADD UNIQUE KEY `ID` (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `task_tabela`
--
ALTER TABLE `task_tabela`
  MODIFY `ID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
