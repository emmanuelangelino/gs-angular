SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE `addresses` (
  `id` int(11) NOT NULL,
  `line1` varchar(255) DEFAULT NULL,
  `line2` varchar(255) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
   `street_name` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `pincode` int(6) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `addresses` (`id`, `line1`, `line2`, `state`, `city`, `street_name`, `country`, `phone`, `pincode`, `user_id`) VALUES
(1, 'Endereço Teste', 'Endereço Teste', 'São Paulo', 'São Paulo', 'Rua Um', 'Brasil', '11999887766', 110045, 1),
(2, 'Endereço Teste 2', 'Endereço Teste 2', 'Pernambuco', 'Recife', 'Rua Dois', 'Brasil', '81999552233', 560100, 1);

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `categories` (`id`, `title`) VALUES
(1, 'Hardwares'),
(2, 'Eletrônicos');

CREATE TABLE `orders` (
  `id` int(10) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `orders` (`id`, `user_id`) VALUES
(7, 1),
(8, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(6, 2),
(42, 2),
(43, 2),
(44, 2),
(63, 2),
(104, 2),
(105, 2),
(106, 2),
(107, 2),
(108, 2),
(109, 2),
(110, 2),
(111, 2),
(112, 2),
(113, 2),
(114, 2),
(115, 2),
(116, 2),
(117, 2),
(118, 2),
(119, 2);

CREATE TABLE `orders_details` (
  `id` int(10) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(10) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `orders_details` (`id`, `order_id`, `product_id`, `quantity`) VALUES
(1, 6, 27, 1),
(2, 6, 26, 1),
(3, 6, 49, 1),
(4, 7, 4, 1),
(5, 8, 38, 1),
(6, 8, 5, 1),
(7, 8, 53, 1),
(9, 24, 26, 1),
(10, 24, 49, 1),
(11, 24, 38, 1),
(12, 24, 27, 1),
(45, 39, 1, 3),
(46, 39, 13, 3),
(47, 39, 18, 2),
(49, 40, 1, 2),
(50, 40, 18, 1),
(51, 40, 38, 2),
(52, 40, 13, 2),
(53, 41, 31, 2),
(54, 42, 1, 2),
(55, 42, 18, 1),
(56, 42, 38, 2),
(57, 42, 13, 2),
(58, 43, 13, 2),
(59, 43, 1, 2),
(60, 43, 18, 1),
(61, 43, 38, 2),
(62, 44, 1, 2),
(63, 44, 32, 3),
(64, 44, 13, 8),
(65, 44, 18, 5),
(66, 52, 4, 1),
(67, 53, 7, 1),
(68, 54, 1, 1),
(69, 55, 3, 6),
(70, 56, 1, 1),
(71, 56, 4, 1),
(72, 56, 7, 1),
(73, 56, 6, 1),
(74, 57, 2, 1),
(75, 57, 3, 1),
(76, 58, 3, 1),
(77, 58, 2, 1),
(78, 59, 2, 1),
(79, 59, 3, 1),
(80, 60, 2, 1),
(81, 60, 3, 1),
(82, 61, 2, 1),
(83, 61, 3, 1),
(84, 62, 1, 1),
(85, 62, 4, 1),
(86, 63, 1, 2),
(87, 63, 18, 5),
(88, 63, 32, 3),
(89, 63, 13, 8),
(90, 64, 1, 1),
(91, 64, 2, 1),
(92, 65, 2, 1),
(93, 65, 3, 1),
(94, 66, 2, 1),
(95, 67, 3, 2),
(96, 67, 2, 3),
(97, 68, 8, 2),
(98, 68, 7, 1),
(99, 69, 5, 2),
(100, 69, 6, 1),
(101, 70, 2, 1),
(102, 70, 3, 1),
(103, 71, 2, 1),
(104, 71, 1, 2),
(105, 71, 4, 6),
(106, 71, 3, 3),
(107, 72, 1, 1),
(108, 72, 3, 1),
(109, 73, 6, 2),
(110, 73, 4, 1),
(111, 74, 5, 1),
(112, 75, 6, 1),
(113, 76, 2, 1),
(114, 77, 2, 1),
(115, 77, 3, 1),
(116, 78, 1, 1),
(117, 78, 2, 1),
(118, 79, 6, 2),
(119, 79, 8, 1),
(120, 79, 7, 1),
(121, 80, 1, 1),
(122, 80, 2, 3),
(123, 81, 4, 3),
(124, 81, 2, 6),
(125, 81, 3, 6),
(126, 82, 2, 1),
(127, 82, 3, 1),
(128, 83, 5, 1),
(129, 85, 3, 3),
(130, 85, 6, 4),
(131, 85, 4, 1),
(132, 86, 2, 1),
(133, 87, 4, 3),
(134, 87, 6, 1),
(135, 89, 7, 4),
(136, 89, 4, 2),
(137, 89, 5, 3),
(138, 89, 6, 8),
(139, 90, 4, 4),
(140, 91, 2, 1),
(141, 93, 2, 1),
(142, 93, 3, 1),
(143, 94, 2, 1),
(144, 94, 3, 3),
(145, 95, 5, 1),
(146, 95, 3, 1),
(147, 95, 2, 1),
(148, 96, 2, 8),
(149, 96, 4, 1),
(150, 96, 3, 1),
(151, 97, 6, 1),
(152, 97, 5, 1),
(153, 98, 3, 6),
(154, 98, 4, 3),
(155, 99, 2, 14),
(156, 99, 5, 2),
(157, 100, 2, 5),
(158, 101, 3, 1),
(159, 102, 3, 3),
(160, 103, 2, 1),
(161, 103, 4, 3),
(162, 104, 1, 2),
(163, 104, 32, 3),
(164, 104, 13, 8),
(165, 104, 18, 5),
(166, 105, 1, 2),
(167, 105, 32, 3),
(168, 105, 18, 5),
(169, 105, 13, 8),
(170, 106, 13, 8),
(171, 106, 1, 2),
(172, 106, 32, 3),
(173, 106, 18, 5),
(174, 107, 1, 2),
(175, 107, 18, 5),
(176, 107, 32, 3),
(177, 107, 13, 8),
(178, 108, 2, 1),
(179, 109, 2, 1),
(180, 110, 5, 1),
(181, 110, 4, 1),
(182, 111, 6, 4),
(183, 111, 7, 1),
(184, 112, 5, 1),
(185, 112, 2, 1),
(186, 112, 3, 1),
(187, 113, 2, 1),
(188, 114, 3, 1),
(189, 115, 2, 1),
(190, 115, 3, 1),
(191, 116, 3, 1),
(192, 116, 5, 6),
(193, 117, 4, 1),
(194, 117, 5, 1),
(195, 118, 2, 1),
(196, 119, 3, 1);

CREATE TABLE `products` (
  `id` int(10) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `images` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `description` text NOT NULL,
  `price` float NOT NULL,
  `quantity` int(10) NOT NULL,
  `short_desc` varchar(255) NOT NULL,
  `cat_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `products` (`id`, `title`, `image`, `images`, `description`, `price`, `quantity`, `short_desc`, `cat_id`) VALUES
(1, 'Sony PlayStation 5', 'https://c1.neweggimages.com/ProductImage/B3GZS2109026976C.jpg', 'https://c1.neweggimages.com/ProductImage/B3GZS2109026976C.jpg;https://c1.neweggimages.com/ProductImage/B3GZS210902272BD.jpg;https://c1.neweggimages.com/ProductImage/B3GZS210902623CF.jpg;https://c1.neweggimages.com/ProductImage/B3GZS2109020C167.jpg', 'Desfrute do carregamento do seu PS5, extremamente rápido com o SSD de altíssima velocidade, uma imersão mais profunda com suporte a feedback tátil, gatilhos adaptáveis e áudio 3D, além de uma geração inédita de jogos incríveis para PlayStation.', 3999.9, 0, 'Console Gamer', 2),
(2, 'Intel Core i7-12700K', 'https://c1.neweggimages.com/ProductImage/19-118-343-05.jpg', 'https://c1.neweggimages.com/ProductImage/19-118-343-05.jpg;https://c1.neweggimages.com/ProductImage/19-118-343-07.jpg;https://c1.neweggimages.com/ProductImage/19-118-343-08.jpg;https://c1.neweggimages.com/ProductImage/19-118-343-09.jpg', 'Realize mais, com maior desempenho. Velocidades do clock incrivelmente rápidas e uma arquitetura de núcleo revolucionária permitem que você converse com estabilidade, transmita e grave sem sacrificar a jogabilidade. Até 5,0 GHz velocidade máxima do clock com 12 núcleos e 20 threads.', 3096.23, 51, 'Hardware de PC', 1),
(3, 'AORUS GeForce RTX 3070 Ti', 'https://c1.neweggimages.com/ProductImage/AYTVD210628CQ8JR.jpg', 'https://c1.neweggimages.com/ProductImage/AYTVD210628CQ8JR.jpg;https://c1.neweggimages.com/ProductImage/AYTVS210901OFedz.jpg;https://c1.neweggimages.com/ProductImage/AYTVS210901TX293.jpg;https://c1.neweggimages.com/ProductImage/AYTVS210901kEi3J.jpg', 'A NVIDIA RTX é a mais avançada plataforma de tecnologias de Ray Tracing e AI que está revolucionando a maneira com que jogamos e criamos. Mais de 250 dos maiores games e aplicações usam RTX para fornecer gráficos realistas com desempenho incrivelmente rápido e novos recursos em AI de ponta, como o NVIDIA DLSS e o NVIDIA Broadcast. A RTX é o novo padrão.', 4420.99, 69, 'Hardware de PC', 1),
(4, 'Microsoft Xbox Series X', 'https://c1.neweggimages.com/ProductImage/A6V6D210118RHNT9.jpg', 'https://c1.neweggimages.com/ProductImage/A6V6D210118RHNT9.jpg;https://c1.neweggimages.com/ProductImage/A6V6D210118C4KHD.jpg;https://c1.neweggimages.com/ProductImage/A6V6D210118OJUW0.jpg;https://c1.neweggimages.com/ProductImage/A6V6D201221DWM2P.jpg', 'O Xbox Series X oferece taxas de quadro extraordinariamente estáveis de até 120 FPS com o pop visual de HDR. Mergulhe em personagens mais nítidos, mundos mais brilhantes e detalhes incríveis com o realismo do 4K.', 5499, 78, 'Console Gamer', 2),
(5, 'Sony PlayStation 5', 'https://c1.neweggimages.com/ProductImage/B3GZS2109026976C.jpg', 'https://c1.neweggimages.com/ProductImage/B3GZS2109026976C.jpg;https://c1.neweggimages.com/ProductImage/B3GZS210902272BD.jpg;https://c1.neweggimages.com/ProductImage/B3GZS210902623CF.jpg;https://c1.neweggimages.com/ProductImage/B3GZS2109020C167.jpg', 'Desfrute do carregamento do seu PS5, extremamente rápido com o SSD de altíssima velocidade, uma imersão mais profunda com suporte a feedback tátil, gatilhos adaptáveis e áudio 3D, além de uma geração inédita de jogos incríveis para PlayStation.', 3999.9, 83, 'Console Gamer', 2),
(6, 'Intel Core i7-12700K', 'https://c1.neweggimages.com/ProductImage/19-118-343-05.jpg', 'https://c1.neweggimages.com/ProductImage/19-118-343-05.jpg;https://c1.neweggimages.com/ProductImage/19-118-343-07.jpg;https://c1.neweggimages.com/ProductImage/19-118-343-08.jpg;https://c1.neweggimages.com/ProductImage/19-118-343-09.jpg', 'Realize mais, com maior desempenho. Velocidades do clock incrivelmente rápidas e uma arquitetura de núcleo revolucionária permitem que você converse com estabilidade, transmita e grave sem sacrificar a jogabilidade. Até 5,0 GHz velocidade máxima do clock com 12 núcleos e 20 threads.', 3096.23, 1, 'Hardware de PC', 1),
(7, 'AORUS GeForce RTX 3070 Ti', 'https://c1.neweggimages.com/ProductImage/AYTVD210628CQ8JR.jpg', 'https://c1.neweggimages.com/ProductImage/AYTVD210628CQ8JR.jpg;https://c1.neweggimages.com/ProductImage/AYTVS210901OFedz.jpg;https://c1.neweggimages.com/ProductImage/AYTVS210901TX293.jpg;https://c1.neweggimages.com/ProductImage/AYTVS210901kEi3J.jpg', 'A NVIDIA RTX é a mais avançada plataforma de tecnologias de Ray Tracing e AI que está revolucionando a maneira com que jogamos e criamos. Mais de 250 dos maiores games e aplicações usam RTX para fornecer gráficos realistas com desempenho incrivelmente rápido e novos recursos em AI de ponta, como o NVIDIA DLSS e o NVIDIA Broadcast. A RTX é o novo padrão.', 4420.99, 95, 'Hardware de PC', 1),
(8, 'Microsoft Xbox Series X', 'https://c1.neweggimages.com/ProductImage/A6V6D210118RHNT9.jpg', 'https://c1.neweggimages.com/ProductImage/A6V6D210118RHNT9.jpg;https://c1.neweggimages.com/ProductImage/A6V6D210118C4KHD.jpg;https://c1.neweggimages.com/ProductImage/A6V6D210118OJUW0.jpg;https://c1.neweggimages.com/ProductImage/A6V6D201221DWM2P.jpg', 'O Xbox Series X oferece taxas de quadro extraordinariamente estáveis de até 120 FPS com o pop visual de HDR. Mergulhe em personagens mais nítidos, mundos mais brilhantes e detalhes incríveis com o realismo do 4K.', 5499, 100, 'Console Gamer', 2),
(9, 'Sony PlayStation 5', 'https://c1.neweggimages.com/ProductImage/B3GZS2109026976C.jpg', 'https://c1.neweggimages.com/ProductImage/B3GZS2109026976C.jpg;https://c1.neweggimages.com/ProductImage/B3GZS210902272BD.jpg;https://c1.neweggimages.com/ProductImage/B3GZS210902623CF.jpg;https://c1.neweggimages.com/ProductImage/B3GZS2109020C167.jpg', 'Desfrute do carregamento do seu PS5, extremamente rápido com o SSD de altíssima velocidade, uma imersão mais profunda com suporte a feedback tátil, gatilhos adaptáveis e áudio 3D, além de uma geração inédita de jogos incríveis para PlayStation.', 3999.9, 100, 'Console Gamer', 2),
(10, 'Intel Core i7-12700K', 'https://c1.neweggimages.com/ProductImage/19-118-343-05.jpg', 'https://c1.neweggimages.com/ProductImage/19-118-343-05.jpg;https://c1.neweggimages.com/ProductImage/19-118-343-07.jpg;https://c1.neweggimages.com/ProductImage/19-118-343-08.jpg;https://c1.neweggimages.com/ProductImage/19-118-343-09.jpg', 'Realize mais, com maior desempenho. Velocidades do clock incrivelmente rápidas e uma arquitetura de núcleo revolucionária permitem que você converse com estabilidade, transmita e grave sem sacrificar a jogabilidade. Até 5,0 GHz velocidade máxima do clock com 12 núcleos e 20 threads.', 3096.23, 100, 'Hardware de PC', 1),
(11, 'AORUS GeForce RTX 3070 Ti', 'https://c1.neweggimages.com/ProductImage/AYTVD210628CQ8JR.jpg', 'https://c1.neweggimages.com/ProductImage/AYTVD210628CQ8JR.jpg;https://c1.neweggimages.com/ProductImage/AYTVS210901OFedz.jpg;https://c1.neweggimages.com/ProductImage/AYTVS210901TX293.jpg;https://c1.neweggimages.com/ProductImage/AYTVS210901kEi3J.jpg', 'A NVIDIA RTX é a mais avançada plataforma de tecnologias de Ray Tracing e AI que está revolucionando a maneira com que jogamos e criamos. Mais de 250 dos maiores games e aplicações usam RTX para fornecer gráficos realistas com desempenho incrivelmente rápido e novos recursos em AI de ponta, como o NVIDIA DLSS e o NVIDIA Broadcast. A RTX é o novo padrão.', 4420.99, 0, 'Hardware de PC', 1),
(12, 'Microsoft Xbox Series X', 'https://c1.neweggimages.com/ProductImage/A6V6D210118RHNT9.jpg', 'https://c1.neweggimages.com/ProductImage/A6V6D210118RHNT9.jpg;https://c1.neweggimages.com/ProductImage/A6V6D210118C4KHD.jpg;https://c1.neweggimages.com/ProductImage/A6V6D210118OJUW0.jpg;https://c1.neweggimages.com/ProductImage/A6V6D201221DWM2P.jpg', 'O Xbox Series X oferece taxas de quadro extraordinariamente estáveis de até 120 FPS com o pop visual de HDR. Mergulhe em personagens mais nítidos, mundos mais brilhantes e detalhes incríveis com o realismo do 4K.', 5499, 100, 'Console Gamer', 2),
(13, 'Sony PlayStation 5', 'https://c1.neweggimages.com/ProductImage/B3GZS2109026976C.jpg', 'https://c1.neweggimages.com/ProductImage/B3GZS2109026976C.jpg;https://c1.neweggimages.com/ProductImage/B3GZS210902272BD.jpg;https://c1.neweggimages.com/ProductImage/B3GZS210902623CF.jpg;https://c1.neweggimages.com/ProductImage/B3GZS2109020C167.jpg', 'Desfrute do carregamento do seu PS5, extremamente rápido com o SSD de altíssima velocidade, uma imersão mais profunda com suporte a feedback tátil, gatilhos adaptáveis e áudio 3D, além de uma geração inédita de jogos incríveis para PlayStation.', 3999.9, 68, 'Console Gamer', 2),
(14, 'Intel Core i7-12700K', 'https://c1.neweggimages.com/ProductImage/19-118-343-05.jpg', 'https://c1.neweggimages.com/ProductImage/19-118-343-05.jpg;https://c1.neweggimages.com/ProductImage/19-118-343-07.jpg;https://c1.neweggimages.com/ProductImage/19-118-343-08.jpg;https://c1.neweggimages.com/ProductImage/19-118-343-09.jpg', 'Realize mais, com maior desempenho. Velocidades do clock incrivelmente rápidas e uma arquitetura de núcleo revolucionária permitem que você converse com estabilidade, transmita e grave sem sacrificar a jogabilidade. Até 5,0 GHz velocidade máxima do clock com 12 núcleos e 20 threads.', 3096.23, 0, 'Hardware de PC', 1),
(15, 'AORUS GeForce RTX 3070 Ti', 'https://c1.neweggimages.com/ProductImage/AYTVD210628CQ8JR.jpg', 'https://c1.neweggimages.com/ProductImage/AYTVD210628CQ8JR.jpg;https://c1.neweggimages.com/ProductImage/AYTVS210901OFedz.jpg;https://c1.neweggimages.com/ProductImage/AYTVS210901TX293.jpg;https://c1.neweggimages.com/ProductImage/AYTVS210901kEi3J.jpg', 'A NVIDIA RTX é a mais avançada plataforma de tecnologias de Ray Tracing e AI que está revolucionando a maneira com que jogamos e criamos. Mais de 250 dos maiores games e aplicações usam RTX para fornecer gráficos realistas com desempenho incrivelmente rápido e novos recursos em AI de ponta, como o NVIDIA DLSS e o NVIDIA Broadcast. A RTX é o novo padrão.', 4420.99, 100, 'Hardware de PC', 1),
(16, 'Microsoft Xbox Series X', 'https://c1.neweggimages.com/ProductImage/A6V6D210118RHNT9.jpg', 'https://c1.neweggimages.com/ProductImage/A6V6D210118RHNT9.jpg;https://c1.neweggimages.com/ProductImage/A6V6D210118C4KHD.jpg;https://c1.neweggimages.com/ProductImage/A6V6D210118OJUW0.jpg;https://c1.neweggimages.com/ProductImage/A6V6D201221DWM2P.jpg', 'O Xbox Series X oferece taxas de quadro extraordinariamente estáveis de até 120 FPS com o pop visual de HDR. Mergulhe em personagens mais nítidos, mundos mais brilhantes e detalhes incríveis com o realismo do 4K.', 5499, 100, 'Console Gamer', 2),
(17, 'Sony PlayStation 5', 'https://c1.neweggimages.com/ProductImage/B3GZS2109026976C.jpg', 'https://c1.neweggimages.com/ProductImage/B3GZS2109026976C.jpg;https://c1.neweggimages.com/ProductImage/B3GZS210902272BD.jpg;https://c1.neweggimages.com/ProductImage/B3GZS210902623CF.jpg;https://c1.neweggimages.com/ProductImage/B3GZS2109020C167.jpg', 'Desfrute do carregamento do seu PS5, extremamente rápido com o SSD de altíssima velocidade, uma imersão mais profunda com suporte a feedback tátil, gatilhos adaptáveis e áudio 3D, além de uma geração inédita de jogos incríveis para PlayStation.', 3999.9, 11, 'Console Gamer', 2),
(18, 'Intel Core i7-12700K', 'https://c1.neweggimages.com/ProductImage/19-118-343-05.jpg', 'https://c1.neweggimages.com/ProductImage/19-118-343-05.jpg;https://c1.neweggimages.com/ProductImage/19-118-343-07.jpg;https://c1.neweggimages.com/ProductImage/19-118-343-08.jpg;https://c1.neweggimages.com/ProductImage/19-118-343-09.jpg', 'Realize mais, com maior desempenho. Velocidades do clock incrivelmente rápidas e uma arquitetura de núcleo revolucionária permitem que você converse com estabilidade, transmita e grave sem sacrificar a jogabilidade. Até 5,0 GHz velocidade máxima do clock com 12 núcleos e 20 threads.', 3096.23, 80, 'Hardware de PC', 1),
(19, 'AORUS GeForce RTX 3070 Ti', 'https://c1.neweggimages.com/ProductImage/AYTVD210628CQ8JR.jpg', 'https://c1.neweggimages.com/ProductImage/AYTVD210628CQ8JR.jpg;https://c1.neweggimages.com/ProductImage/AYTVS210901OFedz.jpg;https://c1.neweggimages.com/ProductImage/AYTVS210901TX293.jpg;https://c1.neweggimages.com/ProductImage/AYTVS210901kEi3J.jpg', 'A NVIDIA RTX é a mais avançada plataforma de tecnologias de Ray Tracing e AI que está revolucionando a maneira com que jogamos e criamos. Mais de 250 dos maiores games e aplicações usam RTX para fornecer gráficos realistas com desempenho incrivelmente rápido e novos recursos em AI de ponta, como o NVIDIA DLSS e o NVIDIA Broadcast. A RTX é o novo padrão.', 4420.99, 0, 'Hardware de PC', 1),
(20, 'Microsoft Xbox Series X', 'https://c1.neweggimages.com/ProductImage/A6V6D210118RHNT9.jpg', 'https://c1.neweggimages.com/ProductImage/A6V6D210118RHNT9.jpg;https://c1.neweggimages.com/ProductImage/A6V6D210118C4KHD.jpg;https://c1.neweggimages.com/ProductImage/A6V6D210118OJUW0.jpg;https://c1.neweggimages.com/ProductImage/A6V6D201221DWM2P.jpg', 'O Xbox Series X oferece taxas de quadro extraordinariamente estáveis de até 120 FPS com o pop visual de HDR. Mergulhe em personagens mais nítidos, mundos mais brilhantes e detalhes incríveis com o realismo do 4K.', 5499, 100, 'Console Gamer', 2),
(21, 'Sony PlayStation 5', 'https://c1.neweggimages.com/ProductImage/B3GZS2109026976C.jpg', 'https://c1.neweggimages.com/ProductImage/B3GZS2109026976C.jpg;https://c1.neweggimages.com/ProductImage/B3GZS210902272BD.jpg;https://c1.neweggimages.com/ProductImage/B3GZS210902623CF.jpg;https://c1.neweggimages.com/ProductImage/B3GZS2109020C167.jpg', 'Desfrute do carregamento do seu PS5, extremamente rápido com o SSD de altíssima velocidade, uma imersão mais profunda com suporte a feedback tátil, gatilhos adaptáveis e áudio 3D, além de uma geração inédita de jogos incríveis para PlayStation.', 3999.9, 13, 'Console Gamer', 2),
(22, 'Intel Core i7-12700K', 'https://c1.neweggimages.com/ProductImage/19-118-343-05.jpg', 'https://c1.neweggimages.com/ProductImage/19-118-343-05.jpg;https://c1.neweggimages.com/ProductImage/19-118-343-07.jpg;https://c1.neweggimages.com/ProductImage/19-118-343-08.jpg;https://c1.neweggimages.com/ProductImage/19-118-343-09.jpg', 'Realize mais, com maior desempenho. Velocidades do clock incrivelmente rápidas e uma arquitetura de núcleo revolucionária permitem que você converse com estabilidade, transmita e grave sem sacrificar a jogabilidade. Até 5,0 GHz velocidade máxima do clock com 12 núcleos e 20 threads.', 3096.23, 100, 'Hardware de PC', 1),
(23, 'AORUS GeForce RTX 3070 Ti', 'https://c1.neweggimages.com/ProductImage/AYTVD210628CQ8JR.jpg', 'https://c1.neweggimages.com/ProductImage/AYTVD210628CQ8JR.jpg;https://c1.neweggimages.com/ProductImage/AYTVS210901OFedz.jpg;https://c1.neweggimages.com/ProductImage/AYTVS210901TX293.jpg;https://c1.neweggimages.com/ProductImage/AYTVS210901kEi3J.jpg', 'A NVIDIA RTX é a mais avançada plataforma de tecnologias de Ray Tracing e AI que está revolucionando a maneira com que jogamos e criamos. Mais de 250 dos maiores games e aplicações usam RTX para fornecer gráficos realistas com desempenho incrivelmente rápido e novos recursos em AI de ponta, como o NVIDIA DLSS e o NVIDIA Broadcast. A RTX é o novo padrão.', 4420.99, 100, 'Hardware de PC', 1),
(24, 'Microsoft Xbox Series X', 'https://c1.neweggimages.com/ProductImage/A6V6D210118RHNT9.jpg', 'https://c1.neweggimages.com/ProductImage/A6V6D210118RHNT9.jpg;https://c1.neweggimages.com/ProductImage/A6V6D210118C4KHD.jpg;https://c1.neweggimages.com/ProductImage/A6V6D210118OJUW0.jpg;https://c1.neweggimages.com/ProductImage/A6V6D201221DWM2P.jpg', 'O Xbox Series X oferece taxas de quadro extraordinariamente estáveis de até 120 FPS com o pop visual de HDR. Mergulhe em personagens mais nítidos, mundos mais brilhantes e detalhes incríveis com o realismo do 4K.', 5499, 100, 'Console Gamer', 2),
(25, 'Sony PlayStation 5', 'https://c1.neweggimages.com/ProductImage/B3GZS2109026976C.jpg', 'https://c1.neweggimages.com/ProductImage/B3GZS2109026976C.jpg;https://c1.neweggimages.com/ProductImage/B3GZS210902272BD.jpg;https://c1.neweggimages.com/ProductImage/B3GZS210902623CF.jpg;https://c1.neweggimages.com/ProductImage/B3GZS2109020C167.jpg', 'Desfrute do carregamento do seu PS5, extremamente rápido com o SSD de altíssima velocidade, uma imersão mais profunda com suporte a feedback tátil, gatilhos adaptáveis e áudio 3D, além de uma geração inédita de jogos incríveis para PlayStation.', 3999.9, 0, 'Console Gamer', 2),
(26, 'Intel Core i7-12700K', 'https://c1.neweggimages.com/ProductImage/19-118-343-05.jpg', 'https://c1.neweggimages.com/ProductImage/19-118-343-05.jpg;https://c1.neweggimages.com/ProductImage/19-118-343-07.jpg;https://c1.neweggimages.com/ProductImage/19-118-343-08.jpg;https://c1.neweggimages.com/ProductImage/19-118-343-09.jpg', 'Realize mais, com maior desempenho. Velocidades do clock incrivelmente rápidas e uma arquitetura de núcleo revolucionária permitem que você converse com estabilidade, transmita e grave sem sacrificar a jogabilidade. Até 5,0 GHz velocidade máxima do clock com 12 núcleos e 20 threads.', 3096.23, 100, 'Hardware de PC', 1),
(27, 'AORUS GeForce RTX 3070 Ti', 'https://c1.neweggimages.com/ProductImage/AYTVD210628CQ8JR.jpg', 'https://c1.neweggimages.com/ProductImage/AYTVD210628CQ8JR.jpg;https://c1.neweggimages.com/ProductImage/AYTVS210901OFedz.jpg;https://c1.neweggimages.com/ProductImage/AYTVS210901TX293.jpg;https://c1.neweggimages.com/ProductImage/AYTVS210901kEi3J.jpg', 'A NVIDIA RTX é a mais avançada plataforma de tecnologias de Ray Tracing e AI que está revolucionando a maneira com que jogamos e criamos. Mais de 250 dos maiores games e aplicações usam RTX para fornecer gráficos realistas com desempenho incrivelmente rápido e novos recursos em AI de ponta, como o NVIDIA DLSS e o NVIDIA Broadcast. A RTX é o novo padrão.', 4420.99, 0, 'Hardware de PC', 1),
(28, 'Microsoft Xbox Series X', 'https://c1.neweggimages.com/ProductImage/A6V6D210118RHNT9.jpg', 'https://c1.neweggimages.com/ProductImage/A6V6D210118RHNT9.jpg;https://c1.neweggimages.com/ProductImage/A6V6D210118C4KHD.jpg;https://c1.neweggimages.com/ProductImage/A6V6D210118OJUW0.jpg;https://c1.neweggimages.com/ProductImage/A6V6D201221DWM2P.jpg', 'O Xbox Series X oferece taxas de quadro extraordinariamente estáveis de até 120 FPS com o pop visual de HDR. Mergulhe em personagens mais nítidos, mundos mais brilhantes e detalhes incríveis com o realismo do 4K.', 5499, 100, 'Console Gamer', 2),
(29, 'Sony PlayStation 5', 'https://c1.neweggimages.com/ProductImage/B3GZS2109026976C.jpg', 'https://c1.neweggimages.com/ProductImage/B3GZS2109026976C.jpg;https://c1.neweggimages.com/ProductImage/B3GZS210902272BD.jpg;https://c1.neweggimages.com/ProductImage/B3GZS210902623CF.jpg;https://c1.neweggimages.com/ProductImage/B3GZS2109020C167.jpg', 'Desfrute do carregamento do seu PS5, extremamente rápido com o SSD de altíssima velocidade, uma imersão mais profunda com suporte a feedback tátil, gatilhos adaptáveis e áudio 3D, além de uma geração inédita de jogos incríveis para PlayStation.', 3999.9, 100, 'Console Gamer', 2),
(30, 'Intel Core i7-12700K', 'https://c1.neweggimages.com/ProductImage/19-118-343-05.jpg', 'https://c1.neweggimages.com/ProductImage/19-118-343-05.jpg;https://c1.neweggimages.com/ProductImage/19-118-343-07.jpg;https://c1.neweggimages.com/ProductImage/19-118-343-08.jpg;https://c1.neweggimages.com/ProductImage/19-118-343-09.jpg', 'Realize mais, com maior desempenho. Velocidades do clock incrivelmente rápidas e uma arquitetura de núcleo revolucionária permitem que você converse com estabilidade, transmita e grave sem sacrificar a jogabilidade. Até 5,0 GHz velocidade máxima do clock com 12 núcleos e 20 threads.', 3096.23, 100, 'Hardware de PC', 1),
(31, 'AORUS GeForce RTX 3070 Ti', 'https://c1.neweggimages.com/ProductImage/AYTVD210628CQ8JR.jpg', 'https://c1.neweggimages.com/ProductImage/AYTVD210628CQ8JR.jpg;https://c1.neweggimages.com/ProductImage/AYTVS210901OFedz.jpg;https://c1.neweggimages.com/ProductImage/AYTVS210901TX293.jpg;https://c1.neweggimages.com/ProductImage/AYTVS210901kEi3J.jpg', 'A NVIDIA RTX é a mais avançada plataforma de tecnologias de Ray Tracing e AI que está revolucionando a maneira com que jogamos e criamos. Mais de 250 dos maiores games e aplicações usam RTX para fornecer gráficos realistas com desempenho incrivelmente rápido e novos recursos em AI de ponta, como o NVIDIA DLSS e o NVIDIA Broadcast. A RTX é o novo padrão.', 4420.99, 100, 'Hardware de PC', 1),
(32, 'Microsoft Xbox Series X', 'https://c1.neweggimages.com/ProductImage/A6V6D210118RHNT9.jpg', 'https://c1.neweggimages.com/ProductImage/A6V6D210118RHNT9.jpg;https://c1.neweggimages.com/ProductImage/A6V6D210118C4KHD.jpg;https://c1.neweggimages.com/ProductImage/A6V6D210118OJUW0.jpg;https://c1.neweggimages.com/ProductImage/A6V6D201221DWM2P.jpg', 'O Xbox Series X oferece taxas de quadro extraordinariamente estáveis de até 120 FPS com o pop visual de HDR. Mergulhe em personagens mais nítidos, mundos mais brilhantes e detalhes incríveis com o realismo do 4K.', 5499, 88, 'Console Gamer', 2),
(33, 'Intel Core i7-12700K', 'https://c1.neweggimages.com/ProductImage/19-118-343-05.jpg', 'https://c1.neweggimages.com/ProductImage/19-118-343-05.jpg;https://c1.neweggimages.com/ProductImage/19-118-343-07.jpg;https://c1.neweggimages.com/ProductImage/19-118-343-08.jpg;https://c1.neweggimages.com/ProductImage/19-118-343-09.jpg', 'Realize mais, com maior desempenho. Velocidades do clock incrivelmente rápidas e uma arquitetura de núcleo revolucionária permitem que você converse com estabilidade, transmita e grave sem sacrificar a jogabilidade. Até 5,0 GHz velocidade máxima do clock com 12 núcleos e 20 threads.', 3096.23, 100, 'Hardware de PC', 1),
(34, 'AORUS GeForce RTX 3070 Ti', 'https://c1.neweggimages.com/ProductImage/AYTVD210628CQ8JR.jpg', 'https://c1.neweggimages.com/ProductImage/AYTVD210628CQ8JR.jpg;https://c1.neweggimages.com/ProductImage/AYTVS210901OFedz.jpg;https://c1.neweggimages.com/ProductImage/AYTVS210901TX293.jpg;https://c1.neweggimages.com/ProductImage/AYTVS210901kEi3J.jpg', 'A NVIDIA RTX é a mais avançada plataforma de tecnologias de Ray Tracing e AI que está revolucionando a maneira com que jogamos e criamos. Mais de 250 dos maiores games e aplicações usam RTX para fornecer gráficos realistas com desempenho incrivelmente rápido e novos recursos em AI de ponta, como o NVIDIA DLSS e o NVIDIA Broadcast. A RTX é o novo padrão.', 4420.99, 100, 'Hardware de PC', 1),
(35, 'Microsoft Xbox Series X', 'https://c1.neweggimages.com/ProductImage/A6V6D210118RHNT9.jpg', 'https://c1.neweggimages.com/ProductImage/A6V6D210118RHNT9.jpg;https://c1.neweggimages.com/ProductImage/A6V6D210118C4KHD.jpg;https://c1.neweggimages.com/ProductImage/A6V6D210118OJUW0.jpg;https://c1.neweggimages.com/ProductImage/A6V6D201221DWM2P.jpg', 'O Xbox Series X oferece taxas de quadro extraordinariamente estáveis de até 120 FPS com o pop visual de HDR. Mergulhe em personagens mais nítidos, mundos mais brilhantes e detalhes incríveis com o realismo do 4K.', 5499, 100, 'Console Gamer', 2),
(36, 'Sony PlayStation 5', 'https://c1.neweggimages.com/ProductImage/B3GZS2109026976C.jpg', 'https://c1.neweggimages.com/ProductImage/B3GZS2109026976C.jpg;https://c1.neweggimages.com/ProductImage/B3GZS210902272BD.jpg;https://c1.neweggimages.com/ProductImage/B3GZS210902623CF.jpg;https://c1.neweggimages.com/ProductImage/B3GZS2109020C167.jpg', 'Desfrute do carregamento do seu PS5, extremamente rápido com o SSD de altíssima velocidade, uma imersão mais profunda com suporte a feedback tátil, gatilhos adaptáveis e áudio 3D, além de uma geração inédita de jogos incríveis para PlayStation.', 3999.9, 100, 'Console Gamer', 2),
(37, 'Intel Core i7-12700K', 'https://c1.neweggimages.com/ProductImage/19-118-343-05.jpg', 'https://c1.neweggimages.com/ProductImage/19-118-343-05.jpg;https://c1.neweggimages.com/ProductImage/19-118-343-07.jpg;https://c1.neweggimages.com/ProductImage/19-118-343-08.jpg;https://c1.neweggimages.com/ProductImage/19-118-343-09.jpg', 'Realize mais, com maior desempenho. Velocidades do clock incrivelmente rápidas e uma arquitetura de núcleo revolucionária permitem que você converse com estabilidade, transmita e grave sem sacrificar a jogabilidade. Até 5,0 GHz velocidade máxima do clock com 12 núcleos e 20 threads.', 3096.23, 0, 'Hardware de PC', 1),
(38, 'AORUS GeForce RTX 3070 Ti', 'https://c1.neweggimages.com/ProductImage/AYTVD210628CQ8JR.jpg', 'https://c1.neweggimages.com/ProductImage/AYTVD210628CQ8JR.jpg;https://c1.neweggimages.com/ProductImage/AYTVS210901OFedz.jpg;https://c1.neweggimages.com/ProductImage/AYTVS210901TX293.jpg;https://c1.neweggimages.com/ProductImage/AYTVS210901kEi3J.jpg', 'A NVIDIA RTX é a mais avançada plataforma de tecnologias de Ray Tracing e AI que está revolucionando a maneira com que jogamos e criamos. Mais de 250 dos maiores games e aplicações usam RTX para fornecer gráficos realistas com desempenho incrivelmente rápido e novos recursos em AI de ponta, como o NVIDIA DLSS e o NVIDIA Broadcast. A RTX é o novo padrão.', 4420.99, 0, 'Hardware de PC', 1),
(39, 'Microsoft Xbox Series X', 'https://c1.neweggimages.com/ProductImage/A6V6D210118RHNT9.jpg', 'https://c1.neweggimages.com/ProductImage/A6V6D210118RHNT9.jpg;https://c1.neweggimages.com/ProductImage/A6V6D210118C4KHD.jpg;https://c1.neweggimages.com/ProductImage/A6V6D210118OJUW0.jpg;https://c1.neweggimages.com/ProductImage/A6V6D201221DWM2P.jpg', 'O Xbox Series X oferece taxas de quadro extraordinariamente estáveis de até 120 FPS com o pop visual de HDR. Mergulhe em personagens mais nítidos, mundos mais brilhantes e detalhes incríveis com o realismo do 4K.', 5499, 100, 'Console Gamer', 2),
(40, 'Intel Core i7-12700K', 'https://c1.neweggimages.com/ProductImage/19-118-343-05.jpg', 'https://c1.neweggimages.com/ProductImage/19-118-343-05.jpg;https://c1.neweggimages.com/ProductImage/19-118-343-07.jpg;https://c1.neweggimages.com/ProductImage/19-118-343-08.jpg;https://c1.neweggimages.com/ProductImage/19-118-343-09.jpg', 'Realize mais, com maior desempenho. Velocidades do clock incrivelmente rápidas e uma arquitetura de núcleo revolucionária permitem que você converse com estabilidade, transmita e grave sem sacrificar a jogabilidade. Até 5,0 GHz velocidade máxima do clock com 12 núcleos e 20 threads.', 3096.23, 100, 'Hardware de PC', 1),
(41, 'AORUS GeForce RTX 3070 Ti', 'https://c1.neweggimages.com/ProductImage/AYTVD210628CQ8JR.jpg', 'https://c1.neweggimages.com/ProductImage/AYTVD210628CQ8JR.jpg;https://c1.neweggimages.com/ProductImage/AYTVS210901OFedz.jpg;https://c1.neweggimages.com/ProductImage/AYTVS210901TX293.jpg;https://c1.neweggimages.com/ProductImage/AYTVS210901kEi3J.jpg', 'A NVIDIA RTX é a mais avançada plataforma de tecnologias de Ray Tracing e AI que está revolucionando a maneira com que jogamos e criamos. Mais de 250 dos maiores games e aplicações usam RTX para fornecer gráficos realistas com desempenho incrivelmente rápido e novos recursos em AI de ponta, como o NVIDIA DLSS e o NVIDIA Broadcast. A RTX é o novo padrão.', 4420.99, 100, 'Hardware de PC', 1),
(42, 'Microsoft Xbox Series X', 'https://c1.neweggimages.com/ProductImage/A6V6D210118RHNT9.jpg', 'https://c1.neweggimages.com/ProductImage/A6V6D210118RHNT9.jpg;https://c1.neweggimages.com/ProductImage/A6V6D210118C4KHD.jpg;https://c1.neweggimages.com/ProductImage/A6V6D210118OJUW0.jpg;https://c1.neweggimages.com/ProductImage/A6V6D201221DWM2P.jpg', 'O Xbox Series X oferece taxas de quadro extraordinariamente estáveis de até 120 FPS com o pop visual de HDR. Mergulhe em personagens mais nítidos, mundos mais brilhantes e detalhes incríveis com o realismo do 4K.', 5499, 100, 'Console Gamer', 2),
(43, 'Sony PlayStation 5', 'https://c1.neweggimages.com/ProductImage/B3GZS2109026976C.jpg', 'https://c1.neweggimages.com/ProductImage/B3GZS2109026976C.jpg;https://c1.neweggimages.com/ProductImage/B3GZS210902272BD.jpg;https://c1.neweggimages.com/ProductImage/B3GZS210902623CF.jpg;https://c1.neweggimages.com/ProductImage/B3GZS2109020C167.jpg', 'Desfrute do carregamento do seu PS5, extremamente rápido com o SSD de altíssima velocidade, uma imersão mais profunda com suporte a feedback tátil, gatilhos adaptáveis e áudio 3D, além de uma geração inédita de jogos incríveis para PlayStation.', 3999.9, 15, 'Console Gamer', 2),
(44, 'Intel Core i7-12700K', 'https://c1.neweggimages.com/ProductImage/19-118-343-05.jpg', 'https://c1.neweggimages.com/ProductImage/19-118-343-05.jpg;https://c1.neweggimages.com/ProductImage/19-118-343-07.jpg;https://c1.neweggimages.com/ProductImage/19-118-343-08.jpg;https://c1.neweggimages.com/ProductImage/19-118-343-09.jpg', 'Realize mais, com maior desempenho. Velocidades do clock incrivelmente rápidas e uma arquitetura de núcleo revolucionária permitem que você converse com estabilidade, transmita e grave sem sacrificar a jogabilidade. Até 5,0 GHz velocidade máxima do clock com 12 núcleos e 20 threads.', 3096.23, 100, 'Hardware de PC', 1),
(45, 'AORUS GeForce RTX 3070 Ti', 'https://c1.neweggimages.com/ProductImage/AYTVD210628CQ8JR.jpg', 'https://c1.neweggimages.com/ProductImage/AYTVD210628CQ8JR.jpg;https://c1.neweggimages.com/ProductImage/AYTVS210901OFedz.jpg;https://c1.neweggimages.com/ProductImage/AYTVS210901TX293.jpg;https://c1.neweggimages.com/ProductImage/AYTVS210901kEi3J.jpg', 'A NVIDIA RTX é a mais avançada plataforma de tecnologias de Ray Tracing e AI que está revolucionando a maneira com que jogamos e criamos. Mais de 250 dos maiores games e aplicações usam RTX para fornecer gráficos realistas com desempenho incrivelmente rápido e novos recursos em AI de ponta, como o NVIDIA DLSS e o NVIDIA Broadcast. A RTX é o novo padrão.', 4420.99, 11, 'Hardware de PC', 1),
(46, 'Microsoft Xbox Series X', 'https://c1.neweggimages.com/ProductImage/A6V6D210118RHNT9.jpg', 'https://c1.neweggimages.com/ProductImage/A6V6D210118RHNT9.jpg;https://c1.neweggimages.com/ProductImage/A6V6D210118C4KHD.jpg;https://c1.neweggimages.com/ProductImage/A6V6D210118OJUW0.jpg;https://c1.neweggimages.com/ProductImage/A6V6D201221DWM2P.jpg', 'O Xbox Series X oferece taxas de quadro extraordinariamente estáveis de até 120 FPS com o pop visual de HDR. Mergulhe em personagens mais nítidos, mundos mais brilhantes e detalhes incríveis com o realismo do 4K.', 5499, 100, 'Console Gamer', 2),
(47, 'Intel Core i7-12700K', 'https://c1.neweggimages.com/ProductImage/19-118-343-05.jpg', 'https://c1.neweggimages.com/ProductImage/19-118-343-05.jpg;https://c1.neweggimages.com/ProductImage/19-118-343-07.jpg;https://c1.neweggimages.com/ProductImage/19-118-343-08.jpg;https://c1.neweggimages.com/ProductImage/19-118-343-09.jpg', 'Realize mais, com maior desempenho. Velocidades do clock incrivelmente rápidas e uma arquitetura de núcleo revolucionária permitem que você converse com estabilidade, transmita e grave sem sacrificar a jogabilidade. Até 5,0 GHz velocidade máxima do clock com 12 núcleos e 20 threads.', 3096.23, 100, 'Hardware de PC', 1),
(48, 'AORUS GeForce RTX 3070 Ti', 'https://c1.neweggimages.com/ProductImage/AYTVD210628CQ8JR.jpg', 'https://c1.neweggimages.com/ProductImage/AYTVD210628CQ8JR.jpg;https://c1.neweggimages.com/ProductImage/AYTVS210901OFedz.jpg;https://c1.neweggimages.com/ProductImage/AYTVS210901TX293.jpg;https://c1.neweggimages.com/ProductImage/AYTVS210901kEi3J.jpg', 'A NVIDIA RTX é a mais avançada plataforma de tecnologias de Ray Tracing e AI que está revolucionando a maneira com que jogamos e criamos. Mais de 250 dos maiores games e aplicações usam RTX para fornecer gráficos realistas com desempenho incrivelmente rápido e novos recursos em AI de ponta, como o NVIDIA DLSS e o NVIDIA Broadcast. A RTX é o novo padrão.', 4420.99, 100, 'Hardware de PC', 1),
(49, 'Microsoft Xbox Series X', 'https://c1.neweggimages.com/ProductImage/A6V6D210118RHNT9.jpg', 'https://c1.neweggimages.com/ProductImage/A6V6D210118RHNT9.jpg;https://c1.neweggimages.com/ProductImage/A6V6D210118C4KHD.jpg;https://c1.neweggimages.com/ProductImage/A6V6D210118OJUW0.jpg;https://c1.neweggimages.com/ProductImage/A6V6D201221DWM2P.jpg', 'O Xbox Series X oferece taxas de quadro extraordinariamente estáveis de até 120 FPS com o pop visual de HDR. Mergulhe em personagens mais nítidos, mundos mais brilhantes e detalhes incríveis com o realismo do 4K.', 5499, 100, 'Console Gamer', 2),
(50, 'Sony PlayStation 5', 'https://c1.neweggimages.com/ProductImage/B3GZS2109026976C.jpg', 'https://c1.neweggimages.com/ProductImage/B3GZS2109026976C.jpg;https://c1.neweggimages.com/ProductImage/B3GZS210902272BD.jpg;https://c1.neweggimages.com/ProductImage/B3GZS210902623CF.jpg;https://c1.neweggimages.com/ProductImage/B3GZS2109020C167.jpg', 'Desfrute do carregamento do seu PS5, extremamente rápido com o SSD de altíssima velocidade, uma imersão mais profunda com suporte a feedback tátil, gatilhos adaptáveis e áudio 3D, além de uma geração inédita de jogos incríveis para PlayStation.', 3999.9, 33, 'Console Gamer', 2),
(51, 'Intel Core i7-12700K', 'https://c1.neweggimages.com/ProductImage/19-118-343-05.jpg', 'https://c1.neweggimages.com/ProductImage/19-118-343-05.jpg;https://c1.neweggimages.com/ProductImage/19-118-343-07.jpg;https://c1.neweggimages.com/ProductImage/19-118-343-08.jpg;https://c1.neweggimages.com/ProductImage/19-118-343-09.jpg', 'Realize mais, com maior desempenho. Velocidades do clock incrivelmente rápidas e uma arquitetura de núcleo revolucionária permitem que você converse com estabilidade, transmita e grave sem sacrificar a jogabilidade. Até 5,0 GHz velocidade máxima do clock com 12 núcleos e 20 threads.', 3096.23, 100, 'Hardware de PC', 1),
(52, 'AORUS GeForce RTX 3070 Ti', 'https://c1.neweggimages.com/ProductImage/AYTVD210628CQ8JR.jpg', 'https://c1.neweggimages.com/ProductImage/AYTVD210628CQ8JR.jpg;https://c1.neweggimages.com/ProductImage/AYTVS210901OFedz.jpg;https://c1.neweggimages.com/ProductImage/AYTVS210901TX293.jpg;https://c1.neweggimages.com/ProductImage/AYTVS210901kEi3J.jpg', 'A NVIDIA RTX é a mais avançada plataforma de tecnologias de Ray Tracing e AI que está revolucionando a maneira com que jogamos e criamos. Mais de 250 dos maiores games e aplicações usam RTX para fornecer gráficos realistas com desempenho incrivelmente rápido e novos recursos em AI de ponta, como o NVIDIA DLSS e o NVIDIA Broadcast. A RTX é o novo padrão.', 4420.99, 100, 'Hardware de PC', 1),
(53, 'Microsoft Xbox Series X', 'https://c1.neweggimages.com/ProductImage/A6V6D210118RHNT9.jpg', 'https://c1.neweggimages.com/ProductImage/A6V6D210118RHNT9.jpg;https://c1.neweggimages.com/ProductImage/A6V6D210118C4KHD.jpg;https://c1.neweggimages.com/ProductImage/A6V6D210118OJUW0.jpg;https://c1.neweggimages.com/ProductImage/A6V6D201221DWM2P.jpg', 'O Xbox Series X oferece taxas de quadro extraordinariamente estáveis de até 120 FPS com o pop visual de HDR. Mergulhe em personagens mais nítidos, mundos mais brilhantes e detalhes incríveis com o realismo do 4K.', 5499, 100, 'Console Gamer', 2);

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `fname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'not set',
  `lname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'not set',
  `age` int(10) DEFAULT '18',
  `role` int(10) DEFAULT '555',
  `photoUrl` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `type` varchar(255) NOT NULL DEFAULT 'local'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `users` (`id`, `username`, `password`, `email`, `fname`, `lname`, `age`, `role`, `photoUrl`, `type`) VALUES
(1, 'joaoZero', 'abobrinha0ze', 'joao0@gmail.com', 'João', 'José', 33, 777, 'https://pbs.twimg.com/media/E7UG9RyXoAU1YI7.jpg', 'local'),
(2, 'maria1', '223nova0', 'maria1@gmail.com', 'Maria', 'Nova', 22, 555, 'https://i.pinimg.com/originals/3d/02/fa/3d02fa680891beff79e2cfe1a34ef2b3.jpg', 'local'),
(11, 'gabrielZz', 'xybielYX', 'gabriel-zz@hotmail.com', 'Gabriel', 'Santiago', 41, 555, 'https://cdn.bandmix.com/bandmix_us/media/1130/1130434/1300282-l.jpg', 'local'),
(14, 'lucasDois', '222Soir@', 'lucas2@hotmail.com', 'Lucas', 'Rios', 22, 555, 'https://mir-s3-cdn-cf.behance.net/user/276/742259376178047.60677e187d729.png', 'local'),
(19, 'bruna123', '321pereirA', 'bruna123@gmail.com', 'Bruna', 'Pereira', 19, 555, 'https://i.pinimg.com/originals/9c/ca/3e/9cca3e63ed44215a2993abc6d743c30a.png', 'local'),
(20, 'guilhermeX', 'xgUix29@(', 'guix1@gmail.com', 'Guilherme', 'Borba', 29, 555, 'https://www.procreativewriters.com/new-offer/press-release/images/customer-img4.jpg', 'social'),
(21, 'luana23', 'lu28ANA23', 'luana-23@gmail.com', 'Luana', 'Santos', 28, 555, 'https://thumb-p9.xhcdn.com/a/xKeeP8GCJiWpk2t7Qgfqww/000/324/328/559_1000.jpg', 'social');

ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_addresses_users1_idx` (`user_id`);

ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_orders_users1_idx` (`user_id`);

ALTER TABLE `orders_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_orders_has_products_products1_idx` (`product_id`),
  ADD KEY `fk_orders_has_products_orders1_idx` (`order_id`);

ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_ibfk_1` (`cat_id`);
ALTER TABLE `products` ADD FULLTEXT KEY `description` (`description`);

ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

ALTER TABLE `orders`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

ALTER TABLE `orders_details`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;

ALTER TABLE `products`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

ALTER TABLE `addresses`
  ADD CONSTRAINT `fk_addresses_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `orders`
  ADD CONSTRAINT `users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `orders_details`
  ADD CONSTRAINT `fk_orders_has_products_orders1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_orders_has_products_products1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;
