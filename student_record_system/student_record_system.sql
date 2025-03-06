-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 06, 2025 at 04:47 PM
-- Server version: 8.4.2
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student_record_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `assignments`
--

CREATE TABLE `assignments` (
  `id` int NOT NULL,
  `course_id` int DEFAULT NULL,
  `instructor_id` int DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `description` text COLLATE utf8mb4_general_ci NOT NULL,
  `due_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assignments`
--

INSERT INTO `assignments` (`id`, `course_id`, `instructor_id`, `title`, `description`, `due_date`) VALUES
(1, 1, 1, 'Programming Basics', 'Complete the introductory programming tasks.', '2025-03-05'),
(2, 2, 2, 'Accounting Principles', 'Balance sheet preparation.', '2025-03-10'),
(3, 1, 4, '', '', '0000-00-00'),
(4, 2, 1, '', '', '0000-00-00'),
(5, 1, 4, 'programming ', '', '0000-00-00'),
(6, 3, 2, 'math', 'math', '0000-00-00'),
(7, 2, 1, 'accounting All', '', '0000-00-00'),
(8, 5, 3, 'civil Live', '', '0000-00-00'),
(9, 5, 2, 'Basic Civil', '', '0000-00-00'),
(10, 4, 2, 'Physics ', 'chapter 1-5', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int NOT NULL,
  `student_id` int DEFAULT NULL,
  `course_id` int DEFAULT NULL,
  `date` date NOT NULL,
  `status` enum('Present','Absent','Late') COLLATE utf8mb4_general_ci DEFAULT 'Present'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `student_id`, `course_id`, `date`, `status`) VALUES
(1, 1, 1, '2025-02-25', 'Present'),
(2, 2, 2, '2025-02-25', 'Absent'),
(3, 3, 3, '2025-02-26', 'Present'),
(4, 6, 3, '2025-03-05', 'Present'),
(5, 4, 5, '2025-03-05', 'Absent'),
(6, 3, 5, '2025-03-05', 'Present'),
(7, 3, 2, '2025-03-04', 'Present'),
(8, 8, 5, '2025-03-04', 'Absent'),
(9, 10, 2, '2025-03-03', 'Absent'),
(10, 7, 5, '2025-03-05', 'Present');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `description` text COLLATE utf8mb4_general_ci NOT NULL,
  `department_id` int DEFAULT NULL,
  `instructor_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `title`, `description`, `department_id`, `instructor_id`) VALUES
(1, 'Introduction to Programming', 'Learn the basics of programming.', 1, 1),
(2, 'Financial Accounting', 'Basic accounting principles.', 2, 2),
(3, 'Calculus I', 'Fundamentals of calculus.', 3, 3),
(4, 'Classical Physics', 'Newtonian mechanics.', 4, 4),
(5, 'Civil Engineering Basics', 'Structural fundamentals.', 5, 5),
(6, 'Classical Physics', 'Physics bacics', 1, 6),
(7, 'math advance ', 'math chapter 5-7', 3, 7),
(8, 'Electronic computing devices', 'intro ', 10, 8),
(9, 'Low-power ', 'Low-power electrical circuits using of active components such as semiconductor devices', 10, 9),
(10, 'transportation ', 'Facilities and infrastructure for any form of transportation of people and cargo', 8, 10);

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`) VALUES
(2, 'Business Administration'),
(1, 'Computer Science'),
(6, 'CSE'),
(10, 'Electronic engineering'),
(3, 'Mathematics'),
(7, 'Neural engineering'),
(4, 'Physics'),
(9, 'Structural engineering'),
(5, 'Textile Engineering'),
(8, 'Transport engineering');

-- --------------------------------------------------------

--
-- Table structure for table `enrollments`
--

