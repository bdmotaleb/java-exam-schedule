-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 10, 2023 at 03:06 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `routine_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `name`, `code`) VALUES
(1, 'One', 'C1'),
(2, 'Two', 'C2'),
(3, 'Three', 'C3'),
(4, 'Four', 'C4'),
(5, 'Five', 'C5'),
(6, 'Six', 'C6'),
(7, 'Seven', 'C7'),
(8, 'Eight', 'C8'),
(9, 'Nine', 'C9'),
(10, 'Ten', 'C10'),
(11, 'Eleven', 'C11'),
(12, 'Twelve', 'C12');

-- --------------------------------------------------------

--
-- Table structure for table `class_rooms`
--

CREATE TABLE `class_rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `class_rooms`
--

INSERT INTO `class_rooms` (`id`, `name`, `code`) VALUES
(1, 'Room 1', 'R1'),
(2, 'Room 2', 'R2'),
(3, 'Room 3', 'R3'),
(4, 'Room 4', 'R4'),
(5, 'Room 5', 'R5'),
(6, 'Room 6', 'R6'),
(7, 'Room 7', 'R7'),
(8, 'Room 8', 'R8'),
(9, 'Room 9', 'R9'),
(10, 'Room 10', 'R10');

-- --------------------------------------------------------

--
-- Table structure for table `exam_routines`
--

CREATE TABLE `exam_routines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `class_id` bigint(20) UNSIGNED NOT NULL,
  `teacher_id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `time_slot_id` bigint(20) UNSIGNED NOT NULL,
  `class_room_id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exam_routines`
--

INSERT INTO `exam_routines` (`id`, `class_id`, `teacher_id`, `subject_id`, `time_slot_id`, `class_room_id`, `date`) VALUES
(1, 1, 1, 1, 1, 1, '2023-04-01'),
(2, 2, 2, 2, 2, 2, '2023-04-02'),
(3, 3, 3, 3, 3, 3, '2023-04-03'),
(4, 4, 4, 4, 4, 4, '2023-04-04'),
(5, 5, 5, 5, 5, 5, '2023-04-05');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `class_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `class_id`, `name`, `email`, `phone`, `address`) VALUES
(1, 5, 'Student 1', 's1@edu.com', '01477777771', 'Address 1'),
(2, 9, 'Student 2', 's2@edu.com', '01477777772', 'Address 2'),
(3, 4, 'Student 3', 's3@edu.com', '01477777773', 'Address 3'),
(4, 9, 'Student 4', 's4@edu.com', '01477777774', 'Address 4'),
(5, 3, 'Student 5', 's5@edu.com', '01477777775', 'Address 5'),
(6, 5, 'Student 6', 's6@edu.com', '01477777776', 'Address 6'),
(7, 10, 'Student 7', 's7@edu.com', '01477777777', 'Address 7'),
(8, 4, 'Student 8', 's8@edu.com', '01477777778', 'Address 8'),
(9, 3, 'Student 9', 's9@edu.com', '01477777779', 'Address 9'),
(10, 2, 'Student 10', 's10@edu.com', '014777777710', 'Address 10'),
(11, 8, 'Student 11', 's11@edu.com', '014777777711', 'Address 11'),
(12, 12, 'Student 12', 's12@edu.com', '014777777712', 'Address 12'),
(13, 2, 'Student 13', 's13@edu.com', '014777777713', 'Address 13'),
(14, 5, 'Student 14', 's14@edu.com', '014777777714', 'Address 14'),
(15, 10, 'Student 15', 's15@edu.com', '014777777715', 'Address 15'),
(16, 1, 'Student 16', 's16@edu.com', '014777777716', 'Address 16'),
(17, 8, 'Student 17', 's17@edu.com', '014777777717', 'Address 17'),
(18, 3, 'Student 18', 's18@edu.com', '014777777718', 'Address 18'),
(19, 6, 'Student 19', 's19@edu.com', '014777777719', 'Address 19'),
(20, 11, 'Student 20', 's20@edu.com', '014777777720', 'Address 20');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `class_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `class_id`, `name`, `code`) VALUES
(1, 2, 'Subject 1', 'S1'),
(2, 9, 'Subject 2', 'S2'),
(3, 6, 'Subject 3', 'S3'),
(4, 6, 'Subject 4', 'S4'),
(5, 9, 'Subject 5', 'S5'),
(6, 7, 'Subject 6', 'S6'),
(7, 9, 'Subject 7', 'S7'),
(8, 10, 'Subject 8', 'S8'),
(9, 11, 'Subject 9', 'S9'),
(10, 1, 'Subject 10', 'S10'),
(11, 5, 'Subject 11', 'S11'),
(12, 11, 'Subject 12', 'S12'),
(13, 5, 'Subject 13', 'S13'),
(14, 6, 'Subject 14', 'S14'),
(15, 3, 'Subject 15', 'S15'),
(16, 7, 'Subject 16', 'S16'),
(17, 1, 'Subject 17', 'S17'),
(18, 10, 'Subject 18', 'S18'),
(19, 10, 'Subject 19', 'S19'),
(20, 3, 'Subject 20', 'S20');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `name`, `code`, `email`, `phone`) VALUES
(1, 'Update', 'T1', 't1@edu.com', '01784554446'),
(2, 'Teacher 2', 'T2', 't2@edu.com', '01477777772'),
(3, 'Teacher 3', 'T3', 't3@edu.com', '01477777773'),
(4, 'Teacher 4', 'T4', 't4@edu.com', '01477777774'),
(5, 'Teacher 5', 'T51', 't5@edu.com', '01477777775');

