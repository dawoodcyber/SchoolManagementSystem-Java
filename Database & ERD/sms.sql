-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2024 at 06:23 PM
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
-- Database: `sms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`user_id`, `username`, `password`) VALUES
(1, 'dawood', 'admin'),
(2, 'huzaifa', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `attendance_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`attendance_id`, `user_id`, `date`, `status`) VALUES
(21, 11, '2024-06-25', 'Present'),
(22, 12, '2024-06-25', 'Absent'),
(23, 13, '2024-06-25', 'Present'),
(24, 14, '2024-06-25', 'Present'),
(25, 15, '2024-06-25', 'Absent'),
(26, 16, '2024-06-25', 'Present'),
(27, 17, '2024-06-25', 'Present'),
(28, 18, '2024-06-25', 'Absent'),
(29, 19, '2024-06-25', 'Present'),
(30, 20, '2024-06-25', 'Present'),
(31, 11, '2024-07-01', 'Present'),
(32, 12, '2024-07-02', 'Absent'),
(33, 13, '2024-07-03', 'Present'),
(34, 14, '2024-07-04', 'Absent'),
(35, 15, '2024-07-05', 'Present'),
(36, 16, '2024-07-06', 'Absent'),
(37, 17, '2024-07-07', 'Present'),
(38, 18, '2024-07-08', 'Absent'),
(39, 19, '2024-07-09', 'Present'),
(40, 20, '2024-07-10', 'Absent'),
(41, 11, '2024-07-11', 'Present'),
(42, 12, '2024-07-12', 'Absent'),
(43, 13, '2024-07-13', 'Present'),
(44, 14, '2024-07-14', 'Absent'),
(45, 15, '2024-07-15', 'Present'),
(46, 16, '2024-07-16', 'Absent'),
(47, 17, '2024-07-17', 'Present'),
(48, 18, '2024-07-18', 'Absent'),
(49, 19, '2024-07-19', 'Present'),
(50, 20, '2024-07-20', 'Absent'),
(51, 11, '2024-07-21', 'Present'),
(52, 12, '2024-07-22', 'Absent'),
(53, 13, '2024-07-23', 'Present'),
(54, 14, '2024-07-24', 'Absent'),
(55, 15, '2024-07-25', 'Present'),
(56, 16, '2024-07-26', 'Absent'),
(57, 17, '2024-07-27', 'Present'),
(58, 18, '2024-07-28', 'Absent'),
(59, 19, '2024-07-29', 'Present'),
(60, 20, '2024-07-30', 'Absent');

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `class_id` int(11) NOT NULL,
  `class_name` varchar(50) NOT NULL,
  `teacher_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`class_id`, `class_name`, `teacher_id`) VALUES
(1, 'Class 1', 1),
(2, 'Class 2', 2),
(3, 'Class 3', 3),
(4, 'Class 4', 4),
(5, 'Class 5', 5),
(6, 'Class 6', 6),
(7, 'Class 7', 7),
(8, 'Class 8', 8),
(9, 'Class 9', 9),
(10, 'Class 10', 10);

-- --------------------------------------------------------

--
-- Table structure for table `fees`
--

CREATE TABLE `fees` (
  `fee_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `status` varchar(10) NOT NULL,
  `due_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fees`
--