CREATE TABLE `enrollments` (
  `id` int NOT NULL,
  `student_id` int DEFAULT NULL,
  `course_id` int DEFAULT NULL,
  `enrollment_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `enrollments`
--

INSERT INTO `enrollments` (`id`, `student_id`, `course_id`, `enrollment_date`) VALUES
(1, 1, 1, '2025-03-03 16:10:19'),
(2, 2, 2, '2025-03-03 16:10:19'),
(3, 3, 3, '2025-03-03 16:10:19'),
(4, 4, 4, '2025-03-03 16:10:19'),
(5, 5, 5, '2025-03-03 16:10:19'),
(6, 6, 4, '2025-03-03 17:43:42'),
(7, 7, 4, '2025-03-04 17:44:01'),
(8, 8, 4, '2025-03-04 17:44:11'),
(9, 9, 6, '2025-03-05 17:44:22'),
(10, 10, 6, '2025-03-01 17:44:31');

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `id` int NOT NULL,
  `student_id` int DEFAULT NULL,
  `course_id` int DEFAULT NULL,
  `grade` char(2) COLLATE utf8mb4_general_ci DEFAULT NULL
) ;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`id`, `student_id`, `course_id`, `grade`) VALUES
(1, 6, 5, 'a'),
(2, 2, 3, 'a'),
(3, 3, 6, 'b'),
(4, 4, 5, 'b'),
(5, 5, 5, 'a'),
(6, 6, 5, 'a'),
(7, 7, 5, 'c'),
(8, 8, 5, 'a'),
(9, 9, 5, 'a'),
(10, 10, 4, 'c');

-- --------------------------------------------------------

--
-- Table structure for table `instructors`
--

CREATE TABLE `instructors` (
  `id` int NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `department_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `instructors`
--

INSERT INTO `instructors` (`id`, `name`, `email`, `phone`, `department_id`) VALUES
(1, 'Dr. Anwar Hossain', 'anwar.hossain@example.com', '01710000006', 1),
(2, 'Dr. Salma Akter', 'salma.akter@example.com', '01710000007', 2),
(3, 'Dr. Mizanur Rahman', 'mizanur.rahman@example.com', '01710000008', 3),
(4, 'Dr. Firoz Mahmud', 'firoz.mahmud@example.com', '01710000009', 4),
(5, 'Dr. Taslima Begum', 'taslima.begum@example.com', '01710000010', 5),
(6, 'DR. Ahsan', 'ahsan@gmail.com', '0130203789', 4),
(7, 'Asma akter', 'asma@gmail.com', '01300789456', 5),
(8, 'Sofik ahmed', 'sofik456@gmail.com', '0130853045', 2),
(9, 'Afzall hossain', 'afzal2003@gmail.com', '01758203045', 2),
(10, 'Sofiq ahmed', 'ahmed2007@gmail.com', '0165293040', 1);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int NOT NULL,
  `student_id` int DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `payment_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('Pending','Completed','Failed') COLLATE utf8mb4_general_ci DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `student_id`, `amount`, `payment_date`, `status`) VALUES
(1, 1, 5000.00, '2025-03-03 16:10:19', 'Completed'),
(2, 2, 4500.00, '2025-03-03 16:10:19', 'Completed'),
(3, 3, 4000.00, '2025-03-03 16:10:19', 'Completed'),
(4, 4, 4000.00, '2025-03-05 17:41:28', 'Completed'),
(5, 5, 4500.00, '2025-03-01 17:41:58', 'Pending'),
(6, 6, 4500.00, '2025-03-04 17:42:15', 'Completed'),
(7, 7, 4000.00, '2025-03-04 17:42:34', 'Completed'),
(8, 8, 4000.00, '2025-03-04 17:42:48', 'Pending'),
(9, 9, 4500.00, '2025-03-03 17:43:07', 'Completed'),
(10, 10, 4000.00, '2025-03-04 17:43:18', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `address` text COLLATE utf8mb4_general_ci NOT NULL,
  `dob` date NOT NULL,
  `gender` enum('Male','Female','Other') COLLATE utf8mb4_general_ci NOT NULL,
  `enrollment_date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `email`, `phone`, `address`, `dob`, `gender`, `enrollment_date`, `created_at`) VALUES
