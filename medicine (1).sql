-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 16, 2020 at 05:53 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `medicine`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pill_list`
--

CREATE TABLE `tbl_pill_list` (
  `id` int(11) NOT NULL,
  `name` varchar(60) DEFAULT NULL,
  `protein` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_dt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pill_list`
--

INSERT INTO `tbl_pill_list` (`id`, `name`, `protein`, `description`, `status`, `created_dt`) VALUES
(1, 'Tablet Name', 'Haemoglobin,Insulin', 'Paracetamol, also known as acetaminophen, is a medication used to treat pain and fever. It is typically used for mild to moderate pain relief. Evidence is mixed for its use to relieve fever in children. It is often sold in combination with other medications, such as in many cold medications.', 1, '2020-07-13 09:37:45'),
(2, NULL, NULL, NULL, 1, '2020-07-16 10:20:46'),
(3, 'aspir-cor', 'aspirin', 'It is sometimes used to prevent or treat strokes.', 1, '2020-07-16 10:20:46'),
(4, 'asceniv', 'globulin', 'plays an important role in liver function.', 1, '2020-07-16 10:24:47'),
(5, 'arthritis pain', 'aspirin', 'It is used to reduce fever and tooth ache.', 1, '2020-07-16 10:25:47'),
(6, 'vivaglobin', 'globulin', 'It contains antibodies to treat primary immuno deficiency.', 1, '2020-07-16 12:01:25'),
(7, 'selenium capsules', 'se-plus proteins', 'selenium deficiency.', 1, '2020-07-16 12:02:51'),
(8, 'aspir-81', 'aspirin', 'It is used to treat fever.', 1, '2020-07-16 12:09:06'),
(9, 'cuvitru', 'globulin', 'Used to treat body natural defense system.', 1, '2020-07-16 12:09:57'),
(10, 'biotin', 'keratin', 'biotin deficiency.', 1, '2020-07-16 12:10:32'),
(11, 'kedRAB', 'globulin', 'rabbies vaccine.', 1, '2020-07-16 12:11:30'),
(12, 'omegaven', 'phospolipids', 'parenteral nutrition.', 1, '2020-07-16 12:12:48'),
(13, 'gammagard liquid', 'globulin', 'primary immuno deficiency disease.', 1, '2020-07-16 12:13:49'),
(14, 'ecotrin', 'aspirin', 'used to treat pain and reduce inflammation.', 1, '2020-07-16 12:14:40'),
(15, 'abraxane', 'paclitaxel', 'used to treat pancreatic cancer.', 1, '2020-07-16 12:15:36'),
(16, 'aspirin-low', 'aspirin', 'prevents heart attacks.', 1, '2020-07-16 12:16:11'),
(17, 'octogam', 'globulin', 'strength the natural defense system.', 1, '2020-07-16 12:16:57'),
(18, 'P-type ATpases', 'ATpase', 'class of enzymes.', 1, '2020-07-16 12:19:45'),
(19, 'albumin-25', 'albumin', 'treatment for burns.', 1, '2020-07-16 12:20:31'),
(20, 'alpha 1-protinase inhibitor', 'alpha 1-antitrypsin', 'cures breakdown of lung tissue.', 1, '2020-07-16 12:22:07'),
(21, 'bayer plus', 'aspirin', 'bleeding disorder.', 1, '2020-07-16 12:23:11'),
(22, 'hyqvia', 'globulin', 'helps your body in absorbing other injected medication.', 1, '2020-07-16 12:25:56'),
(23, 'smoflipid', 'medium-chain triglycerides', 'injected after surgery for strengthening the body.', 1, '2020-07-16 12:27:43'),
(24, 'albuminar-25', 'albumin', 'used to treat low blood pressure.', 1, '2020-07-16 12:28:38'),
(25, 'cytoGam', 'globumin', 'prevents certain serious viral infections.', 1, '2020-07-16 12:29:27'),
(26, 'creon', 'protease', 'used to treat people who cannot digest food normally', 1, '2020-07-16 12:30:55'),
(27, 'ribociclib', 'cyclin-dependent kinase 4 and 6.', 'used to treat breast cancer.', 1, '2020-07-16 12:31:52'),
(28, 'alprax', 'albumin', 'used to treat anxiety and panic disorder.', 1, '2020-07-16 12:32:51'),
(29, 'gamunex-c', 'globulin', 'primary immuno deficiency.', 1, '2020-07-16 12:35:18'),
(30, 'albuminex', 'albumin', 'accute respiratory distress syndrome.', 1, '2020-07-16 12:36:07'),
(31, 'flebogamma', 'globulin', 'treatment of primary immuno deficiency.', 1, '2020-07-16 12:37:45'),
(32, 'lepirudin', 'hirudin', 'treatment of haparin induced thrombohytomania.', 1, '2020-07-16 12:38:54'),
(33, 'gammaaked', 'globulin', 'helps protect us against bacteria and virus.', 1, '2020-07-16 12:39:45'),
(34, 'liparm', 'pancrea lipase', 'reduce upset stomach buffering.', 1, '2020-07-16 12:40:29'),
(35, 'paclitaxel', 'albumin', 'used to treat various typer of cancer.', 1, '2020-07-16 12:42:15'),
(36, 'gamaSTAN S/D', 'globulin', 'used to treat rubella.', 1, '2020-07-16 12:43:03'),
(37, 'micRhoGAM ultra filterted plus', 'globulin', 'treatment of innumthrombocytopenic purpura.', 1, '2020-07-16 12:44:50'),
(38, 'gamimune', 'globulin', 'used to treat people with idiopathicthrombocytopenic purpura.', 1, '2020-07-16 12:45:48'),
(39, 'bufferin', 'aspirin', 'reduce heart burn.', 1, '2020-07-16 12:46:23'),
(40, NULL, NULL, NULL, 1, '2020-07-16 12:49:48'),
(41, 'hizentra', 'globulin', 'immuno deficiency disease.', 1, '2020-07-16 12:49:48'),
(42, 'miniprin', 'aspirin', 'prevents stroke and chest pain.', 1, '2020-07-16 12:50:25'),
(43, 'babyBIG', 'globulin', 'used to treat infant botulism caused by toxin.', 1, '2020-07-16 12:51:49'),
(44, 'gammaaplex', 'globulin', 'immunothrombocytopenic purpura.', 1, '2020-07-16 12:52:33'),
(45, 'albuked 5', 'albumin', 'used to treat accute liver failure.', 1, '2020-07-16 12:53:07'),
(46, 'rhophylac', 'globulin', 'prevent an immune response to RH positive blood in people with an RH - blood type.', 1, '2020-07-16 12:54:36'),
(47, 'gammar-P.I.V', 'globulin', 'contains antibodies to protect against body itself.', 1, '2020-07-16 12:59:14'),
(48, 'plasbumin-25', 'albumin', 'made up of plasma protein from human blood.', 1, '2020-07-16 13:00:52'),
(49, 'privigen', 'globulin', 'used to treat primary immunodeficiency.', 1, '2020-07-16 13:02:25'),
(50, 'hepaGam B', 'globulin', 'It is used to prevent liver hepatiti-B.', 1, '2020-07-16 13:04:56'),
(51, 'hepaGam B Novaplus', 'globulin', 'prevents  hepatitis.', 1, '2020-07-16 13:07:20'),
(52, 'albuked', 'albumin', 'used to increase plasma volume.', 1, '2020-07-16 13:08:48'),
(53, 'albumin-alpine', 'albumin', 'reduce blood volume loss.', 1, '2020-07-16 13:14:26'),
(54, 'babyHep B', 'globulin', 'decrease risk of liver disease.', 1, '2020-07-16 13:15:12'),
(55, 'hyper B', 'globulin', 'prevents hepatitis B in new born babies.', 1, '2020-07-16 13:17:58'),
(56, 'winRHO SDF', 'globulin', 'treatment of immune thrombocytopenic purpura(ITP)', 1, '2020-07-16 13:20:03'),
(57, 'halfprin', 'aspirin', 'used to treat pain and reduce fever.', 1, '2020-07-16 13:21:41'),
(58, 'babyrab', 'globulin', 'babyrab tablet.', 1, '2020-07-16 13:23:13'),
(59, 'plasbumin-25', 'globulin', 'used to maintain plasma colloid asthmatic pressure.', 1, '2020-07-16 13:24:28'),
(60, 'babyRHo-D', 'globulin', 'treat purpura(ITP).', 1, '2020-07-16 13:25:41'),
(61, 'dornase alfa', 'alpha helix', 'reduces viscosity in lungs.', 1, '2020-07-16 13:26:29'),
(62, 'albunex', 'albumin', 'increase level of albumin in blood.', 1, '2020-07-16 13:27:37'),
(63, 'lyophilized rb', 'collagen', 'improves stability.', 1, '2020-07-16 13:28:38'),
(64, 'gammaagard S', 'globulin', 'chronic lymphocytic lukemia.', 1, '2020-07-16 13:29:44'),
(65, 'incretin mimetics', 'insulin', 'treatment for type2 diabetics.', 1, '2020-07-16 13:30:25'),
(66, 'hyperTET S/D', 'globulin', 'indicated for propile axis against tetanus.', 1, '2020-07-16 13:31:40'),
(67, 'protide', 'protamine sulphate', 'delivering phosponate.', 1, '2020-07-16 13:32:41'),
(68, 'albumax', 'albumin', 'treat low blood albumin level.', 1, '2020-07-16 13:33:54'),
(69, 'hyperRH S/D full dose', 'globulin', 'injection(immunoglobulin)', 1, '2020-07-16 13:35:27'),
(70, 'evithrom', 'thrombin', 'aids to stop minor bleedings from small veins.', 1, '2020-07-16 13:36:26'),
(71, 'bivigam', 'globulin', 'helps to increse the blood count.', 1, '2020-07-16 13:37:20'),
(72, 'albuminar-5', 'albumin', 'used to treat trauma and infection.', 1, '2020-07-16 13:38:04'),
(73, 'plasma-plex', 'plasma protein', 'mysthenia gravis.', 1, '2020-07-16 13:39:27'),
(74, 'nabi-HB', 'globulin', 'hepatits.', 1, '2020-07-16 13:40:16'),
(75, 'protenate', 'plasma protein', 'immunity booster.', 1, '2020-07-16 13:41:14'),
(76, 'ceprotin', 'protein c synthesis', 'tp treat repaired tissue.', 1, '2020-07-16 13:42:15'),
(77, 'panzgya', 'globulin', 'used to treat kavasaki disease.', 1, '2020-07-16 13:43:04'),
(78, 'protexel', 'protein c synthesis', 'used to treat fibroid in uterus.', 1, '2020-07-16 13:44:03'),
(79, 'respiGAM', 'globulin', 'used in infant who have broncho pulmonary displacia.', 1, '2020-07-16 13:45:03'),
(80, 'kebdumin', 'albumin', 'Increase the volume of albumin level in the blood.', 1, '2020-07-16 13:45:49'),
(81, 'tuberculin', 'tuberculine purified protein', 'diagnosis of tuberclosis.', 1, '2020-07-16 13:46:39'),
(82, 'durlaza', 'aspirin', 'used to reduce fever and inflammation.', 1, '2020-07-16 13:47:27'),
(83, 'synagis', 'globulin', 'treat respiratory synpytial.', 1, '2020-07-16 13:48:18'),
(84, 'creon', 'amylase', 'systic fibrosis.', 1, '2020-07-16 13:49:26'),
(85, 'human albumin grofols', 'albumin', 'used to treat abdominal infection.', 1, '2020-07-16 13:50:07'),
(86, 'referon-A', 'interferon alpha', 'used to treat melanoma.', 1, '2020-07-16 13:50:54'),
(87, 'variZIG', 'globulin', 'treat infants who could become severely exposed to varicella zoscer virus.', 1, '2020-07-16 13:52:29'),
(88, 'ecpirin', 'aspirin', 'reduce fever.', 1, '2020-07-16 13:53:36'),
(89, 'xembify', 'globulin', 'treatment of primary humoral deficiency.', 1, '2020-07-16 13:54:20'),
(90, 'flexbumin', 'albumin', 'increases plasma level.', 1, '2020-07-16 13:55:03'),
(91, 'carimune NF', 'globulin', 'increase the blood count.', 1, '2020-07-16 13:55:50'),
(92, 'proteinnuria', 'tamm-horsfall', 'treatment of renal disease.', 1, '2020-07-16 13:56:56'),
(93, 'buminate', 'albumin', 'cures injury that causes blood loss', 1, '2020-07-16 13:57:41'),
(94, 'zinplava', 'globulin', 'used to treat swollen dry area.', 1, '2020-07-16 13:58:33'),
(95, 'albutein', 'albumin', 'cures severe burns.', 1, '2020-07-16 13:59:04'),
(96, 'aspi-cora', 'aspirin', 'treat heart attacks.', 1, '2020-07-16 13:59:41'),
(97, 'leuprolids', 'gelatine', 'to treat sympotoms of endreomatics.', 1, '2020-07-16 14:00:46'),
(98, 'fasprin', 'aspirin', 'used to treat common cold.', 1, '2020-07-16 14:01:30'),
(99, 'cutaquig', 'globulin', 'treat immune system.', 1, '2020-07-16 14:02:16'),
(100, 'plasmanate', 'plasma protein', 'treatment of shock due to hemmorhage.', 1, '2020-07-16 14:03:01'),
(101, 'abciximab', 'integrin', 'prevent coronary thrombosis.', 1, '2020-07-16 14:04:03'),
(102, 'vedolizumad', 'integrin', 'to reduce gastro intestinal infalmmation.', 1, '2020-07-16 14:04:59'),
(103, 'natalizumab', 'integrin', 'multiple splerosis.', 1, '2020-07-16 15:12:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_pill_list`
--
ALTER TABLE `tbl_pill_list`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_pill_list`
--
ALTER TABLE `tbl_pill_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
