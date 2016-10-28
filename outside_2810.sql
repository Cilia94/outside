-- phpMyAdmin SQL Dump
-- version 4.2.7
-- http://www.phpmyadmin.net
--
-- Machine: localhost:3306
-- Gegenereerd op: 28 okt 2016 om 22:39
-- Serverversie: 5.5.41-log
-- PHP-versie: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Databank: `adventurecilia`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `foto`
--

CREATE TABLE IF NOT EXISTS `foto` (
`id` int(11) NOT NULL,
  `bestandsnaam` text NOT NULL,
  `extensie` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `foto_activiteit`
--

CREATE TABLE IF NOT EXISTS `foto_activiteit` (
`id` int(11) NOT NULL,
  `activiteitId` int(11) NOT NULL,
  `bestandsnaam` text NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=472 ;

--
-- Gegevens worden geëxporteerd voor tabel `foto_activiteit`
--

INSERT INTO `foto_activiteit` (`id`, `activiteitId`, `bestandsnaam`) VALUES
(1, 89, 'adventure_dropping_Small.jpg'),
(2, 89, 'Puketi-Night-Walk-012.jpg'),
(3, 89, 'gps_Small.jpg'),
(4, 89, 'dropping2-small_m.jpg'),
(5, 94, 'achtergrond_f.jpg'),
(6, 94, 'bier_f.jpg'),
(7, 94, 'img_0924_f.jpg'),
(8, 94, 'img_0926_f.jpg'),
(9, 94, 'img_0937_f.jpg'),
(10, 103, 'dsc_3698_f.jpg'),
(11, 103, 'dsc_5644_f.jpg'),
(12, 103, 'mountainbike-small.2_f.jpg'),
(13, 103, 'mtb-2014-148_f.jpg'),
(14, 103, 'mtbiken12_f.jpg'),
(15, 103, 'naamloos.2_f.png'),
(16, 103, 'naamloos.3_f.png'),
(17, 103, 'naamloos3_f.png'),
(18, 103, 'quad.1_f.jpg'),
(19, 116, 'dsc_5363-small_f.jpg'),
(20, 116, 'high-ropes_f.jpg'),
(21, 116, 'naamloos_f.png'),
(22, 140, 'bijlw-small_f.jpg'),
(23, 140, 'bijlwerpen-hg-vrijgezel-small.1_f.jpg'),
(24, 140, 'bijlwerpen-small_f.jpg'),
(25, 140, 'boomstam-zagen-small.1_f.jpg'),
(26, 140, 'boomstam-zagen-small_f.jpg'),
(27, 140, 'doedelzakspeler_f.jpg'),
(28, 140, 'dsc_0026_f.jpg'),
(29, 140, 'dsc_0036_f.jpg'),
(30, 140, 'dsc_0071_f.jpg'),
(31, 140, 'dsc_0098_f.jpg'),
(32, 140, 'dsc_0107_f.jpg'),
(33, 140, 'dsc_0125_f.jpg'),
(34, 140, 'dsc_0191_f.jpg'),
(35, 140, 'dsc_0193_f.jpg'),
(36, 140, 'dsc_0196_f.jpg'),
(37, 140, 'dsc_3418_resize_f.jpg'),
(38, 140, 'dsc_3459_resize_f.jpg'),
(39, 140, 'dsc_3473_resize_f.jpg'),
(40, 140, 'dsc_3544_resize_f.jpg'),
(41, 140, 'hapjes-resize_f.jpg'),
(42, 140, 'highland-easy-leisure-small_f.jpg'),
(43, 140, 'highland-g-vrijgezellen2-small_f.jpg'),
(44, 140, 'highland-games-vrijgezellen-small.1_f.jpg'),
(45, 140, 'paalwerpen-small_f.jpg'),
(46, 140, 'pauze-small_f.jpg'),
(47, 140, 'whiskey-resize_f.jpg'),
(48, 169, 'a-580_f.jpg'),
(49, 169, 'a-878_f.jpg'),
(50, 169, 'actie-hr-small.1_f.jpg'),
(51, 169, 'high-rope50s-2-small_f.jpg'),
(52, 169, 'high-ropes-2-small.1_f.jpg'),
(53, 169, 'high-ropes-3-small_f.jpg'),
(54, 169, 'hr-3-small_f.jpg'),
(55, 169, 'hr-5-small_f.jpg'),
(56, 169, 'hr4kids-small-small_f.jpg'),
(57, 169, 'hr66-small_f.jpg'),
(58, 169, 'hr457-small.1_f.jpg'),
(59, 169, 'naamloos.1_f.png'),
(60, 169, 'naamloos2_f.png'),
(61, 169, 'nieuw-high-ropes-parcours2_f.jpg'),
(62, 169, 'nieuw-high-ropes-parcours3_f.jpg'),
(63, 169, 'nieuw-high-ropes-parcours4_f.jpg'),
(64, 194, 'img_1461-small_f.jpg'),
(65, 194, 'kano-1-small.1_f.jpg'),
(66, 194, 'kano_2_f.jpg'),
(67, 194, 'kanovaren-lars-small_f.jpg'),
(68, 194, 'kanovaren3-small.1_f.jpg'),
(69, 213, 'kasteel.jpg'),
(70, 216, 'fites.jpg'),
(71, 216, 'img_2896-small_f.jpg'),
(72, 216, 'img_2898-small_f.jpg'),
(73, 216, 'muzikale-fietstocht-small.1_f.jpg'),
(74, 232, 'dsc_7289-small_f.jpg'),
(75, 232, 'dsc_7300_f.jpg'),
(76, 232, 'dsc_7315_f.jpg'),
(77, 232, 'img_0376-small_f.jpg'),
(78, 232, 'img_2525_f.jpg'),
(79, 232, 'urban-golf1-small_f.jpg'),
(80, 232, 'urban-golf5.1_f.jpg'),
(81, 246, 'boltra_f.jpg'),
(82, 246, 'boog_f.png'),
(83, 246, 'dsc_3758_resize_f.jpg'),
(84, 246, 'dsc_3764_resize_f.jpg'),
(85, 246, 'img_0466-small_f.jpg'),
(86, 254, 'mountainbike-small.1_f.jpg'),
(87, 254, 'mountainbiken.1_f.jpg'),
(88, 254, 'mtbike-boezinge-small_f.jpg'),
(89, 254, 'mtbike-small_f.jpg'),
(90, 254, 'trek-3500-small.1_f.jpg'),
(91, 254, 'treks2014-small_f.jpg'),
(92, 157, 'a-585.1_f.jpg'),
(93, 157, 'img_2393_f.jpg'),
(94, 157, 'klimtoren2-small_f.jpg'),
(95, 157, 'klimtoren2-small_f.png'),
(96, 157, 'muurkimmmen-small.1_f.jpg'),
(97, 157, 'muurklimmen-2-small_f.jpg'),
(98, 157, 'muurklimmen-4-small_f.jpg'),
(99, 157, 'muurklimmen-5-small_f.jpg'),
(100, 157, 'pamperpaal2-small_f.jpg'),
(101, 275, 'dsc_6053-small.1_f.jpg'),
(102, 283, 'be_sportdag29_f.jpg'),
(103, 283, 'dsc_3421_resize_f.jpg'),
(104, 283, 'dsc_3427_resize_f.jpg'),
(105, 283, 'dsc_5644.1_f.jpg'),
(106, 283, 'dsc_5894_f.jpg'),
(107, 283, 'quad-adult-small_f.jpg'),
(108, 283, 'quad-fr-4-small_f.jpg'),
(109, 283, 'quad-fr2-small_f.jpg'),
(110, 283, 'quadrijden_f.jpg'),
(111, 297, 'a-loop-3-small_f.jpg'),
(112, 297, 'a-loop-res_f.jpg'),
(113, 297, 'boogschieten-small.1_f.jpg'),
(114, 297, 'img_0011-small_f.jpg'),
(115, 297, 'img_0016-small_f.jpg'),
(116, 297, 'img_2185-small.1_f.jpg'),
(117, 297, 'lattenloop-bos_f.jpg'),
(118, 297, 'lattenrace-rez_f.jpg'),
(119, 297, 'tb-go_cart3-small_f.jpg'),
(120, 297, 'tb-strand-small.1_f.jpg'),
(121, 297, 'teamb_3_f.jpg'),
(122, 297, 'teambuilding-small_f.jpg'),
(123, 297, 'teambuilding-strand-small_f.jpg'),
(124, 314, 'vlotten-2-small_f.jpg'),
(125, 314, 'vlotten_Small.jpg'),
(126, 314, 'vlotten1-small_f.jpg'),
(127, 314, 'vlotten2-small_f.jpg'),
(128, 320, 'wake-sien-small_f.jpg'),
(129, 320, 'wake2-small_f.jpg'),
(130, 320, 'winch-website_f.jpg'),
(131, 329, 'dsc_0126_f.jpg'),
(132, 329, 'dsc_0128_f.jpg'),
(133, 329, 'dsc_0129_f.jpg'),
(134, 329, 'dsc_0131_f.jpg'),
(135, 329, 'dsc_0132_f.jpg'),
(136, 329, 'dsc_0135_f.jpg'),
(137, 329, 'dsc_0139_f.jpg'),
(138, 329, 'dsc_0142_f.jpg'),
(139, 329, 'img-20150409-wa0007_f.jpg'),
(140, 329, 'img-20150409-wa0017_f.jpg'),
(141, 329, 'img-20150409-wa0019_f.jpg'),
(142, 329, 'img-20150409-wa0021_f.jpg'),
(143, 329, 'img-20150416-wa0017_f.jpg'),
(144, 329, 'img-20150416-wa0027_f.jpg'),
(145, 462, '011bf7e520a6aa432730c023be32d495ffb84c1b19_f.jpg'),
(146, 462, 'a-564-small_f.jpg'),
(147, 462, 'a-823-small_f.jpg'),
(148, 462, 'a-878-small_f.jpg'),
(149, 462, 'death-ride-small_f.jpg'),
(150, 462, 'foto-quad-6-j_f.jpg'),
(151, 462, 'high-ropes.1_f.jpg'),
(152, 462, 'hr4kids-small_f.jpg'),
(153, 462, 'img_2823-small_f.jpg'),
(154, 462, 'kano-small_f.jpg'),
(155, 462, 'laser.1_f.jpg'),
(156, 462, 'laser2_f.jpg'),
(157, 462, 'pony06-small_f.jpg'),
(158, 462, 'quad_f.jpg'),
(159, 462, 'quad4kids_f.jpg'),
(160, 462, 'speleo-small_f.jpg'),
(161, 462, 'verjaardagsfeestje-small_f.jpg'),
(162, 462, 'vlotten-small_f.jpg'),
(163, 485, '69883_1456991586745_1292036824_31250736_3380100_n_f.jpg'),
(164, 485, 'afbeelding-paintball-small_f.jpg'),
(165, 485, 'bijlwerpen-hg-vrijgezel-small_f.jpg'),
(166, 485, 'dscn0130-small_f.jpg'),
(167, 485, 'highland-g-vrijgezellen2-small.1_f.jpg'),
(168, 485, 'highland-games-vrijgezellen-small_f.jpg'),
(169, 485, 'img_2945_f.jpg'),
(170, 485, 'kanovaren3-small_f.jpg'),
(171, 485, 'karting.1_f.jpg'),
(172, 485, 'kroegentocht-small_f.jpg'),
(173, 485, 'p1210828-small_f.jpg'),
(174, 485, 'vrijgezel-pb2-small_f.jpg'),
(175, 485, 'vrijgezellen1-small_f.jpg'),
(176, 485, 'vrijgezellen2-small.1_f.jpg'),
(177, 485, 'vrijgezellen3-small_f.jpg'),
(178, 485, 'vrijgezellen4_f.jpg'),
(179, 485, 'vrijgezellen5.1_f.jpg'),
(180, 485, 'vrijgezellen5_f.jpg'),
(181, 505, 'dsc_3765_resize_f.jpg'),
(182, 505, 'img_2866-small_f.jpg'),
(183, 505, 'img_3264_f.jpg'),
(184, 505, 'img_3278-small.1_f.jpg'),
(185, 505, 'img_3279-small.1_f.jpg'),
(186, 505, 'incentive-six8-small.1_f.jpg'),
(187, 505, 'kano-small.1_f.jpg'),
(188, 505, 'kano2-small.1_f.jpg'),
(189, 505, 'small_f.png'),
(190, 505, 'volksp_f.png'),
(191, 505, 'volksp2_f.png'),
(192, 505, 'volksporten-route-small.1_f.jpg'),
(193, 521, 'actie-en-avontuur-small_f.jpg'),
(194, 521, 'action-adventure-small_f.jpg'),
(195, 521, 'bmx32-small_f.jpg'),
(196, 521, 'death-ride-small.1_f.jpg'),
(197, 521, 'extrem-fun-mtb-small.1_f.jpg'),
(198, 521, 'high-ropes-2-small_f.jpg'),
(199, 521, 'high-ropes-4-small_f.jpg'),
(200, 521, 'hr-7-small_f.jpg'),
(201, 558, '1779975_orig.1_f.jpg'),
(202, 558, 'avonturen-small_f.jpg'),
(203, 558, 'be_sportdag93_f.jpg'),
(204, 558, 'be_sportdag96_f.jpg'),
(205, 558, 'boog-small.1_f.jpg'),
(206, 558, 'boog1-small_f.jpg'),
(207, 558, 'death-ride-kid-slinger-small_f.jpg'),
(208, 558, 'dsc_3552-small.1_f.jpg'),
(209, 558, 'dsc_3566-small_f.jpg'),
(210, 558, 'dsc_3569-small_f.jpg'),
(211, 558, 'extrem-fun-mtb-small_f.jpg'),
(212, 558, 'hr-malp-small_f.jpg'),
(213, 558, 'kicks-small_f.jpg'),
(214, 558, 'miniquad2-small_f.jpg'),
(215, 558, 'miniquad3-small_f.jpg'),
(216, 558, 'mountainbike1-small_f.jpg'),
(217, 558, 'mountainbike2-small_f.jpg'),
(218, 558, 'mountainbiken-small_f.jpg'),
(219, 558, 'muurklimmen.1_f.jpg'),
(220, 558, 'paintball-3-small_f.jpg'),
(221, 558, 'paintball1-small.1_f.jpg'),
(222, 558, 'pict5007small_f.jpg'),
(223, 558, 'quad-2-small_f.jpg'),
(224, 558, 'quad-small_f.jpg'),
(225, 558, 'quad4-small_f.jpg'),
(226, 558, 'speleo1-small_f.jpg'),
(227, 558, 'speleo2_f.jpg'),
(228, 558, 'tb2_f.jpg'),
(229, 558, 'touwenparcours-7_f.jpg'),
(230, 558, 'vlotten1_f.jpg'),
(231, 558, 'vlotten2_f.jpg'),
(232, 558, 'vlotten3_f.jpg'),
(233, 558, 'vlotten4.1_f.jpg'),
(234, 605, '10559169_533830090078310_562620110_n_f.jpg'),
(235, 605, 'aardbal-small_f.jpg'),
(236, 605, 'boog-strand-small_f.jpg'),
(237, 605, 'golfsurfen-1_f.jpg'),
(238, 605, 'raften-op-zee_f.jpg'),
(239, 605, 'raften-small_f.jpg'),
(240, 613, 'outdoor-mountainbike.jpg'),
(241, 39, 'actie-avontuur3-small_f.jpg'),
(242, 39, 'actie-hr-small_f.jpg'),
(243, 39, 'avonturen-hele-week-564-small_f.jpg'),
(244, 39, 'dsc_5682-small_f.jpg'),
(245, 39, 'indiaan2-small_f.jpg'),
(246, 39, 'indianendag-3-small-2_f.jpg'),
(247, 39, 'kano60-small_f.jpg'),
(248, 39, 'maken-indianenkledij-3-small_f.jpg'),
(249, 39, 'maken-indianenkledij-4-small_f.jpg'),
(250, 39, 'nokwisi_2_small.1_f.jpg'),
(251, 39, 'nokwisi_5_small_f.jpg'),
(252, 39, 'pony06-small.1_f.jpg'),
(253, 39, 'schminksessie-indianendag-1-small_f.jpg'),
(254, 39, 'speleo-small.1_f.jpg'),
(255, 39, 'nokwisi_2_Small.jpg'),
(256, 637, 'HIGH_ROPES.jpg'),
(257, 653, 'boer-zoekt-kids_f.jpg'),
(258, 653, 'boer-zoekt-kids3_f.jpg'),
(259, 653, 'boer-zoekt-kids6_f.jpg'),
(260, 653, 'boer-zoekt-kids7_f.jpg'),
(261, 653, 'boer-zoekt-kids8_f.jpg'),
(262, 653, 'boer-zoekt-kids9_f.jpg'),
(263, 653, 'boerderij2_f.jpg'),
(264, 664, 'bayernwald-small_f.jpg'),
(265, 664, 'dropping_f.jpg'),
(266, 664, 'dsc_4636-small.1_f.jpg'),
(267, 664, 'lijssenthoek3-small_f.jpg'),
(268, 664, 'loopgraven-bayernwald_f.jpg'),
(269, 664, 'lunch-op-terras-outside-small_f.jpg'),
(270, 664, 'menenpoort-ieper_f.jpg'),
(271, 664, 'mmp-small_f.jpg'),
(272, 664, 'pool-of-peace-small_f.jpg'),
(273, 664, 'vredesklassen-small_f.jpg'),
(274, 701, 'DSC_3263_resize.jpg'),
(275, 704, 'img_0932-small_f.jpg'),
(276, 704, 'tipi-1-small.1_f.jpg'),
(277, 704, 'vuurschaal_f.jpg'),
(278, 897, 'bumperball-1.jpg'),
(279, 897, 'bumperball2.jpg'),
(280, 897, 'bumperball1.jpg'),
(281, 61, 'be_sportdag56_f.jpg'),
(282, 61, 'boog-fr-2-small_f.jpg'),
(283, 61, 'boogschietstand_small_f.jpg'),
(284, 61, 'boog-small_f.jpg'),
(285, 61, 'boog-strand-small.1_f.jpg'),
(286, 61, 'dsc_3548-small_f.jpg'),
(287, 61, 'dsc_3552-small_f.jpg'),
(288, 61, 'dsc_3794-small_f.jpg'),
(289, 61, 'dsc_4419_resize_f.jpg'),
(290, 61, 'img_2948-small_f.jpg'),
(291, 61, 'kruisboog_f.jpg'),
(292, 61, 'vrijgezellen3-small.1_f.jpg'),
(293, 210, 'paintball_2.jpg'),
(294, 133, 'quad_adult_Small.jpg'),
(295, 204, 'kano_1.jpg'),
(296, 348, 'archery-tag3.jpg'),
(298, 640, 'tb-kid2.jpg'),
(299, 222, 'tipi_1_Small.jpg'),
(300, 448, 'bbq-small_f.jpg'),
(301, 448, 'foto-sanitair-small_f.jpg'),
(302, 448, 'img_0672-small_f.jpg'),
(303, 448, 'img_2748-small_f.jpg'),
(304, 448, 'img_2749-small_f.jpg'),
(305, 448, 'img_2789-small_f.jpg'),
(306, 448, 'img_2810-small_f.jpg'),
(307, 448, 'img_2826-small_f.jpg'),
(308, 448, 'img_2830-small_f.jpg'),
(309, 448, 'img_2831-small_f.jpg'),
(310, 448, 'img_3278-small_f.jpg'),
(311, 448, 'img_3279-small_f.jpg'),
(312, 126, 'img_2907-small-300x225.jpg'),
(313, 126, 'img_2908.jpg'),
(314, 207, '120-1024x768.jpg'),
(315, 412, 'imgp0370-large_f.jpg'),
(316, 412, 'imgp0372-large_f.jpg'),
(317, 412, 'imgp0374-large_f.jpg'),
(318, 130, 'gpsadventure.jpg'),
(319, 374, 'gpscity.png'),
(320, 647, 'commandobunker_kemmel.jpg'),
(321, 647, 'GWPbos.jpg'),
(322, 647, 'touwenparcours_kid1_Small.jpg'),
(323, 116, 'dsc_5382-small_f.jpg'),
(324, 116, 'hr-malpie1.1_f.jpg'),
(325, 116, 'hr-malpie2.1_f.jpg'),
(326, 417, 'bbq-small.1_f.jpg'),
(327, 417, 'beach3-small_f.jpg'),
(328, 417, 'bier.-en-wijnroute_f.jpg'),
(329, 417, 'boogschieten-small_f.jpg'),
(330, 417, 'culinaire-route-small_f.jpg'),
(331, 417, 'dr-small_f.jpg'),
(332, 417, 'dsc_6053-small.2_f.jpg'),
(333, 417, 'highland-games3-op-locatie-small_f.jpg'),
(334, 417, 'high-ropes2-small_f.jpg'),
(335, 417, 'horeca-poperinge-2-small_f.jpg'),
(336, 417, 'img_2185-small_f.jpg'),
(337, 417, 'img_2814-small_f.jpg'),
(338, 417, 'incentive-six6-small_f.jpg'),
(339, 417, 'incentive-six8-small_f.jpg'),
(340, 417, 'jachtwandeling_f.jpg'),
(341, 417, 'kano2-small_f.jpg'),
(342, 417, 'mountainbike_f.jpg'),
(343, 417, 'muzikale-fietstocht-small_f.jpg'),
(344, 417, 'quad-adult-small.1_f.jpg'),
(345, 417, 'teambuilding-eilandje-small_f.jpg'),
(346, 417, 'urban-golf-small_f.jpg'),
(347, 417, 'vlotten-2-small.1_f.jpg'),
(348, 417, 'volksporten-route-small_f.jpg'),
(349, 417, 'wake2-small.1_f.jpg'),
(350, 329, 'Laser1.jpg'),
(351, 329, 'Laser2.jpg'),
(352, 329, 'Laser3.jpg'),
(353, 329, 'Laser4.jpg'),
(354, 329, 'Laser5.jpg'),
(355, 329, 'Laser6.jpg'),
(356, 329, 'Laser7.jpg'),
(357, 329, 'Laser8.jpg'),
(358, 329, 'Laser9.jpg'),
(359, 329, 'Laser10.jpg'),
(360, 329, 'Laser11.jpg'),
(361, 329, 'Laser12.jpg'),
(362, 407, 'outdooraanzee.jpg'),
(363, 190, 'HR8.jpg'),
(364, 275, 'paintball_1.jpg'),
(365, 275, 'paintball_2_Small1-300x201.jpg'),
(366, 275, 'paintball1_l.jpg'),
(367, 405, 'rafting.jpg'),
(375, 137, 'karting2-1024x683.jpg'),
(376, 228, 'img_2866-small-300x225.jpg'),
(377, 701, '208.jpg'),
(378, 701, '209.jpg'),
(379, 701, '210.jpg'),
(380, 701, '212.jpg'),
(381, 701, '213.jpg'),
(382, 701, '218.jpg'),
(383, 701, '219.jpg'),
(384, 701, '221.jpg'),
(385, 701, '224.jpg'),
(386, 701, '225.jpg'),
(387, 701, '226.jpg'),
(388, 701, '227.jpg'),
(389, 701, '228.jpg'),
(390, 701, '229.jpg'),
(391, 701, '230.jpg'),
(392, 701, '231.jpg'),
(393, 701, '232.jpg'),
(394, 701, '692.jpg'),
(395, 701, '983.jpg'),
(396, 701, '985.jpg'),
(397, 701, '986.jpg'),
(398, 701, '988.jpg'),
(399, 701, '989.jpg'),
(400, 701, '990.jpg'),
(401, 701, '991.jpg'),
(402, 701, '992.jpg'),
(403, 701, '993.jpg'),
(404, 701, '994.jpg'),
(405, 698, '193.jpg'),
(406, 698, '194.jpg'),
(407, 698, '195.jpg'),
(408, 698, '196.jpg'),
(409, 698, '197.jpg'),
(410, 698, '198.jpg'),
(411, 698, '199.jpg'),
(412, 698, '200.jpg'),
(413, 698, '201.jpg'),
(414, 698, '203.jpg'),
(415, 698, '204.jpg'),
(416, 698, '205.jpg'),
(417, 698, '206.jpg'),
(418, 698, '1046.gif'),
(419, 698, '2016-07-06 16.10.30.jpg'),
(420, 698, '2016-07-06 16.10.37.jpg'),
(421, 698, '2016-07-06 16.11.12-1.jpg'),
(422, 698, '2016-07-06 16.11.19.jpg'),
(423, 698, '2016-07-06 16.11.47-1.jpg'),
(424, 698, '2016-07-06 16.12.00.jpg'),
(425, 698, '2016-07-06 16.12.23-1.jpg'),
(426, 698, '2016-07-06 16.22.39.jpg'),
(427, 698, '2016-07-06 16.23.25.jpg'),
(428, 698, '2016-07-06 16.25.00-1.jpg'),
(429, 704, '2016-07-06 15.24.58.jpg'),
(430, 701, '2016-07-06 15.46.33.jpg'),
(431, 701, '2016-07-06 15.46.50.jpg'),
(432, 701, '2016-07-06 15.46.55.jpg'),
(433, 701, '2016-07-06 15.47.13.jpg'),
(434, 693, '144.jpg'),
(435, 693, '174.jpg'),
(436, 693, '175.jpg'),
(437, 693, '176.jpg'),
(438, 693, '177.jpg'),
(439, 693, '180.jpg'),
(440, 693, '181.jpg'),
(441, 693, '182.jpg'),
(442, 693, '183.jpg'),
(443, 693, '184.jpg'),
(444, 693, '185.jpg'),
(445, 693, '186.jpg'),
(446, 693, '187.jpg'),
(447, 693, '188.jpg'),
(448, 693, '189.jpg'),
(449, 693, '190.jpg'),
(450, 693, '191.jpg'),
(451, 693, '192.jpg'),
(452, 693, '1045.gif'),
(453, 693, '2016-07-06 16.01.21.jpg'),
(454, 693, '2016-07-06 16.01.54.jpg'),
(455, 693, '2016-07-06 16.02.07.jpg'),
(456, 693, '2016-07-06 16.02.10.jpg'),
(457, 693, '2016-07-06 16.02.42.jpg'),
(458, 693, '2016-07-06 16.02.58.jpg'),
(459, 693, '2016-07-06 16.03.00.jpg'),
(460, 693, '2016-07-06 16.04.00.jpg'),
(461, 693, '2016-07-06 16.04.38.jpg'),
(462, 693, '2016-07-06 16.04.48.jpg'),
(463, 693, '2016-07-06 16.05.37.jpg'),
(464, 693, '2016-07-06 16.06.38.jpg'),
(465, 698, '2016-07-06 16.10.01.jpg'),
(466, 698, '2016-07-06 16.10.12.jpg'),
(467, 243, 'img_2882-small-300x225.jpg'),
(468, 898, 'jenever_medium.jpg'),
(469, 898, 'karabijn_medium.jpg'),
(470, 898, 'kruisboog.1.jpg'),
(471, 704, 'tipi_verlicht.jpg\r\n');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `inhoud`
--

CREATE TABLE IF NOT EXISTS `inhoud` (
`id` int(11) NOT NULL,
  `categorieId` int(11) NOT NULL,
  `prijsklasseId` int(11) DEFAULT NULL,
  `forfait` int(11) NOT NULL DEFAULT '0',
  `minAantal` int(11) NOT NULL,
  `leeftijd` varchar(255) NOT NULL,
  `afbeelding` varchar(255) NOT NULL,
  `afbeelding_header` varchar(255) NOT NULL DEFAULT '',
  `actief` tinyint(1) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=899 ;

--
-- Gegevens worden geëxporteerd voor tabel `inhoud`
--

INSERT INTO `inhoud` (`id`, `categorieId`, `prijsklasseId`, `forfait`, `minAantal`, `leeftijd`, `afbeelding`, `afbeelding_header`, `actief`) VALUES
(39, 3, 5, 0, 20, '', 'indiaan2-small_m', 'indiaan', 1),
(61, 1, 1, 150, 15, '', 'boog-strand-small_f', 'boogschieten', 1),
(89, 1, 1, 300, 15, '', 'dropping2-small_m', 'heuvelland', 1),
(94, 1, 3, 525, 15, '', 'achtergrond_m', 'hoppe', 1),
(103, 1, 3, 600, 15, '', 'naamloos.2_m', 'quad_header', 1),
(116, 1, 1, 225, 15, '', 'high-ropes_m', 'touwenparcours', 1),
(124, 1, 1, 225, 15, '', 'champagne_m', 'champagne', 1),
(126, 1, 5, 0, 15, '', 'culinaire-route-small.1_m', 'culinaire_route', 1),
(130, 1, 3, 525, 15, '', 'gps-adventure_m', 'gps_adventure', 1),
(133, 1, 3, 525, 15, '', 'adventure-mix-small_m', 'quad_header', 1),
(137, 1, 3, 525, 15, '', 'karting_m', 'karting', 1),
(140, 1, 3, 525, 15, '', 'highland-easy-leisure-small_m', 'boomstam_zagen', 1),
(157, 1, 1, 150, 15, '', 'klimtoren2-small_m', 'muurklimmen_header', 1),
(169, 1, 1, 225, 15, '', 'nieuw-high-ropes-parcours2_m', 'quad_header', 1),
(190, 1, 4, 500, 10, '', 'mountainbiken_m', 'mountainbiken', 1),
(194, 1, 1, 0, 15, '', 'kano-1-small.1_m', 'kano_header', 1),
(204, 1, 4, 500, 10, '', 'kano3-small_m', 'kano_header', 1),
(207, 1, 3, 525, 15, '', 'jacht_m', 'boogschieten', 1),
(210, 1, 4, 450, 10, '', 'paintball465_m', 'paintball_header', 1),
(213, 1, 5, 0, 50, '', 'middeleeuws-evenement_m', 'kasteel_header', 1),
(216, 1, 4, 900, 20, '', 'muzikale-fietstocht-small.1_m', 'muzikale_fietstocht', 1),
(222, 1, 5, 0, 20, '', 'tipi-1-small_m', 'tipi', 1),
(225, 1, 2, 500, 20, '', 'dsc_4447_m', 'heuvelland', 1),
(228, 1, 2, 375, 15, '', 'urban-golf5_m', 'stadsspel', 1),
(232, 1, 1, 0, 10, '', 'dsc_0136_m', 'urban_golf_header', 1),
(243, 1, 3, 525, 15, '', 'img_2882-small_m', 'vlaamse-velden', 1),
(246, 1, 3, 525, 15, '', 'hamertjesspel_m', 'boltra', 1),
(254, 1, 1, 0, 15, '', 'mountainbiken.1_m', 'mountainbiken', 1),
(275, 1, 2, 250, 10, '', 'paintball.1_m', 'paintball', 1),
(283, 1, 1, 270, 6, '', 'quad-adult-small_m', 'DSC_1800', 1),
(297, 1, 1, 225, 15, '', 'teambuilding-go-cart1_m', 'teambuilding', 1),
(314, 1, 1, 225, 15, '', 'vlotten2-small_m', 'vlotten', 1),
(320, 1, 1, 0, 10, '', 'wake-sien-small_m', 'DSC_1506', 1),
(329, 1, 2, 200, 10, '', 'dsc_0132_m', 'DSC_0135', 1),
(348, 1, 1, 225, 15, '', 'archery-tag_m1', 'archery-tag', 1),
(374, 1, 3, 700, 20, '', 'city-city-small_m', 'vlotten', 1),
(405, 1, 2, 375, 15, '', 'dsc_7452-small_m', 'rafting_header', 1),
(407, 1, 1, 0, 15, '', 'tb-strand_m', 'outdoor-aan-zee', 1),
(410, 1, 3, 525, 15, '', 'gps-city-small_m', 'go-cart', 1),
(412, 1, 5, 0, 0, '', 'imgp0374-large_m', 'death-ride', 1),
(417, 2, 3, 525, 15, '', 'muzikale-fietstocht-small_m', 'muzikale_fietstocht', 1),
(448, 2, 2, 0, 0, '', 'img_2748-small_m', 'DSC_1496', 1),
(462, 2, 2, 0, 10, '6-16', 'foto-quad-6-j_m', 'feestjes-kids', 1),
(485, 2, 2, 0, 10, '', 'dscn0130-small_m', 'DSC_1822', 1),
(505, 2, 5, 0, 0, '', 'dsc_3765_resize_m', 'meerdaagse', 1),
(521, 3, 1, 0, 20, '', 'quad-5_m', 'high-ropes', 1),
(558, 3, 1, 0, 20, '', 'touwenparcours-7_m', 'boogschieten', 1),
(605, 3, 1, 0, 40, '10', 'raften-op-zee_m', 'rafting_header', 1),
(613, 3, 1, 0, 20, '10-16', 'laser-medium_m', 'mountainbiken', 1),
(637, 3, 4, 0, 20, '', 'avonturen-4_m', 'highropes', 1),
(640, 3, 5, 0, 20, '', 'bmx-4_m', 'bmx', 1),
(644, 3, 5, 0, 20, '', 'paintball1-small_m', 'paintball', 1),
(647, 3, 1, 0, 20, '', 'dsc_4636-small_m', 'bunker', 1),
(653, 3, 4, 0, 20, '', 'boerderij2_m', 'boerderij', 1),
(664, 3, 4, 0, 20, '', 'menenpoort-ieper_m', 'vredesklassen', 1),
(679, 3, 5, 0, 0, '', 'ski-small_m', 'ski-small_m', 1),
(693, 4, 5, 0, 20, '', 'dsc_3528_resize_m', 'outside', 1),
(698, 4, 5, 0, 20, '', 'malperthuis-voorkant-small_m', 'malperthuis', 1),
(701, 4, 2, 0, 15, '', 'boerderij_m', 'vakantiehoeve', 1),
(704, 4, 1, 0, 15, '', 'tipi-1-small.1_m', 'tipi', 1),
(897, 1, 3, 300, 10, '', 'bumperball-2', 'DSC_1814', 1),
(898, 1, 3, 0, 10, '', 'jenever_medium', 'boogschieten', 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `inhoud_activiteit_categorie`
--

CREATE TABLE IF NOT EXISTS `inhoud_activiteit_categorie` (
`id` int(11) NOT NULL,
  `activiteitId` int(11) NOT NULL,
  `typeId` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=48 ;

--
-- Gegevens worden geëxporteerd voor tabel `inhoud_activiteit_categorie`
--

INSERT INTO `inhoud_activiteit_categorie` (`id`, `activiteitId`, `typeId`) VALUES
(1, 169, 4),
(2, 116, 4),
(3, 254, 4),
(4, 283, 4),
(5, 275, 4),
(6, 320, 4),
(8, 61, 4),
(9, 157, 4),
(10, 412, 4),
(11, 314, 4),
(12, 133, 3),
(13, 103, 3),
(14, 190, 3),
(15, 137, 3),
(16, 222, 3),
(17, 210, 3),
(18, 204, 3),
(19, 94, 2),
(20, 124, 2),
(21, 126, 2),
(22, 130, 2),
(23, 140, 2),
(24, 207, 2),
(25, 213, 2),
(26, 216, 2),
(27, 225, 2),
(28, 228, 2),
(29, 232, 2),
(30, 243, 2),
(31, 246, 2),
(32, 61, 1),
(33, 89, 1),
(34, 116, 1),
(35, 169, 1),
(36, 194, 1),
(37, 254, 1),
(39, 275, 1),
(40, 283, 1),
(41, 297, 1),
(42, 314, 1),
(43, 329, 1),
(44, 348, 1),
(45, 897, 1),
(46, 898, 2),
(47, 898, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `inhoud_activiteit_categorie_type`
--

CREATE TABLE IF NOT EXISTS `inhoud_activiteit_categorie_type` (
`id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Gegevens worden geëxporteerd voor tabel `inhoud_activiteit_categorie_type`
--

INSERT INTO `inhoud_activiteit_categorie_type` (`id`, `type`) VALUES
(1, 'outdoor-adventure'),
(2, 'easy-leisure'),
(3, 'outdoor-pakket'),
(4, 'jeugdgroep');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `inhoud_activiteit_categorie_type_taal`
--

CREATE TABLE IF NOT EXISTS `inhoud_activiteit_categorie_type_taal` (
  `typeId` int(11) NOT NULL,
  `naam` varchar(255) NOT NULL,
  `inhoud` text NOT NULL,
  `taal` enum('NL','FR','ENG','') NOT NULL DEFAULT 'NL'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `inhoud_activiteit_categorie_type_taal`
--

INSERT INTO `inhoud_activiteit_categorie_type_taal` (`typeId`, `naam`, `inhoud`, `taal`) VALUES
(3, 'Outdoor Pakketten', '<p>Tekst pakketten</p>', 'NL'),
(3, 'Outdoor Pakketten Frans', '<p>paketten frans</p>', 'FR'),
(4, 'Jeugddiensten, sportclubs, verenigingen & jeugdgroepen -18 jaar ', '<p>Ons Outdoorcentrum gelegen op de top van de Rodeberg en het Adventure Park in Poperinge zijn dé toplocaties voor avontuurlijke sportdagen.We bieden er een zeer ruim pakket van avontuurlijke sporten aan. Alle jeugddiensten, sportdiensten, jeugdgroepen & -verenigingen (-18 jaar) kunnen er terecht voor een spectaculaire outdoorsportdag aan een zeer scherpe prijs.U kan zelf kiezen welke sporten u in het programma wenst op te nemen. Al deze sporten worden begeleid door monitoren van Outside en ook de volledige organisatie wordt door Outside verzorgd.</p>', 'NL'),
(4, 'Jeugddiensten FRANS', '<p>Ons Outdoorcentrum gelegen op de top van de Rodeberg en het Adventure Park in Poperinge zijn dé toplocaties voor avontuurlijke sportdagen.We bieden er een zeer ruim pakket van avontuurlijke sporten aan. Alle jeugddiensten, sportdiensten, jeugdgroepen & -verenigingen (-18 jaar) kunnen er terecht voor een spectaculaire outdoorsportdag aan een zeer scherpe prijs.U kan zelf kiezen welke sporten u in het programma wenst op te nemen. Al deze sporten worden begeleid door monitoren van Outside en ook de volledige organisatie wordt door Outside verzorgd.</p>', 'FR');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `inhoud_activiteit_duur`
--

CREATE TABLE IF NOT EXISTS `inhoud_activiteit_duur` (
`id` int(11) NOT NULL,
  `activiteitId` int(11) NOT NULL,
  `duurId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `inhoud_activiteit_duur_type`
--

CREATE TABLE IF NOT EXISTS `inhoud_activiteit_duur_type` (
`id` int(11) NOT NULL,
  `duur` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Gegevens worden geëxporteerd voor tabel `inhoud_activiteit_duur_type`
--

INSERT INTO `inhoud_activiteit_duur_type` (`id`, `duur`) VALUES
(1, 'Enkele uren'),
(2, 'Halve dag'),
(3, 'Volledige dag'),
(4, 'Meerdere dagen');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `inhoud_activiteit_locatie`
--

CREATE TABLE IF NOT EXISTS `inhoud_activiteit_locatie` (
`id` int(11) NOT NULL,
  `activiteitId` int(11) NOT NULL,
  `locatieId` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=41 ;

--
-- Gegevens worden geëxporteerd voor tabel `inhoud_activiteit_locatie`
--

INSERT INTO `inhoud_activiteit_locatie` (`id`, `activiteitId`, `locatieId`) VALUES
(1, 374, 2),
(2, 405, 2),
(3, 407, 2),
(4, 410, 2),
(5, 412, 2),
(6, 232, 2),
(7, 140, 2),
(8, 61, 1),
(9, 89, 1),
(10, 94, 1),
(11, 103, 1),
(12, 124, 1),
(13, 116, 1),
(14, 348, 1),
(15, 329, 1),
(16, 320, 1),
(17, 314, 1),
(18, 297, 1),
(19, 283, 1),
(20, 275, 1),
(21, 254, 1),
(22, 246, 1),
(23, 243, 1),
(24, 232, 1),
(25, 228, 1),
(26, 225, 1),
(27, 222, 1),
(28, 213, 1),
(29, 210, 1),
(30, 207, 1),
(31, 204, 1),
(32, 194, 1),
(33, 190, 1),
(34, 169, 1),
(35, 157, 1),
(36, 140, 1),
(37, 137, 1),
(38, 133, 1),
(39, 130, 1),
(40, 126, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `inhoud_activiteit_locatie_type`
--

CREATE TABLE IF NOT EXISTS `inhoud_activiteit_locatie_type` (
`id` int(11) NOT NULL,
  `naam_nl` varchar(255) NOT NULL,
  `naam_fr` varchar(255) NOT NULL,
  `naam_en` varchar(255) NOT NULL,
  `weergegeven` tinyint(1) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Gegevens worden geëxporteerd voor tabel `inhoud_activiteit_locatie_type`
--

INSERT INTO `inhoud_activiteit_locatie_type` (`id`, `naam_nl`, `naam_fr`, `naam_en`, `weergegeven`) VALUES
(1, 'Heuvelland - Westhoek', '', '', 1),
(2, 'Vlaanderen & De Kust', '', '', 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `inhoud_activiteit_prijsklasse_type`
--

CREATE TABLE IF NOT EXISTS `inhoud_activiteit_prijsklasse_type` (
`id` int(11) NOT NULL,
  `prijsklasse` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Gegevens worden geëxporteerd voor tabel `inhoud_activiteit_prijsklasse_type`
--

INSERT INTO `inhoud_activiteit_prijsklasse_type` (`id`, `prijsklasse`) VALUES
(1, '€10 - €20'),
(2, '€21 - €30'),
(3, '€31 - €40'),
(4, '€41 - €60'),
(5, '€60+');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `inhoud_categorie_type`
--

CREATE TABLE IF NOT EXISTS `inhoud_categorie_type` (
`id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Gegevens worden geëxporteerd voor tabel `inhoud_categorie_type`
--

INSERT INTO `inhoud_categorie_type` (`id`, `type`) VALUES
(1, 'activiteit'),
(2, 'feest'),
(3, 'sportdag'),
(4, 'vakantiehuis');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `inhoud_categorie_type_taal`
--

CREATE TABLE IF NOT EXISTS `inhoud_categorie_type_taal` (
  `typeId` int(11) NOT NULL,
  `naam` varchar(255) NOT NULL,
  `inhoud` text NOT NULL,
  `url` varchar(255) NOT NULL,
  `taal` enum('NL','FR','ENG','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `inhoud_categorie_type_taal`
--

INSERT INTO `inhoud_categorie_type_taal` (`typeId`, `naam`, `inhoud`, `url`, `taal`) VALUES
(1, 'Outdoor Activiteiten', 'Tekst Outdoor Activiteiten', 'activiteit', 'NL'),
(2, 'Feesten', 'Tekst feesten', 'feesten', 'NL'),
(3, 'Scholen en sportdagen', 'Tekst scholen sportdagen', 'sportdag', 'NL'),
(4, 'Vakantiehuizen', 'Tekst Vakantiehuizen', 'vakantiehuis', 'NL');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `inhoud_prijs`
--

CREATE TABLE IF NOT EXISTS `inhoud_prijs` (
`id` int(11) NOT NULL,
  `activiteitId` int(11) NOT NULL,
  `catering` tinyint(1) NOT NULL,
  `typeId` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=140 ;

--
-- Gegevens worden geëxporteerd voor tabel `inhoud_prijs`
--

INSERT INTO `inhoud_prijs` (`id`, `activiteitId`, `catering`, `typeId`) VALUES
(2, 39, 0, 1),
(4, 61, 0, 1),
(5, 89, 0, 1),
(6, 94, 0, 1),
(8, 94, 1, 2),
(9, 124, 0, 1),
(10, 126, 0, 1),
(11, 130, 0, 1),
(12, 133, 0, 1),
(14, 137, 0, 1),
(15, 137, 0, 2),
(16, 140, 0, 1),
(17, 140, 0, 2),
(18, 157, 0, 1),
(19, 157, 0, 2),
(22, 169, 0, 1),
(23, 169, 0, 2),
(24, 190, 0, 1),
(25, 190, 1, 2),
(26, 194, 0, 1),
(27, 194, 0, 1),
(28, 204, 0, 1),
(29, 207, 0, 1),
(30, 207, 0, 2),
(31, 210, 0, 1),
(32, 210, 0, 2),
(33, 213, 0, 1),
(34, 216, 0, 1),
(37, 216, 0, 1),
(38, 222, 0, 1),
(39, 222, 0, 1),
(42, 225, 0, 1),
(43, 225, 0, 2),
(44, 228, 0, 1),
(45, 228, 0, 2),
(46, 232, 0, 1),
(49, 243, 0, 1),
(50, 246, 0, 1),
(52, 254, 0, 1),
(54, 275, 0, 1),
(55, 275, 0, 1),
(57, 283, 0, 1),
(58, 283, 0, 1),
(59, 283, 0, 2),
(60, 297, 0, 1),
(61, 297, 0, 2),
(62, 314, 0, 1),
(63, 320, 0, 1),
(66, 329, 0, 1),
(67, 329, 0, 1),
(69, 348, 0, 1),
(70, 374, 0, 1),
(71, 374, 1, 2),
(72, 405, 0, 1),
(73, 407, 0, 1),
(74, 407, 1, 2),
(78, 410, 0, 1),
(79, 412, 0, 1),
(80, 448, 0, 1),
(81, 448, 0, 1),
(82, 521, 0, 1),
(84, 521, 0, 2),
(86, 558, 0, 1),
(88, 558, 0, 2),
(91, 605, 0, 1),
(92, 613, 0, 1),
(93, 613, 0, 2),
(95, 613, 0, 2),
(96, 637, 0, 1),
(97, 637, 0, 2),
(99, 640, 0, 1),
(100, 640, 0, 2),
(103, 644, 0, 1),
(105, 647, 0, 1),
(108, 653, 0, 1),
(110, 664, 0, 1),
(111, 679, 0, 1),
(112, 693, 0, 1),
(113, 698, 0, 1),
(114, 701, 0, 1),
(115, 701, 0, 1),
(116, 704, 0, 1),
(117, 897, 0, 1),
(119, 897, 0, 1),
(120, 897, 0, 2),
(121, 417, 0, 1),
(124, 462, 0, 1),
(125, 462, 0, 1),
(126, 462, 0, 1),
(127, 485, 0, 1),
(128, 103, 0, 1),
(130, 194, 0, 1),
(132, 116, 0, 1),
(133, 254, 0, 2),
(134, 412, 0, 2),
(135, 39, 0, 1),
(136, 505, 0, 1),
(138, 485, 0, 2),
(139, 898, 0, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `inhoud_prijs_taal`
--

CREATE TABLE IF NOT EXISTS `inhoud_prijs_taal` (
  `prijsId` int(11) NOT NULL,
  `titel` varchar(255) NOT NULL,
  `prijs` varchar(255) NOT NULL,
  `extra` varchar(255) NOT NULL,
  `taal` enum('NL','FR','ENG','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `inhoud_prijs_taal`
--

INSERT INTO `inhoud_prijs_taal` (`prijsId`, `titel`, `prijs`, `extra`, `taal`) VALUES
(2, 'Prijs per persoon:', '€10: Halve dag</br>€15: Volledige dag', 'All-in', 'NL'),
(4, 'Prijs per persoon:', '€10', '', 'NL'),
(5, 'Prijs per persoon:', '€20', '', 'NL'),
(6, 'Prijs per persoon:', '€40: Volwassenen </br>€20: Kinderen tot 12 jaar', 'Halve dag', 'NL'),
(8, 'Supplement:', '+€35: Aperitief & hapjes + uitgebreide maaltijd + koffie', '', 'NL'),
(9, 'Prijs per persoon:', '€15', '', 'NL'),
(10, 'Richtprijs:', '€95 per persoon', '', 'NL'),
(11, 'Prijs per persoon:', '€35', '', 'NL'),
(12, 'Prijs per persoon:', '€35: Volwassenen</br>€25: Kinderen tot 12 jaar', '', 'NL'),
(14, 'Prijs per persoon:', '€35 per persoon', '', 'NL'),
(15, 'Supplement:', '+€15 pp: Mini GP', '', 'NL'),
(16, 'Prijs per persoon:', '€35', '', 'NL'),
(17, 'Supplement:', '+€15 pp: Hapjes & whiskeydegustaties', '', 'NL'),
(18, 'Prijs per persoon:', '€10', '', 'NL'),
(19, 'Supplement per persoon:', '+€10: High ropes</br>+€5: Death ride</br>+€5: Pamperpaal', '', 'NL'),
(22, 'Prijs per persoon:', '€15', '', 'NL'),
(23, 'Supplement:', '+€5 pp: Pamperpaal', '', 'NL'),
(24, 'Prijs per persoon:', '€50', '', 'NL'),
(25, 'Supplement:', '+€20 pp: BBQ', '', 'NL'),
(26, 'Prijs zonder monitor:', '€15 pp: Halve dag</br>€20 pp: Volledige dag', '', 'NL'),
(27, 'Prijs met monitor:', '€20 pp: Halve dag</br>€25 pp: Volledige dag', '', 'NL'),
(28, 'Prijs per persoon:', '€50', '', 'NL'),
(29, 'Prijs per persoon:', '€35 per persoon', '', 'NL'),
(30, 'Supplement:', '+ apero & diner: €70 per persoon', '', 'NL'),
(31, 'Prijs per persoon:', '€45', '', 'NL'),
(32, 'Supplement:', 'Vanaf €20 pp: BBQ', '', 'NL'),
(33, 'Prijs per groep:', 'Vanaf €3000', '', 'NL'),
(34, 'Prijs per persoon:', '€45: met 1 muzikant</br>€50: met 2 muzikanten', '', 'NL'),
(37, 'Prijs per persoon:', '€45: Met authentieke Zwitserse Postbus</br> +€625: Huur bus', '', 'NL'),
(38, 'Prijs scholen & jeugdgroepen -18 jaar:', ' €75 pp (2-daagse)</br>€100 pp (3-daagse)', '', 'NL'),
(39, 'Prijs Volwassenen:', '€100 pp (2-daagse)</br>€125 pp (3-daagse)', '', 'NL'),
(42, 'Prijs per persoon:', '€25 (inclusief drank)', '', 'NL'),
(43, 'Supplement per persoon:', '+€35: Aperitief, hapjes en afsluitende maaltijd', '', 'NL'),
(44, 'Prijs per persoon:', '€25 (met 2 praktische proeven)', '', 'NL'),
(45, 'Supplement:', '+€5 pp per extra praktische proef', '', 'NL'),
(46, 'Prijs per persoon:', '€18: Just Play</br>€28: Play & Taste</br>€40: Play & Dine', '', 'NL'),
(49, 'Prijs per persoon:', '€35', '', 'NL'),
(50, 'Prijs per persoon:', '€20: Kinderen tot 12 jaar</br>€35: Volwassenen', '', 'NL'),
(52, 'Prijs pp zonder monitor:', '€20: Halve dag</br>€25: Volledige dag', '', 'NL'),
(54, 'Prijs per persoon:', '€25', '', 'NL'),
(55, 'Prijs scholen, jeugdgroepen & studenten:', '€19.5: in de week</br>€22.5: in het weekend/vakantie', '', 'NL'),
(57, 'Prijs per persoon:', '€45', '', 'NL'),
(58, 'Groepsformule:', '€20 pp (minimum 15 deelnemers) ', '', 'NL'),
(59, 'Supplement:', '+€1 pp: Persoonlijke verzekering', '', 'NL'),
(60, 'Prijs per persoon:', '€15', '', 'NL'),
(61, 'Supplement per persoon:', '+€5: Boogschieten</br>(half uur)', '', 'NL'),
(62, 'Prijs per persoon:', '€15', '', 'NL'),
(63, 'Prijs groep:', '€175: (1 uur, max 10 pers)</br>€245: (1.5 uur, max 15 pers)</br>€310: (2 uur, max 20 pers)', '', 'NL'),
(66, 'Prijs per persoon:', '€20', '', 'NL'),
(67, 'Prijs scholen, jeugdgroepen & studenten:', ' €15: In de week</br>€17.5: In het weekend/vakantie', '', 'NL'),
(69, 'Prijs per persoon:', '€15', '', 'NL'),
(70, 'Prijs per persoon:', '€35', '', 'NL'),
(71, 'Supplement per persoon:', '+€25: Aansluitende maaltijd of BBQ', '', 'NL'),
(72, 'Prijs per persoon:', '€25', '', 'NL'),
(73, 'Prijs per persoon:', '€20: Beachsporten</br>€20: Teambuilding</br>€25: Rafting</br>€25: Mountainbike</br>€35: Go-cart', '', 'NL'),
(74, 'Supplement:', 'Vanaf €20 pp: BBQ', '', 'NL'),
(78, 'Prijs per persoon:', '€35', '', 'NL'),
(79, 'Richtprijs:', 'Installatie en materiaal: vanaf 450€</br>Min. 2 begeleiders aan €30 per uur', '', 'NL'),
(80, 'Prijs per persoon:', 'Afhankelijk van de activiteiten en het aantal personen.', '', 'NL'),
(81, 'Huur locatie:', '€295', '', 'NL'),
(82, 'Prijs per leerling:', '€10: Halve dag</br>€15: Volledige dag', '', 'NL'),
(84, 'Supplement per leerling:', '+€3.5: quad/wakeboard</br>+€5: paintball/lasershooting', '', 'NL'),
(86, 'Prijs per leerling:', '€10: Halve dag</br>€15: Volledige dag', '', 'NL'),
(88, 'Supplement per leerling:', '+€3.5: Quad</br>+€5 Paintball/lasershooting</br>+€5 Weekend/vakantie', '', 'NL'),
(91, 'Prijs per persoon:', '€20 (begeleiders gratis)', '', 'NL'),
(92, 'Prijs per persoon:', '€15', '', 'NL'),
(93, 'Supplement per leerling:', '+€3.5: Quad</br>+€5: Lasershooting', '', 'NL'),
(95, 'Verplaatsingskosten:', '€0.7 per km (heen en terug vanuit Poperinge)', '', 'NL'),
(96, 'Prijs per leerling:', '€60', '', 'NL'),
(97, 'Supplement per leerling:', '+€3.5: Quad/wakeboarden</br>+€5: Paintball/lasershooting', '', 'NL'),
(99, 'Prijs per leerling:', '€100: Lagere scholen</br>€105: Middelbare scholen', '', 'NL'),
(100, 'Supplement per leerling:', '+€3.5: Quad/wakeboarden</br>+€5: Paintball/lasershooting', '', 'NL'),
(103, 'Prijs per leerling:', '€165: Lagere scholen</br>€175: Middelbare scholen', '', 'NL'),
(105, 'Prijs per leerling:', '€95: Lagere scholen</br>€100 Middelbare scholen', '', 'NL'),
(108, 'Prijs per leerling:', '€60: 2 dagen</br>€100: 3 dagen', '', 'NL'),
(110, 'Prijs per persoon:', 'Vanaf €60: 2-daagse', '', 'NL'),
(111, 'Prijs per persoon:', 'Op aanvraag', '', 'NL'),
(112, 'Prijs per persoon:', 'Zie onderstaande tabel', '', 'NL'),
(113, 'Prijs per persoon:', 'Zie onderstaande tabel', '', 'NL'),
(114, 'Huurprijs per dag:', '€295', '', 'NL'),
(115, 'Prijs overnachten:', '€25 pp per nacht', '', 'NL'),
(116, 'Prijs per persoon:', '€20 per nacht', '', 'NL'),
(117, 'Prijs per persoon:', '€25:  (min 15 personen)</br>€30: (min 10 personen)', '', 'NL'),
(119, 'Huren zonder monitor:', '€25 per stuk', '', 'NL'),
(120, 'Verplaatsingskost bij levering:', '€0.7 per km', '', 'NL'),
(121, 'Prijs per persoon:', '€25: Kinderen tot 12 jaar</br>€35: Volwassenen', '', 'NL'),
(124, 'Prijs per persoon:', '€20 (1,5 uur activiteit + drankje + pannenkoeken)', '', 'NL'),
(125, 'High ropes 4 kids:', '€17.5 per persoon (enkel bij high ropes, vanaf 15 pers)', '', 'NL'),
(126, 'Combinatie 2 activiteiten:', '€30 per persoon (duur activiteiten: 3 uur)', '', 'NL'),
(127, 'Prijs per persoon:', 'Afhankelijk van de keuze van de activiteiten', '', 'NL'),
(128, 'Prijs per persoon:', '€25: Kinderen tot 12 jaar</br>€40: Volwassenen', '', 'NL'),
(130, 'Prijs met Breughelbuffet:', '€35: Kinderen tot 12 jaar</br>€60: Volwassenen', '', 'NL'),
(132, 'Prijs per persoon:', '€15 per persoon', '', 'NL'),
(133, 'Prijs met begeleider:', '€35 per uur extra', '', 'NL'),
(134, 'Indien nodig:', 'Stelling vanaf €200', '', 'NL'),
(135, 'Prijs pp meerdaagse:', '€60: 2-daagse</br>€90: 3-daagse', 'All-in', 'NL'),
(136, 'Prijs per persoon', 'Vanaf €65', '', 'NL'),
(138, 'Supplement', '€200: Stripact', '', 'NL'),
(139, 'Prijs per persoon:', '€25', '', 'NL');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `inhoud_prijs_type`
--

CREATE TABLE IF NOT EXISTS `inhoud_prijs_type` (
`id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Gegevens worden geëxporteerd voor tabel `inhoud_prijs_type`
--

INSERT INTO `inhoud_prijs_type` (`id`, `type`) VALUES
(1, 'Prijs'),
(2, 'Supplement');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `inhoud_taal`
--

CREATE TABLE IF NOT EXISTS `inhoud_taal` (
  `inhoudId` int(11) NOT NULL,
  `naam` varchar(255) NOT NULL,
  `inhoud` text NOT NULL,
  `afspraak` varchar(255) NOT NULL,
  `periode` varchar(255) NOT NULL,
  `duur` varchar(255) NOT NULL,
  `taal` enum('NL','FR','ENG') NOT NULL DEFAULT 'NL'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `inhoud_taal`
--

INSERT INTO `inhoud_taal` (`inhoudId`, `naam`, `inhoud`, `afspraak`, `periode`, `duur`, `taal`) VALUES
(39, 'Indianendag', '<p>Aan de voet van Heuvelland in Poperinge ligt ons roemrijke indianenkamp. Het huilen van de prairiehonden, ergens in de steile rode bergen die hoog oprijzen uit het geelverdorde gras, verontrust hem niet. Want hij is Winnetou. Hij is de roemrijke Apacheleider, de man van de duizend gewonnen gevechten. Hij wacht jullie op om echte krijgers van jullie te maken, maar voor jullie krijgers worden moeten jullie heel wat avontuurlijke opdrachten vervullen.</p><p><br></p><h2><strong><font size="5">Boogschieten:</font></strong></h2><p>Pijl en boog zijn al jaren het symbool van de indiaan als jager en krijger. Een ervaren indianenkrijger leert de kinderen pijl en boogschieten op een veilige manier.&nbsp;Na de instructie kan iedereen naar hartelust oefenen, want daarna gaan we op zoek naar de gevaarlijkste krijger: welke indiaan verzamelt het meeste punten tijdens het boogschieten.</p><h2><strong><font size="5">Ponyrijden:</font></strong></h2><p>Elke indianenstam heeft respect voor alles wat met de natuur te maken heeft. Zo worden alle dieren enorm gerespecteerd. De indianen smeden een speciale band met hun paard, waardoor ze uitgroeiden tot de allerbeste ruiters. Op zeer rustige pony''s leren we de basis van het paardrijden. Ieder kind krijgt de kans een ritje te maken op één van de vele pony''s.</p><h2><font size="5">Avonturenparcours:</font></h2><p>Een echte indiaan schuwt het avontuur niet! We gaan klimmen en klouteren op 1 meter hoogte en gaan op zoek naar de dapperste krijger. Indien het weer het toelaat, dan leggen we een heus avonturenparcours af boven het water. Net als echte indianen gebruiken we kano''s om onze over de rivieren te verplaatsen.</p><h2><font size="5">Het grote indianenspel:</font></h2><p>In de tipi''s krijgen de indianenkinderen de instructies van deze heel leuke zoektocht met allerhande leerzame opdrachten.</p><hr><h2><font size="5">Overnachten</font></h2><p>Het is ook mogelijk om te blijven overnachten. De indianenkinderen slapen en leven de 2 dagen in echte tipi''s. Zij worden verder ingewijd in het maken van dromenvangers, een totempaal...</p><p>Wanneer de eindeloze stilte over het land valt steken we het kampvuur aan en gaan we verschillende Indiaanse sagen en legenden vertellen.</p>', 'Outside Adventure Park (Westouterseweg 3, 8970 Poperinge)', '', '1 - 3 dagen', 'NL'),
(61, '(Kruis)  Boogschieten', '<h2><strong style="line-height: 1.8;"><font size="5">Boogschieten:</font></strong></h2><p>Een, en terecht, veel terugkerend onderdeel in veel survivals. Want handboogschieten blijft een uitdagende sport. Probeer na een gedegen instructie zoveel mogelijk punten te scoren. Na de initiatie volgen enkele toffe wedstrijdjes. Welk team behaald de hoogste score en wie wordt de Robin Hood van de groep? Een leuke activiteit geschikt voor jong en oud!We beschikken over een boogschietstand in het Adventure Park te Poperinge en in ons outdoorcentrum in Heuvelland. Daarnaast kan u ook een mobiele boogschietstand huren op éénder welke locatie. De kostprijs hiervoor bedraagt 150 € (+ eventuele verplaatsingskosten).</p><h2><strong style="line-height: 1.8;"><font size="5">Kruisboogschieten:</font></strong></h2><div><p>Wie heeft er nog nooit gehoord van kruisboogschieten? Waarschijnlijk niemand! Maar wie heeft het ooit geprobeerd? Bij Outside kan het. Wij leren u de kneepjes van het vak en eindigen met enkele leuke wedstrijdjes. Tijdens de wedstrijden moet elke schutter steeds 2 reeksen van 10 pijlen schieten. Het maximum te halen punten per schot is 10 en het minimum is 6. Wie wordt er de koning?</p><p>Kruisboogschieten is toegelaten vanaf 16 jaar.</p><p><strong>Onze deskundige instructeurs zorgen voor een unieke beleving en houden de veiligheid scherp in de gaten.</strong></p></div>', '', 'Gans het jaar', '1 uur', 'NL'),
(89, 'Dropping', '<p><strong>Op zoek naar de ideale avondactiviteit? Outside heeft enkele leuke avondprogramma''s voor u in petto. Wat dacht je van een avontuurlijke dropping? Met deze activiteit wordt je in Frankrijk gedropt! &nbsp; Ook de smokkeltocht is ongetwijfeld een absolute aanrader!&nbsp;</strong></p><h2><strong><strong><strong><font size="5">Adventure Dropping:</font></strong></strong></strong></h2><p></p><p><strong><strong><strong><font face="Segoe UI"></font></strong></strong></strong></p><strong><strong><strong> </strong></strong></strong><p></p><p>De groep wordt opgesplitst in diverse teams. Elk team krijgt een instructieblad, wandelgps &amp; fluojas. Na de briefing worden de teams op verschillende locaties gedropt net over de Franse grens. Aan de hand van de verkregen hulpmiddelen moet de weg terug gezocht worden. Langs smalle paadjes, steile boswegen en prachtige landschappen passeer je langs het culturele erfgoed van de streek: begraafplaatsen en bunkers uit WO I en WO II.</p><p>Onderweg moeten echter verschillende opdrachten tot een goed einde worden gebracht: raadsels, spreekwoorden, praktische proeven, natuurlijke hindernissen,... Wie raakt als eerste terug bij de startplaats? Wie scoort het best op de verschillende proeven? De avontuurlijke dropping is alvast een superleuke avondactiviteit!</p><p>Tijdens de dropping wordt de dorst gelest met enkele consumpties (in de prijs inbegrepen).</p><p class="box color4"><strong><strong>Plaats:</strong> Heuvelland - Lijstermolendreef 1, 8954 Westouter - juist naast Vakantiehuis Malperthuis<br><strong>Min. aantal&nbsp; betalende deelemers:</strong> 15 dln<br><strong>Ideale periode:</strong> gans het jaar<br><strong>Prijs:</strong>&nbsp;25 €/persoon <br><strong>Duur:</strong> ongeveer 3 uur<br></strong></p><p>&nbsp;</p><h2><strong><font size="5">Blinde dropping:</font></strong></h2><p>Voor we op stap gaan in het donker krijgt ieder groepje (van ongeveer 6 à 7 pers) een kaart of wandelgps. Vervolgens brengt de minibus ons op een onbekende plaats. Eerst proberen we op de kaart onze positie te bepalen. Langsheen prachtige boswegen en oude dorpjes verlaten we de bewoonde wereld op zoek naar de afgesproken plaats. Nog leuker wordt het zonder kaart...</p><p>Voor groepen die logeren in de Westhoek, kunnen we de dropping organiseren vanuit jullie vakantiewoning. Ons busje komt jullie oppikken aan het verblijf en jullie worden op een afstand gedropt die je zelf kan bepalen (bvb 10 km van de verblijfplaats).</p><p class="box color4"><strong>Plaats: Ieper - Heuvelland - Poperinge *** Prijs: 225 € per groep <br></strong></p><p>&nbsp;</p><h2><strong><font size="5">Battlefield Dropping:</font></strong></h2><p>De groep wordt opgesplitst in enkele teams. Elk team krijgt een instructieblad, wandelgps &amp; fluojas. Na de briefing worden de teams op verschillende locaties gedropt: diverse kerkhoven rondom het centrum van Ieper. Aan de hand van de verkregen coördinaten moet de weg terug gezocht worden. Onderweg moeten echter enkele vraagjes mbt tot WO I worden opgelost. Wie raakt als eerste terug bij de startplaats met de correcte oplossingen?</p><p class="box color4"><strong>Plaats:</strong> Ieper - afspraak op de Leet (achter de Lakenhallen)<br><strong>Min. aantal betalende deelemers:</strong> 15 dln<br><strong>Ideale periode:</strong> gans het jaar<br><strong>Prijs:</strong> 20 €/persoon <br><strong>Duur:</strong> 2 à 2.5 uur<br></p>', 'Westouterseweg 3, 8970 Poperinge', '', '2/3 uur', 'NL'),
(94, 'Bier- & Wijnroute', '<p><strong>We nemen je mee voor een ontspannende fietstocht langsheen de schitterende hoppevelden en wijngaarden in Heuvelland. We laten u kennis maken met de heerlijke wijnen en bieren die de streek van Heuvelland rijk is.</strong></p><p>De fietstocht start bij een bierbrouwer en hoppeboer. De boer brouwt zelf zijn bier en brengt het op smaak met de zelfgeteelde hoppe. Hij leidt ons rond in de hoppevelden en toont het ganse proces van hoppe tot bier. Gesterkt door een mok gerstenat springen we terug op de fiets en via de schitterende wijngaarden gaat het richting de rodeberg.</p><p>Op de zuidhellingen van de rodeberg wordt er reeds jaren druiven geteeld.. Met deze druiven wordt op ambachtelijke wijze heerlijke wijn gemaakt. Met succes trouwens, want vorig jaar resulteerde dit in een erkenning als appellation. Het spreekt voor zich dat na een bezoek aan de wijngaarden en de uitleg van hoe men van druif tot wijn komt er een degustatie op het programma staat.</p><p>Eindigen kunnen we in het gezellige Poperinge waar we, nu als ervaren bier-en wijnkenners, afsluiten met wijn, bier, volksspelen en een heerlijke BBQ.</p><p><br></p><p>Het programma kan volledig toegespitst worden op uw wensen. Hieronder bieden we u toch al een voorstel aan:</p>', 'Lijstermolendreef 1, 8954 Westouter', 'april tot oktober', '', 'NL'),
(103, 'Kicks', '<p>&nbsp;<strong>Hou je van kicks dan is deze activiteit iets voor jou. Tal van fenomenale activiteiten die stuk voor stuk zorgen voor een geweldige kick. Touwladders, death-ride, quad en mountainbike.&nbsp; Het programma KICKS is de ideale teambuilder, uiterst geschikt voor een spectaculair dagje plezier met vrienden, familie of collega''s. </strong></p><p>Tussen de diverse bomen van verschillende hoogtes hebben wij touwbanen en andere verplaatsingenmogelijkheden gemaakt. Gezekerd aan een ''life-line'' overbruggen we overspanningen van 20 à 30 meter lengte op een hoogte van 4 tot 6 meter: apenbrug, junglebrug, catcrawl... De begeleider leert u de juiste technieken aan en zorgt voor de beveiliging &nbsp;</p><h2><strong><font size="5">Mountainbike</font></strong></h2><p>Langs smalle paadjes, steile afdalingen en prachtige boswegels komt u met de mountainbike op de mooiste plekjes van de streek. Ook voor wie het iets rustiger wilt zijn er tal van prachtige mountainbikeroutes. Onze begeleider brengt u langs prachtige veldweggetjes naar de mooiste plaatsjes van Heuvelland.&nbsp; &nbsp;</p><h2><strong><font size="5">Quad</font></strong></h2><p>Een ultieme sensatie. Na een korte briefing kun je op een afgesloten parcour crossen. De quads hebben automatische versnellingen zodanig dat je enkel hoeft gas te geven en te sturen. Een echte aanrader.</p>', 'Outside Outdoorcentrum (Lijstermolendreef 1, 8954 Westouter)', '', '3-4 uur', 'NL'),
(116, 'High Ropes Forest', '<p><strong><span style="color: #101010;">Een klimbos vol avonturen gelegen op een steile helling van de Rodeberg, vragen je grenzen te verleggen. Van boom tot boom loopt tot 10 meter hoog een touwbanencircuit met allerlei hindernissen zoals touwladders, slingers, evenwichtsbalken, klimnetten enz.... </span></strong></p><p><span style="color: #101010;">Na de uitleg van de instructeur wordt de klimgordel aangetrokken en de zekering vastgemaakt zodat er altijd veilig geklommen kan worden.</span></p><p><span style="color: #101010;">Een bijzondere uitdaging voor zowel de groep als het individu.</span></p><p>Op een steile helling, tussen de diverse bomen van verschillende hoogtes hebben wij touwbanen en andere hindernissen gemaakt die je vragen je grenzen te verleggen en de uitdaging aan te gaan om een avontuurlijke beleving te ervaren.</p><p>Gezekerd aan een ''life-line'' overbruggen we overspanningen van 20 à 30 meter lengte op een hoogte van 3 tot 10 meter: apenbrug, junglebrug, catcrawl...en via een mooie Death-ride komen we terug veilig op de grond.</p><p>De begeleider leert u de juiste technieken aan en zorgt voor de beveiliging. Dit touwenparcours is een topper in ons aanbod en zowel voor kinderen als volwassenen een gigantische uitdaging!<strong> </strong></p><p><strong>Onze deskundige instructeurs zorgen voor een unieke beleving en houden de veiligheid scherp in de gaten.</strong></p>', 'Lijstermolendreef 1, 8954 Westouter ', 'Het volledige jaar', '2 uur', 'NL'),
(124, 'Champagnewandeling', '<p>Een avontuurlijke wandeling langs de mooiste plaatsjes van Heuvelland.</p><p>Heuvelland! Het zal je geen moment vervelen. Je vindt er uitgestrekte bossen, schitterende vergezichten, avontuurlijke bergwandelingen en ongestoorde natuurreservaten. Na de instructies van de monitor kunnen jullie op weg. Langs smalle paadjes, steile afdalingen en prachtige boswegels komt u met onze wandel GPS''en op de mooiste plekjes van Heuvelland. Op de verschillende locaties moeten enkele vraagjes en foto-cases worden opgelost. </p><p>Daarnaast houden we natuurlijk even halt voor een verfrissend glaasje bubbels.</p><p>Met deze activiteit kan de ganse groep samenblijven of er kan ook in diverse teams worden gewerkt.</p>', '', '', '2u - 2u30', 'NL'),
(126, 'Culinaire Vredesroute', '<p><strong>De culinaire vredesroute is een heerlijke wandeling langs de historische plekjes en panorama’s van Ieper.</strong></p><p>We starten de tocht aan Pacific Eiland, die enkel te bereiken is via een idyllisch brugje. Omstreeks 1640 werd dit eiland door de Spaanse bezetters aangelegd als munitiedepot. Nu is het eiland de ideale plaats om je in te leiden in de geschiedenis van de stad Ieper. Gesterkt door een streekeigen aperitief en enkele culinaire hapjes wandelen we langs de prachtige vestigingen richting Menepoort.</p><p>Onderweg houden we halt aan het militaire kerkhof ‘Ramparts Cemetery’, die gevestigd is naast de Rijselpoort. Onze gids brengt er het verhaal rond WO I op een boeiende manier tot leven. Ook de historie rond de Middeleeuwse vestingen komt natuurlijk aan bod.</p><p>Bij aankomst aan de Menepoort, krijg je de kans om dit indrukwekkende monument te bezichtigen. We beleven ook de De Last Post, traditioneel de laatste groet aan de gesneuvelden.</p><p>Hierna is het tijd om te dineren in een gezellig culinair restaurantje waarbij de nadruk vooral ligt op terroirproducten uit onder andere de Noordzee, de Westhoek en Noord-Frankrijk.</p><p>Het dessert nemen we in een authentieke ongedwongen ‘café’ sfeer op de Grote Markt van Ieper die uitzicht biedt op de Lakehallen, het Belfort en In Flanders Field Museum.</p>', 'Ieper', '', '6u - 6u30', 'NL'),
(130, 'GPS Adventure', '<p><strong>Gewapend met de nieuwste GPS''en zoeken de deelnemers, verdeeld in verscheidene teams, hun weg door het schitterende Heuvelland. De groepen dienen verschillende opdrachten en activiteiten uit te voeren.</strong></p><p>De teams doen een gooi naar de overwinning. Onderweg wachten vele uitdagingen. Dit kunnen natuurlijke barrières zijn waaraan praktische outdooractiviteiten kunnen worden gekoppeld. Daarnaast zijn er echter ook foto-opdrachten en cases die, naast een gezonde teamgeest, een flinke brok intelligentie, kennis en inzicht vereisen.</p><p>De teams werken van way-point naar way-point waarbij, bij ieder way-point, een activiteit of opdracht moet worden volbracht die punten oplevert. Ieder team legt met behulp van de GPS een geheel eigen route af, onafhankelijk van de andere teams.</p><p><br></p>', 'Heuvelland', 'Gans het jaar', '', 'NL'),
(133, 'Adventure Mix', '<b>Ons Outdoor Park gelegen op de top van de Rodeberg en het Adventure Park in Poperinge zijn dé toplocaties voor avontuurlijke activiteiten. We bieden er een zeer ruim pakket van avontuurlijke sporten aan. Met de Adventure Mix kan u zelf drie activiteiten met elkaar combineren om tot een programma van 3 à 4 uur te komen. De adventure mix is mogelijk vanaf €35 per persoon!</b>', 'Heuvelland of Poperinge', '', '3 - 4u', 'NL'),
(137, 'Speed', '<p><p></p><strong>Liefhebbers van ronkende motoren, piepende banden en de geur van benzine, komen met dit splinternieuwe programma uitgebreid aan hun trekken. ''Speed'' geldt als het ideale begin of afsluiter van een vrijgezellenfeestje, bedrijfsuitje of andere teambuildingsgelegenheid.</strong></p><p><strong><br></strong></p><h2><font face="Segoe UI" size="5"><b>Speed II</b></font></h2><p style="margin: 0.5em 0px; padding: 0px; border: 0px none; outline: none 0px; font-size: 13px; vertical-align: baseline; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: 23px; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px;"><p><span style="font-family: ''Open Sans'', Arial, sans-serif; margin: 0px; padding: 0px; border: 0px none; outline: none 0px; font-size: 13px; vertical-align: baseline;"><span style="margin: 0px; padding: 0px; border: 0px none; outline: none 0px; font-size: 13px; vertical-align: baseline;"><span style="margin: 0px; padding: 0px; border: 0px none; outline: none 0px; font-size: 13px; vertical-align: baseline;"><span style="margin: 0px; padding: 0px; border: 0px none; outline: none 0px; font-size: 13px; vertical-align: baseline;"><span style="margin: 0px; padding: 0px; border: 0px none; outline: none 0px; font-size: 13px; vertical-align: baseline;"><span class="Apple-converted-space"><span style="background-color: transparent; margin: 0px; padding: 0px; border: 0px none; outline: none 0px; vertical-align: baseline;">Voor de echte diehards bestaat de mogelijkheid er in om met de karts een echte Formule 1 te rijden. Tijdens de chrono''s of kalificatie krijg je 12&nbsp;</span></span></span></span></span></span></span><span style="font-family: ''Open Sans'', Arial, sans-serif;">minuten de tijd om de beste tijd neer te zetten. Wie de beste rondetijd op zijn naam zet, mag de Pole-position innemen tijdens de 20 min.-</span><span style="font-family: ''Open Sans'', Arial, sans-serif;">durende mini Grand Prix!</span></p><p><span style="font-family: ''Open Sans'', Arial, sans-serif;"><br></span></p></p>', 'Eurokart, Europalaan 5, 8970 Poperinge', 'Het volledige jaar', '', 'NL'),
(140, 'Highland Games', '<p><strong>Gestoken in een Schotse kilts neemt u het als heldhaftige strijders tegen elkaar op. Natuurlijk verzint u eerst een ''Yell'' om uw eigen ''clan'' aan te moedigen, onder het genot van een borrelglaasje whisky. Het programma is uitstekend geschikt voor zowel mannen als vrouwen die van een uitdaging houden. Voor de dames zijn de gewichten / onderdelen aangepast.</strong></p><p>De Highland Games zijn traditionele volksspelen die zijn ontstaan in de hooglanden van Schotland.</p><p>Nog steeds worden er ieder jaar Highland Games gehouden, dit is echter nu niet alleen meer beperkt gebleven tot Schotland. Vanaf nu kunt u het ook bij ons spelen.</p><p>Volgens de overleving werden de eerste Highland Games in de 11e eeuw gespeeld. Met enige onderbrekingen werden de spelen een jaarlijks terugkerend evenement. Gedurende de periode tussen 1745 en 1781 zijn de spelen een periode verboden geweest doordat er een akte was die het spelen van de doedelzak, het dragen van een kilt, het verzamelen van mensen en het dragen van wapens verbood.</p><p>Na herroeping van het verbod, in het laatstgenoemde deel van de 18e eeuw, kunnen we nu ook in Vlaanderen terug de Highland Games aanbieden als ideaal bedrijfs-of groepsevenement.</p><p>Na een namiddag Saw-Pit, Ringround Wrestling, the Stone, Go to Roost, hitting nails, quoiting en Tossing the Caber hebben deze spelen geen enkel geheim meer voor u. Naargelang het (sportief) niveau van de groep wordt het programma aangepast.</p><p>Zijn alle Games gespeeld, dan is het tijd voor de puntentelling en kunnen de winnaars van deze spectaculaire Highland Games gehuldigd worden.</p><p>Afsluiten kunnen we met een heerlijke maaltijd (<a href="http://www.outsidetravel.be/images/filelib/prijslijst_catering_2014.pdf">prijslijst catering</a>).</p>', 'Westouterseweg 3, 8970 Poperinge of een door u gekozen locatie', '', ' 3 – 4 uur ', 'NL'),
(157, 'Muurklimmen', '<p><strong><strong>De nieuwste aanwinst onder onze activiteiten is de 10-meter hoge en 6-delige klimtoren. De toren beschikt over diverse routes met verschillende moeilijkheidsgraad. Hierdoor kunnen beginners,</strong><strong><span style="font-weight: normal;"> </span></strong><b>maar ook gevorderden zich ongetwijfeld uitleven. Probeer je klimtechniek bij te schaven, en je angsten te bedwingen, om ook de moeilijkste klimroutes te overwinnen. </b></strong></p><p>Muurklimmen is een ideale teambuilder.<strong><span style="font-weight: normal;"> Je klimpartner zorgt voor de beveiliging, waardoor vertrouwen in elkaar centraal komt te staan. Hoogtevrees? Onze ervaren monitoren geven continu tips en helpen je mee om je angsten te overwinnen. De aanmoediging van je vrienden of collega’s geeft je natuurlijk een extra boost!</span></strong></p><p>&nbsp;</p><p><strong><b><strong>Nog op zoek naar extra avontuur? Combineer het muurklimmen met high ropes, death ride en/of pamperpaal:</strong></b></strong></p><p><strong><b>High Ropes</b></strong></p><p><strong><strong><span style="color: #101010; font-weight: normal;">Een touwenparcours vol avonturen vragen je grenzen te verleggen. Op verschillende niveau''s loopt een touwbanencircuit met allerlei hindernissen zoals touwladders, slingers, evenwichtsbalken, klimnetten enz....</span></strong></strong></p><p>&nbsp;</p><p><strong>Death Ride</strong></p><p>Van op 10 meter hoogte zult u gezekerd en met hoge snelheid de schuine kabel naar beneden glijden. De adrenaline bruist door uw aderen als u boven klaar staat om te springen. Met de deah ride kunnen telkens twee personen tegelijk springen.</p><p><strong>Pamperpaal</strong></p><p>Nog op zoek naar extra uitdaging? Dan moet je zeker één van onze pamperpalen eens proberen! Beklim deze paal van 8 meter hoogte langs de zijkant van de paal. Daarna volgt het moeilijkste: tracht recht te staan op de houten paal en spring daarna naar de trapeze! Hoe deze activiteit in z''n werking gaat, kan u bekijken via <a href="http://www.youtube.com/watch?v=EAaSw3_yvQg&amp;feature=youtu.be">deze link</a>.</p><p>&nbsp;</p><p><strong>Onze deskundige instructeurs zorgen voor een unieke beleving en houden de veiligheid scherp in de gaten.</strong></p>', 'Westouterseweg 3, 8970 Poperinge', 'Gans het jaar', 'ongeveer anderhalf uur', 'NL'),
(169, 'High Ropes Park', '<p><span style="color: #101010;"><strong><span style="color: #101010;"><strong> Een touwenparcours vol avonturen gevestigd in het Adventure Park van Poperinge, vragen je grenzen te verleggen. Op verschillende niveau''s loopt een touwbanencircuit met allerlei hindernissen zoals touwladders, slingers, evenwichtsbalken, klimnetten enz....</strong></span></strong> </span></p><p><span style="color: #101010;">Je start aan het parcours vanuit de klimtoren op verschillende hoogtes. De allerkleinsten (vanaf 6 jaar) kunnen zich uitleven op het laagste parcours (op 1 meter hoogte). Het tweede niveau is gevestigd op 4.5 meter hoogte. De lefgozers kunnen zich uitleven op het circuit van 7.5 meter hoogte.<br></span></p><p><span style="color: #101010;">Na de uitleg van de instructeur wordt de klimgordel en de helm aangetrokken. Het splinternieuwe parcours is uitgerust met een SMART BELAY veiligheidsysteem, zodat er altijd veilig geklommen kan worden. </span></p><p><span style="color: #101010;">Bij aanvang van het parcours worden de zekering gevestigd aan het veiligheidssysteem. U kan slechts 1 van de 2 zekeringen tegelijk openen. Hierdoor bent u altijd perfect beveiligd.<br></span></p><p><strong><span style="color: #101010;"><br></span></strong></p><h3><strong><span style="color: #101010;"><font size="4">Death Ride</font></span></strong></h3><p>Touwladers, klimnetten, apenbrug, junglebrug, catcrawl, ... het parcours bestaat uit diverse gevarieerde hindernissen.&nbsp; Daarnaast komt ook de 100-meter lang Death Ride aan bod. Van op 10 meter hoogte zult u gezekerd en met hoge snelheid de schuine kabel naar beneden glijden. De adrenaline bruist door uw aderen als u boven klaar staat om te springen. Met de deah ride kunnen telkens twee personen tegelijk springen. Een activiteit waar u nog lang over zult napraten!</p><p>&nbsp;</p><h3><strong><font size="4">Reuzenladder</font></strong></h3><p>Op deze ladder kun je alleen maar klimmen als je samenwerkt met je team. De treden zijn te groot om individueel de ladder te beklimmen. Hierdoor ben je genoodzaakt om met je teamgenoten samen te werken. Communicatie en teamplay staan dus centraal!</p><p><strong><br></strong></p><h3><strong><font size="4">Pamperpaal</font></strong></h3><p>Nog op zoek naar extra uitdaging? Dan moet je zeker één van onze pamperpalen eens proberen! Beklim deze paal van 8 meter hoogte langs de zijkant van de paal. Daarna volgt het moeilijkste: tracht recht te staan op de houten paal en spring daarna naar de trapeze! Hoe deze activiteit in z''n werking gaat, kan u bekijken via <a href="http://www.youtube.com/watch?v=EAaSw3_yvQg&amp;feature=youtu.be">deze link</a>.</p><p>&nbsp;</p><p><strong>Onze deskundige instructeurs zorgen voor een unieke beleving en houden de veiligheid scherp in de gaten.</strong></p><p><a href="http://www.youtube.com/watch?v=r14F7jYeHCc&amp;feature=youtu.be">Filmpje: Death Ride @ Adventure Park</a></p><p><a href="http://www.youtube.com/watch?v=EAaSw3_yvQg">Filmpje: Pamperpaal @ Adventure Park</a></p>', 'Outside Adventure Park (Westouterseweg 3, 8970 Poperinge)', 'Gans het jaar', '1.5 uur', 'NL'),
(190, 'Outside Adventure Dag', '<p><p></p><strong>We nemen je mee voor een spannende Adventuredag!</strong></p><p>Als opwarmer starten we met de <strong>GPS-tocht</strong>. Het GPS systeem wijst u de weg doorheen het prachtige Heuvelland. Onderweg dient u diverse foto-opdrachten succesvol te voltooien.</p><p>Na het <strong>avonturenparcours</strong> nemen we de <strong>mountainbikes</strong> en komen met de mountainbikes op de mooiste plekjes van de streek. Eindigen doen we met de ultieme sensatie:<strong> quadrijden</strong>.</p><p class="box color4"><span style="color: #000000;"><strong>Optioneel: BBQ vanaf 20 € per persoon</strong></span><br>Zie<span style="color: #ffffff;">&nbsp;<a href="http://www.outsidetravel.be/images/filelib/prijslijst_catering_2014.pdf">prijslijst catering</a></span></p><p class="box dark"><br></p>', 'Heuvelland', 'Het volledige jaar', '', 'NL'),
(194, 'Kano', '<p><span style="line-height: 1.8;">Afvaarten door de prachtige vallei van de IJzer, de Lovaart, Ieperlee en Frans-Vlaanderen. Na een gedegen uitleg over de techniek van het kanovaren, de route en de veiligheidsaspecten kunt u in vierpersoons Canadese kano''s aan uw tocht beginnen. De vertrekplaats is afhankelijk van het gekozen programma.</span></p><p>Vraag info, wij hebben enkele schitterende onbekende trajecten.</p><p><br></p><h3><span style="line-height: 1.8;"><font size="4">Kanotocht met Breughelbuffet:</font></span></h3><p><strong>Wil je eens echt genieten van een groene en rustgevende omgeving? Dan is onze Outside-kanotocht echt iets voor jou. We gaan op een originele manier kennismaken met de schitterende Ijzervallei. Met de kano! Onze Canadese kano''s bieden plaats aan 3 tot 4 personen.</strong></p><p>We starten aan de pontons in Roesbrugge waar we na een kleine introductie van onze begeleiders plaats nemen in de kano''s. Van hieruit gaat het stroomafwaarts van Roesbrugge richting Fintele. Uiteraard staat deze activiteit garant voor veel waterpret. Je zal merken dat rechtdoor varen niet altijd meevalt en dat je wellicht een keer in de rietkragen belandt. Maar na een paar kleine tips van de begeleider lukt het zeker.</p><p>Wat je in dit stukje wildernis aan flora en fauna kan waarnemen is met geen woorden te beschrijven. Zeldzame vogelsoorten zoals de zilverreiger, de brilduiker of de ijsvogel kijken je aan vanaf de oevers. En de stilte, enkel de paddels in het water, en heerlijk genieten...<br>Stoppen doen we in een lokaal cafeetje aan de oever van de IJzer. Een cafeetje waar de tijd echt is blijven stilstaan. Zoals vroeger, heeft dit café ook nog een heerlijk ouderwetse beenhouwerij in het café. We gaan aanzitten aan een uitgebreide breugheltafel en doen ons tegoed aan een uitgebreid buffet van artisanale producten van de streek.<br>Na de koffie stappen we terug in onze kano en zetten onze tocht verder richting het gehucht Fintele, waar je getrakteerd wordt op een heerlijk huisbier ''De Lulleschudder''.</p><p>De Outside-kanotocht is een programma dat volledig kan worden toegespitst op uw wensen. Om u een indruk te geven van een programma op maat, hebben we hieronder een voorbeeld opgenomen.</p>', 'Ijzervallei', 'april tot oktober', '', 'NL'),
(204, 'Aqua & Adventure dag', '<p><strong>We nemen je mee voor een spannende Aqua &amp; Adventure dag!</strong></p><p>We starten met een schitterende tocht met de <strong>kano''s door de Ijzervallei</strong>.</p><p>Na de middag gaan we klimmen in het <strong>avonturenparcours</strong> en beleven we een ultieme sensatie: <strong>quadrijden</strong>!</p><p><br></p><p class="box color4"><strong>Optioneel BBQ vanaf 20 € per persoon: </strong>zie<span style="color: rgb(255, 255, 255);"> <a href="http://www.outsidetravel.be/images/filelib/prijslijst_catering_2016.pdf">prijslijst catering</a></span></p>', 'Bergenstraat 1, 8972 Roesbrugge', 'mei tot oktober', '', 'NL'),
(207, 'De jacht is open!', '<p><strong>Ook zin om kennis te maken met de passie voor de jacht, het buitenleven en alles wat er mee te maken heeft?</strong></p><p>Klaar om te genieten van de geuren en kleuren van het stilaan naar winterrust snakkende land, het gekok van de verraste fazanthaan, het onverwacht opspringen van de patijzen? Hopelijk zien we heel wat wild...</p><p>Zoek het niet te ver. In het najaar tooien de bossen in Heuvelland zich met hun mooiste kleuren.</p><p>Dit is dan ook een uitnodiging om samen met ons op stap te gaan door het schitterende Heuvelland.</p><p>Onderweg zijn er verschillende stops voorzien waar we onze schietcapaciteiten kunnen testen in het karabijnschieten, het boogschieten en het kruisboogschieten. We genieten van een warme kop soep in de buitenlucht en natuurlijk van de heerlijke streekproducten.</p><p>Zoals echte jagers verzamelen we met z''n allen na de jacht in een heerlijk lokaal restaurant waar we genieten van sterke jagersverhalen bij een gezellige picon en een heerlijke maaltijd!</p><p>Wij wensen iedereen een schitterend jachtseizoen toe!</p><p><br></p>', 'Westouter – Heuvelland', 'november - april', '', 'NL'),
(210, 'Adventure & Paintball dag', '<strong>We nemen je mee voor een spannende Adventure &amp; Paintballdag!</strong><div>Als opwarmer starten we met de <strong>GPS-tocht</strong>. Het GPS systeem wijst u de weg doorheen het prachtige Heuvelland. Onderweg dient u diverse foto-opdrachten succesvol te voltooien.Na het afleggen van het prachtige avonturenparcours gaan we in de namiddag <strong>paintballen!</strong></div><div><strong><br></strong></div>', 'Lijstermolendreef 1, 8954 Westouter', 'Gans het jaar', '', 'NL'),
(213, 'Middeleeuws Evenement', '<p><strong>De middeleeuwen blijven een boeiende periode uit onze vaderlandse geschiedenis. Ridders, kasteelheren, jonkvrouwen, heksen en imposante kastelen. Het spreekt tot één ieders verbeelding. Tijdens een middeleeuwse dag zorgen wij voor een evocatie van deze boeiende periode.</strong></p><p>Met boeiende middeleeuwse proeven (boogschieten, kruisboogschieten, beursgooien, ringsteken te paard, geheugenproef met tarotkaarten, hoefijzerwerpen enz...) wordt u groep op actieve wijze betrokken in de sfeer van de middeleeuwen. De sfeerzetting wordt gekleurd door menestrelen, ridders en eventueel een valkenier. Naargelang de groepsgrootte en de omvang van het evenement zijn bijkomende animaties met vuurspuwers en bijkomende proeven nog mogelijk.</p><p>&nbsp;</p><p>Dit type van evenement is ook uitermate geschikt om als familiedag te organiseren. In dit geval wordt ook de kinderanimatie op een middeleeuwse leest geschoeid. Met de animatie formule ''De schildknaepen school'' hebben wij een zeer leuk aanbod voor kinderen.</p><p>Dit evenement kan ook als teambuilding doorgaan waarbij alle teams in een competitie tegen elkaar kampen. In het kader van een familiedag gaat het er eerder ongedwongen aan toe waarbij de mensen kiezen aan welke activiteiten ze deelnemen.</p><p>Vergadermogelijkheden en catering zijn beschikbaar!</p>', 'Kasteel van Beauvoorde of op locatie', 'Het volledige jaar', '', 'NL'),
(216, 'Muzikale Fietstocht', '<p><strong>Fietsen in Heuvelland is op zich reeds een schitterende belevenis, maar wij gaan nog een stapje verder. We nemen u mee voor een unieke ''belevenis''. Langs prachtige veldweggetjes fietsen we naar de mooiste plaatsjes en naar een aantal van die typische cafeetjes die het Heuvelland nog rijk is (waar velen niet eens het bestaan van afweten). Zo ontdekken we de typische couleur locale.</strong></p><p>We flirten met de Frans-Belgische grens en proeven een picon in een authentiek ''estaminet''. We leren op iedere locaties niet alleen de ''locale'' specialiteiten kennen en proeven. Onze gids brengt er op zijn heel eigen wijze een anekdote of verhaal weer tot leven.&nbsp;</p><p>Natuurlijk kunnen we niet naast de Wereldoorlog I die in ons landschap nog zo nadrukkelijk aanwezig is. We bezoeken Lijssenthoek Cemetery, de indrukwekkende getuige van meer dan vier jaar oorlogsgeweld. Van 1915 tot 1920 was op het gehucht Lijssenthoek het grootste evacuatiehospitaal van de Ieperboog gevestigd. Vandaag weerspiegelt de begraafplaats de Grote Oorlog.<br>Met een aantal originele bewerkingen van lokale liederen en liederen van verder weg, krijgt de tocht een muzikaal tintje. We lessen onze dorst in een typisch cafeetje met een lokaal streekbiertje. Zo ontdekken we de typische couleur locale.</p><p>Tenslotte leren we over verhalen achter het front met gewone burgers. Dit programma is een absolute aanrader om de gebeurtenissen van de Grote Oorlog op een originele manier te ontdekken! Wie de fietstocht liever achterwege houdt, kan beroep doen op ons leuke vervoermiddel: een authentieke Postbus, bouwjaar 1954 in originele uitvoering (29 plaatsen met salon achterin).</p><p><strong>Optioneel:</strong> catering - zie <a href="http://www.outsidetravel.be/images/filelib/prijslijst_catering_2014.pdf">prijslijst</a></p>', 'Heuvelland – Poperinge', 'Gans het jaar', 'Halve dag', 'NL'),
(222, 'Avonturenweekend', '<p><strong>Ben je op zoek naar een avontuurlijk weekend in een schitterende streek, dan sta je bij Outside Travel aan het juiste adres!</strong></p><p><strong>Outside Travel organiseert schitterende programma’s aan een eerlijke prijs. Zo is een tweedaagse voor jeugdgroepen al mogelijk vanaf 70 € per persoon. In die prijs zijn tal van spectaculaire outdooractiviteiten inbegrepen. Verblijven doe je in één van onze gezellige vakantiehuizen op de top van de rodeberg of in het Adventure Park te poperinge! Overnachten kan in de vakantiehoeve Outside of in één van de vier reuzetipi''s. Meer info mbt de locaties kan u terugvinden via <a href="index.php/nl/vakantiehuizen.html">deze</a> link.</strong></p><p><strong>Nieuw dit jaar is de mogelijkheidheid om een avontuurlijk weekend te organiseren aan de kust. We verblijven in het moderne vakantieverblijf de ‘Hoge Duin’ in Oostduinkerke, dat schitterend gelegen is in een prachtige duinenvallei op 500 meter van de zee. Let op: een verblijf aan de kust is enkel mogelijk in de maanden juli &amp; augustus! Voor meer info, mail naar fries@outsidetravel.be of kijk op deze <a href="index.php/nl/outdoor/vlaanderen/item/32-outdoor-aan-zee.html">link</a>.<br><br></strong></p>', 'Poperinge - Heuvelland - Oostduinkerke', '', '2/3 dagen', 'NL'),
(225, 'Smokkeltocht', '<p><strong>Eeuwenlang gaan mensen al over ''de schreve'' en dan bedoelen we niet alleen dat er letterlijk over de grens getrokken wordt, maar dat de grens van het wettelijk toelaatbare van het ''door wet gereglementeerde'' overschreden wordt/werd. Omwille van zijn grensligging fungeert Westouter als toegangspoort tot Frans-Vlaanderen.</strong></p><p>Vanavond waant u zich bij het binnenkomen onmiddellijk in een echt smokkelaarshol: waar werkzaamheden plaatsvinden die het daglicht niet kunnen verdragen. Zo ook vanavond...</p><p>Voor vanavond staat er een grote opdracht op stapel die in het uiterste geheim moet worden uitgevoerd. De bendeleider van vanavond vertelt wat er gesmokkeld moet worden, waar de smokkelroutes lopen en de vele gevaren van deze geheimzinnige opdracht...</p><p>&nbsp;</p><p>Met behulp van een smokkelkaart bewandelt u illegaal één van de vroegere smokkelroutes. Onderweg probeert u op creatieve wijze zoveel mogelijk drank te verzamelen.</p><p>Welk team kan het meeste drank smokkelen? Een spannend spel dat in de donkere avonduren plaatsvindt...</p><p>&nbsp;</p><p>Het programma kan volledig toegespitst worden op uw wensen. Hieronder bieden we u toch al een voorstel aan:</p>', 'De Neerplaats (Poperingestraat 32, 8954 Westouter)', 'Gans het jaar', '', 'NL'),
(228, 'Stadsspel ''Den grooten oorlog''', '<p><strong>Interesse om het verhaal rond ‘De Groote Oorlog’ op een originele manier te beleven? Dit stadsspel is de ideale mix tussen ‘educatie’ en ‘entertainment’. We nemen je mee langs de mooiste plekjes van de stad. Gewapend met instructiebundel en GPS zoeken de deelnemers, verdeeld in verscheidene teams, hun weg door Ieper. Ieder team legt met behulp van de GPS een geheel eigen route af, onafhankelijk van de andere teams.</strong></p><p><strong></strong>De teams doen een gooi naar de overwinning. We werken van waypoint naar waypoint. Op elke locatie volgt een leuke opdracht: praktische proeven, raadsels, teambuildingsopdrachten, fotocases, … Allerlei cases die naast een gezonde teamgeest, een flinke brok intelligentie, kennis en inzicht vereisen. Natuurlijk staat elke opdracht in het teken van ''Den Grooten Oorlog''.</p><p>Welk team scoort het best op de verschillende proeven? Wie kan het kruiswoordraadsel volledig invullen en vind als eerste het antwoord op de rode draad? Via dit stadsspel leer je op een leuke manier het centrum van Ieper verkennen.</p><p>Onze <b>suggestie</b>: Stadsspel ''Den Grooten Oorlog'' + Vlaamse stoverij badend in ‘trappist Rochefort’ met &nbsp;witloofslaatje &amp; frietjes + glaasje huiswijn &amp; water tijdens het eten + koffie =&gt; €50 per persoon.</p><p><br></p><h3><font face="Segoe UI" size="4">Programma:</font></h3>', 'Ieper', 'Het volledige jaar', '', 'NL'),
(232, 'Urban Golf', '<p><strong>Urban Golf? Ja, dit is de informele variant van de golfsport. Voor iedereen die eens wat anders wil, minder regels, minder etiquette, geen Golfvaardigheidbewijs nodig en geen speciale outfit. Urban Golf spelen vindt plaats in het bos, stadsparken of beter gezegd elke mogelijke locatie!</strong></p><p><strong><br></strong></p><p>Er wordt gespeeld met gewone reguliere golfclubs. Om van de straat of betonnen grond af te kunnen slaan wordt eerst een mobiel kunstgrasmatje geplaatst. Wel wordt er met speciale ballen geslagen, deze ballen zijn minder zwaar en halen maar de helft van de afstand van een gewone golfbal. Ze zijn gemaakt van een speciaal schuimrubberfoam waardoor ze ook geen schade aan personen, gebouwen of ander objecten aan kunnen brengen.</p><p>Als doelwit kunnen een standbeeld, zitbank, afvoerrooster of verlichtingspaal dienen.</p><p>Speciaal voor u hebben wij in Ieper een schitterende route uitgestippeld. We starten nabij de Lakenhallen. Via de Grote Markt trekken we naar de Ieperse Vestingen, om langs de Menenpoort de tocht verder te zetten.</p><p>&nbsp;</p><p><strong>Wij hebben 3 combinaties uitgewerkt:</strong></p><p><ol><li><strong>Just Play:</strong> Urban golf: korte initiatie + anderhalf uur wedstrijdje + afsluitende drink in lokaal cafeetje</li><li><strong>Play &amp; Taste:</strong> idem Just Play + combinatie van hapje en drankje</li><li><strong>Play &amp; Diner:</strong> idem Just Play + aansluitende maaltijd</li></ol></p>', 'Ieper, Poperinge of op een door u gekozen locatie', 'Het volledige jaar', '', 'NL'),
(243, 'Vlaamse Velden Route', '<p><strong>Wens je de Westhoek op een leuke manier&nbsp; te ontdekken? We nemen je mee met een ontspannende fietstocht doorheen Vlaamse Velden. Onze gids brengt op diverse locaties het oorlogsverhaal tot leven.</strong></p><p>We starten de tocht in Poperinge en maken kennis met de oorlog achter het front. We passeren oa langs het befaamde Talbot House. Hier konden soldaten drie jaar lang terecht voor een zeldzaam moment van rust en ontspanning. Al gouw bezoeken we minder behaaglijke locaties. Op de binnenplaats van het stadhuis herinnert een executiepaal&nbsp; en de dodencellen aan de gruweldaden die zich er tijdens WO I afspeelden.</p><p>Langs smalle veldweggetjes verlaten we Poperinge en houden we halt aan enkele militaire begraafplaatsen: ‘Brandhoek Cemetery’ en ‘Essex Farm Cemetery''. Deze laatste is één van de&nbsp;meest bekende sites waar John McCrae in 1915 zijn wereldberoemde gedicht ‘In Flanders Fields'' schreef.</p><p>De Menenpoort mag natuurlijk ook niet in de route ontbreken. Aan het monument die de Grote Oorlog symboliseert worden de overleden soldaten nog dagelijks herdacht tijdens de Last Post.<br> Via de Grote Markt van Ieper eindigen we in de kazematten, waar we nagenieten met een beker gerstenat in de plaatselijke brouwerij.</p>', 'Ieper - Poperinge', 'Het volledige jaar', '', 'NL'),
(246, 'Volkssporten Trophy', '<p><strong>We nemen je mee voor een ontspannende tocht langsheen de bruine kroegen in de Westhoek. We laten u kennis maken met de heerlijke volkssporten en streekspecialiteiten die deze streek rijk is.</strong></p><p><b><br></b>Traditionele sporten (zoals ringsteken te paard, de sjoelbak, trekbiljart, boogschieten) hebben in de Westhoek de moderne vormen van vertier ruimschoots overleefd. Even traditioneel worden deze disciplines nog steeds in gezellige kroegen beoefend. Je toert langsheen typische herbergen om bij streekdrankjes aan deze volkse vermakelijkheden deel te nemen. Onze authentieke ‘curiositeiten'' behoren tot een exclusief West-Vlaams spelcircuit. De gezellige entourage, een unieke spelformule, vlotte begeleiding door onze monitoren... Al deze ingrediënten zorgen voor een geslaagde cocktail met een hoog amusementsgehalte.<br><br>Het programma kan volledig toegespitst worden op uw wensen. <br> Hieronder bieden we u toch al enkele voorstellen aan:</p>', 'Heuvelland of Poperinge', 'Gans het jaar', 'Halve dag', 'NL'),
(254, 'Mountainbike', '<p><strong style="line-height: 1.8;">Heuvelland is zowat het Mekka van het mountainbiken in Vlaanderen.</strong></p><p>Vanuit ons outdoorcentrum vertrekken we naar verschillende uitgestippelde mountainbikeroutes (samen meer dan 240 km) van verschillende moeilijkheidsgraad. Gaande van de steile beklimmingen van de Rodeberg, over de Zwarte- en Kemmelberg tot aan de Mont de Cats in Frankrijk. Langs smalle paadjes, steile afdalingen en prachtige boswegels komt u met de mountainbike op de mooiste plekjes van de streek.</p><p>Ook voor wie het iets rustiger wilt zijn er tal van prachtige mountainbikeroutes.</p><p>Uw monitor begeleidt u langs prachtige veldweggetjes naar de mooiste plaatsjes van de Westhoek en Heuvelland.</p>', '', '', '', 'NL'),
(275, 'Paintball  ', '<p><strong>Hou je van een dag vol actie en spanning? Dan is paintball echt iets voor jou.&nbsp; </strong><strong>Paintball is de ideale activiteit voor een spannende daguitstap, teambuilding,...&nbsp; Het leuke aan de sport is dat het door iedereen kan worden beoefend ongeacht sekse en leeftijd.</strong></p><p>Paintball is de ideale teambuilder, er wordt aanspraak gedaan op jou om teamwork te leveren. De individuele speler leert hoe belangrijk het is om samen aan een gemeenschappelijk doel te werken. Gaandeweg het spel zal het zelfvertrouwen stijgen evenals het adrenalinepeil.<br><p>Het fysiek en mentaal gelijktijdig bezig zijn geeft gezonde energie en erg veel speelplezier.</p></p><p>Bij Outside speelt u paintball op geheel nieuwe wijze. Wij halen het spel uit het bos. We beschikken over twee verschillende paintballdomeinen:</p><p><br></p><h2><font face="Segoe UI" size="5">Outside Outdoor Paintball:</font></h2><p>&nbsp;In de Ouderdomseweg te Poperinge beschikken we over een speciaal ingerichte paintball arena van 2,50 ha, die kan opgesplitst worden in 2 schitterende speelvelden. Hierdoor kunnen zowel kleine als grote groepen hier perfect uit de voeten. Voor grotere gezelschappen (vanaf 40 personen) is het mogelijk de locatie exclusief af te huren.</p><p>Op het speelveld waant u zich in een verlaten "Mash" kamp, waar de sfeer wordt bepaald door jeeps, olievaten, bunkers en talloze houten constructies. Sluipen door de diverse obstakels en achter de bunkers geven een echte adrenaline kick! Het speelveld werd bovendien symmetrisch opgebouwd, waardoor elke team met volledig gelijke wapens strijdt!</p><p><strong>Plaats van afspraak</strong> = Ouderdomseweg 9c, 8970 Poperinge</p><h2><font face="Segoe UI" size="5">Adventure Park Paintball:</font></h2><p><font face="Segoe UI">I</font>n het Adventure Park beschikken we over een paintalldorp opgericht in ware Western-stijl. Zo is er cowboydorp met saloon, kerk, galg en huiifkar en een indianenkamp met totempaal en diverse tipi''s.</p><p>Dit speelveld is ideaal voor kleinere groepen (van 10 t.e.m 20 personen) en voor groepen die paintball combineren met andere activiteiten in het Adventure Park.</p><p><strong>Plaats van afspraak</strong> = Westouterseweg 3, 8970 Poperinge</p><p>&nbsp;</p><p><em>Paintball, een spel vol behendigheid, competitie, sportiviteit , teamgeest en samenwerking, die uiterst geschikt is voor teambuildingsactiviteiten.</em></p>', 'Ouderdomseweg 9c, Poperinge of Westouterseweg 3, Poperinge', '', '2,5 uur', 'NL'),
(283, 'Quad ', '<p><span style="line-height: 1.8;"><strong>Het geluid van de ronkende motoren, de geur van benzine en de adrenaline giert door je lijf: quad rijden biedt alle ingrediënten voor een spectaculair dagje plezier met vrienden, familie of collega''s.</strong></span></p><p>Bij het rijden op een quad gaat het om een juiste bochten-techniek en een groot inschattingsvermogen. Na een korte briefing kun je op onze afgesloten parcours rijden.</p><p>&nbsp;</p><p><strong style="line-height: 1.8;">Wat maakt quadrijden zo spectaculair?</strong></p><p>Op een quad zit je dicht bij de grond. Door de dikke profielbanden heb je perfect contact met het zand of asfalt. Daardoor voel je precies hoe de quad op jouw stuurbewegingen reageert. Dit maakt het rijden en racen op een quad dan ook een speciale ervaring.</p><p>&nbsp;</p><p><strong><br></strong></p><h2><strong><font size="5">Quadrijden bij Outside:</font></strong></h2><p>Outside beschikt over schitterende quads:&nbsp;de Yamaha 350cc, het werkpaardje onder de quads. Met de quads kan gereden worden op een speciaal ingericht circuit. Het uitdagende parcours bestaat uit een onverhard deel met enkele leuke jumps. Daarnaast is er een onverhard stuk&nbsp;<span style="line-height: 1.8;">vol avontuurlijke stroken en scherpe technische bochten. Via een houten brug wordt de verbinding tussen de parcours gemaakt.</span></p><p><br></p><h2><strong><font size="5">Miniquad</font></strong></h2><p>Naast onze 12 zware 350''s beschikken wij over een 6-tal miniquads (80cc 2takt met elektrische start en een brok vermogen in zich). Deze quads met automatische versnellingen zijn nog eenvoudiger te bedienen. Enkel gas geven, sturen en remmen, en de fun kan beginnen. Dit speciaal voor deze quads ingericht terrein ligt naast het grote quadparcours en is de ideale initiatie voor de allerkleinsten.&nbsp;</p><p>De begrenzing van deze miniquads kan echter uitgeschakeld worden. Hierdoor kunnen ook volwassenen zich uitleven op dit leuke parcours!</p><p><br></p><h3><font size="4">Onze topper: de groepsformule:</font></h3><p>Speciaal voor groepen hebben we een groepsformule ontwikkeld. Gedurende anderhalf uur worden een aantal quads voor jullie groep gereserveerd. Het aantal quads die je ter beschikking krijgt, is afhankelijk van het aantal deelnemers. Per 4 deelnemers wordt er 1 quad voorzien.&nbsp;</p><p>* 15 deelnemers of minder = 3 quads</p><p>* 16-20 deelnemers = 4 quads</p><p>* 35-40 deelnemers = 8 quads</p><p>Het wisselen verloopt heel snel en tussenin kan er iets gedronken worden op het prachtige dakterras die uitzicht geeft over het volledige domein. Deze succesformule is tevens ideaal voor vrijgezellenfeestjes!</p><p>&nbsp;</p><p><strong>Opgelet: bij regenweer kunnen deze parcours er zeer modderig bijliggen. Voorzie dus kledij die mag vuil worden!</strong></p>', 'Westouterseweg 3, 8970 Poperinge', 'Gans het jaar', '10 minuten briefing + 30 min. rijden, (groepsforumle: 1,5 uur)', 'NL'),
(297, 'Teambuilding', '<p><strong>Deze uitdagende en leerzame opdrachten worden door ons toegepast om, zoals de naam al zegt, samenwerking te bevorderen of verhoudingen in de groep waar te nemen. Hiervoor beschikken we over een keur aan opdrachten die groepen van 5 à 10 personen moeten afwerken. Heel leuk en heel leerzaam.</strong></p><p>De diverse teams nemen het in verschillende disciplines tegen elkaar op:<br><ul><li>A-loop</li><li>Go-cart challenge</li><li>Evenwichtsbalk</li><li>Lattenrace</li><li>Touwtrekken</li><li>Spinnenweb</li><li>...</li></ul><div><br></div></p><h3><h3><strong style="font-size: large; margin: 0px; padding: 0px; outline: none 0px; border: 0px none currentcolor; vertical-align: baseline;">Plaats van afspraak:</strong></h3></h3><p class="box color4" style="outline: none 0px; border: 0px none currentcolor; line-height: 23px; font-family: ''Open Sans'', Arial, sans-serif; font-size: 13px; vertical-align: baseline;"><ul><li>Outside Adventure Park<span style="margin: 0px; padding: 0px; outline: none 0px; border: 0px none currentcolor; vertical-align: baseline;"> (Westouterseweg 3, 8970 Poperinge)</span></li><li>Outside Outdoorcentrum (Lijstermolendreef 1, 8954 Westouter)</li><li>Een door u gekozen locatie</li></ul></p>', 'Heuvelland - Poperinge', 'Het volledige jaar', '1,5 uur', 'NL');
INSERT INTO `inhoud_taal` (`inhoudId`, `naam`, `inhoud`, `afspraak`, `periode`, `duur`, `taal`) VALUES
(314, 'Vlottenbouw', '<p><strong>Voor wie avontuurlijk het water op wil!</strong></p><p>Wij zorgen voor al het materiaal en de monitor leert je de juiste technieken aan om een stevig vlot te bouwen. Welke groep geraakt droog aan de overkant en welke groep is het snelst? Een schitterende ludieke teambuildingsactiviteit.</p>', 'Outside Adventure Park (Westouterseweg 3, 8970 Poperinge)', 'mei - oktober', '', 'NL'),
(320, 'Wakeboarden', '<p><strong>Eén van de nieuwste sportieve activiteiten die je bij Outside kunt beoefenen, is wakeboarden op de vijver in het Adventure Park. Wakeboarden is een watersport, waarbij de wakeboarder aan een lijn, soms door een boot of door een kabelbaan over het water wordt getrokken. In het Adventure Park te Poperinge is een Rixen Easy Start Kabelbaan gevestigd, waarmee zowel beginnelingen als gevorderden zich eindeloos kunnen uitleven!</strong></p><p>Met de kabelbaan wordt een kabel boven de vijver&nbsp; tussen twee&nbsp; pilaren gespannen. De pilaren bevinden zich aan beide kanten van de vijver.<br>Op de kabel zit een motor met een waterski-lijn die de wakeboarder vooruit trekt op het water.</p><p>Iedereen met een zwembrevet (50m) kan de sensatie van de kabelbaan beleven. Beginners starten liggend op een bodyboard of knielend op een kneeboard. Je proeft direct al de kick van het boarden!&nbsp; De snelheid waarmee je over het water scheurt, zorgt voor een ware adrenalinestoot!</p><p>&nbsp;</p><p>Wie het kneeboarden onder de knie heeft, kan het wakeboarden uittesten. Met dit board zijn de coolste tricks mogelijk. De instructeur geeft naast veiligheidsinstructies ook aanwijzingen en tips over het boarden zelf. Iedere keer voel je dat de bewegingen beter en beter gaan.</p><p>Niet alleen voor de deelnemers is het heel leuk. Heel veel mensen beleven evenveel plezier aan het bekijken van de deelnemers als de deelnemers zelf. <br>U bent niet alleen welkom om te komen boarden. U kunt gerust komen genieten van de sfeer, de fun of een partijtje beachvolley op het aansluitende strand.</p><p><strong>Bekijk <span style="text-decoration: underline;"><a href="http://www.youtube.com/watch?v=uqOVGK5xARI">hier</a></span> ons eerste filmpje!</strong></p>', 'Outside Adventurepark, Westouterseweg 3, 8970 Poperinge', '', '1 uur</br>1.5 uur</br>2 uur', 'NL'),
(329, 'Lasershooting', '<p>Outdoor Laser Battle is de nieuwste variant van laser shooting. Door de nieuwe infrarood technologie hoef je niet meer noodzakelijk in het donker te spelen. Kom dus nu onze nieuwste activiteit beleven in het Adventure Park te Poperinge. Hier werd een splinternieuw Outdoor Laserparcours gebouwd!<br><br>We spelen op een speciaal ingerichte arena, waar de sfeer wordt bepaald door <b>loopgraven, kanonnen, tanks, olievaten, bunkers en verschillende loopgraven</b>. De loopgraven werden opgemaakt net als in de Diksmuidse Dodengang, het enige bewaarde Belgische loopgravenstelsel uit de Eerste Wereldoorlog. Sluipen langs de diverse obstakels en achter de bunkers geven een ware adrenalinestoot! <br><br>Outdoor Laser Battle is geheel <b>veilig &amp; pijnloos</b>. Net als bij de paintball gebruiken we een tipmann marker. De markers hebben een bereik van 200 meter en zijn volledig onschadelijk voor de ogen.</p><p><b>Voordelen</b>:</p><p><ul><li>100 % veilig en volledig pijnloos&nbsp;</li><li>Geen masker nodig</li><li>Geen extra kosten aan kogels</li><li>Toegankelijk vanaf 6 jaar</li><li>Je kan zien op je geweer wie je raakt en door wie je geraakt wordt</li></ul><div><br></div></p><p><h3><font size="4">Vrijgezellen formule</font>:</h3>Speciaal voor vrijgezellenfeestjes hebben we de <b>shockbelt</b>. Hiermee kunnen de medespelers de vrijgezel raken met elektrische shocks.</p>', 'Outside Adventure Park, Westouterseweg 3, 8970 Poperinge', '', '1,5 uur', 'NL'),
(348, 'Archery Battle', '<p>Archery Battle is de combinatie van boogschieten &amp; paintball. Net als bij laser shooting levert het schieten met de pijlen geen blauwe plekken op, maar wel veel fun. Na het succes van de Hunger Games is deze sport razend populair in Amerika. Nu kan je deze activiteit boeken bij Outside; in het Adventure Park of op een zelf gekozen locatie.</p><p>Archery Battle wordt gespeeld met echte bogen, maar met speciale pijlen met een zachte rubber punt. Net als bij paintball worden de spelers verplicht om een masker te dragen. Na de initiatie in het schieten met boog &amp; pijl, wordt elke groep&nbsp; in twee of drie teams verdeeld. Hierbij strijden de teams om de overwinning in verschillende spelvarianten: team death match, capture the flag, free for all, …</p>', ' Outside Adventure Park (Westouterseweg 3, 8970 Poperinge)', '', '1,5 uur', 'NL'),
(374, 'GPS-City Adventure', '<p><strong>Gewapend met instructiebundel en GPS zoeken de deelnemers, verdeeld in verscheidene teams, hun weg door de stad. Ieder team legt met behulp van de GPS een geheel eigen route af, onafhankelijk van de andere teams. Tijdens dit spel worden de teams langs de mooiste en meest interessante punten van de stad geleid.</strong></p><p>De teams doen een gooi naar de overwinning. Onderweg wachten vele uitdagingen. Dit kunnen natuurlijke barrières zijn waaraan praktische proeven kunnen worden gekoppeld. Daarnaast zijn er ook foto-opdrachten en cases die, naast een gezonde teamgeest, een flinke brok intelligentie, kennis en inzicht vereisen.</p><p><br></p><p>De teams werken van way-point naar way-point. Bij ieder way-point, moet een activiteit of opdracht worden volbracht die punten oplevert. Het team die de meeste punten verzamelt, is de winnaar van de Outside GPS-city adventure.</p><p>De prijs is afhankelijk van de gekozen locatie.</p>', '', '', '', 'NL'),
(405, 'Rafting op zee', '<p><br><strong>Twee grote rafts, meer hebben we niet nodig om te zorgen voor een schitterende teambuildingactiviteit. Werk samen, niet alleen om rechtdoor te varen maar ook om de talrijke teambuildingopdrachten op het water tot een goed einde te brengen!</strong></p><p>Misschien heeft u het wel eens gedaan op een snelstromende rivier bijvoorbeeld in de Belgische Ardennen: rafting (met z''n allen peddelen in een grote ruberboot).</p><p>Rafting is inmiddels uitgegroeid tot een uitdagende sport. Avontuur, water en teamspirit zijn de ingrediënten die rafting zo populair maken. Een nog grotere uitdaging is rafting op zee. Het trotseren van het getij, de branding en de wind maken het voor de deelnemers uitdagend. Voor toeschouwers is het een waar kijkspektakel, zeker als er hoge golven zijn.</p>', 'De Kust', 'mei tot september', '', 'NL'),
(407, 'Outdoor aan zee', '<p><p></p><strong>Ook aan de kust hebben wij diverse sportieve activiteiten die we u kunnen aanbieden. De tijdsduur van de activiteiten kan aangepast worden naar uw wensen, maar bedraagt normaalgezien 1u à 1u30. Hierdoor is het perfect mogelijk om verschillende activiteiten naar keuze te combineren.</strong></p><h2><strong><font size="5">Beachsporten:</font></strong></h2><p><ul><li>Beachvolley: Na een korte initiatie waarbij de basistechnieken worden aangeleerd, is een beachvolleybaltoernooitje een ideale teambuildingsaangelegenheid. De zachte ondergrond van het zand zorgt voor een perfecte voetzoolmassage. Het ''beachen'' is een fantastische ervaring voor zowel sportieve als minder sportievelingen.</li><li>Beach Soccer: Bij deze variant van het gewone voetbal die op het strand wordt gespeeld, komen de technische hoogstandjes naar boven. De truc is om de bal zoveel mogelijk in de lucht te houden, wat dikwijls spectaculaire momenten met zich meebrengt. Als de zon lekker schijnt, wordt het vakantiegevoel compleet!</li><li>Beach Rugby: Om agressieve contacten te vermijden, moet de rugbybal worden afgegeven aan de tegenpartij, wanneer men de vaandel van de persoon in balbezit kan nemen. Verder gelden alle spelregels van het ''gewone'' rugbyspel. Een actieve vorm van ontspanning!</li></ul></p><p><br></p><h2><strong><font size="5">Teambuilding opdrachten - Strandanimatie:</font></strong></h2><p>Bij deze verschillende strandspelen komt ''het kind'' bij ieder opnieuw naar boven. Probeer recht te blijven op de reusachtige wereldbollen, of tracht ze zo lang mogelijk in de lucht te houden. De opdrachten zijn allemaal in teamverband waarbij het samenwerken centraal staat.</p><p><br></p><h2><strong><font size="5">Rafting op zee</font></strong></h2><p>Rafting is inmiddels uitgegroeid tot een uitdagende sport. Avontuur, water en teamspirit zijn de ingrediënten die rafting zo populair maken. Een nog grotere uitdaging is rafting op zee. Het trotseren van het getij, de branding en de wind maken het voor de deelnemers uitdagend. Voor toeschouwers is het een waar kijkspektakel, zeker als er hoge golven zijn.</p><p><br></p><h2><strong><font size="5">Mountainbike</font></strong></h2><p>De monitor begeleidt u met de mountainbikes langs prachtige weggetjes naar de mooiste plaatsjes van de kust.</p><p><strong><br></strong></p><h2><strong><font size="5">Go-cart zoektocht</font></strong></h2><p>We vertrekken met de go-carts en de GPS of de stadskaart, met de bedoeling de diverse uitgestippelde locaties zo snel mogelijk te bereiken. Op iedere locatie wordt een proef voorzien, die zo goed mogelijk uitgevoerd moet worden.</p><p><br></p><h2><strong><font size="5">Outdoor weekend</font></strong></h2><p>Tijdens de zomervakantie organiseren we ook aan de kust weekends voor groepen, sportclubs en verenigingen vanaf 20 personen. We verblijven in het moderne vakantieverblijf de ‘Hoge Duin’ in Oostduinkerke, dat schitterend gelegen is in een prachtige duinenvallei op 500 meter van de zee. Dit uitstekend vakantieverblijf beschikt over moderne groeps- en ontspanningsruimten, een rustig kader met een speelplein in het zand en het ligt in de nabijheid van het strand, de zee en de duinen.</p><p>Bijvoorbeeld:</p><p><ul><li>Vrijdagavond: aankomst + overnachting</li><li>Zaterdag: VM: mountainbiketocht - NM: raften op zee + overnachting</li><li>Zondag: VM: teambuilding op het strand + vertrek</li></ul></p><p><strong>- Prijs: vanaf 100 € per persoon (min. 20 betalende deelnemers)</strong></p>', 'De Kust', 'mei tot september', '', 'NL'),
(410, 'Go-cart zoektocht', '<p><strong>Gewapend met instructiebundel en GPS zoeken de deelnemers, verdeeld in verscheidene teams, hun weg door de stad. Ieder team legt met behulp van de GPS een geheel eigen route af, onafhankelijk van de andere teams. Tijdens dit spel worden de teams langs de mooiste en meest interessante punten van de stad geleid.</strong></p><p>De teams doen een gooi naar de overwinning. Onderweg wachten vele uitdagingen. Dit kunnen natuurlijke barrières zijn waaraan praktische proeven kunnen worden gekoppeld. Daarnaast zijn er ook foto-opdrachten en cases die, naast een gezonde teamgeest, een flinke brok intelligentie, kennis en inzicht vereisen.</p><p>De teams werken van way-point naar way-point. Bij ieder way-point, moet een activiteit of opdracht worden volbracht die punten oplevert. Het team die de meeste punten verzamelt, is de winnaar van de Go-cart zoektocht.</p><p>Het programma kan volledig opgesplitst worden op uw wensen. Hieronder kan u alvast een voorstel terugvinden:</p>', 'Oostende, Knokke, Oostduinkerke of een door een u gekozen locatie', 'Gans het jaar', 'Halve dag', 'NL'),
(412, 'Death Ride', '<p><strong>Op zoek naar een leuke invulling van uw feestje? Of naar een ware blikvanger op uw event? Informeer dan zeker eens bij Outside naar de haalbaarheid van een spectaculaire death ride.</strong></p><p>Onze professionele installateurs komen op voorhand een kijkje nemen. Indien de locatie het toelaat, dan kan het zeer snel gaan. Van op een zekere hoogte kunnen de deelnemers gezekerd en met hoge snelheid de schuine kabel naar beneden glijden. De adrenaline bruist door je aderen als je boven klaar staat om te springen.</p><p>Onze gediplomeerde medewerkers garanderen de veiligheid en staan gedurende het ganse event in voor de begeleiding. Wij voorzien daarnaast ook al het nodige klimmateriaal: helmen, integraalgordels &amp; karabijnhaken.</p><p>Ten slotte kunnen wij ook ondersteuning bieden bij het rendabel maken van deze activiteit.</p><p>Referenties:</p><p>- Opening vernieuwde Site Kosmos Heuvelland i.o.v. agentschap Natuur &amp; Bos Provincie West-Vlaanderen: 100 m lange death ride vanuit boom.</p><p>- Opening bezoekerscentrum De Nachtegaal De Panne i.o.v. agentschap Natuur &amp; Bos Provincie West-Vlaanderen: 100 m lange death ride van op 8 meter hoge stelling.</p><p>- Jaarlijkse smulmarkt Pollinkhove i.o.v. kermiscomité Pollinkhove: 100 m lange death ride vanaf 50 meter hoge kerktoren:</p><p>zie: <a href="https://www.facebook.com/video.php?v=729922853731487&amp;set=vb.138081909582254&amp;type=2&amp;theater">video</a></p><strong>Prijs: </strong>De prijs is afhankelijk van de locatie. Hierdoor is het noodzakelijk dat we op voorhand ter plaatse op prospectie komen. Sowieso mag je rekenen op volgende richtprijzen:<br>* Installatie en materiaal: vanaf 450€<br>* Min. 2 begeleiders aan 30 € / uur.<br><p>* Indien nodig: stelling vanaf 200 €</p></p>', '', '', '', 'NL'),
(417, 'Incentives, bedrijfs- & personeelsfeesten', '<p><strong>avontuurlijk...<br></strong><strong>een unieke omgeving...<br></strong><strong>betaalbaar...<br></strong><strong>en net dat tikkeltje meer...<br></strong><strong>verrassend </strong><strong>en stijlvol...<br><br></strong><strong>Outside Travel is één van de grootste outdoor- en incentivebureaus van Vlaanderen. </strong><strong>Onze kracht? Originele, sfeervolle en op maat gemaakte programma''s, enthousiaste medewerkers, de steeds weer overheerlijke catering, gekoppeld aan de telkens vlekkeloze organisatie van alle evenementen.</strong><strong> Al 18 jaar verzorgen wij incentives, teambuildingsprogramma''s en personeelsfeesten in Heuvelland en de ganse Westhoek...</strong></p><p><strong><br></strong><h2><strong><font size="5">Outdoor</font></strong></h2></p><p>Paintball, Quadrijden, High Ropes, Mountainbike, ... Outside organiseert schitterende avontuurlijke sporten aan een eerlijke prijs. Bij Outside kan je zelf kiezen welke activiteiten je meest aanspreken, om tot een volledig uitgewerkt programma te komen. Een overzicht van de mogelijkheden kan u via ''deze link'' terugvinden. Uitgewerkte voorstellen kan u terugvinden via ''Outdoor Pakketten''.</p><h2><strong><font size="5">Easy Leisure</font></strong></h2><p>Ook voor de minder sportievelingen hebben we een aantal originele arrangementen. Onder de rubriek ''EASY LEISURE'' (via ''Outdooractiviteiten'' - ''Heuvelland/Westhoek'') kan u al onze mogelijkheden terugvinden. Wat dacht je van een partijtje urban golf, een ontspannende bier- &amp; wijnroute of een originele volksporten trophy?</p><h2><strong><font size="5">Programma''s op maat</font></strong></h2><p>Wilt u een boeiende dag met uw familie, medewerkers of klanten beleven? Met onvergetelijke momenten die nog lang zullen nazinderen en een vernieuwde dynamiek op gang zullen brengen? Wij maken graag een afspraak met U om een keuze te maken uit de vele mogelijkheden. Contacteer ons via het contactformulier.</p><h3><strong><font size="4">Catering</font></strong></h3><p>In onze horecagelegenheden kan u heerlijk en gezellig blijven eten. De diverse mogelijkheden kan u hier raadplegen.</p><h3><strong><font size="4">Op locatie</font></strong></h3><p>Wij bieden u de mogelijkheid om activiteiten te organiseren op een door u uitgekozen locatie. Wanneer u niet beschikt over een dergelijke locatie hebben wij een aantal locaties waar de activiteiten mogelijk zijn.U kunt het zo gek niet bedenken. Zo komen wij met een volledig speelveld vol ''Highland Games'' naar u toe, of we organiseren Urban Golf op een door gekozen locatie. Waarom uw bedrijfsfeest niet eens organiseren in het Kasteel van Beauvoorde of een GPS-cityadventure in één van de boeiende steden die Vlaanderen rijk is?Neem snel een kijkje via ''deze'' link.</p>', 'Outside Outdoorcentrum (Lijstermolendreef 1, 8954 Westouter)', '', 'Halve dag', 'NL'),
(448, 'Communie-, lente- en groeifeesten', 'Een originele uitvalsbasis voor het organiseren van een communie-, groei- of lentefeest is het Adventure Park in Poperinge. Dit avonturenpark is de ideale locatie voor de organisatie van allerlei evenementen. In het park zijn er twee faciliteiten waar er catering kan aangeboden worden:<div><ul><li><strong>Vakantiehoeve Outside</strong>: een authentieke boerderij werd volledig gemoderniseerd en omgebouwd tot een gezellige eetzaal (plaats 40 personen zittend). Daarnaast staat onze Outside-partytent die plaats biedt aan 75 gasten staand (50 gasten zittend).</li><li><strong>Outside Beach House:</strong> dit gebouw ligt aan het strand en de bijhorende vijver. Het zicht op de vijver en de Catsberg is er fantastisch. Er is plaats voor 180 personen staand (120 personen zittend).</li></ul></div><div><br></div><div>Concreet zijn er eigenlijk twee mogelijkheden.</div><div><ul><li><strong>Eén van de locaties afhuren</strong> en zelf voor de catering instaan. De huurprijs voor een locatie bedraagt €295. In die prijs is het volgende inbegrepen:- In de vakantiehoeve: gebruik zaaltje, expodometent, keukentje, bar, twee sanitaire blokken met 4 toiletten en 7 douches, frigo''s, BBQ, borden, bestek, glazen en eindschoonmaak.- In het Beach House: gebruik beach houseIndien jullie de locatie wensen af te huren, dan moet er wel een activiteit geboekt worden.</li><li>Een andere mogelijkheid is dat <strong>wij instaan voor de catering</strong>. Dan moet er <b>geen huurprijs</b> betaald worden en verzorgen wij werkelijk alles.De kostprijs is dan afhankelijk van het aantal aanwezige personen.</li></ul><p>Wat de activiteiten betreft:In het avonturenpark zijn er twee&nbsp;<strong>quadparcours</strong> voorhanden. Eén daarvan wordt gebruikt om met yamaha''s 350 cc op te rijden. Op het kleinere parcour crosst men met miniquads (vanaf 6 jaar).We beschikken over een grote zwemvijver waarin verschillende wateractiviteiten kunnen beoefend worden: <strong>rafen, vlotten bouwen</strong> en zelfs <strong>wakeboarden</strong>! Het prachtige strand met bijhorende beachvolleyveld maakt het vakantiegevoel compleet!Ook andere avontuurlijke activiteiten zoals<strong> paintball, touwenparcours, avonturengracht, death ride, speleo, boogschieten, BMX, muurklimmen</strong> behoren tot de mogelijkheden.De kostprijs van de activiteiten kan u terugvinden op de website onder <strong>''outdoor activiteiten''.</strong>Het avonturenpark bevat ook heel wat voor de allerkleinsten. Zo is er een kinderboerderij en een tipiweide. Er kunnen ook indianendagen georganiseerd worden: <strong>ponyrijden, boogschieten, kanovaren en avonturen</strong></p><p>Wenst u ook een springkasteel te plaatsen? <a href="http://www.jumping-on.be">Hier</a> kan u ons aanbod terugvinden.</p></div>', '', '', '', 'NL'),
(462, 'Stoere feestjes voor de kids', '<p>Wil je een verjaardag voor je kinderen om nooit te vergeten? Organiseer dan een spetterend verjaardagsfeestje met Outside<strong>! </strong><span class="" apple-converted-space""="">Quad, paintball, high ropes, vlottenbouw, avonturengracht, ... Een echte aanrader voor uw kinderen! De spetterende activiteit ronden we af met een pannenkoek en een drankje.</span></p><h3><strong><font size="5">Quad 4 kids</font></strong></h3><div><p>Op een speciaal voor deze quads ingericht terrein rijden we met deze 80cc 2takt met elektrische start. Hij is eenvoudig te bedienen, heeft stevige remmen en grote profielbanden waarmee je elk terrein trotseert. De quads hebben automatische versnellingen. Je hoeft dus enkel gas te geven, remmen en sturen. Deze quads hebben een afstelbare gasbegrenzer, zodanig dat er altijd veilig gereden kan worden.</p><h3><strong><font size="5">Paintball 4 kids</font></strong></h3><p>Zin om je vriendjes en vriendinnetjes een ander kleurtje te geven? Ga dan de strijd aan in dit Paintball spel speciaal voor kinderen! Versla je tegenstander door middel van snelheid, tactiek en samenwerking met je teamgenoten...Deze vorm van Paintball is speciaal ontwikkeld voor kinderen van 10 tot 16 jaar. De verfballetjes schieten met een gereduceerde kracht, waardoor ze niet hard aankomen. De kinderen krijgen een uitgebreide instructie en de instructeur gaat ook met de kinderen het speelveld in, zodat er continu toezicht is. Alle kinderen krijgen een overall en bodyprotector aan en een masker op, wat het gezicht, de oren en het achterhoofd beschermd. Allerlei spannende en leuke spelvormen komen aan bod.</p><h3><strong><font size="5">High Ropes 4 kids</font></strong></h3><p>In het Adventure Park loopt tot op 8 meter hoog een touwbanencircuit met allerlei hindernissen zoals touwladders, slingers, evenwichtsbalken, klimnetten enz.... Na de uitleg van de instructeur wordt de klimgordel aangetrokken en de zekering vastgemaakt zodat er altijd veilig geklommen kan worden. Eindigen doen we met een spectaculaire death-ride. Een ervaring die jong en oud niet willen missen. Onze deskundige instructeurs zorgen voor een unieke beleving en houden de veiligheid scherp in de gaten.</p><h3><strong><font size="5">Indianen Mix</font></strong></h3><p>Aan de voet van Heuvelland in Poperinge ligt ons roemrijke indianenkamp. Hij is de roemrijke Apacheleider, de man van de duizend gewonnen gevechten. Hij wacht u op om echte krijgers van u te maken, maar voor je krijger wordt moet je samen met je begeleider heel wat avontuurlijke opdrachten vervullen: ponyrijden, boogschieten, avonturen, ...</p><h3><strong><font size="5">Laser Battle 4 kids</font></strong></h3><p>Outdoor Laser Battle is de nieuwste variant van laser shooting. Door de nieuwe infra rood technologie hoef je niet meer noodzakelijk in het donker te spelen. Kom dus nu onze nieuwste activiteit beleven in het Adventure Park te Poperinge. Hier werd een splinternieuw Outdoor Laserparcours gebouwd met tanks, loopgraven en bunkers!Net als bij de paintball gebruiken we een Tipmann marker. De markers hebben een bereik van 200 meter en zijn volledig onschadelijk voor de ogen. Outdoor Laser Battle is dus geheel veilig &amp; pijnloos.</p></div>', 'Outside Adventure Park (Westouterseweg 3, 8970 Poperinge)', '', '1.5 - 3 uur', 'NL'),
(485, 'Vrijgezellen', '<p><strong>Op zoek naar een spetterend vrijgezellenfeestje met de nodige actie? Outside bied je de oplossing. Wat dacht je van een spetterende paintballsessie? Met het spelletje chickenrun moet de verkleedde vrijgezel zoveel mogelijk paintballs trachten te ontwijken. Hilariteit verzekerd!</strong></p><p>De toppers onder de vrijgezellenfeestje zijn ongetwijfeld onderstaande programma''s:</p><ul><li><b>Paintball:</b> kostprijs €25 pp - min 10 betalende deelnemers</li><li><strong>Quadrijden</strong>: kostprijs €19 pp - min 15 betalende deelnemers</li><li><strong>KICKS</strong> (avonturenparcours + mountainbiketocht + quadrijden): kostprijs €35 pp - min 15 betalende deelnemers</li><li><strong>Highland Games</strong>: kostprijs €35 pp - min 15 betalende deelnemers</li><li><strong>Kroegentocht</strong> <strong>met volkspelen</strong>: kostprijs €35 pp - min 15 betalende deelnemers</li></ul><br>Ook voor ''<b>haar''</b> hebben we een aantal leuke initiatieven:<ul><li><strong>GPS-adventure</strong> (gps-tocht met verschillende avontuurlijke opdrachten): kostprijs €35 pp - min 15 betalende deelnemers</li><li><strong>Cocktail Workshop</strong> @ Outside Beach: kostprijs €20 pp - min 10 betalende deelnemers (bij mooi weer is het zalig vertoeven op het strand).=&gt; optioneel initiatie wakeboarden + €175/uur of quadrijden €19/pp</li></ul><br>Vaak worden verschillende activiteiten met elkaar <b>gecombineerd</b>.&nbsp;Zo is <strong>quadrijden en paintballen</strong> mogelijk aan €<strong>45 per persoon</strong> (min 10 betalende deelnemers).&nbsp;Higland Games &amp; paintball kan aan €50 per persoon (min. 15 betalende deelnemers)! Ben je met 10 personen dan betaal je voor deze combinatie €60 per persoon.<br>Alle mogelijke activiteiten kan u terugvinden onder<strong> ''outdooractiviteiten''.&nbsp;</strong><div>Na de nodige actie kan u aan tafel voor een lekkere maaltijd of overheerlijke<strong> BBQ</strong>. Al onze cateringmogelijkheden kan u hier terugvinden.Om de vrijgezel volledig te verwennen kan de dag afgerond worden met een klassevolle<strong> stripact</strong>. De standaardprijs hiervoor bedraagt €200.<br><br>Wie wenst te overnachten kan de <strong>vakantiehoeve Outside</strong> afhuren. Een super gezellige locatie en ideaal gelegen om een stevig feestje te bouwen. Bij mooi weer is het zalig vertoeven in en rond de tipi''s.</div><div><br><strong>Na reservatie van 2 activiteiten mag de vrijgezel telkens 1 activiteit gratis uitproberen! Bijvoorbeeld: na reservatie van paintball &amp; highland games =&gt; gratis ritje op de quad of gratis death ride voor de vrijgezel</strong></div><div><b><br></b>Meer info? Contacteer ons via het contactfomulier.<p></p></div>', 'Outside Adventure Park (Westouterseweg 3, 8970 Poperinge)', '', '', 'NL'),
(505, 'Meerdaagse adventure stages & Bedrijfsincentives', 'Ben je op zoek naar een avontuurlijk weekend in een schitterende streek, dan sta je bij Outside Travel aan het juiste adres! Outside Travel organiseert schitterende programma''s aan een eerlijke prijs. Zo is een tweedaagse avonturenstage voor jeugdgroepen (-18 jaar) al mogelijk vanaf €65 per persoon. In die prijs zijn tal van spectaculaire outdooractiviteiten inbegrepen. Verblijven doe je in één van onze gezellige vakantiehuizen op de top van de rodeberg, een unieke locatie.<div><div><br><h3><strong><font size="4">Outdoor &amp; Incentives, op maat van uw bedrijf!</font></strong></h3><p>Ook voor firma''s die wat meer luxe wensen, kan er een programma op maat uitgewerkt worden. Overnachten kan in <b>Hotel Recour</b>, een romantisch luxe hotel met stadstuin, rustig gelegen op 100 m. van de markt van Poperinge, het centrum van de hoppeteelt. Het hotel won in 2011 de Horeca Award voor het beste private hotel. De ideale uitvalsbasis dus voor uw incentive!Wij zijn gespecialiseerd in actieve en recreatieve evenementen in de Westhoek. Wenst u de Westhoek op een originele manier te ontdekken, dan sta je bij Outside aan het juiste adres!Wat dach u van een partijtje Urban golf in Ieper? Een bezoek aan de <b>Heuvellandse wijngaarden</b> en/of het <b>Poperingse Hopmuseum</b>? Of een <b>battlefield tour</b> langs de verschillende oorlogsgraven en -monumenten, al dan niet gekoppeld aan een bezoek aan In Flanders Field.Ook op het culinaire vlak heeft de Westhoek heel wat te bieden. Proef de gezellige couleur locale in de typische cafeetjes die de Westhoek rijk is. Voor een overheerlijke maaltijd kan u terecht in één van de vele lekkere restaurantjes.Interesse? Neem telefonisch contact op via 057/33.87.01 of mail naar <a href="" mailto:fries@outsidetravel.be""="">fries@outsidetravel.be</a>Wij regelen alles voor u!</p></div></div>', '', '', '', 'NL'),
(521, 'Sportdag Poperinge', '<p><strong>Het Adventure Park in Poperinge is onze toplocatie om avontuurlijke sportdagen te organiseren. Een authentieke boerderij werd volledig gemoderniseerd en omgetoverd tot een leuke locatie met eetzaal, bar en twee sanitaire blokken met douches en toiletten. Ook voor de leerkachten is het hier bijzonder aangenaam te vertoeven. Naast de prachtige boerderij staan verschillende reuzetipi''s die als verkleedruimte gelden voor de leerlingen. Ook ons Beach House, de wakebar &amp; de paintballchalet behoren tot onze accommodatie. Met al deze faciliteiten samen kunnen in het avonturenpark alleen al groepen tot 500 personen ontvangen worden.&nbsp; </strong></p><p>De groepen worden gevormd van 18 tot 25 leerlingen. Na +/- 1u15 wordt er gewisseld, zodat alle leerlingen een viertal sporten (afhankelijk van de beschikbare tijd) kunnen beoefenen. Al deze sporten worden begeleid door monitoren van Outside en ook de volledige organisatie wordt door Outside verzorgd.</p><p>Neem gerust contact op via het contactformulier met de gegevens en samenstelling van uw groep en uw voorkeuren van activiteiten. Op die manier kan er een programma op maat worden opgemaakt!</p><p><br></p><h2><font face="Segoe UI" size="5">Activiteiten:</font></h2><p><h3><strong>Avonturengracht:</strong></h3>Het hindernissenparcours in het Adventure Park bestaat uit een aaneenschakeling van avontuurlijke opdrachten boven een beek. Klim, kruip, klouter, spring en slinger telkens naar de overkant van de beek zonder in het water te vallen. Bij tal van de hindernissen staat behendigheid, evenwicht, maar ook samenwerking centraal. Tracht met de ganse groep alle hindernissen te overbruggen! Een ideale activiteit om te combineren met de death ride.</p><p><h3><span style="color: #101010;"><strong><span style="color: #101010;"><strong><strong>High Ropes:</strong></strong></span></strong></span></h3><span style="color: #101010;"><span style="color: #101010;"><span style="color: #101010;"><span style="color: #101010;">Een touwenparcours vol avonturen vragen je grenzen te verleggen. Op verschillende niveau''s loopt een touwbanencircuit met allerlei hindernissen zoals touwladders, slingers, evenwichtsbalken, klimnetten enz....</span></span></span> Je start aan het parcours vanuit de klimtoren op verschillende hoogtes. De allerkleinsten (vanaf 6 jaar) kunnen zich uitleven op het laagste parcours (op 1 meter hoogte). Het tweede niveau is gevestigd op 4.5 meter hoogte. De lefgozers kunnen zich uitleven op het circuit van 7.5 meter hoogte. Na de uitleg van de instructeur wordt de klimgordel en de helm aangetrokken. Het splinternieuwe parcours is uitgerust met een SMART BELAY veiligheidsysteem, zodat er altijd veilig geklommen kan worden. </span></p><p style="color: #101010;"><h3><strong>Death Ride</strong><span style="color: #101010;"><strong><span style="color: #101010;"><strong><strong>:</strong></strong></span></strong><span style="color: #101010;"><br></span></span></h3>Van op 10 meter hoogte zult u gezekerd en met hoge snelheid de schuine kabel naar beneden glijden. De adrenaline bruist door uw aderen als u boven klaar staat om te springen. Met de deah ride kunnen telkens twee personen tegelijk springen. Een activiteit waar u nog lang over zult napraten!</p><p><h3><strong>Quad:</strong></h3>Een ultieme sensatie. Na een korte briefing kun je op een afgesloten parcour crossen. De quads hebben automatische versnellingen zodanig dat je enkel hoeft gas te geven en te sturen. Een echte aanrader.</p><p><h3><strong>Mountainbike:</strong></h3>We vertrekken naar verschillende uitgestippelde mountainbikeroutes van verschillende moeilijkheidsgraad. Langs smalle paadjes komt u met de mountainbike op de mooiste plekjes van de streek.</p><p><h3><strong>BMX:</strong></h3>Sinds de Spelen van Peking is BMX een Olympische sport en heeft de sport enorm aan populariteit gewonnen. Het woord BMX staat voor Bicycle Motocross (de X staat dus voor cross). Bij Outside wordt dan ook de nadruk gelegd op de cross. Op ons splinternieuw BMX-parcours organiseert onze monitor verschillende wedstrijdjes. Tracht vanaf de startheuvel zo snel mogelijk de finish te behalen.</p><p><h3><strong>Teambuilding opdrachten:</strong></h3>Deze toffe en leerzame opdrachten worden door ons toegepast om, zoals de naam al zegt, samenwerking te bevorderen of verhoudingen in de groep waar te nemen. Hiervoor beschikken we over een keur aan opdrachten die groepen van 5 à 10 personen moeten afwerken. Heel leuk en heel leerzaam.</p><p><h3><strong>Boogschieten:</strong></h3>Boogschieten blijft, en terecht, een veel terugkerend onderdeel in veel survivals. Want handboogschieten blijft een uitdagende sport. Probeer na een gedegen instructie zoveel mogelijk punten te scoren.</p><p><h3><strong>Speleo:</strong></h3>Ontdek een wereld zonder licht die ons speleohuisje voor u in petto heeft...langs verschillende gangen gaat u op onderzoek uit. Via een uitgestippeld parcour, variërend in moeilijkheidsgraad trekt u steeds dieper de boxen in. Probeer zo snel mogelijk doorheen de gangen te kruipen om uiteindelijk het daglicht tegemoet te gaan. Wie kan de gevestigde records verbreken?</p><p><h3><strong>Muurklimmen:</strong></h3>De 10-meter hoge en 6-delige klimtoren beschikt over diverse routes met verschillende moeilijkheidsgraad. Hierdoor kunnen beginners, maar ook gevorderden zich ongetwijfeld uitleven. Probeer je klimtechniek bij te schaven, en je angsten te bedwingen, om ook de moeilijkste klimroutes te overwinnen.</p><p><h3><strong>Pamperpaal:</strong></h3>Op zoek naar extra uitdaging? Dan moet je zeker één van onze pamperpalen eens proberen! Beklim deze paal van 8 meter hoogte langs de zijkant van de paal. Daarna volgt het moeilijkste: tracht recht te staan op de houten paal en spring daarna naar de trapeze!</p><p><h3><strong>Rafting:</strong></h3>Twee grote rafts, meer hebben we niet nodig om te zorgen voor een schitterende teambuildingactiviteit. Werk samen om de talrijke teambuildingopdrachten op het water tot een goed einde te brengen.</p><p><h3><strong>Vlottenbouw:</strong></h3>Voor wie avontuurlijk het water op wil. Aan de hand van tonnen, houten balken en sjortouwen leert de monitor je de juiste technieken om een stevig vlot te bouwen dat stevig genoeg moet zijn om alle groepsleden een droge vaart te garanderen.</p><p><h3><strong>Wakeboarden:</strong></h3>Aan de hand van onze kabelbaan wordt je aan enorme snelheden over het watervlak getrokken. Een unieke ervaring! <br>Wie wacht om aan de beurt te komen, kan deelnemen aan een partijtje beachvolley op Outside Beach.</p><p><h3><strong>Laser Battle:</strong></h3>Outdoor Laser Batlle is de nieuwste variant van laser shooting. Door de nieuwe infra rood technologie hoef je niet meer noodzakelijk in het donker te spelen. We spelen op een speciaal ingerichte arena, waar de sfeer wordt bepaald door loopgraven, kanonnen, tanks, olievaten, bunkers en verschillende loopgraven. De loopgraven werden opgemaakt net als in de Diksmuidse Dodengang, het enige bewaarde Belgische loopgravenstelsel uit de Eerste Wereldoorlog. Sluipen langs de diverse obstakels en achter de bunkers geven een ware adrenalinestoot!</p><p><h3><strong>Paintball:</strong></h3>Deze vorm van paintball is speciaal ontwikkeld voor lln. vanaf 12 jaar. De verfballetjes uit het aangepaste paintballgeweer schieten met een gereduceerde kracht waardoor ze niet hard aankomen. De lln. krijgen een uitgebreide instructie en de instructeur gaat ook met de lln het speelveld in. Paintball is volledig veilig. Alle lln krijgen een geheel kindveilig masker en een bodyprotector.</p>', 'Outside Adventure Park (Westouterseweg 3, 8970 Poperinge)', '', 'Halve/volledige dag', 'NL'),
(558, 'Sportdag Heuvelland', '<p><strong>Ons buitensportcentrum, gelegen op de top van de Rodeberg in Heuvelland, is de uitgelezen plaats voor sportdagen voor scholen. Wij bieden een zeer ruim pakket van avontuurlijke sporten aan. De groepen worden ingedeeld in groepjes van 20 tot 25 leerlingen. Na 1u15 à 1u30 wordt er gewisseld, zodat al de leerlingen 3 à 4 sporten (afhankelijke van de beschikbare tijd) kunnen beoefenen.</strong></p><p>Al deze sporten worden begeleid door monitoren van Outside en ook de volledige organisatie wordt door Outside verzorgd. Je kunt zelf uw sportdag samenstellen door verschillende activiteiten na elkaar te programmeren.</p><p>&nbsp;</p><h3><strong><font size="4">High Ropes:</font></strong></h3><p>Tussen de diverse bomen van verschillende hoogtes hebben wij touwbanen en ander verplaatsingenmogelijkheden gemaakt. Gezekerd aan een ''life-line'' overbruggen we overspanningen van 20 à 30 meter lengte op een hoogte van 4 tot 8 meter: apenbrug, junglebrug, catcrawl... De begeleider leert u de juiste technieken aan en zorgt voor de beveiliging.</p><h3><strong>Deathride:</strong></h3><p>De adrenaline bruist door uw aderen als u boven klaar staat om te springen. Vanaf 8 meter hoogte zult u gezekerd en met hoge snelheid de schuine kabel naar beneden glijden. Een activiteit waar u nog lang over zult napraten.</p><h3><strong>Vlottenbouw:</strong></h3><p>Voor wie avontuurlijk het water op wil. Wij komen met alle materiaal ter plaatse en de monitor leert je de juiste technieken aan om een stevig vlot te bouwen dat stevig genoeg moet zijn om alle groepsleden een droge vaart te garanderen.</p><h3><strong>Mountainbike:</strong></h3><p>We vertrekken naar verschillende uitgestippelde mountainbikeroutes van verschillende moeilijkheidsgraad. Langs smalle paadjes, steile afdalingen en prachtige boswegels komt u met de mountainbike op de mooiste plekjes van de streek. Ook voor wie het iets rustiger wilt zijn er tal van prachtige mountainbikeroutes.</p><h3><strong>Teambuilding opdrachten:</strong></h3><p>Deze uitdagende en leerzame opdrachten worden door ons toegepast om, zoals de naam al zegt, samenwerking te bevorderen of verhoudingen in de groep waar te nemen. Hiervoor beschikken we over een hele resem opdrachten die groepen van 5 à 10 personen moeten afwerken. Heel leuk en heel leerzaam.</p><h3><strong>Boogschieten:</strong></h3><p>Een, en terecht, veel terugkerend onderdeel in veel survivals. Want boogschieten blijft een leuke sport. Probeer na een gedegen instructie zoveel mogelijk punten te scoren.</p><h3><strong>Speleobox:</strong></h3><p>Ontdek een wereld zonder licht die de speleobox voor u in petto heeft...langs verschillende gangen gaat u op onderzoek uit. Via een uitgestippeld parcour, variërend in moeilijkheidsgraad trekt u steeds dieper de box in en geeft hij steeds meer van zijn geheimen prijs. Diverse passages worden overwonnen om uiteindelijk het daglicht tegemoet te gaan.</p><h3><strong>Muurklimmen:</strong></h3><p>De nieuwste aanwinst onder onze activiteiten is de 6-meter hoge en 4-delige klimmuur. Dankzij de hulp van je klimpartner wordt je beveiligd, en mede door de tips van de monitor, kun je je klimkunsten demonstreren. Probeer je klimtechniek bij te schaven, en je angsten te bedwingen, om ook de moeilijkste klimroutes te overwinnen.</p><p>&nbsp;</p><p><strong>Op 5 minuutjes rijden van ons Heuvellandse buitensportcentrum, bevindt zich het Adventure Park in Poperinge. Doordat we over een minibusje beschikken kunnen ook onderstaande activiteiten in het programma opgenomen worden:</strong></p><h3><strong>Quad:</strong></h3><p>Een ultieme sensatie. Na een korte briefing kun je op een afgesloten parcour crossen. De quads hebben automatische versnellingen zodanig dat je enkel hoeft gas te geven en te sturen. Een echte aanrader.</p><h3><strong>Paintball:</strong></h3><p>Deze vorm van paintball is speciaal ontwikkeld voor lln. vanaf 12 jaar. De verfballetjes uit het aangepaste paintballgeweer schieten met een gereduceerde kracht waardoor ze niet hard aankomen. De lln. krijgen een uitgebreide instructie en de instructeur gaat ook met de lln het speelveld in. Paintball is volledig veilig. Alle lln krijgen een geheel hoofdbedekkend kindveilig masker, een bodyprotector en nekprotector.</p><p>Opmerking: Paintball neemt telkens een halve dag in beslag.</p><p>&nbsp;</p><p><strong>Wat mag je van ons verwachten: op maat gemaakt, volledig uitgewerkt programma voor uw groep - projectverantwoordelijke voor de coördinatie van de sportdag - voldoende begeleiding - gespecialiseerde monitoren op de verschillende activiteiten - BTW en alle taksen en een onvergetelijke ervaring voor uw lln.</strong></p>', 'Vakantiehuis Malperthuis, Lijstermolendreef 1, 8954 Westouter', '', 'Halve/volledige dag', 'NL'),
(605, 'Sportdag Kust  ', '<h2><span style="font-family: Calibri, sans-serif; font-size: 11pt;">We bieden een sportdief dagje aan zee aan: een halve dag watersporten (golfsurfen &amp; raften op zee) en een halve dag teambuildingsopdrachten en strandsporten (beachrugby, sambafoot, frisbee, baseball,..).&nbsp;</span></h2><p><span style="color: #000000; font-family: ''Calibri'',''sans-serif''; font-size: 11pt;">In Oostende maken we gebruik van de club OSRC. De club beschikt over een terrein gelegen aan de vuurtoren in Oostende dat dienst doet als botenpark en waarop tevens het clublokaal met alle accommodatie (bar, douche, bergplaatsen…) is gebouwd. Er kan zowel binnen als buiten gepicknickt worden. De leerlingen brengen dus hun eigen lunchpakket mee. Wel moet er een drankje afgenomen worden (kostprijs 2 €).</span></p><p><p><font face="Segoe UI"><span style="font-size: 15px;"><b>Benodigdheden</b></span></font></p><span style="color: #000000; font-family: ''Calibri'',''sans-serif''; font-size: 11pt;">Voor de activiteiten die zich op het water afspelen voorzien wij voor iedereen een&nbsp; surfpak. Je brengt best sportieve kledij, zwemshort of bikini en een handdoek mee.&nbsp;</span></p><p><span style="color: #000000; font-family: ''Calibri'',''sans-serif''; font-size: 11pt;"><br></span></p><h2><font face="Segoe UI" size="5">Beschrijving activiteiten:</font></h2><h3><span style="color: #000000;"><strong><font size="4">Rafting op zee</font></strong></span></h3><p><span style="color: #000000;">Rafting is inmiddels uitgegroeid tot een uitdagende sport. Avontuur, water en teamspirit zijn de ingrediënten die rafting zo populair maken. Een nog grotere uitdaging is rafting op zee. Het trotseren van het getij, de branding en de wind maken het voor de deelnemers uitdagend. Voor toeschouwers is het een waar kijkspektakel, zeker als er hoge golven zijn.</span></p><h3><span style="color: #000000;"><strong><font size="4">Kiting</font></strong></span></h3><p><span style="color: #000000;">Kites zijn vliegers met meerdere lijnen die daardoor makkelijker bestuurbaar zijn dan de traditionele vliegers met één lijn. Na een korte introductie vliegert u er al lustig op los. De windsterkte bepaalt de grootte van de kite, er kan dus ook bij weinig wind gevliegerd worden.</span></p><h3><span style="color: #000000;"><strong><font size="4">Golfsurfen</font></strong></span></h3><p><span style="color: #000000;">Het afrijden van een golf is de meest pure sensatie. Het is het de ultieme kick om een golf perfect af te surfen. Een surfboard en een goede portie golven volstaan! Wij vinden dat surfen iets heel bijzonders is en dat dat niet voor een "happy few" weggelegd moet zijn. Daarom nodigen wij iedereen, dus ook gezinnen, bedrijven en scholen uit om kennis te maken met deze fantastische sport en te proeven van het ''surf-gevoel''; een gevoel dat maar moeilijk te omschrijven is en wat je dus echt moet beleven!</span></p><h3><span style="color: #000000;"><strong><font size="4">Strandanimatie</font></strong></span></h3><p><span style="color: #000000;">Bij deze verschillende strandspelen komt ''het kind'' bij ieder opnieuw naar boven. Probeer recht te blijven op de reusachtige wereldbollen, of tracht ze zo lang mogelijk in de lucht te houden. De opdrachten zijn allemaal in teamverband waarbij het samenwerken centraal staat.</span></p><h3><span style="color: #000000;"><strong><font size="4">Beachsporten</font></strong></span></h3><p><span style="color: #000000;">Beach Soccer: bij deze variant van het gewone voetbal die op het strand wordt gespeeld, komen de technische hoogstandjes naar boven. De truc is om de bal zoveel mogelijk in de lucht te houden, wat dikwijls spectaculaire momenten met zich meebrengt. Als de zon lekker schijnt, wordt het vakantiegevoel compleet!</span></p><p><span style="color: #000000;">Beach Rugby: om agressieve contacten te vermijden, moet de rugbybal worden afgegeven aan de tegenpartij, wanneer men de vaandel van de persoon in balbezit kan nemen. Verder gelden alle spelregels van het ''gewone'' rugbyspel. Een ideale vorm van ontspanning!</span></p><p><span style="color: #000000;">Baseball: na een korte initiatie waarbij de basistechnieken worden aangeleerd, is een baseballtoernooitje een ideale teambuildingsaangelegenheid. De zachte ondergrond van het zand zorgt voor een perfecte voetzoolmassage. Het baseballen is een fantastische ervaring voor zowel sportieve als minder sportievelingen.</span></p><p><span style="color: #000000;"><br></span></p>', 'Vuurtorenweg 2, 8400 Oostende of op locatie aan de kust', '', '', 'NL'),
(613, 'Sportdag op locatie', '<p><strong>Op zoek naar een avontuurlijke invulling van je sportdag? Wij bieden tal van leuke activiteiten aan! </strong></p><p><strong>Beschikt u over een leuke locatie, aarzel dan zeker niet om ons te contacteren.</strong></p><p>Zin in een partijtje lasershooten? Een leuke mountainbiketocht? Of kunnen we ter plaatse vlotten bouwen of kanovaren? Er zijn heel wat mogelijkheden:</p><ul><li>Boogschieten</li><li>Teambuilding opdrachten</li><li>Kanovaren</li><li>Vlotten bouwen</li><li>Raften</li><li>Bumperball</li><li>GPS-oriëntatie</li><li>Archery Tag</li><li>Quadrijden</li><li>Laser shooting</li><li>Mountainbike</li><li>BMX</li></ul><table border="0"><tbody><tr><td><p><br></p><p>Afhankelijk van de beschikbare tijd maak je een keuze uit een aantal activiteiten.</p><p>Naargelang de mogelijkheden maken we een programma op maat op.</p></td><td><br></td></tr></tbody></table>', 'Een zelf gekozen locatie', '', 'Een volledige dag', 'NL'),
(637, 'Avonturenklas (2 dagen)', '<p>De Westvlaamse Heuvels, met zijn uitgestrekte bossen en prachtige omgeving, zijn een uitstekende uitvalbasis voor het organiseren van avonturenklassen. De leerlingen verblijven op basis van vol-pension in één van onze vakantiehuizen. Zo biedt vakantiehuis Malperthuis plaats aan 36 personen, en kunnen er in vakantiehuis Outide 56 personen overnachten. De leerlingen verblijven in 2, 4 of 6 - persoonskamers met douche en toilet op de kamer.</p><p>Wij bieden een zeer ruim pakket van avontuurlijke sporten aan. Al deze sporten worden begeleid door monitoren van Outside en ook de volledige organisatie wordt door ons verzorgd. Je kunt zelf uw programma samenstellen maar wij bieden u alvast een voorstel aan.</p><p><br></p><p><strong style="line-height: 1.8;">Inbegrepen:</strong><span style="line-height: 1.8;">&nbsp;de overnachtingen in kamers van 2, 4 of 6 personen (met douche en toilet op de kamer) op basis van vol-pension en alle activiteiten.</span></p><p>Wanneer u met de trein komt wordt u gratis afgehaald aan het station van Ieper.</p><p><br></p><p><strong style="line-height: 1.8;">Vakantiehuis Malperthuis: Lijstermolendreef 1, 8954 Westouter</strong></p><p><strong>Vakantiehuis Outside: Rodebergstraat 41, 8954 Westouter</strong></p><p><strong>Outside Adventure Park: Westouterseweg 3, 8970 Poperinge</strong></p>', 'Heuvelland of Poperinge', '', '2 dagen', 'NL'),
(640, 'Avonturenklas(3 dagen)', '<p>De Westvlaamse Heuvels, met zijn uitgestrekte bossen en prachtige omgeving, zijn een uitstekende uitvalbasis voor het organiseren van avonturenklassen. De leerlingen verblijven op basis van vol-pension in één van onze vakantiehuizen. Zo biedt vakantiehuis Malperthuis plaats aan 50 personen en kunnen er in vakantiehuis Outide 56 personen overnachten. De leerlingen verblijven in 2, 4 of 6 - persoonskamers met douche en toilet op de kamer.</p><p>Wij bieden een zeer ruim pakket van avontuurlijke sporten aan. Al deze sporten worden begeleid door monitoren van Outside en ook de volledige organisatie wordt door ons verzorgd. Je kunt zelf uw programma samenstellen maar wij bieden u alvast een voorstel aan.&nbsp;</p>', 'Heuvelland of Poperinge', '', '3 dagen', 'NL'),
(644, 'Outside Adventure Week', '<p><span style="line-height: 1.8;">De Outside Adventure Week is de perfecte manier voor een school of een klas om een teambuildingstage te doorlopen. Met dit programma komen alle meest spectaculaire outdooractiviteiten aan bod. De leerlingen krijgen de kans om allerlei avontuurlijke sporten te leren kennen, waarbij bij iedere activiteit de nadruk op teambuilding ligt. Al deze sporten worden begeleid door monitoren van Outside en ook de volledige organisatie wordt door Outside verzorgd.</span></p><p>Men verblijft op basis van vol-pension in <b>Vakantiehuis Malperthuis </b>(tot 50 pers) of in <b>Vakantiehuis Outside </b>(56 pers) of in het <b>Adventure Park</b> (tot 200 pers). Alle info mbt de locaties kan u via <a href="http://www.outsidetravel.be/nl/vakantiehuizen">deze link</a> terugvinden.</p><p>Via <a href="https://www.youtube.com/watch?v=4LBC47ksQVs">dit filmpje</a> krijg je alvast een indruk hoe het er aan toe gaat tijdens een sportstage in het Adventure Park te Poperinge.</p><p><strong>Inbegrepen:</strong><ul><li>De overnachtingen in kamers van 2, 4 of 6 personen (met douche en toilet op de kamer)&nbsp;</li><li>Vol pension vanaf avondmaal 1e dag</li><li>Alle outdooractiviteiten</li><li>Begeleiding door gediplomeerde ervaren monitoren&nbsp;</li><li>Wanneer u met de trein komt wordt u gratis afgehaald aan het station van Poperinge (of Ieper)</li></ul><h3><font face="Segoe UI" size="4">Programma</font></h3></span></p>', 'Heuvelland / Poperinge', '', '5 dagen', 'NL');
INSERT INTO `inhoud_taal` (`inhoudId`, `naam`, `inhoud`, `afspraak`, `periode`, `duur`, `taal`) VALUES
(647, 'GWP Bosklassen', '<p>Ons buitensportcentrum, gelegen op de top van de rodeberg in heuvelland en midden bossen, is dé uitgelezen plaats voor een gwp of bosklas met uw school.</p><p>De leerlingen verblijven op basis van vol-pension in Vakantiehuis Malperthuis (47 pers) of in Vakantiehuis Outside (56 pers). Beide vakantiehuizen worden slechts aan één enkele groep tegelijk verhuurd. Onze vakantiehuizen zijn het ideale vertrekpunt voor educatieve verkenningen.</p><p>Meer info mbt onze vakantiehuizen kan u terugvinden via <a href="http://www.outsidetravel.be/nl/vakantiehuizen">deze link</a>.</p><p><strong>U heb de keuze uit tal van educatieve programma’s:&nbsp;</strong></p><p><strong></strong></p><ul><li><strong>WO I:</strong> bezoek ''In Flanders Field'' Museum, Menenpoort, Last Post (Ieper), Talbot House, dodencellen (Poperinge), bunkers, mijnkraters, militaire begraafplaatsen, oorlogsmonumenten, loopgraven, ,... (Heuvelland), Memorial Museum Passendale, Tynecot (Zonnebeke-Passendale)</li><li><strong>Natuur, landbouw e.a.:</strong> bezoek Hoppemuseum (Poperinge), bezoekerscentrum de Bergen, boswandelingen, natuurreservaten, excursies, bezoek wijngaard, fruitkwekerij, boerderij, landbouwmuseum (Heuvelland), bezoekerscentrum Palingbeek, Astrolab Iris (Ieper)</li><li><strong>Muziek:</strong> bezoek modern muziekmuseum over Folk &amp; volksmuziek [F] Experience</li></ul><p></p><p><strong>De prijs is afhankelijk van de keuze van het aantal uitstappen en bezoeken.</strong></p><p><strong><br></strong></p><hr><p>&nbsp;</p><p><strong>Een gezonde mix tussen educatie, sport en ontspanning.</strong></p><p>Voor avontuurlijke sporten bent u bij Outside aan het juiste adres: hindernissenparcours, vlottenbouw, paintball, ... Combineer daarom de educatieve uitstappen met één of meerdere sportdagen bij Outside. De ideale gelegenheid om aan teambuidling te doen!</p><hr><p><strong>Voor meer info: contacteer ons vrijblijvend via ons contactformulier.</strong></p><p>Rekeninghoudend met uw voorkeuren, werken wij graag een programma op maat uit.</p><p><strong>Inbegrepen:</strong>&nbsp;<br>- De overnachtingen in kamers van 2, 4 of 6 personen (met douche en toilet op de kamer)&nbsp;<br>- Vol pension vanaf avondmaal 1e dag<br>- Alle outdooractiviteiten, alle bezoeken, alle transport<br>- Begeleiding door gediplomeerde ervaren monitoren en gidsen<br>- Wanneer u met de trein komt wordt u gratis afgehaald aan het station van Poperinge (of Ieper)</p>', 'Heuvelland', '', '3 dagen', 'NL'),
(653, 'Boerderijklassen', '<p>Welkom op onze kinderboerderij. Een boerderij met dieren op kindermaat. In een dierentuin kijken we naar de dieren maar op onze kinderboerderij sluiten we er vriendschap mee. We knuffelen en praten met ze en we krijgen de kans om ze te verzorgen. Elk kind neemt actief deel aan het boerderijgebeuren.</p><p>We verblijven in een volledig gemoderniseerde kinderboerderij met een mooie ingerichte slaapzaal en een gezellige eetzaal. Een reusachtige weide biedt de mogelijkheid om tal van spelletjes en extra activiteiten te beoefenen. Op de boerderij zijn we omringd door tal van dieren zoals kippen, dwergkonijntjes, dwerggeitjes, cavia''s, schapen en pony''s. In deze vakantiehoeve kunnen er 34 personen overnachten.</p><p>&nbsp;</p><p>Grote groepen kunnen terecht in Bivakhuis ''t Ravenhof. Dit is een oude hoppeboerderij die gerestaureerd werd tot een uitstekend jeugdverblijf. Op deze locatie zijn wel geen dieren aanwezig. De activiteiten gaan echter grotendeels door in de kinderboerderij Outside (op 10 minuutjes rijden van deze locatie). Daarnaast staat er ook een uitstap naar een authentiek boerderij op het programma.</p><p>&nbsp;Bijvoorbeeld:</p><p></p><ul><li>’t Fazantenhof in Houthulst, daar gaan ze allerlei boerderij-activiteiten doen zoals melkkoeien en kalfjes bekijken en werkjes hierrond, kleine quiz, de hobbydieren verzorgen en opdrachtjes hierrond, ezel rijden... Hilde is een kleuterjuf en maakt het echt heel boeiend.&nbsp;</li><li>Boerderij Zuid Bellegoed in Ieper met melkproeven en wafeltje of ijsjes maken.</li><li>Kakelend Kippenmuseum in Diksmuide, bezoek aan soort zoo met heel veel pluimvee maar ook wel hoevedieren.</li><li>De Zonnegloed in Oostvleteren, boerderij en zoo met heel veel dieren (bruine beren, uilen, vossen,bavianen,schotse hooglander,zebra,..).</li><li>Den Overdragt in Woesten: boerderij met koeien en schapen waar ze de kinderen kunnen leren vilten.</li><li>’t zeugekot in Beveren aan de ijzer, daar verzorgen en bekijken ze vooral varkens en biggetjes.</li></ul><p></p><p><br></p><hr><p><strong>Adres:</strong> Kinderboerderij Outside, Westouterseweg 3, 8970 Poperinge (plaats tot 34 personen)</p><p>Of bivakhuis ''t Ravenhof, <span class="st">Poperingseweg 412 8908 Vlameringe (plaats tot 64 personen)</span></p><p><span class="st"></span></p><hr><p><strong>Inbegrepen 2-daagse:</strong> alle uitstappen en activiteiten - overnachting - vol-pension vanaf middagmaal</p><p><strong>Inbegrepen 3-daagse:</strong> alle uitstappen en activiteiten - overnachtingen - vol-pension vanaf avondmaal dag van aankomst&nbsp;</p>', '', '', '2 of 3 dagen', 'NL'),
(664, 'Vredesklassen', '<p><strong>Wens je de Westhoek en zijn oorlogsverleden met je klas te bezoeken? Dan zijn de vredesklassen van Outside echt iets voor jou!</strong></p><p><strong>Momenteel krijgt de grote herdenking WO I heel wat aandacht in de Westhoek. Hierbij staat het aspect ‘leren uit de oorlog’ centraal. Het is de bedoeling dat het verhaal van de oorlog omgebogen wordt naar een duidelijke vredesboodschap. Hierin gaat Outside mee ter ondersteuning van de scholen.</strong></p><p>Omdat&nbsp; het educatieve aanbod zodanig groot is, kan Outside je helpen bij de organisatie van de uitstap.</p><p>Indien je dit wenst, dan gaan we zelfs een stap verder. Wij kunnen het volledige programma samenstellen en hierbij alle praktische taken op ons nemen: logement, catering, busvervoer, gidsen, ontspanning, …</p><p>&nbsp;</p><p>Ook kan er een volledig programma op maat uitgewerkt worden. Zo is het bijvoorbeeld mogelijk om volgende sites in het programma op te nemen:</p><p>Bayernwald Wijtschate, Pool of Peace Mesen, Lettenberg Kemmel, Workshop de Palingbeek Zillebeke, Hill 60 &amp; 62 Zillebeke, Duitse begraafplaats Langemark, ...</p><p>Daarnaast kunnen de educatieve uitstappen evenzeer op een originele manier gebeuren d.m.v. een stadsspel of een leuk transportmiddel: bvb. fiets, huifkar of kano.</p><p>Ook één of enkele avontuurlijke activiteiten kunnen voor de leerlingen een enorme meerwaarde betekenen om in het programma te integreren: bvb. touwenparcours, paintballsessie, teambuilding spelletjes, ....</p><p><strong>Inbegrepen:</strong>&nbsp;<br><ul><li>De overnachtingen in een vakantiehuis inde Westhoek</li><li>Vol pension vanaf avondmaal 1e dag</li><li>Alle uitstappen, toegangen tot musea &amp; oorlogssites, gidsen, transport, ...</li><li>Volledige organisatie door Outside</li><li>Wanneer u met de trein komt wordt u gratis afgehaald aan het station van Poperinge (of Ieper)</li></ul><div><br></div>Voorbeeldprogramma 3-daagse vredesklas:</p>', 'Westhoek', '', '2/3 dagen', 'NL'),
(679, 'Sneeuwklassen', '<p><strong>SNEEUWKLASSEN IN OOSTENRIJK IN VOL PENSION!</strong></p><p>Outside Travel is reeds jaren ervaren in het organiseren van sportkampen en sportreizen met jeugd.</p><p>Dit gebeurt steeds onder leiding van gediplomeerde en ervaren begeleiders met pedagogische opleiding.</p><p>Voor zowel lagere-, middelbare- als sportscholen bieden wij een all in formule aan in Oostenrijk.</p><p>We kunnen zowel in als buiten de schoolvakanties sneeuwklassen aanbieden.</p><p><strong><br></strong></p><p><strong>Uiteraard is ons aanbod veel ruimer dan dit, wij maken graag een prijsofferte voor u op aanvraag. </strong></p><p><strong>Mailen kan naar frie@outsidetravel.be of bellen naar kantoor 057/33.87.01</strong></p>', '', '', '', 'NL'),
(693, 'Vakantiehuis "Outside"', '<p></p><p></p>Vakantiehuis Outside is gelegen op de top van de <b>Rodeberg</b> in Heuvelland. Vanuit het gezellig ingerichte vakantiehuis heb je een schitterend vergezicht over de dorpjes Loker, Dranouter tot in Frankrijk. Bedrijven houden hier hun cursussen en (outdoor) trainingen, terwijl families en vrienden de weekends en vakanties komen genieten van de vriendelijke sfeer en de mooie natuur.<p></p><p>De talrijke <b>wandelpaden</b> nodigen u uit tot prachtige wandelingen. Daarnaast zijn er uitstekend bewegwijzerde <b>mountainbikeroutes</b> om een schitterende mountainbiketocht te maken.</p><p>Dit voormalig hotel*** heeft niets prijsgegeven van zijn hoge standing en klasse: een gezellig restaurant, mooie slaapkamers met complete badkamers, een zéér goed uitgeruste keuken met kookfornuis, industriële dampkap, combisteamer en oven, vaatwasmachine, frigo en diepvriezer, elektrische friteuse, koffiemachine, alle borden en bestek. Verder staat er een vergaderzaal ter uwer beschikking.</p><p>Een gezellige <b>bar</b> is veelal het centraal verzamelpunt na een schitterende wandeltocht, een spannend ritje met de mountainbike of een actieve outdooractiviteit .</p><p>Drank mag je zelf meebrengen of wij geven u het nummer van de brouwer en kun je rechtstreeks met de plaatselijke brouwer afspreken.</p><p>Vier grote <b>drankfrigo''s</b> staan ter beschikking onder de toog.</p><p>Het gezellige restaurant met houtcassette biedt ruim plaats voor 59 personen.</p><p>Vakantiehuis Outside heeft een grote tuin en is omgeven door bossen.</p><p><br></p><h3><strong><font size="4">Verdere faciliteiten:</font></strong></h3><p>\n</p><table class="tabelinforechts" style="border: 0px solid rgb(0, 0, 0);"><tbody><tr class="tabelregeloranje"><td><ul><li>15 kamers (14 met douche, toilet en lavabo op de kamer)</li></ul></td></tr><tr class="tabelregeloranje"><td><ul><li>max. 56 personen</li></ul></td></tr><tr class="tabelregeloranje"><td><ul><li>alle bedden hebben lattenbodems en hoogwaardige matrassen</li></ul></td></tr><tr class="tabelregeloranje"><td><ul><li>de deelnemers dienen zelf lakens, slaapzak of donsdeken mee te brengen (lakenpakket kun je huren voor&nbsp;7 euro/persoon)</li></ul></td></tr><tr class="tabelregeloranje"><td><ul><li>vergadering, animatiezaal en extra toiletten op de gelijkvloers</li></ul></td></tr><tr class="tabelregeloranje"><td><ul><li>grote speelweide bij het vakantiehuis en speelbos op 50 meters van het vakantiehuis</li></ul></td></tr><tr class="tabelregeloranje"><td><ul><li>avontuurlijk dagprogramma of bedrijfsincentives op aanvraag</li></ul></td></tr><tr class="tabelregeloranje"><td><ul><li><a href="http://outsidetravel.be/images/filelib/prijslijst_catering_2016.pdf">cateringmogelijkheden</a></li></ul></td></tr><tr class="tabelregeloranje"><td><ul><li>TV-zaal met flatscreen, kabel &amp; digitale televisie + WIFI \n+&nbsp;stereo &amp; box met versterker + projectiescherm (beamer op aanvraag)\n + fuifverlichting</li></ul></td></tr></tbody></table><p>&nbsp;</p><h3><b><font size="4">Adres:</font></b></h3><p><strong>Vakantiehuis Outside</strong></p><p><strong>Rodebergstraat 41 - 8954 Westouter</strong></p><p><strong>Tel. 057 33 87 01 - Fax 057 33 81 36</strong></p><p><strong><br></strong></p>', 'Rodebergstraat 41 - 8954 Westouter', '', '', 'NL'),
(698, 'Vakantiehuis "Malperthuis"', '<p>Vakantiehuis Malperthuis is schitterend gelegen op de flank van de <b>Rodeberg</b> midden de bossen en vlak naast de historische molen. De Rodeberg gelegen in het hartje van Heuvelland (Westouter) nodigt uit tot prachtige wandelingen en uitstekend bewegwijzerde routes (240km) om te gaan mountainbiken.</p><p>Dit vakantiehuis is ideaal voor groepen tot 36 personen. Het is ook de ideale omgeving voor bedrijven die in een avontuurlijke kader enkele dagen vergaderen willen afwisselen met enkele avontuurlijke activiteiten. Vergaderfaciliteiten zijn aanwezig.</p><p>In de <b>eetzaal</b> met daarnaast het prachtig <b>terras</b> is het zalig eten met op de achtergrond het fluiten van de vogels in het bos.</p><p>Vakantiehuis Malperthuis beschikt ook over een leuke zithoek met TV/DVD en distributie en vergaderfaciliteiten.</p><p>&nbsp;</p><p>In de bar hebt u nog een extra <b>drankenfrigo</b>. Alle borden en bestek zijn aanwezig.</p><p>De kamers zijn uitgerust met mooie design badkamers met bad /douche, lavabo en toilet op de kamer. Van één kamer is de badkamer juist naast de kamer. De zeer goed uitgeruste keuken is voorzien van een professioneel kookfornuis, vaatwas, frigo, inox werktafel, microgolf, elektrische friteuse, oven en koffiemachine.</p><p>Naast het Vakantiehuis is een schitterend <b>avonturenparcours</b> gebouwd. Gezekerd aan een ''life-line'' overbruggen we overspanningen van 20 à 30 meter lengte op een hoogte van 3 tot 10 meter: apenbrug, junglebrug, catcrawl... De begeleider leert u de juiste technieken aan en zorgt voor de beveiliging. Onze deskundige instructeurs zorgen voor een unieke beleving en houden de veiligheid scherp in de gaten houden (deze activiteit dient vooraf gereserveerd te worden en is niet inbegrepen in de huurprijs van de vakantiewoning).</p><p><br></p><h3><strong><font size="4">Verdere faciliteiten:</font></strong></h3><p><ul><li>Aantal bedden: 50 bedden</li><li>De deelnemers dienen zelf slaapzak of lakens mee te brengen. De donsdekens zijn aanwezig.</li><li>Lakenpakket kan men reserveren voor&nbsp;7 euro /persoon (min. één week vooraf reserveren)</li><li>Vergaderfaciliteiten aanwezig</li><li>Avontuurlijk dagprogramma of bedrijfsincentives op aanvraag</li><li>(zie ook&nbsp;<a href="http://outsidetravel.be/index.php?itemno=231_233&amp;lang=NL">outdoor-activiteiten</a>&nbsp;op deze website)</li><li><a href="http://outsidetravel.be/images/filelib/prijslijst_catering_2016.pdf">Cateringmogelijkheden</a></li><li>TV-zaal met flatscreen, kabel &amp; digitale televisie + stereo + projectiescherm (beamer op aanvraag) + WIFI</li></ul></p><p>\n\n\n\n\n\n\n</p><p>&nbsp;</p><h3><b><font size="4">Adres:</font></b></h3><p><strong>Vakantiehuis Malperthuis</strong></p><p><strong>Lijstermolendreef 1 - 8954 Westouter</strong></p><p><strong>Tel. 057 33 87 01 - Fax 057 33 81 36</strong></p><p><strong></strong>&nbsp;</p>', 'Lijstermolendreef 1, 8954 Westouter', '', '', 'NL'),
(701, 'Vakantiehoeve "Outside"', '<p>De vakantiehoeve Outside in het Adventure Park te Poperinge is de ideale uitvalsbasis voor de organisatie van allerlei evenementen. De authentieke hoeve werd volledig gemoderniseerd en omgebouwd tot een supergezellige locatie.</p><p>De hoeve bestaat uit een ruime polyvalente zaal waar 40 personen comfortabel kunnen zitten. Het zaaltje is uitgerust met alle nieuwste snufjes: projectiescherm, beamer, stereo met versterker, wifi,... Naast het zaaltje is er een <strong>keukentje</strong> en een nieuw <strong>ingerichte bar</strong>. De hoeve beschikt over twee sanitaire blokken met in totaal 4 toiletten, 8 lavabo''s en 7 douches. De slaapzaal bevindt zich op het eerste verdiep en bevat 18 stapelbedden (plaats voor 36 personen). Daarnaast is er nog één aparte kamer die plaats biedt aan 4 personen (2 stapelbedden).</p><p>Aansluitend aan de hoeve staat de prachtige Outside-partytent die plaats biedt aan 40 zittende gasten (ideaal om gezellig buiten te eten). Niets zo gezellig als ''s avonds te genieten van een glaasje nabij de verwarmde vuurschaal.</p><p><br></p><p>De kostprijs om de hoeve 1 dag af te huren bedraagt<strong>€295</strong>. De enige voorwaarde is dat er minimum één outdooractiviteit geboekt wordt.<br>In die prijs is alles inbegrepen: gebruik zaaltje, outside partytent, sanitaire blokken met toiletten en douches, frigo, BBQ-toestel, borden, glazen, bestek en eindschoonmaak!</p><p>Wie in de hoeve wenst te overnachten betaald<b> €25 per persoon per nacht</b> (min. 15 betalende deelnemers of forfait van 300 €).</p><p><br><strong>Opmerking:</strong> de vakantiehoeve Outside ligt in het avonturenpark. In het Outside Adventure Park zijn er twee <strong>quadparcours</strong> voorhanden. Eén daarvan wordt gebruikt om met yamaha’s 350 cc op te rijden. Op het kleinere parcours crosst men met miniquads (vanaf 6 jaar). <br>Ook Paintball, High Ropes, wakeboarden, kanovaren, vlottenbouw,… behoort tot de mogelijkheden.<br></p><p>Voor de allerkleinsten is er een <b>kinderboerderij</b> die kan bezocht worden. Daarnaast kunnen <b>indianendagen</b> of andere leuke <b>themadagen</b> georganiseerd worden in het park!</p>', 'Outside Adventure Park (Westouterseweg 3, 8970 Poperinge)', '', '', 'NL'),
(704, 'Outside Tipi''s', '<p><strong>Ben je op zoek naar een originele verblijfplaats voor je event?&nbsp;De Outside tipi''s te Poperinge zijn de ideale uitvalsbasis voor de organisatie van allerlei evenementen: incentives, familiedagen, teambuildings en natuurlijk ook vrijgezellenfeestjes!<br></strong></p><h3><strong><font size="4">Accommodatie:</font></strong></h3><p>We beschikken over twee tipiweides die zich op 200 meter van elkaar bevinden. Elke tipiveide bevat twee tipi''s en een ruimte om een kampvuur te maken. Per tipi kunnen max. 10 personen overnachten. Alle vier de tipi''s zijn volledig in hout bekleed en afgewerkt met een waterdicht zeil. In de éne tipiweide bestaat de ondergrond van de tipi''s uit gepolierd beton. In deze tipi''s zijn er slaapmatjes aanwezig om te overnachten.&nbsp; Er is ook elektriciteit en verlichting aanwezig. In de tweede tipiweide bestaat de ondergrond van de tipi''s uit kiezeltjes. Hier zijn er veldbedjes voorhanden om er te overnachten. Je hoeft dus enkel een slaapzak + kussen mee te brengen.</p><p>Wie overnacht in de tipi''s kan gebruik maken van de sanitaire blokken in de vakantiehoeve. Er zijn in totaal 4 toiletten, 8&nbsp;lavabo''s en 7 douches.</p><h3><strong><font size="4">Locatie:</font></strong></h3><p>De tipi''s liggen volledig afgelegen in het avonturenpark. Ideaal dus om ''s avonds een stevig feestje te bouwen rond het kampvuur. Hout moeten jullie wel zelf voorzien.<strong></strong></p><h3><strong><font size="4">Prijzen:</font></strong></h3><p>De kostprijs om te overnachten in de tipi''s bedraagt 20 € per persoon (min 15 betalende deelnemers of forfait van 300 €). De enige voorwaarde is dat er minimum één outdooractiviteit geboekt wordt. Alle mogelijkheden kan u terug vinden via <a href="index.php/nl/outdoor/heuvelland-westhoek.html">deze link</a>.</p><h3><strong><font size="4">Catering:</font></strong></h3><p>Je kan zelf eten en drank meebrengen of een beroep doen op onze catering. Onze mogelijkheden vind je <a href="http://www.outsidetravel.be/images/filelib/prijslijst_catering_2016.pdf">hier</a> terug. Tijdens de activiteiten en maaltijden kan wel geen eigen drank genuttigd worden.</p><h3><strong><font size="4">Info:</font></strong></h3><p>Wens je meer info of wenst je de locatie te bezichtigen, neem dan contact met ons op via ons contactformulier.</p><p></p><div><div><p>&nbsp;</p></div></div>', 'Outside Adventure Park (Westouterseweg 3,8970 Poperinge)', '', '', 'NL'),
(897, 'Bumper Ball', '<p>Zin in een origineel partijtje voetbal? Dan zijn onze bumperballs zeker een aanrader. Deze activiteit is uiterst geschikt voor een vrijgezellenfeestje of een ludieke teambuildingactiviteit.<br>Hoe gaat het in zijn werk? De opblaasbare ballen trek je over hoofd en de riempjes maak je vast rond je schouder. Op die manier komen je handen vrij zodat je de handvaten vast kan nemen. Zorg ervoor dat je hoofd altijd binnen de bal blijft. Zo kan je steeds veilig rollen, botsen en vallen. Na een korte initiatie kan je al snel met het echte werk beginnen: bumper voetbal!</p><p>In het Adventure Park te Poperinge beschikken we over een grasveld om de activiteit te beoefenen. Bij aankomst zijn alle ballen opgeblazen, waardoor je onmiddellijk met de activiteit kan starten. Een gediplomeerde monitor houdt een oogje in het zeil en treed op als scheidsrechter. Beschik je zelf over een locatie om te bumperballen? Dan kan je de bumperballs ook huren. Zorg er dan zeker voor dat je op een veilig terrein kan spelen. Zo vermijd je schade aan de bumperballen!</p>', 'Outside Adventure Park (Westouterseweg 3, 8970 Poperinge) of een zelf gekozen locatie', '', '1,5 uur', 'NL'),
(898, 'Outside Shooting Trophy', '<p><b>Onze stressy levensstijl vraagt om af en toe een pauze in te lassen en zalig te ontspannen onder vrienden of collega’s. Je hebt fun, je leert elkaar beter kennen en je daagt elkaar uit in verschillende proeven. The Outside Shooting Trophy is hiervoor de ideale formule.</b></p><p>The Outside Shooting Trophy kan plaatsvinden in het Adventure Park van Outside. We beschikken er over een overdekte schietstand, waardoor de activiteiten ook bij regenweer zonder problemen kunnen doorgaan.Het programma is verder uitermate geschikt om op locatie te organiseren, indien je zelf over wat vrije ruimte beschikt.Outside gaat steeds voor sfeer en gezelligheid. Dus Outside zou Outside niet zijn, mocht er gedurende de activiteit geen drankjes worden voorzien.Door een ervaren instructeur krijgt u eerst een initiatie in het gebruik van verschillende wapens in de 3 volgende disciplines: karabijnschieten, kruisboogschieten en handboogschieten.Na wat oefenen, wordt de groep in teams verdeeld en strijden ze tegen elkaar voor de felbegeerde Outside Shooting Trophy.  De instructeur kijkt toe op de veiligheid, legt  de verschillende opdrachten uit en houdt de score bij.Mocht u deze activiteit wensen te kaderen in een feest of meeting, dan kunnen wij u hierbij adviseren of zelf de volledige organisatie van het feest of de businessmeeting voor onze rekening nemen.</p>', 'Outside Adventure Park (Westouterseweg 3, 8970 Poperinge) of een door u gekozen locatie', 'gans het jaar', '2 uur', 'NL');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `foto`
--
ALTER TABLE `foto`
 ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `foto_activiteit`
--
ALTER TABLE `foto_activiteit`
 ADD PRIMARY KEY (`id`), ADD KEY `activiteitId` (`activiteitId`);

--
-- Indexen voor tabel `inhoud`
--
ALTER TABLE `inhoud`
 ADD PRIMARY KEY (`id`), ADD KEY `prijsklasseId` (`prijsklasseId`), ADD KEY `categorieId` (`categorieId`);

--
-- Indexen voor tabel `inhoud_activiteit_categorie`
--
ALTER TABLE `inhoud_activiteit_categorie`
 ADD PRIMARY KEY (`id`), ADD KEY `activiteitId` (`activiteitId`), ADD KEY `typeId` (`typeId`);

--
-- Indexen voor tabel `inhoud_activiteit_categorie_type`
--
ALTER TABLE `inhoud_activiteit_categorie_type`
 ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `inhoud_activiteit_categorie_type_taal`
--
ALTER TABLE `inhoud_activiteit_categorie_type_taal`
 ADD PRIMARY KEY (`typeId`,`taal`);

--
-- Indexen voor tabel `inhoud_activiteit_duur`
--
ALTER TABLE `inhoud_activiteit_duur`
 ADD PRIMARY KEY (`id`), ADD KEY `activiteitId` (`activiteitId`), ADD KEY `duurId` (`duurId`);

--
-- Indexen voor tabel `inhoud_activiteit_duur_type`
--
ALTER TABLE `inhoud_activiteit_duur_type`
 ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `inhoud_activiteit_locatie`
--
ALTER TABLE `inhoud_activiteit_locatie`
 ADD PRIMARY KEY (`id`), ADD KEY `activiteitId` (`activiteitId`), ADD KEY `locatieId` (`locatieId`);

--
-- Indexen voor tabel `inhoud_activiteit_locatie_type`
--
ALTER TABLE `inhoud_activiteit_locatie_type`
 ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `inhoud_activiteit_prijsklasse_type`
--
ALTER TABLE `inhoud_activiteit_prijsklasse_type`
 ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `inhoud_categorie_type`
--
ALTER TABLE `inhoud_categorie_type`
 ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `inhoud_categorie_type_taal`
--
ALTER TABLE `inhoud_categorie_type_taal`
 ADD PRIMARY KEY (`typeId`,`taal`);

--
-- Indexen voor tabel `inhoud_prijs`
--
ALTER TABLE `inhoud_prijs`
 ADD PRIMARY KEY (`id`), ADD KEY `activiteitId` (`activiteitId`), ADD KEY `typeId` (`typeId`);

--
-- Indexen voor tabel `inhoud_prijs_taal`
--
ALTER TABLE `inhoud_prijs_taal`
 ADD PRIMARY KEY (`prijsId`,`taal`);

--
-- Indexen voor tabel `inhoud_prijs_type`
--
ALTER TABLE `inhoud_prijs_type`
 ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `inhoud_taal`
--
ALTER TABLE `inhoud_taal`
 ADD PRIMARY KEY (`inhoudId`,`taal`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `foto`
--
ALTER TABLE `foto`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `foto_activiteit`
--
ALTER TABLE `foto_activiteit`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=472;
--
-- AUTO_INCREMENT voor een tabel `inhoud`
--
ALTER TABLE `inhoud`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=899;
--
-- AUTO_INCREMENT voor een tabel `inhoud_activiteit_categorie`
--
ALTER TABLE `inhoud_activiteit_categorie`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT voor een tabel `inhoud_activiteit_categorie_type`
--
ALTER TABLE `inhoud_activiteit_categorie_type`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT voor een tabel `inhoud_activiteit_duur`
--
ALTER TABLE `inhoud_activiteit_duur`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `inhoud_activiteit_duur_type`
--
ALTER TABLE `inhoud_activiteit_duur_type`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT voor een tabel `inhoud_activiteit_locatie`
--
ALTER TABLE `inhoud_activiteit_locatie`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT voor een tabel `inhoud_activiteit_locatie_type`
--
ALTER TABLE `inhoud_activiteit_locatie_type`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT voor een tabel `inhoud_activiteit_prijsklasse_type`
--
ALTER TABLE `inhoud_activiteit_prijsklasse_type`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT voor een tabel `inhoud_categorie_type`
--
ALTER TABLE `inhoud_categorie_type`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT voor een tabel `inhoud_prijs`
--
ALTER TABLE `inhoud_prijs`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=140;
--
-- AUTO_INCREMENT voor een tabel `inhoud_prijs_type`
--
ALTER TABLE `inhoud_prijs_type`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `foto_activiteit`
--
ALTER TABLE `foto_activiteit`
ADD CONSTRAINT `foto_activiteit_ibfk_1` FOREIGN KEY (`activiteitId`) REFERENCES `inhoud` (`id`);

--
-- Beperkingen voor tabel `inhoud`
--
ALTER TABLE `inhoud`
ADD CONSTRAINT `inhoud_ibfk_1` FOREIGN KEY (`prijsklasseId`) REFERENCES `inhoud_activiteit_prijsklasse_type` (`id`),
ADD CONSTRAINT `inhoud_ibfk_2` FOREIGN KEY (`categorieId`) REFERENCES `inhoud_categorie_type` (`id`);

--
-- Beperkingen voor tabel `inhoud_activiteit_categorie`
--
ALTER TABLE `inhoud_activiteit_categorie`
ADD CONSTRAINT `inhoud_activiteit_categorie_ibfk_1` FOREIGN KEY (`activiteitId`) REFERENCES `inhoud` (`id`),
ADD CONSTRAINT `inhoud_activiteit_categorie_ibfk_2` FOREIGN KEY (`typeId`) REFERENCES `inhoud_activiteit_categorie_type` (`id`);

--
-- Beperkingen voor tabel `inhoud_activiteit_duur`
--
ALTER TABLE `inhoud_activiteit_duur`
ADD CONSTRAINT `inhoud_activiteit_duur_ibfk_1` FOREIGN KEY (`activiteitId`) REFERENCES `inhoud` (`id`),
ADD CONSTRAINT `inhoud_activiteit_duur_ibfk_2` FOREIGN KEY (`duurId`) REFERENCES `inhoud_activiteit_duur_type` (`id`);

--
-- Beperkingen voor tabel `inhoud_activiteit_locatie`
--
ALTER TABLE `inhoud_activiteit_locatie`
ADD CONSTRAINT `inhoud_activiteit_locatie_ibfk_1` FOREIGN KEY (`activiteitId`) REFERENCES `inhoud` (`id`),
ADD CONSTRAINT `inhoud_activiteit_locatie_ibfk_2` FOREIGN KEY (`locatieId`) REFERENCES `inhoud_activiteit_locatie_type` (`id`);

--
-- Beperkingen voor tabel `inhoud_prijs`
--
ALTER TABLE `inhoud_prijs`
ADD CONSTRAINT `inhoud_prijs_ibfk_1` FOREIGN KEY (`activiteitId`) REFERENCES `inhoud` (`id`),
ADD CONSTRAINT `inhoud_prijs_ibfk_2` FOREIGN KEY (`typeId`) REFERENCES `inhoud_prijs_type` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