(1, 'Hasan Mahmud', 'hasan.mahmud@example.com', '01710000001', 'Mirpur, Dhaka', '2001-05-10', 'Male', '2020-01-15', '2025-03-03 16:10:19'),
(2, 'Tahmina Sultana', 'tahmina.sultana@example.com', '01710000002', 'Agrabad, Chittagong', '2000-07-22', 'Female', '2019-06-10', '2025-03-03 16:10:19'),
(3, 'Rakib Hossain', 'rakib.hossain@example.com', '01710000003', 'Zindabazar, Sylhet', '2002-04-18', 'Male', '2021-09-25', '2025-03-03 16:10:19'),
(4, 'Nusrat Jahan', 'nusrat.jahan@example.com', '01710000004', 'Khalishpur, Khulna', '1999-11-15', 'Female', '2018-03-10', '2025-03-03 16:10:19'),
(5, 'Arif Ahmed', 'arif.ahmed@example.com', '01710000005', 'New Market, Rajshahi', '2001-03-05', 'Male', '2020-11-05', '2025-03-03 16:10:19'),
(6, 'MD Mehedi Hasan Rabby', 'asdfg@gmail.com', '013035464646', 'D road', '2015-03-04', 'Male', '2025-03-03', '2025-03-03 16:13:42'),
(7, 'Rakib Khan', 'abcd@gmail.com', '01300000000', 'ghos road, Dahka', '2015-03-02', 'Male', '2025-03-03', '2025-03-05 17:23:56'),
(8, 'Farzana akter ', 'farzana@gmail.com', '0130203040', 'comilla', '2015-03-04', 'Female', '2025-03-03', '2025-03-05 17:25:54'),
(9, 'Hridoy Hossain', 'hossain@gmail.com', '0130203045', 'Mymenshingh', '2015-03-01', '', '0000-00-00', '2025-03-05 17:26:36'),
(10, 'Ashik abrar', 'ashik200@gmail.com', '01300001526', '', '2015-03-04', 'Male', '2025-03-03', '2025-03-05 17:29:11');

-- --------------------------------------------------------

--
-- Table structure for table `submissions`
--

CREATE TABLE `submissions` (
  `id` int NOT NULL,
  `assignment_id` int DEFAULT NULL,
  `student_id` int DEFAULT NULL,
  `submission_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `file_path` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `submissions`
--

INSERT INTO `submissions` (`id`, `assignment_id`, `student_id`, `submission_date`, `file_path`) VALUES
(1, 1, 1, '2025-03-03 18:00:00', '/uploads/prog_basics.pdf'),
(2, 1, 2, '2025-03-04 17:57:09', 'attached'),
(3, 1, 3, '2025-03-04 17:58:03', 'attached'),
(5, 1, 4, '2025-03-05 17:58:39', 'attached'),
(6, 1, 5, '2025-03-05 17:59:00', 'attached'),
(7, 1, 6, '2025-03-05 17:59:15', 'attached'),
(8, 1, 7, '2025-03-05 17:59:30', 'attached'),
(9, 1, 8, '2025-03-05 17:59:52', 'attached'),
(10, 1, 9, '2025-03-05 17:59:54', 'attached'),
(12, 1, 10, '2025-03-04 18:01:01', 'attached');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assignments`
--
ALTER TABLE `assignments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `instructor_id` (`instructor_id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `department_id` (`department_id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `enrollments`
--
ALTER TABLE `enrollments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `instructors`
--
ALTER TABLE `instructors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `department_id` (`department_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `submissions`
--
ALTER TABLE `submissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assignment_id` (`assignment_id`),
  ADD KEY `student_id` (`student_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assignments`
--
ALTER TABLE `assignments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `enrollments`
--
ALTER TABLE `enrollments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `instructors`
--
ALTER TABLE `instructors`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `submissions`
--
ALTER TABLE `submissions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assignments`
--
ALTER TABLE `assignments`
  ADD CONSTRAINT `assignments_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `assignments_ibfk_2` FOREIGN KEY (`instructor_id`) REFERENCES `instructors` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attendance_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `enrollments`
--
ALTER TABLE `enrollments`
  ADD CONSTRAINT `enrollments_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `enrollments_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `grades`
--
ALTER TABLE `grades`
  ADD CONSTRAINT `grades_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `grades_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `instructors`
--
ALTER TABLE `instructors`
  ADD CONSTRAINT `instructors_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `submissions`
--
ALTER TABLE `submissions`
  ADD CONSTRAINT `submissions_ibfk_1` FOREIGN KEY (`assignment_id`) REFERENCES `assignments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `submissions_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
