-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2026 at 06:31 PM
-- Server version: 10.11.16-MariaDB
-- PHP Version: 8.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `job_recruitment`
--

-- --------------------------------------------------------

--
-- Table structure for table `eoi`
--

CREATE TABLE `eoi` (
  `EOInumber` int(11) NOT NULL,
  `job_ref` varchar(5) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `date_of_birth` date NOT NULL,
  `gender` varchar(10) NOT NULL,
  `street_address` varchar(40) NOT NULL,
  `suburb` varchar(40) NOT NULL,
  `state` varchar(3) NOT NULL,
  `postcode` varchar(4) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `skill1` varchar(100) DEFAULT NULL,
  `skill2` varchar(100) DEFAULT NULL,
  `skill3` varchar(100) DEFAULT NULL,
  `other_skills` text DEFAULT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'New',
  `skill4` varchar(100) DEFAULT NULL,
  `skill5` varchar(100) DEFAULT NULL,
  `skill6` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `job_ref` varchar(5) NOT NULL,
  `job_title` varchar(100) NOT NULL,
  `job_description` text NOT NULL,
  `responsibilities` text NOT NULL,
  `requirements` text NOT NULL,
  `salary` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `employment_type` varchar(50) DEFAULT NULL,
  `reports_to` varchar(100) DEFAULT NULL,
  `preferable_requirements` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`job_ref`, `job_title`, `job_description`, `responsibilities`, `requirements`, `salary`, `location`, `employment_type`, `reports_to`, `preferable_requirements`) VALUES
('DD202', 'Digital Designer', 'Create website layouts, branding materials and digital content for client projects.', 'Create website layouts and design ideas; Produce visual content for client projects; Work with developers on website designs; Follow client branding requirements; Present design ideas to the creative team.', 'Understanding of digital design principles; Good visual communication skills; Good teamwork skills; Strong attention to detail; Ability to meet deadlines.', '$65,000 - $80,000 per year', NULL, NULL, 'Creative Director', 'Experience with Adobe Creative Cloud; Basic knowledge of HTML and CSS; Experience creating digital content.'),
('FD101', 'Front-End Web Developer', 'Help us build responsive, accessible and engaging websites for our clients.', 'Develop websites using HTML5 and CSS3; Turn design ideas into working web pages; Test websites on different browsers and screen sizes; Follow accessibility and usability requirements; Work with designers and other team members.', 'Knowledge of HTML5 and CSS3; Understanding of responsive web design; Good communication skills; Ability to work in a team; Good attention to detail.', '$70,000 - $85,000 per year', NULL, NULL, 'Digital Projects Manager', 'Experience using Git and GitHub; Basic understanding of UI/UX design; Experience working on digital projects.');

-- --------------------------------------------------------

--
-- Table structure for table `team_members`
--

CREATE TABLE `team_members` (
  `member_id` int(11) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `student_id` varchar(20) DEFAULT NULL,
  `project_role` varchar(100) NOT NULL,
  `contribution` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `team_members`
--

INSERT INTO `team_members` (`member_id`, `full_name`, `student_id`, `project_role`, `contribution`) VALUES
(1, 'Taim Ataallah', NULL, 'MySQL Database Developer', 'Created the MySQL database, database tables, SQL queries and PHP database connection.'),
(2, 'Lazaro Wiriamo Macamo', NULL, 'PHP and About Page Developer', 'Responsible for converting HTML pages to PHP and implementing the About page.'),
(3, 'Yaser Jamil , Ahmed', NULL, 'Jobs Page Developer', 'Developed the PHP job search functionality and jobs page.'),
(4, 'Abdul-Rahman Emad Shehada', NULL, 'EOI Processing Developer', 'Responsible for application processing and server-side validation.'),
(5, 'Abdulla Mosed Mohamed Musaid, Ali', NULL, 'Manager Page Developer', 'Responsible for manager authentication and application management.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `eoi`
--
ALTER TABLE `eoi`
  ADD PRIMARY KEY (`EOInumber`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`job_ref`);

--
-- Indexes for table `team_members`
--
ALTER TABLE `team_members`
  ADD PRIMARY KEY (`member_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `eoi`
--
ALTER TABLE `eoi`
  MODIFY `EOInumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `team_members`
--
ALTER TABLE `team_members`
  MODIFY `member_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
