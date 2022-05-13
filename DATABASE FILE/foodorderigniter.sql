-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 30, 2022 at 06:32 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodorderigniter`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`, `email`, `date`) VALUES
(1, 'admin', '$2y$10$mI/hpZ59vGgjs/lPTQWLJu.I82O93AEJ3gwFycAjuibOjAGi9dcTm', 'admin123@gmail.com', '2021-02-26 16:24:50'),
(2, 'admin1', 'admin2020', 'admin32@gmail.com', '2021-12-15 04:42:32');

-- --------------------------------------------------------

--
-- Table structure for table `clothes`
--

CREATE TABLE `clothes` (
  `d_id` int(11) NOT NULL,
  `r_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `about` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clothes`
--

INSERT INTO `clothes` (`d_id`, `r_id`, `name`, `about`, `price`, `img`) VALUES
(1, 1, 'Grey check', 'Silk grey checked suit', 10000, 'suit8.jpg'),
(2, 3, 'Joggers men', 'Men joggers black and red striped', 650, 'joggers1.jpg'),
(3, 2, 'Joggers Ladies', 'Ladies Grey Joggers', 650, 'joggers2.jpg'),
(4, 4, 'Green Dress', 'Green woven dress', 450, 'dress2.jpg'),
(5, 4, 'Blue Mermaid dress', 'Blue floral mermaid dress', 450, 'dress1.jpg'),
(6, 5, 'baby jeans', 'baby blue jeans', 150, 'baby2.jpg'),
(7, 5, 'white baby trunks', 'white set of baby trunks', 100, 'baby1.jpg'),
(8, 3, 'puffer top', 'Girl puffer top', 120, 'puffer1.jpg'),
(9, 1, 'puff jacket', 'Men puffer jacket', 300, 'puff2.jpg'),
(10, 4, 'girl shorts', 'Girl  green shorts', 150, 'shorts1.jpg'),
(18, 7, 'boy shorts', 'small boy shorts', 100, 'short2.jpg'),
(20, 6, 'gowns', 'Girl black gown', 800, 'gown1.jpg'),
(21, 6, 'Cargo pants', 'Girls cargo pants', 500, 'cargo.jpg'),
(22, 2, 'Girl Cap', 'Pink female cap', 8, 'cap1.jpg'),
(23, 6, 'Suits 54', 'suit for  the big boys', 4566, 'cloth21.jpg'),
(24, 1, 'Brown suit', 'brown  silk suit', 6000, 'cloth211.jpg'),
(25, 6, 'Beach shorts', 'shorts for the coast', 100, 'short21.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `shops`
--

CREATE TABLE `shops` (
  `r_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `o_hr` varchar(255) NOT NULL,
  `c_hr` varchar(255) NOT NULL,
  `o_days` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shops`
--

INSERT INTO `shops` (`r_id`, `c_id`, `name`, `email`, `phone`, `url`, `o_hr`, `c_hr`, `o_days`, `address`, `img`) VALUES
(1, 6, 'Giulia Essence', 'gr69stro@gmail.com', '1-555-555-5555', 'giuliarestroo.com', '8am', '7pm', 'mon-sat', '1259  Wood Street', 'nike.jpg'),
(2, 2, 'Vernick', 'vernic@gmail.com', '1-567-567-8888', 'foodvernick.com', '10am', '7pm', '24hr-x7', '1812  Fleming Street', 'vintage.jpg'),
(3, 3, 'Townsend', 'townsend@gmail.com', '1-333-222-7474', 'townsend.com', '8am', '8pm', 'mon-sat', '528  Veltri Drive', 'vintage6.png'),
(4, 6, 'Artisan Styles', 'grilltisan@gmail.com', '1-222-333-7878', 'artisanbargr.com', '11am', '8pm', '24hr-x7', '1659  Ritter Avenue', 'vintage2.jpg'),
(5, 3, 'Highland Moodz', 'contact@hlrt.com', '11555578522', 'highlandmoodz.com', '9am', '8pm', '24hr-x7', '1547  Birch  Street', 'prada.png'),
(6, 3, 'Alchemist', 'alchems@gmail.com', '12454850000', 'alchemist.clothesnew', '10am', '8pm', 'mon-sat', '60  Trehafod Road', 'vintage3.png'),
(7, 4, 'Treehouse', 'treehsr@gmail.com', '12457854101', 'treehouserestr.com', '8am', '6pm selected', 'mon-sat', '2902 Benson Park Drive', 'tommy.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `shopsub_category`
--

CREATE TABLE `shopsub_category` (
  `s_id` int(11) NOT NULL,
  `s_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `shop_category`
--

CREATE TABLE `shop_category` (
  `c_id` int(11) NOT NULL,
  `c_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shop_category`
--

INSERT INTO `shop_category` (`c_id`, `c_name`) VALUES
(2, 'Male Outfits'),
(3, 'Female Outfits'),
(4, 'Children fits'),
(5, 'Baby fits'),
(6, 'Unisex fits'),
(7, 'Vegan'),
(8, 'Beach wear');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `f_name` varchar(255) NOT NULL,
  `l_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `address`) VALUES
(18, 'christine', 'Christine', 'Moore', 'christine@gmail.com', '8545457777', '$2y$10$XLhDPwNkxadw1cePzUckzutf5jIWe.c7EUdrnUCPSo7RC3xqN0MqO', '245 Ralph Street'),
(19, 'thomas', 'Thomas', 'Yorke', 'thomas@gmail.com', '6540215001', '$2y$10$a7x4PLACXGXy4D0oJR0C8.fKMaG4Syg0mIUWqQw.kl8Cpt4zHyGeC', '8520 Allace Avenue'),
(20, 'leahp', 'Leah', 'Powell', 'leahp@gmail.com', '6540215700', '$2y$10$qUdthXhirk4/A./n2M3g1.cLMzG32i6zpHk5TsZSfq5D/JpnvidB6', '1114  Anmoore Road'),
(21, 'julie', 'Julie', 'Turner', 'julie@gmail.com', '6201254700', '$2y$10$lVo7.B89NHzx3UN/XHBmGOFoKIni95HaXNve2lciGPmNlBNhIz00S', '175  Gladwell Street'),
(22, 'robert', 'Robert', 'Garcia', 'robertgr@gmail.com', '8542124540', '$2y$10$K7cwOrUSXWWyzqM1PaIrSewLr.6xdFySk4DPWFENdAfNUFWB9BIRW', '2325  Brooke Street'),
(23, 'caroline', 'Caroline', 'Silva', 'carolinsi@gmail.com', '8540222320', '$2y$10$C2y0mZ.niJ1TfozEp15iG.ZLPJ23SHp9swR7sMzkZyF6JYRajFKDi', '1836  Rainbow Drive'),
(24, 'walker', 'John', 'Walker', 'john@gmail.com', '6012225470', '$2y$10$pl0kXL/4376t7les3MR5EeKVVZrGxTDzhNjCmqyzkjheeQs5zEJwG', '3791  Barnes Avenue'),
(25, 'jason', 'Jason', 'Anderson', 'jason@gmail.com', '8541212140', '$2y$10$kDGpBxWSICET3rzxvrGgXe.8mZB.04d.IqIz0DNQC.MCdd9kcIlv2', '4417  Clark Street'),
(26, 'plyler', 'Anastasia', 'Plyler', 'anastasia@gmail.com', '1245552120', '$2y$10$IpzK223xfacfCETSRR5uT.jNN/ClIP3r/vGInZQK9445UiPoz5RgW', '4685  Poling Farm Road'),
(27, 'michael', 'Michael', 'Holland', 'michael@gmail.com', '0540001470', '$2y$10$ihOEGdI6OCrQkBv1.I100uLe3rVtbJ6G1LcICuzJrCR7McLjTD71y', '79  Main St'),
(28, 'paige', 'Paige', 'Richardson', 'paigeri@gmail.com', '0254580002', '$2y$10$S87MjBD29LIXmtegDjxa7uiGNKqUiLoMiecJ9vIRxUU9fCtdnfavO', '110  Manor Way'),
(29, 'douglas', 'Eva', 'Douglas', 'evadoug@gmail.com', '3145800010', '$2y$10$KeoGCID6Z1Byt84B.lzSz.KB1uVYtTCz.DUGym4HuJeiQTg4MpT5S', '25 Ocean Street'),
(30, 'jayden', 'Jayden', 'Swadling', 'jayden@gmail.com', '3145210020', '$2y$10$G5tjFx15o76k78fAPudvUOovE.ubzQjkH51HcvF2zBukNTkV0t25G', '53 Ocean Street'),
(31, 'jessica', 'Jessica', 'Callum', 'jessum@gmail.com', '4521020010', '$2y$10$ZbHU6iGGm4Aeq/.cRWYp2eadhHK0h4sg6c4LIHbqdf1jnd1pybVC.', '73 Ocean Street'),
(32, 'carter', 'Brian', 'Carter', 'brianc@gmail.com', '6470002696', '$2y$10$bg1XbJ97GXaoHnG4OMkrDex5ybLWGEueKjFvUzvH1/kBtjR4NIp36', '2415  Walkers Ridge Way'),
(33, 'henry', 'Henry', 'Clark', 'henryc@gmail.com', '5402225000', '$2y$10$yKsf5a6TcTBHEflcfJDKnOu6Hfsw1QNok58uvrj7YWemzM2yMLNZC', '3017  Middleville Road'),
(34, 'taylor', 'Paul', 'Taylor', 'paulty@gmail.com', '7558744260', '$2y$10$FvSDmYTKWLh9CWuhRUHsfuWqALfXwzR7jIC00y0ZSvTihaFCSnWeG', '4957 Pearcy Avenue'),
(35, 'Michaelare', 'Michael', 'Are', 'seri14@gmail.com', '0712849736', '$2y$10$nPz130fYtycKu6XtELP46uWG2MkUbaGLBwB2TA.OwbIcJG.4vaQ8O', 'fuko East vallet'),
(36, 'John paul', 'John', 'paul', 'johnie45@gmail.com', '0222789765', '$2y$10$6vtVcfqJ5lNHnqIB60cLpe5WgRd.lhHONDIq2KEzzTIfIeeBgpM7K', 'Boulevard 20');

-- --------------------------------------------------------

--
-- Table structure for table `user_orders`
--

CREATE TABLE `user_orders` (
  `o_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `d_id` int(11) NOT NULL,
  `d_name` varchar(255) NOT NULL,
  `quantity` int(255) NOT NULL,
  `price` float NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `success-date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `r_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_orders`
--

INSERT INTO `user_orders` (`o_id`, `u_id`, `d_id`, `d_name`, `quantity`, `price`, `status`, `date`, `success-date`, `r_id`) VALUES
(21, 21, 18, 'Chimichanga', 1, 9, 'in process', '2021-05-17 13:38:29', '2021-05-17 12:21:29', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `clothes`
--
ALTER TABLE `clothes`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`r_id`);

--
-- Indexes for table `shopsub_category`
--
ALTER TABLE `shopsub_category`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `shop_category`
--
ALTER TABLE `shop_category`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `user_orders`
--
ALTER TABLE `user_orders`
  ADD PRIMARY KEY (`o_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `clothes`
--
ALTER TABLE `clothes`
  MODIFY `d_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `shops`
--
ALTER TABLE `shops`
  MODIFY `r_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `shopsub_category`
--
ALTER TABLE `shopsub_category`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shop_category`
--
ALTER TABLE `shop_category`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `user_orders`
--
ALTER TABLE `user_orders`
  MODIFY `o_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
