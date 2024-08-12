-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 07/08/2024 às 16:29
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `eventos`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `genero` varchar(20) DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL,
  `cidade` varchar(100) DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  `endereco` varchar(200) DEFAULT NULL,
  `senha` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `clientes`
--

INSERT INTO `clientes` (`id`, `nome`, `email`, `telefone`, `genero`, `data_nascimento`, `cidade`, `estado`, `endereco`, `senha`) VALUES
(1, 'Clodoaldo', 'clod@hotmail.com', '987564940', 'masculino', '1973-02-21', 'Natal', 'RN', 'Rua do Amor', ''),
(2, 'Eli', 'eli@gmail.com', '987564950', 'masculino', '1980-03-20', 'Natal', 'RN', 'Rua da Rua', ''),
(3, 'Elisa', 'elisa@gmail.com', '987564989', 'feminino', '1998-03-02', 'Natal', 'RN', 'Rua da Rua', ''),
(4, '', '', '', '', '0000-00-00', '', '', '', ''),
(5, 'gaby', 'gaby22@gmail.com', '89963447', 'feminino', '1988-12-02', 'Natal', 'RN', 'Rua do Amor', ''),
(6, 'gaby', 'gaby22@gmail.com', '89963447', 'feminino', '1988-12-02', 'Natal', 'RN', 'Rua do Amor', ''),
(7, 'Marcos', 'm@gmail.com', '89963448', 'masculino', '2005-02-23', 'Natal', 'RN', 'Rua do Amor', ''),
(8, 'Clodoaldo', 'clod@hotmail.com', '89963447', 'masculino', '1960-11-21', 'Natal', 'RN', 'rua da esperança', '123');

-- --------------------------------------------------------

--
-- Estrutura para tabela `contato`
--

CREATE TABLE `contato` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `formulario_eventos`
--

CREATE TABLE `formulario_eventos` (
  `id` int(11) NOT NULL,
  `responsavel` varchar(255) NOT NULL,
  `evento` varchar(255) NOT NULL,
  `categoria` varchar(255) NOT NULL,
  `data` date NOT NULL,
  `local` varchar(255) NOT NULL,
  `hora` time NOT NULL,
  `duracao` varchar(255) NOT NULL,
  `seguranca` varchar(255) NOT NULL,
  `preco` varchar(255) NOT NULL,
  `atracoes` varchar(255) NOT NULL,
  `observacao` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `formulario_eventos`
--

INSERT INTO `formulario_eventos` (`id`, `responsavel`, `evento`, `categoria`, `data`, `local`, `hora`, `duracao`, `seguranca`, `preco`, `atracoes`, `observacao`) VALUES
(1, '', 'campeonato de natação', 'esportes', '2024-08-10', 'Escola Icapui', '08:00:00', '1 hora', 'não tem', 'gratuito', 'esporte de alunos', '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pagamentos`
--

CREATE TABLE `pagamentos` (
  `id` int(11) NOT NULL,
  `responsavel` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `valor_compra` decimal(10,2) NOT NULL,
  `pagamento_pix` enum('telefone','cpf','cnpj') DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `cpf` varchar(11) DEFAULT NULL,
  `cnpj` varchar(14) DEFAULT NULL,
  `numero_cartao` varchar(20) NOT NULL,
  `nome_cartao` varchar(100) NOT NULL,
  `codigo_seguranca` varchar(4) NOT NULL,
  `data_validade` varchar(7) NOT NULL,
  `data_registro` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `contato`
--
ALTER TABLE `contato`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Índices de tabela `formulario_eventos`
--
ALTER TABLE `formulario_eventos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `pagamentos`
--
ALTER TABLE `pagamentos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `contato`
--
ALTER TABLE `contato`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `formulario_eventos`
--
ALTER TABLE `formulario_eventos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `pagamentos`
--
ALTER TABLE `pagamentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
