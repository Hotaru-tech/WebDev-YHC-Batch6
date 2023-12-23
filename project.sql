-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 23, 2023 at 01:08 PM
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
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookmark`
--

CREATE TABLE `bookmark` (
  `user_id` varchar(20) NOT NULL,
  `playlist_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` varchar(20) NOT NULL,
  `content_id` varchar(20) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `tutor_id` varchar(20) NOT NULL,
  `comment` varchar(1000) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `content_id`, `user_id`, `tutor_id`, `comment`, `date`) VALUES
('wAF4OMcnVLxY1wTDRsHE', 'Yg1iSUKKoblUxR312h8L', '7glT1btpwaFa0y4uBvUl', 'zeGKUJbKwzH9sDf63cjB', 'video nya keren kak,semoga lulus yhc ya kakkk', '2023-12-23'),
('JzRNlATfirIGNfj74P5l', 's9U0aKli0YHYiTzV8CR5', '7glT1btpwaFa0y4uBvUl', 'zeGKUJbKwzH9sDf63cjB', 'sangat keren kakkk,semiga lulus yhc', '2023-12-23'),
('iAOHymQgkSAcMKi6Uk9A', 'KLL2YUNOSE1B1VtYVTnl', '7glT1btpwaFa0y4uBvUl', 'zeGKUJbKwzH9sDf63cjB', 'kakk keren hehe', '2023-12-23'),
('j2Q8uZVjUHiqNtfjoqBw', 'xmWwkP2JcegMP3mK7Rjb', '7glT1btpwaFa0y4uBvUl', 'zeGKUJbKwzH9sDf63cjB', 'aw keren banget ', '2023-12-23'),
('lFWyYe6yJpBLcBiE0U8k', 'laSlOBYm9Dp6pZAiL1Uj', '7glT1btpwaFa0y4uBvUl', 'zeGKUJbKwzH9sDf63cjB', 'bagus banget kak', '2023-12-23');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `number` int(10) NOT NULL,
  `message` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `id` varchar(20) NOT NULL,
  `tutor_id` varchar(20) NOT NULL,
  `playlist_id` varchar(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `video` varchar(100) NOT NULL,
  `thumb` varchar(100) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `status` varchar(20) NOT NULL DEFAULT 'deactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`id`, `tutor_id`, `playlist_id`, `title`, `description`, `video`, `thumb`, `date`, `status`) VALUES
('Yg1iSUKKoblUxR312h8L', 'zeGKUJbKwzH9sDf63cjB', 'U00vtwQK99xcoaQIeHhY', 'Pemrograman Dasar 1', 'Selamat datang di kursus &#34;Mengenal Dasar-dasar Pengembangan Web&#34;! Dalam video ini, Anda akan diajak memahami konsep-konsep dasar dunia web, mulai dari struktur HTML, styling dengan CSS, hingga responsivitas dan animasi. Kami akan mengajak Anda memahami mengapa pengembangan web sangat penting, memperkenalkan dasar-dasar HTML dan CSS untuk mempercantik tampilan website, serta memberikan pengenalan tentang responsivitas dan animasi untuk memastikan website Anda optimal di semua perangkat. Segera mulai perjalanan Anda dalam dunia pengembangan web dengan video ini dan jangan ragu untuk berinteraksi serta berbagi pengalaman Anda di bagian komentar!', 'WRw6cv1bf9RQgcefUDMJ.mp4', 'Ru1isZ6dlyHonKxJ6znH.webp', '2023-12-23', 'active'),
('KLL2YUNOSE1B1VtYVTnl', 'zeGKUJbKwzH9sDf63cjB', 'GhQWEJEGXIEsStHAIuTH', 'Pemrograman dasar JS', 'Selamat datang di kursus &#34;Mengenal Dasar-dasar Pengembangan Web&#34;! Dalam video ini, Anda akan diajak memahami konsep-konsep dasar dunia web, mulai dari struktur HTML, styling dengan CSS, hingga responsivitas dan animasi. Kami akan mengajak Anda memahami mengapa pengembangan web sangat penting, memperkenalkan dasar-dasar HTML dan CSS untuk mempercantik tampilan website, serta memberikan pengenalan tentang responsivitas dan animasi untuk memastikan website Anda optimal di semua perangkat. Segera mulai perjalanan Anda dalam dunia pengembangan web dengan video ini dan jangan ragu untuk berinteraksi serta berbagi pengalaman Anda di bagian komentar!', 'hSkFu9WRrgB1NMaEIY8E.mp4', 'qgZPqgVTUhpF88v2diEz.webp', '2023-12-23', 'active'),
('xmWwkP2JcegMP3mK7Rjb', 'zeGKUJbKwzH9sDf63cjB', '7qbFnHUU6aaFYpD1oERP', 'Pemrograman dasar JS', 'Selamat datang di kursus &#34;Mengenal Dasar-dasar Pengembangan Web&#34;! Dalam video ini, Anda akan diajak memahami konsep-konsep dasar dunia web, mulai dari struktur HTML, styling dengan CSS, hingga responsivitas dan animasi. Kami akan mengajak Anda memahami mengapa pengembangan web sangat penting, memperkenalkan dasar-dasar HTML dan CSS untuk mempercantik tampilan website, serta memberikan pengenalan tentang responsivitas dan animasi untuk memastikan website Anda optimal di semua perangkat. Segera mulai perjalanan Anda dalam dunia pengembangan web dengan video ini dan jangan ragu untuk berinteraksi serta berbagi pengalaman Anda di bagian komentar!', 'hXlBc1orDdqwkHPYYJtQ.mp4', '2gVk1xWRhG3W00PEHUOC.webp', '2023-12-23', 'active'),
('laSlOBYm9Dp6pZAiL1Uj', 'zeGKUJbKwzH9sDf63cjB', '9fj0saVefrDCY9rooR3f', 'Pemrograman dasar JS mahir', 'Selamat datang di kursus &#34;Mengenal Dasar-dasar Pengembangan Web&#34;! Dalam video ini, Anda akan diajak memahami konsep-konsep dasar dunia web, mulai dari struktur HTML, styling dengan CSS, hingga responsivitas dan animasi. Kami akan mengajak Anda memahami mengapa pengembangan web sangat penting, memperkenalkan dasar-dasar HTML dan CSS untuk mempercantik tampilan website, serta memberikan pengenalan tentang responsivitas dan animasi untuk memastikan website Anda optimal di semua perangkat. Segera mulai perjalanan Anda dalam dunia pengembangan web dengan video ini dan jangan ragu untuk berinteraksi serta berbagi pengalaman Anda di bagian komentar!', 'Qo2u7USl9iqjDevzaW6Y.mp4', 'dwSmjlobZ0BrPfeMc4Br.webp', '2023-12-23', 'active'),
('s9U0aKli0YHYiTzV8CR5', 'zeGKUJbKwzH9sDf63cjB', 'uCJXAQqPyhUBKKisqGBb', 'Pemrograman dasar HTML', 'Selamat datang di kursus &#34;Mengenal Dasar-dasar Pengembangan Web&#34;! Dalam video ini, Anda akan diajak memahami konsep-konsep dasar dunia web, mulai dari struktur HTML, styling dengan CSS, hingga responsivitas dan animasi. Kami akan mengajak Anda memahami mengapa pengembangan web sangat penting, memperkenalkan dasar-dasar HTML dan CSS untuk mempercantik tampilan website, serta memberikan pengenalan tentang responsivitas dan animasi untuk memastikan website Anda optimal di semua perangkat. Segera mulai perjalanan Anda dalam dunia pengembangan web dengan video ini dan jangan ragu untuk berinteraksi serta berbagi pengalaman Anda di bagian komentar!', 'KfWBg9uXgUkPznS9kTMe.mp4', 'n7VvSvuuHn3AdDE5OKLd.png', '2023-12-23', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `user_id` varchar(20) NOT NULL,
  `tutor_id` varchar(20) NOT NULL,
  `content_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`user_id`, `tutor_id`, `content_id`) VALUES