-- --------------------------------------------------------

--
-- Table structure for table `time_slots`
--

CREATE TABLE `time_slots` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `time_slots`
--

INSERT INTO `time_slots` (`id`, `start_time`, `end_time`) VALUES
(1, '08:00:00', '10:00:00'),
(2, '10:00:00', '12:00:00'),
(3, '12:00:00', '14:00:00'),
(4, '14:00:00', '16:00:00'),
(5, '19:00:00', '21:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'Admin', 'admin@admin.com', '$2y$10$.wM0fSDyiOLtJByZ4JpFFusGkMU8me0QUaI4XYqycWSP9CxOoiynS'),
(5, 'Sample', 'sample@gmail.com', '123456');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_rooms`
--
ALTER TABLE `class_rooms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `class_rooms_code_unique` (`code`);

--
-- Indexes for table `exam_routines`
--
ALTER TABLE `exam_routines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_routines_class_id_foreign` (`class_id`),
  ADD KEY `exam_routines_teacher_id_foreign` (`teacher_id`),
  ADD KEY `exam_routines_subject_id_foreign` (`subject_id`),
  ADD KEY `exam_routines_time_slot_id_foreign` (`time_slot_id`),
  ADD KEY `exam_routines_class_room_id_foreign` (`class_room_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `students_email_unique` (`email`),
  ADD UNIQUE KEY `students_phone_unique` (`phone`),
  ADD KEY `students_class_id_foreign` (`class_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subjects_code_unique` (`code`),
  ADD KEY `subjects_class_id_foreign` (`class_id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `teachers_email_unique` (`email`),
  ADD UNIQUE KEY `teachers_phone_unique` (`phone`);

--
-- Indexes for table `time_slots`
--
ALTER TABLE `time_slots`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `class_rooms`
--
ALTER TABLE `class_rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `exam_routines`
--
ALTER TABLE `exam_routines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `time_slots`
--
ALTER TABLE `time_slots`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `exam_routines`
--
ALTER TABLE `exam_routines`
  ADD CONSTRAINT `exam_routines_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`),
  ADD CONSTRAINT `exam_routines_class_room_id_foreign` FOREIGN KEY (`class_room_id`) REFERENCES `class_rooms` (`id`),
  ADD CONSTRAINT `exam_routines_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`),
  ADD CONSTRAINT `exam_routines_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`),
  ADD CONSTRAINT `exam_routines_time_slot_id_foreign` FOREIGN KEY (`time_slot_id`) REFERENCES `time_slots` (`id`);

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`);

--
-- Constraints for table `subjects`
--
ALTER TABLE `subjects`
  ADD CONSTRAINT `subjects_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