INSERT INTO `fees` (`fee_id`, `student_id`, `amount`, `status`, `due_date`) VALUES
(12, 12, 15000.00, 'Unpaid', '2024-07-03'),
(13, 13, 15000.00, 'Paid', '2024-07-01'),
(14, 14, 5000.00, 'Paid', '2024-07-01'),
(15, 15, 13000.00, 'Paid', '2024-07-01'),
(16, 16, 14000.00, 'Unpaid', '2024-07-01'),
(17, 17, 16000.00, 'Paid', '2024-07-01'),
(18, 18, 17000.00, 'Unpaid', '2024-07-01'),
(19, 19, 18000.00, 'Paid', '2024-07-01'),
(20, 20, 19000.00, 'Unpaid', '2024-07-01'),
(21, 11, 15000.00, 'Paid', '2024-07-02');

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `grade_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `grade` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`grade_id`, `student_id`, `subject_id`, `grade`) VALUES
(11, 11, 1, 'A'),
(12, 12, 2, 'B'),
(13, 13, 3, 'A'),
(14, 14, 4, 'B'),
(15, 15, 5, 'C'),
(16, 16, 6, 'A'),
(17, 17, 7, 'B'),
(18, 18, 8, 'A'),
(19, 19, 9, 'C'),
(20, 20, 10, 'B'),
(21, 11, 1, 'A');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `student_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`student_id`, `first_name`, `last_name`, `address`, `email`, `phone_number`, `class_id`) VALUES
(11, 'Amina', 'Ali', '21 Garden Town, Lahore', 'amina.ali@example.com', '03022345678', 1),
(12, 'Fahad', 'Rashid', '14 Shadman, Karachi', 'fahad.rashid@example.com', '03122345678', 2),
(13, 'Mariam', 'Khan', '99 Bahria Town, Islamabad', 'mariam.khan@example.com', '03222345678', 3),
(14, 'Hassan', 'Chaudhry', '43 Model Town, Lahore', 'hassan.chaudhry@example.com', '03322345678', 4),
(15, 'Nadia', 'Sheikh', '56 PECHS, Karachi', 'nadia.sheikh@example.com', '03422345678', 5),
(16, 'Yasir', 'Javed', '78 Blue Area, Islamabad', 'yasir.javed@example.com', '03032345678', 6),
(17, 'Sadia', 'Malik', '65 Gulistan-e-Johar, Karachi', 'sadia.malik@example.com', '03132345678', 7),
(18, 'Waqar', 'Hussain', '32 Satellite Town, Rawalpindi', 'waqar.hussain@example.com', '03232345678', 8),
(19, 'Zara', 'Ahmed', '90 DHA, Lahore', 'zara.ahmed@example.com', '03332345678', 9),
(20, 'Imran', 'Butt', '56 Canal View, Faisalabad', 'imran.butt@example.com', '03432345678', 10);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `subject_id` int(11) NOT NULL,
  `subject_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`subject_id`, `subject_name`) VALUES
(1, 'Mathematics'),
(2, 'Science'),
(3, 'History'),
(4, 'Urdu'),
(5, 'Islamiat'),
(6, 'Geography'),
(7, 'English'),
(8, 'Physics'),
(9, 'Chemistry'),
(10, 'Arts'),
(11, 'Calligraphy'),
(12, 'Biology'),
(13, 'Sindhi');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `teacher_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`teacher_id`, `first_name`, `last_name`, `address`, `email`, `phone_number`, `subject_id`) VALUES
(1, 'Ali', 'Ahmed', '123 Main St, Karachi', 'ali.ahmed@example.com', '03012345678', 1),
(2, 'Sara', 'Khan', '45 Park Lane, Lahore', 'sara.khan@example.com', '03011234567', 2),
(3, 'Usman', 'Siddiqui', '78 Mall Road, Islamabad', 'usman.siddiqui@example.com', '03019876543', 3),
(4, 'Ayesha', 'Yousuf', '56 Canal Road, Faisalabad', 'ayesha.yousuf@example.com', '03111234567', 1),
(5, 'Hamza', 'Butt', '23 Gulberg, Lahore', 'hamza.butt@example.com', '03219876543', 2),
(6, 'Fatima', 'Hussain', '90 Clifton, Karachi', 'fatima.hussain@example.com', '03311234567', 3),
(7, 'Ahmed', 'Shah', '12 I-8/3, Islamabad', 'ahmed.shah@example.com', '03459876543', 1),
(8, 'Zain', 'Malik', '65 DHA, Lahore', 'zain.malik@example.com', '03451234567', 2),
(9, 'Hina', 'Raza', '34 University Road, Karachi', 'hina.raza@example.com', '03469876543', 3),
(10, 'Bilal', 'Qureshi', '89 Satellite Town, Rawalpindi', 'bilal.qureshi@example.com', '03471234567', 1);

