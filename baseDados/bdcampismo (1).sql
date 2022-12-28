-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 28-Dez-2022 às 13:20
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bdcampismo`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cabanasinfo`
--

CREATE TABLE `cabanasinfo` (
  `idCabana` int(11) NOT NULL,
  `nome` text NOT NULL,
  `img_cabana` text NOT NULL,
  `preco_noite` varchar(11) NOT NULL,
  `tipo` varchar(10) NOT NULL,
  `descricao` varchar(200) NOT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cabanasinfo`
--

INSERT INTO `cabanasinfo` (`idCabana`, `nome`, `img_cabana`, `preco_noite`, `tipo`, `descricao`, `estado`) VALUES
(1, 'Cabana de Campismo', 'cabana1.jpg', '50€', 'T2', 'Cabana de Campismo T2, 50€ por noite', 1),
(2, 'Cabana do Amor', 'cabana2.jpg', '60€', 'T1', 'Cabana do amor', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `estado`
--

CREATE TABLE `estado` (
  `idEstado` int(11) NOT NULL,
  `nomeEstado` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `estado`
--

INSERT INTO `estado` (`idEstado`, `nomeEstado`) VALUES
(1, 'Livre'),
(2, 'Ocupado'),
(3, 'Reserva pendente');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipoutilizador`
--

CREATE TABLE `tipoutilizador` (
  `idTipo` int(11) NOT NULL,
  `nomeTipo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tipoutilizador`
--

INSERT INTO `tipoutilizador` (`idTipo`, `nomeTipo`) VALUES
(1, 'Administrador'),
(2, 'Cliente'),
(3, 'Utilizador não validado'),
(4, 'Socio'),
(5, 'Funcionário');

-- --------------------------------------------------------

--
-- Estrutura da tabela `utilizadores`
--

CREATE TABLE `utilizadores` (
  `nomeUtilizador` varchar(100) NOT NULL,
  `mail` varchar(100) NOT NULL,
  `morada` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `telefone` int(9) NOT NULL,
  `tipoUtilizador` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `utilizadores`
--

INSERT INTO `utilizadores` (`nomeUtilizador`, `mail`, `morada`, `pass`, `telefone`, `tipoUtilizador`) VALUES
('admin', 'admin@gmail.com', 'Rua de Cima', '$2y$10$krXUdeqJRRQiHTdw/dfmNOKWqPSLYrkw/oPw79FqL/Vqwr1QARyfu', 935837163, 1),
('beatriz', 'breatriz@gmail.com', 'vale de bouro ', '$2y$10$y/czySeDDwoNLJb9k0X26e8yJL418el7C/tB6DdvHWgm9WJgoZsRm', 123456789, 2),
('chico123', 'sadf@gmail.com', 'asdf', '$2y$10$oShE62yTINoTvqqDyZfsB.WZbnHDYRJr7CZPkxdVFcmee7qzuLmIe', 21312322, 2),
('dire_cash', 'dire_cash@gmail.com', 'georgia', '$2y$10$op34MXrQk0qFhjjE1nC0nut7/C0w7WU7q1NWhCKWZVWCTs/ocFcdO', 938418472, 2),
('Francisco', 'francisco@gmail.com', 'Rua de Baixo', '$2y$10$G106TsiP4CVfnFU18AzUzuABv2XIam0yeLFZRBwB6TTuC5n01sTve', 123456789, 3),
('func', 'func@gmail.com', 'func', '$2y$10$uKl2b0nxHAlGgAkytIG4XezrZX7XXRnK9OSHRyU0COQXNBDdCXtVe', 123456789, 5),
('jorge', 'jorge@gmail.com', 'jorge', '$2y$10$QVORLxgo9XvRpU3EXSpcnewuix/xz4K1XENQe4rVGD5b/qv6wLRMG', 123456789, 2),
('socio', 'socio@gmail.com', 'Rua de Baixo', '$2y$10$9ubCNWDTK4k.bpQiVIWOPOMkPONDVyIRRR9N9KEcUnrj/g2bXHP6a', 935837194, 4),
('teste', 'teste@gmail.com', 'teste', '$2y$10$.GIz2w7ZYM/pvnzgc8okLOR.EfDbnaDLOz6LykBhqkDpMk9wZgXr2', 0, 5);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cabanasinfo`
--
ALTER TABLE `cabanasinfo`
  ADD PRIMARY KEY (`idCabana`),
  ADD KEY `estado` (`estado`);

--
-- Índices para tabela `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`idEstado`);

--
-- Índices para tabela `tipoutilizador`
--
ALTER TABLE `tipoutilizador`
  ADD PRIMARY KEY (`idTipo`);

--
-- Índices para tabela `utilizadores`
--
ALTER TABLE `utilizadores`
  ADD PRIMARY KEY (`nomeUtilizador`),
  ADD KEY `tipoUtilizador` (`tipoUtilizador`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cabanasinfo`
--
ALTER TABLE `cabanasinfo`
  MODIFY `idCabana` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `estado`
--
ALTER TABLE `estado`
  MODIFY `idEstado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `cabanasinfo`
--
ALTER TABLE `cabanasinfo`
  ADD CONSTRAINT `cabanasinfo_ibfk_1` FOREIGN KEY (`estado`) REFERENCES `estado` (`idEstado`);

--
-- Limitadores para a tabela `utilizadores`
--
ALTER TABLE `utilizadores`
  ADD CONSTRAINT `utilizadores_ibfk_1` FOREIGN KEY (`tipoUtilizador`) REFERENCES `tipoutilizador` (`idTipo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
