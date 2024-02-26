-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 05, 2023 at 05:14 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `furniture_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category`) VALUES
(1, 'category black chair '),
(2, 'category white category'),
(6, 'chair  Category'),
(7, 'bedroom  Category'),
(8, 'room Category'),
(14, 'white sofa'),
(15, 'black sofa'),
(17, 'silver sofa'),
(18, 'brown sofa'),
(19, 'test'),
(20, 'test_haveOneItem');

-- --------------------------------------------------------

--
-- Table structure for table `furniture`
--

CREATE TABLE `furniture` (
  `id` int(11) NOT NULL,
  `title` varchar(30) NOT NULL,
  `description` varchar(80) NOT NULL,
  `small` varchar(30) NOT NULL,
  `large` varchar(30) NOT NULL,
  `price` int(30) NOT NULL,
  `active` varchar(20) NOT NULL,
  `image` varchar(90) NOT NULL,
  `category` int(11) DEFAULT NULL,
  `added_date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `furniture`
--

INSERT INTO `furniture` (`id`, `title`, `description`, `small`, `large`, `price`, `active`, `image`, `category`, `added_date`) VALUES
(1, ' Furniture1', ' description furniture1', '400', '1300', 550, '1', '3.jpg', 8, '2023-10-24'),
(2, ' Furniture2', 'description Furniture1', 'small', 'large', 2222, '1', 'product-img-02.jpg', 2, '2023-10-24'),
(3, ' Furniture4', 'description Furniture2', 'small', 'large', 5000, '1', 'product-img-03.jpg', 6, '2023-10-24'),
(4, '  Furniture3', 'description  Furniture3', 'small', 'large', 20000, '1', 'product-img-02.jpg', 8, '2023-10-24'),
(11, 'furniture10', 'description', 'r', 'r', 4, '1', '11.png', 1, '2023-10-24'),
(13, 'furniture vv', 'descriptionvv', '500', '9000', 3000, 'Yes', '3.jpg', 7, '2023-10-25'),
(24, 'bedroom', 'description bedroom', '4500', '7000', 3000, 'Yes', '3.jpg', 8, '2023-10-27'),
(25, 'chair', ' chair description', '600', '780', 40000, '0', '8.jpg', 6, '2023-10-27'),
(26, 'Furniture www', '  description www', '1500', '3500', 70000, '0', '6.jpg', 7, '2023-10-27'),
(30, 'Furniture y', ' description Furniture hh', '500', '600', 4, '1', '11.png', 2, '2023-10-27'),
(43, 'Furniture k', 'description Furniture k', '450', '1460', 39000, 'No', 'bg_main.png', 2, '2023-10-27'),
(47, 'Furniture kh', ' description Furniture  kh', '6000', '120000', 55, '0', '14.png', 7, '2023-10-28'),
(49, 'Furniture hh', ' description Furniture hh', '400', '600', 3, '1', '12.png', 6, '2023-10-28'),
(50, 'Furniture 1', ' description Furniture', '500', '1600', 10000, '0', '4.png', 6, '2023-10-29'),
(51, 'Furniture2', 'description Furniture2', 'samall', 'large', 6000, 'Yes', '2.png', 7, '2023-10-29'),
(52, 'Furniture3', 'description Furniture4', '1500', '5500', 80000, 'Yes', '4.png', 1, '2023-10-29'),
(53, 'Furniture 4', 'description Furniture4', 'samall', 'large', 40000, 'Yes', '5.png', 7, '2023-10-29'),
(54, 'Furniture 5', 'description Furniture 5', 'samall', 'large', 30000, 'Yes', '10.png', 8, '2023-10-29'),
(55, 'Furniture 6', 'description Furniture', 'samall', 'large', 10000, 'No', '11.png', 6, '2023-10-29'),
(57, 'Furniture 8', 'description Furniture 8', 'samall', 'large', 7000, 'Yes', '14.png', 1, '2023-10-29'),
(59, 'furntiure z', 'descriptiona furntiure z', '500', '2600', 2, 'No', '4.png', 7, '2023-10-31'),
(65, 'furntiure d', ' descridption  furntiure d', '1500', '3500', 45000, '1', '1.png', 1, '2023-10-31'),
(66, 'test2032', '  test2032 description', '200', '400', 2032, '0', '2.png', 2, '2023-11-01'),
(67, 'Furniture pp', ' description', '500', '700', 8000, '0', '1.png', 2, '2023-11-05'),
(68, 'Furniture ll', ' description', '550', '800', 40000, '0', '5.png', 1, '2023-11-05'),
(69, ' Furniture tt', 'description  Furniture tt', '700', '900', 9000, 'Yes', '12.png', 6, '2023-11-05'),
(70, ' Furniture rr', 'description  Furniture rr', '500', '800', 7000, 'Yes', '14.png', 7, '2023-11-05'),
(71, ' Furniture mm', 'description  Furniture mm', '100', '200', 40000, 'Yes', '4.png', 8, '2023-11-05'),
(72, ' Furniture ll', 'description  Furniture ll', '300', '400', 20000, 'Yes', '2.png', 2, '2023-11-05'),
(73, ' Furniture nn', 'description  Furniturenn', '390', '400', 40000, 'Yes', '1.png', 8, '2023-11-05'),
(74, ' Furniture y', 'description  Furniture y', '300', '500', 5000, 'Yes', '5.png', 2, '2023-11-05');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `active` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `registration_date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `username`, `email`, `active`, `password`, `registration_date`) VALUES
(1, 'kh', 'root', 'kk@gmail.com', '1', '123', '2023-10-23'),
(2, 'kh', 'root', 'qq@jj.com', '0', '', '2023-10-23'),
(3, '', '', 'kk@gmail.com', '', '123', '2023-10-23'),
(4, 'ccc', 'ccc', 'kk@gmail.com', '0', '333', '2023-10-23'),
(5, 'sama', 'sama2000', 'ss@gmail.com', 'Yes', '123', '2023-10-24'),
(6, 'wafaa', 'wafaa', 'wafaa@gmail.com', '', '12345', '2023-10-24'),
(7, 'jjjjj', 'sama2000', 'eng.kholoudmohamed@gmail.com', '', 'hhhhhhhhhhhhhhhhhh', '2023-10-24'),
(8, 'jjjjj', 'ccc', 'kk@gmail.com', '', 'j', '2023-10-24'),
(9, 'zead', 'zead2000', 'zead@k.com', '', '111', '2023-10-25'),
(10, 'kh', 'sama2000', 'eng.kholoudmohamed@gmail.com', '', 'A2_jhgfd', '2023-10-25'),
(11, 'ccc', 'sama2000', 'eng.kholoudmohamed@gmail.com', '', 'dddd', '2023-10-25'),
(12, 'loay', 'loay', 'loay@g.com', '', 'loay', '2023-10-25'),
(13, 'said', 'said2000', 'said@g.j', '', '222', '2023-10-25'),
(14, 'Kholoud Mohamed ', 'khokha', 'eng.kholoudmohamed@gmail.com', 'Yes', '3333333333', '2023-10-25'),
(15, 'loay', 'loay2000', 'loay@g.com', '', '2222222', '2023-10-25'),
(16, 'loay', 'sama2000', 'root@g.j', '', '33333333', '2023-10-25'),
(17, 'jjjjj', 'root', 'eng.kholoudmohamed@gmail.com', 'Yes', 'ddd', '2023-10-25'),
(18, 'f', 'root222', 'loay@g.com', 'Yes', '123dd', '2023-10-25'),
(19, 'loay', 'sama2000', 'kk@gmail.com', '', 'sss', '2023-10-25'),
(20, 'loay', 'sama2000', 'kk@gmail.com', '', 'sss', '2023-10-25'),
(21, 'sss', 'sss', 'ss@hhh.com', '', 'sss', '2023-10-25'),
(22, 'kholoud mohamed', 'bbbbbbbb200', 'ss@hhh.com', '', '111', '2023-10-26'),
(23, 'loay', 'loay202', 'loay@g.com', '', '111', '2023-10-26'),
(24, 'ahmed ali', 'a', 'eng.kholoudmohamed@gmail.com', '', 'P@$$w0rd@876', '2023-10-27'),
(25, 'jjjjj', 'a', 'eng.kholoudmohamed@gmail.com', '', 'P@$$w0rd@876', '2023-10-28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `furniture`
--
ALTER TABLE `furniture`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category` (`category`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `furniture`
--
ALTER TABLE `furniture`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