-- --------------------------------------------------------

--
-- Table structure for table `timetable`
--

CREATE TABLE `timetable` (
  `timetable_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `day` varchar(10) NOT NULL,
  `time` time NOT NULL,
  `subject_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `timetable`
--

INSERT INTO `timetable` (`timetable_id`, `class_id`, `day`, `time`, `subject_id`, `teacher_id`) VALUES
(1, 1, 'Monday', '09:00:00', 1, 1),
(2, 2, 'Monday', '10:00:00', 2, 2),
(3, 3, 'Monday', '11:00:00', 3, 3),
(4, 4, 'Monday', '12:00:00', 4, 4),
(5, 5, 'Tuesday', '09:00:00', 5, 5),
(6, 6, 'Tuesday', '10:00:00', 6, 6),
(7, 7, 'Tuesday', '11:00:00', 7, 7),
(8, 8, 'Tuesday', '12:00:00', 8, 8),
(9, 9, 'Wednesday', '09:00:00', 9, 9),
(10, 10, 'Wednesday', '10:00:00', 10, 10),
(11, 1, 'Wednesday', '08:00:00', 3, 1),
(12, 1, 'Thursday', '08:00:00', 3, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`attendance_id`),
  ADD KEY `fk_user` (`user_id`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`class_id`),
  ADD KEY `fk_teacher` (`teacher_id`);

--
-- Indexes for table `fees`
--
ALTER TABLE `fees`
  ADD PRIMARY KEY (`fee_id`),
  ADD KEY `fk_fee_student` (`student_id`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`grade_id`),
  ADD KEY `fk_student` (`student_id`),
  ADD KEY `fk_grade_subject` (`subject_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`student_id`),
  ADD KEY `fk_class` (`class_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`teacher_id`),
  ADD KEY `fk_subject` (`subject_id`);

--
-- Indexes for table `timetable`
--
ALTER TABLE `timetable`
  ADD PRIMARY KEY (`timetable_id`),
  ADD KEY `fk_timetable_class` (`class_id`),
  ADD KEY `fk_timetable_subject` (`subject_id`),
  ADD KEY `fk_timetable_teacher` (`teacher_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `attendance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `fees`
--
ALTER TABLE `fees`
  MODIFY `fee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `grade_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `timetable`
--
ALTER TABLE `timetable`
  MODIFY `timetable_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `fk_user` FOREIGN KEY (`user_id`) REFERENCES `students` (`student_id`);

--
-- Constraints for table `classes`
--
ALTER TABLE `classes`
  ADD CONSTRAINT `fk_teacher` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`teacher_id`);

--
-- Constraints for table `fees`
--
ALTER TABLE `fees`
  ADD CONSTRAINT `fk_fee_student` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`);

--
-- Constraints for table `grades`
--
ALTER TABLE `grades`
  ADD CONSTRAINT `fk_grade_subject` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`subject_id`),
  ADD CONSTRAINT `fk_student` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`);

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `fk_class` FOREIGN KEY (`class_id`) REFERENCES `classes` (`class_id`);

--
-- Constraints for table `teachers`
--
ALTER TABLE `teachers`
  ADD CONSTRAINT `fk_subject` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`subject_id`);

--
-- Constraints for table `timetable`
--
ALTER TABLE `timetable`
  ADD CONSTRAINT `fk_timetable_class` FOREIGN KEY (`class_id`) REFERENCES `classes` (`class_id`),
  ADD CONSTRAINT `fk_timetable_subject` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`subject_id`),
  ADD CONSTRAINT `fk_timetable_teacher` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`teacher_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
