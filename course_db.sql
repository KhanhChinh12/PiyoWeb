-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 06, 2024 lúc 02:43 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `course_db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bookmark`
--

CREATE TABLE `bookmark` (
  `user_id` varchar(20) NOT NULL,
  `playlist_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
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
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id`, `content_id`, `user_id`, `tutor_id`, `comment`, `date`) VALUES
('c6ChSnEFhYFpqLb7kwfJ', 'nrQnH3BSykVT90GzAKVi', 'Kkn1Uoit5pdWi1ELwRrA', '2dh2xGKFfFDHVU6Kb6nh', 'Bài giảng hay quá ạ ', '2024-06-05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact`
--

CREATE TABLE `contact` (
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `number` int(10) NOT NULL,
  `message` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `content`
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
-- Đang đổ dữ liệu cho bảng `content`
--

INSERT INTO `content` (`id`, `tutor_id`, `playlist_id`, `title`, `description`, `video`, `thumb`, `date`, `status`) VALUES
('0udtqnWZJvjCOheuPlrq', 'AclfqSMlRvJg8MgCSuWA', 'Jy0KvwF2hdKNgS9kHjCu', 'Học từ vựng tiếng anh day 1', 'Học từ vựng tiếng anh day 1', '1sSc479vZmmjdTKaYjPJ.mp4', '4LestS3BVdOhZ7jYSoVO.png', '2024-06-05', 'active'),
('nrQnH3BSykVT90GzAKVi', '2dh2xGKFfFDHVU6Kb6nh', '2r8vNueb3rVhJN4o3wKj', 'Học từ vựng tiếng anh with Henry', 'Học từ vựng tiếng anh with Henry', '3vuWBEHo8sfJlyKdyHAh.mp4', 'zhHbVisChajQgSU9zafo.png', '2024-06-05', 'active'),
('M5FMXa2BKJIhW0McBd9P', 'GG7ZTJVgzFu4lz4rrZkl', 'jE3HzhhC9oNObNcu9ApN', 'Học từ vựng tiếng anh with B', 'Học từ vựng tiếng anh with B', 'fYvej3OzH1cNaDNs6Y78.mp4', 'TIDebA72pvDi1GyuqQOt.png', '2024-06-05', 'deactive'),
('z0Op0TxJihUEdUrTphnN', 'GG7ZTJVgzFu4lz4rrZkl', 'jE3HzhhC9oNObNcu9ApN', 'Học từ vựng tiếng anh with B lesson 2', 'Học từ vựng tiếng anh with B lesson 2', 'uT8IrrrJrVxxoWr3ixxF.mp4', 'fkGsM1VDgVnnNlbEvwsz.png', '2024-06-05', 'deactive'),
('kjadRsY69ZaoNdgrRrsR', 'GG7ZTJVgzFu4lz4rrZkl', 'jE3HzhhC9oNObNcu9ApN', 'Học từ vựng tiếng anh with B lesson 3', 'Học từ vựng tiếng anh with B lesson 3', 'FI9jHjBa71oqIUJ1Pk72.mp4', 'RbNmz529Mxt8t6NHatdO.png', '2024-06-05', 'deactive'),
('HmOgslzgPinXGjoxzHYb', '2dh2xGKFfFDHVU6Kb6nh', '2r8vNueb3rVhJN4o3wKj', 'Học từ vựng tiếng anh with Henry lesson 2', 'Học từ vựng tiếng anh with Henry lesson 2', 'IPZJqjPmV2ejOzLIRJAt.mp4', 'uMbpMMKvpCXcUjruEg7z.png', '2024-06-05', 'active');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `likes`
--

CREATE TABLE `likes` (
  `user_id` varchar(20) NOT NULL,
  `tutor_id` varchar(20) NOT NULL,
  `content_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `likes`
--

INSERT INTO `likes` (`user_id`, `tutor_id`, `content_id`) VALUES
('Kkn1Uoit5pdWi1ELwRrA', '2dh2xGKFfFDHVU6Kb6nh', 'nrQnH3BSykVT90GzAKVi');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `playlist`
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
-- Đang đổ dữ liệu cho bảng `playlist`
--

INSERT INTO `playlist` (`id`, `tutor_id`, `title`, `description`, `thumb`, `date`, `status`) VALUES
('Jy0KvwF2hdKNgS9kHjCu', 'AclfqSMlRvJg8MgCSuWA', 'Học từ vựng tiếng anh day 1', 'Học từ vựng tiếng anh day 1', 'jmODv8GzLbNOqrbuLrLO.jpg', '2024-06-05', 'active'),
('2r8vNueb3rVhJN4o3wKj', '2dh2xGKFfFDHVU6Kb6nh', 'Học từ vựng tiếng anh with Henry', 'Học từ vựng tiếng anh with Henry', 'WdP5Yr2SAewR6lUbvYRk.png', '2024-06-05', 'active'),
('jE3HzhhC9oNObNcu9ApN', 'GG7ZTJVgzFu4lz4rrZkl', 'Học từ vựng tiếng anh with B', 'Học từ vựng tiếng anh with B', 'S35O7GATeV92bZ2hZj4s.jpg', '2024-06-05', 'active');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tutors`
--

CREATE TABLE `tutors` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `profession` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tutors`
--

INSERT INTO `tutors` (`id`, `name`, `profession`, `email`, `password`, `image`) VALUES
('AclfqSMlRvJg8MgCSuWA', 'tutor A', 'teacher', 'tutorA@gmail.com', '1795f86a49ac810cf73714c4d1bec7c7e6586ee1', 'aUYzSPOr1RMVSKaj2SeJ.jpg'),
('2dh2xGKFfFDHVU6Kb6nh', 'tutor Henry', 'teacher', 'tutorhenry@gmail.com', 'ca981fc3fc66aa14327964c00e14b45e841ed283', '8RCkE1nsohNw95VZsIeU.png'),
('3FzSZnoNvaAR26ch9PPs', 'tutor Brian', 'teacher', 'brian@gmail.com', '32d5c3748311b217339a0114389b0480e503e1e9', 'LEs6bkr44raUSBx0mqFd.jpg'),
('GG7ZTJVgzFu4lz4rrZkl', 'tutor B', 'teacher', 'tutorB@gmail.com', 'f61ab0b38aac99b085e8695d951fe00c1e13c96d', 'sDU4IDbqFTf0Vcyz6oyx.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `image`) VALUES
('Kkn1Uoit5pdWi1ELwRrA', 'Wilfred Ngo', 'wilfred@gmail.com', 'ae470617d36362a11f5ae4035df7a5992bcfb7e3', 'gMhN07lmdSSQFdg9wPlg.png');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
