-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2021 at 06:33 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecomm`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `quantity`) VALUES
(13, 9, 52, 1),
(14, 9, 46, 1),
(15, 9, 38, 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cat_slug` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `cat_slug`) VALUES
(1, 'Clothes', 'Clothes'),
(2, 'Jewelry', 'Jewelry'),
(3, 'Handicrafts', 'Handicrafts'),
(4, 'Pottery', 'Pottery');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `sales_id`, `product_id`, `quantity`) VALUES
(14, 9, 11, 2),
(15, 9, 13, 5),
(16, 9, 3, 2),
(17, 9, 1, 3),
(18, 10, 13, 3),
(19, 10, 2, 4),
(20, 10, 19, 5);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(200) NOT NULL,
  `date_view` date NOT NULL,
  `counter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `slug`, `price`, `photo`, `date_view`, `counter`) VALUES
(30, 2, 'Chokdi Metal Necklace | jewelry by indian tribes | handmade', '<p>Shop for magnificent, stylish and sophisticated jewellery from Tribes India. With the wedding season around the corner, you must be looking out for traditional artificial jewellery to pair with your Indian dresses.</p>\r\n\r\n<p><strong>Tribe </strong>- Lambada<br />\r\n<strong>State </strong>- Andhra Pradesh</p>\r\n', 'chokdi-metal-necklace-jewelry-indian-tribes-handmade', 299, 'chokdi-metal-necklace.jpg', '2021-04-06', 2),
(31, 2, 'Green Omex & Silver Necklace | jewelry by indian tribes | handmade', '<p>TribalGoods brings you a enchanting, hand-crafted necklace set that epitomizes sophistication and craftsmanship of tribal artisans from Himachal Pradesh. Designed with elegance in mind, each assorted bead has a distinct charm that adds character and value to this piece. The intricate design of silver personifies raw ethnic grace that only expert artisans can exude. Pair it with your ethnic and western outfits to add class and elegance to your day or night.</p>\r\n\r\n<p><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tribe </strong>- Bodh<br />\r\n<strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; State </strong>- Himachal Pradesh</p>\r\n', 'green-omex-silver-necklace-jewelry-indian-tribes-handmade', 1399, 'green-omex-silver-necklace.jpg', '2021-04-06', 1),
(32, 2, 'Earring Coin Pair | jewelry by indian tribes | handmade', '<p>Shop for magnificent, stylish and sophisticated jewellery from Tribes India. All products are made by the best and heritage old craftsmen who ensure the highest quality of each product that is being produced.</p>\r\n\r\n<p><strong>&nbsp;&nbsp;&nbsp;&nbsp; Material</strong>: German Silver<br />\r\n<strong>&nbsp; &nbsp;&nbsp; State</strong>: Telangana<br />\r\n<strong>&nbsp;&nbsp;&nbsp;&nbsp; Product Weight:</strong> 3 Grams<br />\r\n<strong>&nbsp;&nbsp;&nbsp;&nbsp; Tribe:</strong> Lambada</p>\r\n', 'earring-coin-pair-jewelry-indian-tribes-handmade', 149, 'earring-coin-pair.jpg', '0000-00-00', 0),
(33, 2, 'Earring 1 Rupee Pair | jewelry by indian tribes | handmade', '<p>Shop for magnificent, stylish and sophisticated jewellery from Tribes India. All products are made by the best and heritage old craftsmen who ensure the highest quality of each product that is being produced.<br />\r\n&nbsp;&nbsp; &nbsp;<br />\r\n&nbsp;&nbsp;&nbsp; <strong>Material</strong>: German Silver<br />\r\n&nbsp;&nbsp;&nbsp; <strong>Color</strong>: Grey<br />\r\n&nbsp;&nbsp;&nbsp; <strong>Tribe</strong>: Bhil<br />\r\n&nbsp;&nbsp;&nbsp; <strong>State</strong>: Gujarat</p>\r\n', 'earring-1-rupee-pair-jewelry-indian-tribes-handmade', 169, 'earring-1-rupee-pair.jpg', '0000-00-00', 0),
(34, 2, 'Bengal Beeds Bracelet | jewelry by indian tribes | handmade', '<p>Shop for magnificent, stylish and sophisticated jewellery from TribalGoods. All products are made by the best and heritage old craftsmen who ensure the highest quality of each product that is being produced.<br />\r\n&nbsp;<br />\r\n&nbsp;&nbsp;&nbsp; <strong>Material</strong>: German Silver<br />\r\n&nbsp;&nbsp;&nbsp; <strong>State</strong>: Telangana<br />\r\n&nbsp;&nbsp;&nbsp; <strong>Product </strong>Weight: 20 Grams<br />\r\n&nbsp;&nbsp;&nbsp; <strong>Color</strong>: Grey<br />\r\n&nbsp;&nbsp;&nbsp; <strong>Tribe</strong>: Lambada</p>\r\n', 'bengal-beeds-bracelet-jewelry-indian-tribes-handmade', 239, 'bengal-beeds-bracelet.jpg', '0000-00-00', 0),
(35, 2, 'Earing Tikki Pair | jewelry by indian tribes | handmade', '<p>Shop for magnificent, stylish and sophisticated jewellery from TribalGoods. All products are made by the best and heritage old craftsmen who ensure the highest quality of each product that is being produced.</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; <strong>Material</strong>: German Silver<br />\r\n&nbsp;&nbsp;&nbsp; <strong>Color</strong>: Grey<br />\r\n&nbsp;&nbsp;&nbsp; <strong>Tribe</strong>: Lambada<br />\r\n&nbsp;&nbsp;&nbsp; <strong>State</strong>: Telangana</p>\r\n', 'earing-tikki-pair-jewelry-indian-tribes-handmade', 169, 'earing-tikki-pair.jpg', '0000-00-00', 0),
(36, 1, 'Cotton Green Plain Long Sleeve Kurta | handmade by Indian Tribes', '<p>Long Plain Kurta, Fabric Cotton Material, Long Sleeve, is wearing for special occasions and running wear is give a traditional look to you and it is very comfortable.</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; <strong>Fabric</strong>: Cotton<br />\r\n&nbsp;&nbsp;&nbsp; <strong>Color</strong>: Green<br />\r\n&nbsp;&nbsp;&nbsp; <strong>Sleeve</strong>: Long<br />\r\n&nbsp;&nbsp;&nbsp; <strong>Pattern</strong>: Solid<br />\r\n&nbsp;&nbsp;&nbsp; <strong>Design</strong>: Plain<br />\r\n&nbsp;&nbsp;&nbsp; <strong>State</strong>: Gujatat<br />\r\n&nbsp;&nbsp;&nbsp; <strong>Package Content</strong>: 1 Kurta<br />\r\n&nbsp;&nbsp;&nbsp; <strong>Care Instruction</strong>: Do Not Bleach.Dry In Shade</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'cotton-green-plain-long-sleeve-kurta-handmade-indian-tribes', 599, 'cotton-green-plain-long-sleeve-kurta.jpg', '0000-00-00', 0),
(37, 1, 'Coffee Sheep Wool Shawl | handmade by Indian Tribes', '<p>This men shawl has a high quality super soft fabric. This shawl, in appropriate length and is easy to carry. The wearer can flaunt his style statement easily with any of the matching stoles in the stock. The fabric is super soft and long lasting making an investment in it a wise decision.</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; <strong>Material </strong>: Wool<br />\r\n&nbsp;&nbsp;&nbsp; <strong>State </strong>: Himachal Pradesh<br />\r\n&nbsp;&nbsp;&nbsp; <strong>Color </strong>: Coffee<br />\r\n&nbsp;&nbsp;&nbsp; <strong>Size </strong>: Free Size<br />\r\n&nbsp;&nbsp;&nbsp; <strong>Package Content </strong>: 1 Piece<br />\r\n&nbsp;&nbsp;&nbsp; <strong>Care Instruction </strong>: Dry Clean Only</p>\r\n', 'coffee-sheep-wool-shawl-handmade-indian-tribes', 1299, 'coffee-sheep-wool-shawl.jpg', '2021-04-06', 1),
(38, 1, 'Handwoven Sheep Wool Brown Gents Shawl | handmade by Indian Tribes', '<p>This handcrafted shawl for discerning and fashion conscientious modern men is a decent choice to cheat the chilly winds in elegant style. Feeling the warmth this winter season is easy with this easy to carry light weight shawl in adequate length and width. Match it up with an ethnic outfit to receive compliments aplenty.</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; <strong>State </strong>: Himachal Pradesh<br />\r\n&nbsp;&nbsp;&nbsp; <strong>Fabric </strong>:&nbsp; Wool<br />\r\n&nbsp;&nbsp;&nbsp; <strong>Color </strong>: Brown<br />\r\n&nbsp;&nbsp;&nbsp; <strong>Package Content </strong>: 1 Piece Shawl<br />\r\n&nbsp;&nbsp;&nbsp; <strong>Care Instruction </strong>: Dry Clean Only</p>\r\n', 'handwoven-sheep-wool-brown-gents-shawl-handmade-indian-tribes', 1399, 'handwoven-sheep-wool-brown-gents-shawl.jpg', '2021-04-07', 1),
(39, 1, 'Silk Green Tribal Saree | handmade by Indian Tribes', '<p>This beautiful pure Kosa silk saree is a classic handwoven masterpiece. It is endlessly elegant and rich and has a pure traditional touch to it. This saree gives you a charming and alluring look on drape. Easy to wear, lightweight, and more comfortable.</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; <strong>Fabric</strong>: Slik<br />\r\n&nbsp;&nbsp;&nbsp; <strong>Color</strong>: Green<br />\r\n<strong>&nbsp;&nbsp;&nbsp; Care Instruction</strong>: Dry clean recommended.</p>\r\n', 'silk-green-tribal-saree-handmade-indian-tribes', 4699, 'silk-green-tribal-saree.jpg', '0000-00-00', 0),
(40, 1, 'Mustard Yellow Ghicha Linen Saree | handmade by Indian Tribes', '<p>This Linen saree from Maharashtra is a valuable addition to your wardrobe meant to store festive/party wear dresses. This saree is a must have if you require to present yourself confidently in a party and are planning to steal the glances instantly! It is reasonably priced, comes with a blouse piece, requires little maintenance and imparts absolute grace to wearer from all age groups.</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; <strong>Fabric </strong>: Linen<br />\r\n&nbsp;&nbsp;&nbsp; <strong>State </strong>: Maharashtra<br />\r\n&nbsp;&nbsp;&nbsp; <strong>Color </strong>: Mustard Yellow<br />\r\n&nbsp;&nbsp;&nbsp; <strong>Length </strong>: 6 Meter<br />\r\n<strong>&nbsp;&nbsp;&nbsp; Care Instruction : </strong>Dry Clean Only</p>\r\n', 'mustard-yellow-ghicha-linen-saree-handmade-indian-tribes', 4699, 'mustard-yellow-ghicha-linen-saree.jpg', '0000-00-00', 0),
(41, 1, 'Ghicha Linen Saffron Multicolor Saree | handmade by Indian Tribes', '<p>The tribal artisans have exemplary weaving skills. This saree has embroidery and has block print over it. It has been woven by tribal artisans from Marashtra.</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; <strong>Colour</strong>: Multi-coloured<br />\r\n&nbsp;<strong>&nbsp;&nbsp; Care Instruction :</strong> Dry Clean Only</p>\r\n', 'ghicha-linen-saffron-multicolor-saree-handmade-indian-tribes', 4699, 'ghicha-linen-saffron-multicolor-saree.jpg', '0000-00-00', 0),
(42, 3, 'Silver Tarkashi Sheet Work Suraye Vase | handicraft by indian tribes', '<p>TribalGoods brings to you the exquisite Bidri work, an age old craft tradition originating from Bidar in Karnataka using handcrafted technique of Tarkashi or metal wire inlay work using silver, gold or brass on black metal, an alloy of copper and zinc to produce ornate d&eacute;cor and utility products.</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; <strong>Material </strong>: Metal<br />\r\n&nbsp;&nbsp;&nbsp; <strong>State </strong>: Karnataka<br />\r\n&nbsp;&nbsp;&nbsp; <strong>Color </strong>: Black<br />\r\n&nbsp;&nbsp;&nbsp; <strong>Item Weight </strong>: 500 gm</p>\r\n', 'silver-tarkashi-sheet-work-suraye-vase-handicraft-indian-tribes', 19999, 'silver-tarkashi-sheet-work-suraye-vase-handicraft-indian-tribes.jpg', '0000-00-00', 0),
(43, 3, 'Silver Tarkashi Big Bowl | handicraft by indian tribes', '<p>TribalGoods brings to you the exquisite Bidri work, an age old craft tradition originating from Bidar in Karnataka using handcrafted technique of Tarkashi or metal wire inlay work using silver, gold or brass on black metal, an alloy of copper and zinc to produce ornate d&eacute;cor and utility products.</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; <strong>Material </strong>: Metal<br />\r\n&nbsp;&nbsp;&nbsp; <strong>State </strong>: Karnataka<br />\r\n&nbsp;&nbsp;&nbsp; <strong>Color </strong>: Black<br />\r\n<strong>&nbsp;&nbsp;&nbsp; Item Weight</strong> : 1.5 kg</p>\r\n', 'silver-tarkashi-big-bowl-handicraft-indian-tribes', 25999, 'silver-tarkashi-big-bowl-handicraft-indian-tribes.jpg', '0000-00-00', 0),
(44, 3, 'Silver Tarkashi Peacock | handicraft by indian tribes', '<p>TribalGoods brings to you the exquisite Bidri work, an age old craft tradition originating from Bidar in Karnataka using handcrafted technique of Tarkashi or metal wire inlay work using silver, gold or brass on black metal, an alloy of copper and zinc to produce ornate decor and utility products.</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; <strong>Material </strong>: Metal<br />\r\n&nbsp;&nbsp;&nbsp; <strong>State </strong>: Karnataka<br />\r\n&nbsp;&nbsp;&nbsp; <strong>Color </strong>: Black<br />\r\n<strong>&nbsp;&nbsp;&nbsp; Item Weight</strong> : 200 gm</p>\r\n', 'silver-tarkashi-peacock-handicraft-indian-tribes', 1199, 'silver-tarkashi-peacock-handicraft-indian-tribes.jpg', '0000-00-00', 0),
(45, 3, 'Metal Bull | handicraft by indian tribes', '<p>Beautiful, rare and rustic art with own unique ethnic enchantments. Dhokra is amongst the oldest and most traditional techniques of metal casting in India that has been practised for more than 4000 years. Dhokra uses the &lsquo;lost wax casting&rsquo; process, one of the earliest method of non-ferrous metal casting known to human civilisation. Initially, limited to by the tribes of Odisha, West Bengal and Jharkhand as practitioner of the metalwork, it has now been popularised across Indian as well as international markets.</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; <strong>State</strong>: Odisha<br />\r\n&nbsp;&nbsp;&nbsp; <strong>Material</strong>: Metal<br />\r\n&nbsp;&nbsp;&nbsp; <strong>Tribe</strong>: Santhal, Kandha, Ho, Bathudi<br />\r\n&nbsp;&nbsp;&nbsp; <strong>Item Weight</strong>: 20 gm</p>\r\n', 'metal-bull-handicraft-indian-tribes', 399, 'metal-bull-handicraft-indian-tribes.jpg', '0000-00-00', 0),
(46, 3, 'Mosaic Candle Stand | handicraft by indian tribes', '<p>Mosaic is a decorative art in which beautiful patterns are built using small regular or irregular pieces of colorful glasses or ceramic, held in place with plaster, entirely or partially covering a plane or curved surface. These hand-crafted decorative Roli candle stands are made by the Meena Tribal craftsmen of Rajasthan. Our Mosaic candle stands would be a great addition to your festive, party or event decoration or you can simply use them to decorate your home temple, living space, corners, outdoor patio or workspace. A perfect gift for a wedding, anniversary or festive occasions.</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; <strong>Tribe</strong>: Meena<br />\r\n&nbsp;&nbsp;&nbsp; <strong>Material</strong>: Glass<br />\r\n&nbsp;&nbsp;&nbsp;<strong> Item Weight</strong>: 170gm</p>\r\n', 'mosaic-candle-stand-handicraft-indian-tribes', 199, 'mosaic-candle-stand-handicraft-indian-tribes.jpg', '2021-04-07', 5),
(47, 3, 'Mosaic Lantern Lamp | handicraft by indian tribes', '<p>Mosaic is a decorative art in which beautiful patterns are built using small regular or irregular pieces of colorful glasses and ceramic, held in place with plaster, entirely or partially covering a plane or curved surface. These hand-crafted decorative lamps are made by the Meena Tribal craftsmen of Rajasthan. Our Mosaic lamps would be a great addition to your festive, party or event decoration or you can simply use them to decorate your home temple, living space, corners, outdoor patio or workspace. A perfect gift for a wedding, anniversary or festive occasions.</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; <strong>Tribe</strong>: Meena<br />\r\n&nbsp;&nbsp;&nbsp; <strong>Material</strong>: Glass<br />\r\n&nbsp;&nbsp;&nbsp; <strong>Item Weight</strong>: 370gm</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'mosaic-lantern-lamp-handicraft-indian-tribes', 299, 'mosaic-lantern-lamp-handicraft-indian-tribes.jpg', '0000-00-00', 0),
(48, 4, 'Multicolor Ceramic Barani | handmade pottery by indian tribes', '<p>The king of Jaipur Ram Singh II introduces blue pottery in Jaipur. The name Blue Pottery came from the Blue Glze Technique. Blue Pottery is prepared of mixing of Quartz stone powder, Powdered glass, multani mitti, Borax, Gum &amp; Water by Mina Tribes artisans of Jaipur. Ornamentation is done with the help of a brush made from the hair of squirrel. Decorated with the motifs of Flowers, Birds &amp; other animals.</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; Material: Ceramic<br />\r\n&nbsp;&nbsp;&nbsp; Color: Blue<br />\r\n&nbsp;&nbsp;&nbsp; Design: Hand Painted<br />\r\n&nbsp;&nbsp;&nbsp; Weight: 0.76 Kg<br />\r\n&nbsp;&nbsp;&nbsp; Length: 5.5 cm<br />\r\n&nbsp;&nbsp;&nbsp; Width: 7 cm<br />\r\n&nbsp;&nbsp;&nbsp; Height: 7 cm<br />\r\n&nbsp;&nbsp;&nbsp; State: Rajasthan<br />\r\n&nbsp;&nbsp;&nbsp; Tribe:Meena<br />\r\n&nbsp;&nbsp;&nbsp; Care Instruction: Handle with care</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'multicolor-ceramic-barani-handmade-pottery-indian-tribes', 499, 'multicolor-ceramic-barani-handmade-pottery-indian-tribes.jpg', '2021-04-07', 1),
(49, 4, 'Multicolor Ceramic Indigo Bowl | handmade pottery by indian tribes', '<p>The king of Jaipur Ram Singh II introduces blue pottery in Jaipur. The name Blue Pottery came from the Blue Glze Technique. Blue Pottery is prepared of mixing of Quartz stone powder, Powdered glass, multani mitti, Borax, Gum &amp; Water by Mina Tribes artisans of Jaipur. Ornamentation is done with the help of a brush made from the hair of squirrel. Decorated with the motifs of Flowers, Birds &amp; other animals.</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; Material: Ceramic<br />\r\n&nbsp;&nbsp;&nbsp; Color: Blue<br />\r\n&nbsp;&nbsp;&nbsp; Design: Hand Painted<br />\r\n&nbsp;&nbsp;&nbsp; Weight: 0.24 Kg<br />\r\n&nbsp;&nbsp;&nbsp; Length: 2.5 cm<br />\r\n&nbsp;&nbsp;&nbsp; Width: 5 cm<br />\r\n&nbsp;&nbsp;&nbsp; Height: 5 cm<br />\r\n&nbsp;&nbsp;&nbsp; State: Rajasthan<br />\r\n&nbsp;&nbsp;&nbsp; Tribe:Meena<br />\r\n&nbsp;&nbsp;&nbsp; Care Instruction: Handle with care</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'multicolor-ceramic-indigo-bowl-handmade-pottery-indian-tribes', 199, 'multicolor-ceramic-indigo-bowl-handmade-pottery-indian-tribes.jpg', '2021-04-07', 2),
(50, 4, 'Multicolor Ceramic Indigo Plate | handmade pottery by indian tribes', '<p>The king of Jaipur Ram Singh II introduces blue pottery in Jaipur. The name Blue Pottery came from the Blue Glze Technique. Blue Pottery is prepared of mixing of Quartz stone powder, Powdered glass, multani mitti, Borax, Gum &amp; Water by Mina Tribes artisans of Jaipur. Ornamentation is done with the help of a brush made from the hair of squirrel. Decorated with the motifs of Flowers, Birds &amp; other animals.</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; Material: Ceramic<br />\r\n&nbsp;&nbsp;&nbsp; Color: Blue<br />\r\n&nbsp;&nbsp;&nbsp; Design: Hand Painted<br />\r\n&nbsp;&nbsp;&nbsp; Weight: 0.24 Kg<br />\r\n&nbsp;&nbsp;&nbsp; Length: 1.5 cm<br />\r\n&nbsp;&nbsp;&nbsp; Width: 6 cm<br />\r\n&nbsp;&nbsp;&nbsp; Height: 6 cm<br />\r\n&nbsp;&nbsp;&nbsp; State: Rajasthan<br />\r\n&nbsp;&nbsp;&nbsp; Tribe:Meena<br />\r\n&nbsp;&nbsp;&nbsp; Care Instruction: Handle with care</p>\r\n', 'multicolor-ceramic-indigo-plate-handmade-pottery-indian-tribes', 199, 'multicolor-ceramic-indigo-plate-handmade-pottery-indian-tribes.jpg', '0000-00-00', 0),
(51, 4, 'Multicolor Ceramic Tray | handmade pottery by indian tribes', '<p>The king of Jaipur Ram Singh II introduces blue pottery in Jaipur. The name Blue Pottery came from the Blue Glze Technique. Blue Pottery is prepared of mixing of Quartz stone powder, Powdered glass, multani mitti, Borax, Gum &amp; Water by Mina Tribes artisans of Jaipur. Ornamentation is done with the help of a brush made from the hair of squirrel. Decorated with the motifs of Flowers, Birds &amp; other animals.</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; Material: Ceramic<br />\r\n&nbsp;&nbsp;&nbsp; Color: Blue<br />\r\n&nbsp;&nbsp;&nbsp; Design: Hand Painted<br />\r\n&nbsp;&nbsp;&nbsp; Weight: 0.27 Kg<br />\r\n&nbsp;&nbsp;&nbsp; Length: 2 cm<br />\r\n&nbsp;&nbsp;&nbsp; Width: 4.5 cm<br />\r\n&nbsp;&nbsp;&nbsp; Height: 6 cm<br />\r\n&nbsp;&nbsp;&nbsp; State: Rajasthan<br />\r\n&nbsp;&nbsp;&nbsp; Tribe:Meena<br />\r\n&nbsp;&nbsp;&nbsp; Care Instruction: Handle with care</p>\r\n', 'multicolor-ceramic-tray-handmade-pottery-indian-tribes', 199, 'multicolor-ceramic-tray-handmade-pottery-indian-tribes.jpg', '0000-00-00', 0),
(52, 4, 'Yellow Ceramic Flower Pot | handmade pottery by indian tribes', '<p>The king of Jaipur Ram Singh II introduces blue pottery in Jaipur. The name Blue Pottery came from the Blue Glaze Technique. Blue Pottery is prepared of mixing of Quartz stone powder, Powdered glass, multani mitti, Borax, Gum &amp; Water by Mina Tribes artisans of Jaipur. Ornamentation is done with the help of a brush made from the hair of squirrel. Decorated with the motifs of Flowers, Birds &amp; other animals.</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; Material: Ceramic<br />\r\n&nbsp;&nbsp;&nbsp; Color: Yellow<br />\r\n&nbsp;&nbsp;&nbsp; Design: Hand Painted<br />\r\n&nbsp;&nbsp;&nbsp; Weight: 0.6 Kg<br />\r\n&nbsp;&nbsp;&nbsp; Length: 20 cm<br />\r\n&nbsp;&nbsp;&nbsp; Width: 8.9 cm<br />\r\n&nbsp;&nbsp;&nbsp; Height: 8.9 cm<br />\r\n&nbsp;&nbsp;&nbsp; State: Rajasthan<br />\r\n&nbsp;&nbsp;&nbsp; Tribe:Meena<br />\r\n&nbsp;&nbsp;&nbsp; Care Instruction: Handle with care</p>\r\n', 'yellow-ceramic-flower-pot-handmade-pottery-indian-tribes', 499, 'yellow-ceramic-flower-pot-handmade-pottery-indian-tribes.jpg', '2021-04-07', 1),
(53, 4, 'Multicolor Ceramic Round Planter | handmade pottery by indian tribes', '<p>The king of Jaipur Ram Singh II introduces blue pottery in Jaipur. The name Blue Pottery came from the Blue Glaze Technique. Blue Pottery is prepared of mixing of Quartz stone powder, Powdered glass, multani mitti, Borax, Gum &amp; Water by Mina Tribes artisans of Jaipur. Ornamentation is done with the help of a brush made from the hair of a squirrel. Decorated with the motifs of Flowers, Birds &amp; other animals.</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; Material: Ceramic<br />\r\n&nbsp;&nbsp;&nbsp; Color: Multi Color<br />\r\n&nbsp;&nbsp;&nbsp; Design: Hand Painted<br />\r\n&nbsp;&nbsp;&nbsp; Weight: 0.27 Kg<br />\r\n&nbsp;&nbsp;&nbsp; Length: 10 cm<br />\r\n&nbsp;&nbsp;&nbsp; Width: 10.5 cm<br />\r\n&nbsp;&nbsp;&nbsp; Height: 10.5 cm<br />\r\n&nbsp;&nbsp;&nbsp; State: Rajasthan<br />\r\n&nbsp;&nbsp;&nbsp; Tribe:Meena<br />\r\n&nbsp;&nbsp;&nbsp; Care Instruction: Handle with care</p>\r\n', 'multicolor-ceramic-round-planter-handmade-pottery-indian-tribes', 199, 'multicolor-ceramic-round-planter-handmade-pottery-indian-tribes.jpg', '2021-04-07', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pay_id` varchar(50) NOT NULL,
  `sales_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `pay_id`, `sales_date`) VALUES
(9, 9, 'PAY-1RT494832H294925RLLZ7TZA', '2020-03-25'),
(10, 9, 'PAY-21700797GV667562HLLZ7ZVY', '2020-03-27');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` int(1) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  `activate_code` varchar(15) NOT NULL,
  `reset_code` varchar(15) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `address`, `contact_info`, `photo`, `status`, `activate_code`, `reset_code`, `created_on`) VALUES
(1, 'admin@technicalbabaji.com', '$2y$10$4dF7rxcZKvG66VloRvOr9.Dz/d1NxMonLg3bzhQrn6o7Txl2sg72e', 1, 'Admin', '', '', '', 'thanos1.jpg', 1, '', '', '2020-11-18'),
(9, 'chintan@gmail.com', '$2y$10$limOTqBoSH0qTp4WSvAg7uJZ8sMMhOGlDcK9HnM7XSkUy9qJmLLa6', 0, 'Chintan', '', '', '', 'male2.png', 1, 'k8FBpynQfqsv', 'wzPGkX5IODlTYHg', '2020-12-31'),
(12, 'christine@gmail.com', '$2y$10$ozW4c8r313YiBsf7HD7m6egZwpvoE983IHfZsPRxrO1hWXfPRpxHO', 0, 'Christine', 'becker', 'demo', '7542214500', 'female3.jpg', 1, '', '', '2020-11-18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
