-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 30, 2020 at 01:03 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stnerp`
--

-- --------------------------------------------------------

--
-- Table structure for table `mstr_country`
--

CREATE TABLE `mstr_country` (
  `id` int(11) NOT NULL,
  `sortname` varchar(3) NOT NULL,
  `name` varchar(150) NOT NULL,
  `d` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mstr_country`
--

INSERT INTO `mstr_country` (`id`, `sortname`, `name`, `d`) VALUES
(1, 'AF', 'Afghanistan', 1),
(2, 'AL', 'Albania', 1),
(3, 'DZ', 'Algeria', 1),
(4, 'AS', 'American Samoa', 1),
(5, 'AD', 'Andorra', 1),
(6, 'AO', 'Angola', 1),
(7, 'AI', 'Anguilla', 1),
(8, 'AQ', 'Antarctica', 1),
(9, 'AG', 'Antigua And Barbuda', 1),
(10, 'AR', 'Argentina', 1),
(11, 'AM', 'Armenia', 1),
(12, 'AW', 'Aruba', 1),
(13, 'AU', 'Australia', 1),
(14, 'AT', 'Austria', 1),
(15, 'AZ', 'Azerbaijan', 1),
(16, 'BS', 'Bahamas The', 1),
(17, 'BH', 'Bahrain', 1),
(18, 'BD', 'Bangladesh', 1),
(19, 'BB', 'Barbados', 1),
(20, 'BY', 'Belarus', 1),
(21, 'BE', 'Belgium', 1),
(22, 'BZ', 'Belize', 1),
(23, 'BJ', 'Benin', 1),
(24, 'BM', 'Bermuda', 1),
(25, 'BT', 'Bhutan', 1),
(26, 'BO', 'Bolivia', 1),
(27, 'BA', 'Bosnia and Herzegovina', 1),
(28, 'BW', 'Botswana', 1),
(29, 'BV', 'Bouvet Island', 1),
(30, 'BR', 'Brazil', 1),
(31, 'IO', 'British Indian Ocean Territory', 1),
(32, 'BN', 'Brunei', 1),
(33, 'BG', 'Bulgaria', 1),
(34, 'BF', 'Burkina Faso', 1),
(35, 'BI', 'Burundi', 1),
(36, 'KH', 'Cambodia', 1),
(37, 'CM', 'Cameroon', 1),
(38, 'CA', 'Canada', 1),
(39, 'CV', 'Cape Verde', 1),
(40, 'KY', 'Cayman Islands', 1),
(41, 'CF', 'Central African Republic', 1),
(42, 'TD', 'Chad', 1),
(43, 'CL', 'Chile', 1),
(44, 'CN', 'China', 1),
(45, 'CX', 'Christmas Island', 1),
(46, 'CC', 'Cocos (Keeling) Islands', 1),
(47, 'CO', 'Colombia', 1),
(48, 'KM', 'Comoros', 1),
(49, 'CG', 'Congo', 1),
(50, 'CD', 'Congo The Democratic Republic Of The', 1),
(51, 'CK', 'Cook Islands', 1),
(52, 'CR', 'Costa Rica', 1),
(53, 'CI', 'Cote D\'Ivoire (Ivory Coast)', 1),
(54, 'HR', 'Croatia (Hrvatska)', 1),
(55, 'CU', 'Cuba', 1),
(56, 'CY', 'Cyprus', 1),
(57, 'CZ', 'Czech Republic', 1),
(58, 'DK', 'Denmark', 1),
(59, 'DJ', 'Djibouti', 1),
(60, 'DM', 'Dominica', 1),
(61, 'DO', 'Dominican Republic', 1),
(62, 'TP', 'East Timor', 1),
(63, 'EC', 'Ecuador', 1),
(64, 'EG', 'Egypt', 1),
(65, 'SV', 'El Salvador', 1),
(66, 'GQ', 'Equatorial Guinea', 1),
(67, 'ER', 'Eritrea', 1),
(68, 'EE', 'Estonia', 1),
(69, 'ET', 'Ethiopia', 1),
(70, 'XA', 'External Territories of Australia', 1),
(71, 'FK', 'Falkland Islands', 1),
(72, 'FO', 'Faroe Islands', 1),
(73, 'FJ', 'Fiji Islands', 1),
(74, 'FI', 'Finland', 1),
(75, 'FR', 'France', 1),
(76, 'GF', 'French Guiana', 1),
(77, 'PF', 'French Polynesia', 1),
(78, 'TF', 'French Southern Territories', 1),
(79, 'GA', 'Gabon', 1),
(80, 'GM', 'Gambia The', 1),
(81, 'GE', 'Georgia', 1),
(82, 'DE', 'Germany', 1),
(83, 'GH', 'Ghana', 1),
(84, 'GI', 'Gibraltar', 1),
(85, 'GR', 'Greece', 1),
(86, 'GL', 'Greenland', 1),
(87, 'GD', 'Grenada', 1),
(88, 'GP', 'Guadeloupe', 1),
(89, 'GU', 'Guam', 1),
(90, 'GT', 'Guatemala', 1),
(91, 'XU', 'Guernsey and Alderney', 1),
(92, 'GN', 'Guinea', 1),
(93, 'GW', 'Guinea-Bissau', 1),
(94, 'GY', 'Guyana', 1),
(95, 'HT', 'Haiti', 1),
(96, 'HM', 'Heard and McDonald Islands', 1),
(97, 'HN', 'Honduras', 1),
(98, 'HK', 'Hong Kong S.A.R.', 1),
(99, 'HU', 'Hungary', 1),
(100, 'IS', 'Iceland', 1),
(101, 'IN', 'India', 1),
(102, 'ID', 'Indonesia', 1),
(103, 'IR', 'Iran', 1),
(104, 'IQ', 'Iraq', 1),
(105, 'IE', 'Ireland', 1),
(106, 'IL', 'Israel', 1),
(107, 'IT', 'Italy', 1),
(108, 'JM', 'Jamaica', 1),
(109, 'JP', 'Japan', 1),
(110, 'XJ', 'Jersey', 1),
(111, 'JO', 'Jordan', 1),
(112, 'KZ', 'Kazakhstan', 1),
(113, 'KE', 'Kenya', 1),
(114, 'KI', 'Kiribati', 1),
(115, 'KP', 'Korea North', 1),
(116, 'KR', 'Korea South', 1),
(117, 'KW', 'Kuwait', 1),
(118, 'KG', 'Kyrgyzstan', 1),
(119, 'LA', 'Laos', 1),
(120, 'LV', 'Latvia', 1),
(121, 'LB', 'Lebanon', 1),
(122, 'LS', 'Lesotho', 1),
(123, 'LR', 'Liberia', 1),
(124, 'LY', 'Libya', 1),
(125, 'LI', 'Liechtenstein', 1),
(126, 'LT', 'Lithuania', 1),
(127, 'LU', 'Luxembourg', 1),
(128, 'MO', 'Macau S.A.R.', 1),
(129, 'MK', 'Macedonia', 1),
(130, 'MG', 'Madagascar', 1),
(131, 'MW', 'Malawi', 1),
(132, 'MY', 'Malaysia', 1),
(133, 'MV', 'Maldives', 1),
(134, 'ML', 'Mali', 1),
(135, 'MT', 'Malta', 1),
(136, 'XM', 'Man (Isle of)', 1),
(137, 'MH', 'Marshall Islands', 1),
(138, 'MQ', 'Martinique', 1),
(139, 'MR', 'Mauritania', 1),
(140, 'MU', 'Mauritius', 1),
(141, 'YT', 'Mayotte', 1),
(142, 'MX', 'Mexico', 1),
(143, 'FM', 'Micronesia', 1),
(144, 'MD', 'Moldova', 1),
(145, 'MC', 'Monaco', 1),
(146, 'MN', 'Mongolia', 1),
(147, 'MS', 'Montserrat', 1),
(148, 'MA', 'Morocco', 1),
(149, 'MZ', 'Mozambique', 1),
(150, 'MM', 'Myanmar', 1),
(151, 'NA', 'Namibia', 1),
(152, 'NR', 'Nauru', 1),
(153, 'NP', 'Nepal', 1),
(154, 'AN', 'Netherlands Antilles', 1),
(155, 'NL', 'Netherlands The', 1),
(156, 'NC', 'New Caledonia', 1),
(157, 'NZ', 'New Zealand', 1),
(158, 'NI', 'Nicaragua', 1),
(159, 'NE', 'Niger', 1),
(160, 'NG', 'Nigeria', 1),
(161, 'NU', 'Niue', 1),
(162, 'NF', 'Norfolk Island', 1),
(163, 'MP', 'Northern Mariana Islands', 1),
(164, 'NO', 'Norway', 1),
(165, 'OM', 'Oman', 1),
(166, 'PK', 'Pakistan', 1),
(167, 'PW', 'Palau', 1),
(168, 'PS', 'Palestinian Territory Occupied', 1),
(169, 'PA', 'Panama', 1),
(170, 'PG', 'Papua new Guinea', 1),
(171, 'PY', 'Paraguay', 1),
(172, 'PE', 'Peru', 1),
(173, 'PH', 'Philippines', 1),
(174, 'PN', 'Pitcairn Island', 1),
(175, 'PL', 'Poland', 1),
(176, 'PT', 'Portugal', 1),
(177, 'PR', 'Puerto Rico', 1),
(178, 'QA', 'Qatar', 1),
(179, 'RE', 'Reunion', 1),
(180, 'RO', 'Romania', 1),
(181, 'RU', 'Russia', 1),
(182, 'RW', 'Rwanda', 1),
(183, 'SH', 'Saint Helena', 1),
(184, 'KN', 'Saint Kitts And Nevis', 1),
(185, 'LC', 'Saint Lucia', 1),
(186, 'PM', 'Saint Pierre and Miquelon', 1),
(187, 'VC', 'Saint Vincent And The Grenadines', 1),
(188, 'WS', 'Samoa', 1),
(189, 'SM', 'San Marino', 1),
(190, 'ST', 'Sao Tome and Principe', 1),
(191, 'SA', 'Saudi Arabia', 1),
(192, 'SN', 'Senegal', 1),
(193, 'RS', 'Serbia', 1),
(194, 'SC', 'Seychelles', 1),
(195, 'SL', 'Sierra Leone', 1),
(196, 'SG', 'Singapore', 1),
(197, 'SK', 'Slovakia', 1),
(198, 'SI', 'Slovenia', 1),
(199, 'XG', 'Smaller Territories of the UK', 1),
(200, 'SB', 'Solomon Islands', 1),
(201, 'SO', 'Somalia', 1),
(202, 'ZA', 'South Africa', 1),
(203, 'GS', 'South Georgia', 1),
(204, 'SS', 'South Sudan', 1),
(205, 'ES', 'Spain', 1),
(206, 'LK', 'Sri Lanka', 1),
(207, 'SD', 'Sudan', 1),
(208, 'SR', 'Suriname', 1),
(209, 'SJ', 'Svalbard And Jan Mayen Islands', 1),
(210, 'SZ', 'Swaziland', 1),
(211, 'SE', 'Sweden', 1),
(212, 'CH', 'Switzerland', 1),
(213, 'SY', 'Syria', 1),
(214, 'TW', 'Taiwan', 1),
(215, 'TJ', 'Tajikistan', 1),
(216, 'TZ', 'Tanzania', 1),
(217, 'TH', 'Thailand', 1),
(218, 'TG', 'Togo', 1),
(219, 'TK', 'Tokelau', 1),
(220, 'TO', 'Tonga', 1),
(221, 'TT', 'Trinidad And Tobago', 1),
(222, 'TN', 'Tunisia', 1),
(223, 'TR', 'Turkey', 1),
(224, 'TM', 'Turkmenistan', 1),
(225, 'TC', 'Turks And Caicos Islands', 1),
(226, 'TV', 'Tuvalu', 1),
(227, 'UG', 'Uganda', 1),
(228, 'UA', 'Ukraine', 1),
(229, 'AE', 'United Arab Emirates', 1),
(230, 'GB', 'United Kingdom', 1),
(231, 'US', 'United States', 1),
(232, 'UM', 'United States Minor Outlying Islands', 1),
(233, 'UY', 'Uruguay', 1),
(234, 'UZ', 'Uzbekistan', 1),
(235, 'VU', 'Vanuatu', 1),
(236, 'VA', 'Vatican City State (Holy See)', 1),
(237, 'VE', 'Venezuela', 1),
(238, 'VN', 'Vietnam', 1),
(239, 'VG', 'Virgin Islands (British)', 1),
(240, 'VI', 'Virgin Islands (US)', 1),
(241, 'WF', 'Wallis And Futuna Islands', 1),
(242, 'EH', 'Western Sahara', 1),
(243, 'YE', 'Yemen', 1),
(244, 'YU', 'Yugoslavia', 1),
(245, 'ZM', 'Zambia', 1),
(246, 'ZW', 'Zimbabwe', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mstr_country`
--
ALTER TABLE `mstr_country`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mstr_country`
--
ALTER TABLE `mstr_country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
