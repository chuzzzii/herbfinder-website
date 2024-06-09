-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 07, 2024 at 08:38 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `pid`, `name`, `price`, `quantity`, `image`) VALUES
(158, 16, 1, 'Neem leaf powder', 50, 1, 'neem.jpeg\r\n'),
(159, 16, 2, 'Ginger', 20, 1, 'Ginger.jpeg\r\n'),
(160, 16, 4, 'Ajwain', 14, 1, 'ajwain.jpeg'),
(161, 16, 7, 'Amla', 24, 1, 'amla.jpeg\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(13, 14, 'sarita chauhan', 'sarita2003@gmail.com', '7030523615', 'hi, how are you?'),
(14, 16, 'sarita chauhan', 'sarita2003@gmail.com', '7030523615', 'The site is little bit slow'),
(15, 16, 'sarita chauhan', 'sarita2003@gmail.com', '7030523615', 'please add some more products');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` varchar(50) NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(2, 16, 'sarita chauhan', '', 'sarita2003@gmail.com', 'cash on delivery', 'flat no. nallasopara, nsp, mumbai, India - ', ', Neem leaf powder (1) , Ginger (1) , Mustard (1) ', 95, '07-Apr-2024', 'pending'),
(24, 16, 'sarita chauhan', '', 'sarita2003@gmail.com', 'cash on delivery', 'flat no. nallasopara, nsp, mumbai, India - ', ', Neem leaf powder (1) , Aleo Vera (1) , mulethi (1) ', 105, '07-Apr-2024', 'pending'),
(25, 16, 'sarita chauhan', '', 'sarita2003@gmail.com', 'cash on delivery', 'flat no. nallasopara, nsp, mumbai, India - ', ', Ginger (1) , Neem leaf powder (1) ', 70, '07-Apr-2024', 'pending'),
(26, 16, 'sarita chauhan', '', 'sarita2003@gmail.com', 'cash on delivery', 'flat no. nallasopara, nsp, mumbai, India - ', ', Neem leaf powder (1) ', 50, '07-Apr-2024', 'pending'),
(27, 16, 'sarita chauhan', '', 'sarita2003@gmail.com', 'cash on delivery', 'flat no. nallasopara, nsp, mumbai, India - ', ', Mustard (1) , Ginger (1) ', 45, '07-Apr-2024', 'pending'),
(28, 16, 'sarita chauhan', '', 'sarita2003@gmail.com', 'cash on delivery', 'flat no. nallasopara, nsp, mumbai, India - ', ', Mustard (2) , Shatavari Powder (1) ', 80, '07-Apr-2024', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `details`, `price`, `image`) VALUES
(1, 'Neem leaf powder', 'Neem powder natural may act as a body cleanser, blood purifier, support immunity, and liver health. Neem is considered as a wonder herb and is important for its variety of medicinal uses. In Sanskrit Neem herb is called \'Sarva Roga Nivaran\'. Neem powder is made from leaves of Azadirachta indica.\r\n\r\nNeem leaf powder is an integral part of Ayurvedic medicine, and it is used to balance pitta and Kapha dosha and treatment of Vata disorders. Neem leaf powder purifies the blood, battles free radical d', 50, 'neem.jpeg\r\n'),
(2, 'Ginger', 'Not only does ginger stoke the digestive fire (agni), but it also whets the appetite, improves assimilation and transportation of nutrients to targeted body tissues, and clears the microcirculatory channels of the body.\r\nGinger may help relieve nausea and vomiting and aid digestion . Antioxidants and other nutrients in ginger root may help prevent or treat arthritis, inflammation, and various types of infection. Ginger may also reduce the risk of diabetes, cancer, and other health problems.', 20, 'Ginger.jpeg\r\n'),
(3, 'Mustard', 'Mustard seeds contain compounds that have antimicrobial properties, helping to fight against harmful bacteria.\r\nMustard seeds are a good source of minerals like calcium, magnesium, and potassium. \r\nMustard seeds have been used in traditional medicine to help relieve respiratory conditions like asthma and bronchitis.\r\nThere are several medicinal uses for mustard seeds. It may be used against diabetes, cancer, psoriasis, fungi, and bacteria and act as an antioxidant.', 25, 'Mustard.jpeg'),
(4, 'Ajwain', 'Ajwain is highly valued in India as a gastrointestinal medicine and as an antiseptic. Ajwain is widely used to enhance virility and premature ejaculation; it is also a traditional remedy for cholera and fainting spells.\r\najwain is considered a strong cleanser. It increases the appetite and boosts digestion. It also takes care of any bloating, acidity and discomfort in the stomach. From the ancient times ajwain has been used to treat many disorders from fever, abdominal pain, menstrual discomfort', 14, 'ajwain.jpeg'),
(5, 'Aleo Vera', 'Aloe is used as a tonic for the female reproductive system, skin and hair. According to Ayurveda, Aloe is said to have clarifying, tonic, rejuvenating, purgative, and anti-inflammatory actions. It is also believed to provide a good solution to all the three Ayurveda constitutions, Vata, Pitta and Kapha.\r\nTraditionally, this medicinal plant has been employed to treat skin problems (burns, wounds, and anti-inflammatory processes). Moreover, Aloe vera has shown other therapeutic properties includin', 20, 'Aloe vera.jpg\r\n'),
(6, 'mulethi', 'Mulethi is known for its soothing properties on the digestive system. It helps in reducing inflammation in the gastrointestinal tract, making it beneficial for those suffering from conditions like acidity, indigestion, and ulcers.\r\nIt holds high significance in treating indigestion, ulcers, cardiac problems, respiratory issues, liver damages, and several skin and hair woes. The widespread health benefits of mulethi are extremely beneficial in providing relief from sore throat and congestion.', 35, 'mulethi.webp'),
(7, 'Amla', 'Amla is beneficial for Pitta disorders. It also works to improve stamina and body defense against any infection because of its Vrishya (strength provider) and Rasayana (immunity) properties. Amla balances Vata because of Amala (sour) taste, balances Pitta because of its Madhura (sweet) and Sita (cold) nature.\r\nFor Ayurveda Amlaki is considered to be a nature\"s boon. Amla benefits include antibacterial & astringent properties which help improve the bodys immunity system. also known as Indian Goo', 24, 'amla.jpeg\r\n'),
(8, 'Ashwagandha', 'Ashwagandha contains chemicals that might help calm the brain, reduce swelling, lower blood pressure, and alter the immune system. Since ashwagandha is traditionally used as an adaptogen, it is used for many conditions related to stress. Adaptogens are believed to help the body resist physical and mental stress.', 25, 'ashwagandha.jpeg\r\n'),
(9, 'Bel', 'Bel powder is used for healthy bowel function. This powder helps in low sugar absorption. This powder is best for digestion as it contains anti-bacterial properties. Bael powder works effectively in reducing gastric ulcers.', 20, 'bel.jpg\r\n'),
(10, 'Brahmi Leaves Powder', 'In Ayurvedic medicine, the traditional use of brahmi as an anti-anxiety medication may be supported by both human and animal studies. In a human study, brahmi showed reduced symptoms of anxiety, level of disability and mental fatigue, level of anxiety, and an increase in memory span.Brahmi helps in managing age-related memory loss when used on a regular basis.', 23, 'Brahmileaves-Powder.jpg\r\n'),
(11, 'Shatavari Powder', 'Shatavari is a species of asparagus plant that has been used for many centuries in Indian Ayurvedic medicine. Shatavari, also known as satavari, satavar, or Asparagus racemosus (A. racemosus), is said to promote fertility and have a range of health benefits, particularly for the female reproductive system.\r\nShatavari has been used to attempt to treat conditions related to hormone imbalance such as polycystic ovarian syndrome ( PCOS) and infertility. Reduce symptoms of menopause. ', 30, 'shatavari.webp\r\n'),
(12, 'Turmeric', 'In Ayurvedic practices, turmeric is thought to have many medicinal properties including strengthening the overall energy of the body, relieving gas, dispelling worms, improving digestion, regulating menstruation, dissolving gallstones, and relieving arthritis.\r\nIt was traditionally used for disorders of the skin, upper respiratory tract, joints, and digestive system. Today, turmeric is promoted as a dietary supplement for a variety of conditions, including arthritis, digestive disorders, respira', 20, 'Turmeric.jpeg\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`) VALUES
(16, 'sarita', 'sarita2003@gmail.com', '250312d12686039771bb5a7bae38cbf2', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `user_id`, `pid`, `name`, `price`, `image`) VALUES
(60, 15, 19, 'Neem leaf powder', 15, 'neem.jpeg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