('7glT1btpwaFa0y4uBvUl', 'zeGKUJbKwzH9sDf63cjB', 'Yg1iSUKKoblUxR312h8L');

-- --------------------------------------------------------

--
-- Table structure for table `playlist`
--

CREATE TABLE `playlist` (
  `id` varchar(20) NOT NULL,
  `tutor_id` varchar(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `thumb` varchar(100) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `status` varchar(20) NOT NULL DEFAULT 'deactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `playlist`
--

INSERT INTO `playlist` (`id`, `tutor_id`, `title`, `description`, `thumb`, `date`, `status`) VALUES
('uCJXAQqPyhUBKKisqGBb', 'zeGKUJbKwzH9sDf63cjB', 'Pemrograman Web', 'Selamat datang di kursus &#34;Mengenal Dasar-dasar Pengembangan Web&#34;! Dalam video ini, Anda akan diajak memahami konsep-konsep dasar dunia web, mulai dari struktur HTML, styling dengan CSS, hingga responsivitas dan animasi. Kami akan mengajak Anda memahami mengapa pengembangan web sangat penting, memperkenalkan dasar-dasar HTML dan CSS untuk mempercantik tampilan website, serta memberikan pengenalan tentang responsivitas dan animasi untuk memastikan website Anda optimal di semua perangkat. Segera mulai perjalanan Anda dalam dunia pengembangan web dengan video ini dan jangan ragu untuk berinteraksi serta berbagi pengalaman Anda di bagian komentar!', '59fUsaZKY5Aq8oajuPca.png', '2023-12-23', 'active'),
('U00vtwQK99xcoaQIeHhY', 'zeGKUJbKwzH9sDf63cjB', 'Pemrograman Web 2', 'Selamat datang di kursus &#34;Mengenal Dasar-dasar Pengembangan Web&#34;! Dalam video ini, Anda akan diajak memahami konsep-konsep dasar dunia web, mulai dari struktur HTML, styling dengan CSS, hingga responsivitas dan animasi. Kami akan mengajak Anda memahami mengapa pengembangan web sangat penting, memperkenalkan dasar-dasar HTML dan CSS untuk mempercantik tampilan website, serta memberikan pengenalan tentang responsivitas dan animasi untuk memastikan website Anda optimal di semua perangkat. Segera mulai perjalanan Anda dalam dunia pengembangan web dengan video ini dan jangan ragu untuk berinteraksi serta berbagi pengalaman Anda di bagian komentar!', '9i4Nz79pDSYK8WJvej1z.webp', '2023-12-23', 'active'),
('GhQWEJEGXIEsStHAIuTH', 'zeGKUJbKwzH9sDf63cjB', 'Pembelajaran Web 2 Js lanjutan', 'Selamat datang di kursus &#34;Mengenal Dasar-dasar Pengembangan Web&#34;! Dalam video ini, Anda akan diajak memahami konsep-konsep dasar dunia web, mulai dari struktur HTML, styling dengan CSS, hingga responsivitas dan animasi. Kami akan mengajak Anda memahami mengapa pengembangan web sangat penting, memperkenalkan dasar-dasar HTML dan CSS untuk mempercantik tampilan website, serta memberikan pengenalan tentang responsivitas dan animasi untuk memastikan website Anda optimal di semua perangkat. Segera mulai perjalanan Anda dalam dunia pengembangan web dengan video ini dan jangan ragu untuk berinteraksi serta berbagi pengalaman Anda di bagian komentar!', '6nzsTyJImFma8zkso6oR.webp', '2023-12-23', 'active'),
('7qbFnHUU6aaFYpD1oERP', 'zeGKUJbKwzH9sDf63cjB', 'Pembelajaran web 2 js DOM', 'Selamat datang di kursus &#34;Mengenal Dasar-dasar Pengembangan Web&#34;! Dalam video ini, Anda akan diajak memahami konsep-konsep dasar dunia web, mulai dari struktur HTML, styling dengan CSS, hingga responsivitas dan animasi. Kami akan mengajak Anda memahami mengapa pengembangan web sangat penting, memperkenalkan dasar-dasar HTML dan CSS untuk mempercantik tampilan website, serta memberikan pengenalan tentang responsivitas dan animasi untuk memastikan website Anda optimal di semua perangkat. Segera mulai perjalanan Anda dalam dunia pengembangan web dengan video ini dan jangan ragu untuk berinteraksi serta berbagi pengalaman Anda di bagian komentar!', '49AokuMMvm2XIqtI3vAx.webp', '2023-12-23', 'active'),
('9fj0saVefrDCY9rooR3f', 'zeGKUJbKwzH9sDf63cjB', 'Pembelajaran Web 3 JS Mahir', 'Selamat datang di kursus &#34;Mengenal Dasar-dasar Pengembangan Web&#34;! Dalam video ini, Anda akan diajak memahami konsep-konsep dasar dunia web, mulai dari struktur HTML, styling dengan CSS, hingga responsivitas dan animasi. Kami akan mengajak Anda memahami mengapa pengembangan web sangat penting, memperkenalkan dasar-dasar HTML dan CSS untuk mempercantik tampilan website, serta memberikan pengenalan tentang responsivitas dan animasi untuk memastikan website Anda optimal di semua perangkat. Segera mulai perjalanan Anda dalam dunia pengembangan web dengan video ini dan jangan ragu untuk berinteraksi serta berbagi pengalaman Anda di bagian komentar!', 'taDFKdu93G0ImcttMAyR.webp', '2023-12-23', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `tutors`
--

CREATE TABLE `tutors` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `profession` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tutors`
--

INSERT INTO `tutors` (`id`, `name`, `profession`, `email`, `password`, `image`) VALUES
('zeGKUJbKwzH9sDf63cjB', 'Lumine', 'developer', 'hidayatfajar764@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964', 'sOt0dVLabRsUeyKqEiBW.jpeg'),
('xx6NekQ5aKhTDf0Xp1vv', 'Akira', 'teacher', 'Akira123@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964', 'wB6yPwmX2PkaDpnNwvXJ.jpg'),
('KRXd0YVfFzjHFLLTufwE', 'Hafiz', 'biologist', 'Hafiz123@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964', '3F4lNqN9k4jqMl9FLzii.png'),
('THPwvCvTBS56IDW9YuJo', 'Rijal', 'engineer', 'Rijal123@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964', 'yQTtJkmMh3vA02DpIiCV.png'),
('HOXMfZjuwJ0CAp3YbGIf', 'Renald', 'photographer', 'renald123@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964', 'Keq9jl99sSAu7kdugvR0.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `image`) VALUES
('7glT1btpwaFa0y4uBvUl', 'Fajar Hidayat', '2110817310009@mhs.ulm.ac.id', '8cb2237d0679ca88db6464eac60da96345513964', '9LpF2NQFogjoG2fupNVS.JPG');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
