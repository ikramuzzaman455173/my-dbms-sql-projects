-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 06, 2025 at 04:46 PM
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
-- Database: `onlinebanking`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `account_id` int NOT NULL,
  `user_id` int NOT NULL,
  `account_number` varchar(20) NOT NULL,
  `account_type` varchar(50) NOT NULL,
  `balance` decimal(10,2) NOT NULL DEFAULT '0.00',
  `status` varchar(20) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`account_id`, `user_id`, `account_number`, `account_type`, `balance`, `status`) VALUES
(1, 1, 'ACC123456789', 'Savings', 15000.50, 'active'),
(2, 2, 'ACC987654321', 'Checking', 12000.75, 'active'),
(3, 3, 'ACC543216789', 'Savings', 18000.30, 'active'),
(4, 4, 'ACC112233445', 'Current', 5000.00, 'suspended'),
(5, 5, 'ACC998877665', 'Savings', 25000.00, 'active'),
(6, 6, 'ACC776655443', 'Checking', 7000.00, 'active'),
(7, 7, 'ACC887766554', 'Savings', 30000.40, 'active'),
(8, 8, 'ACC112233667', 'Current', 10000.00, 'active'),
(9, 9, 'ACC223344556', 'Savings', 8000.00, 'active'),
(10, 10, 'ACC334455667', 'Checking', 15000.00, 'active');

-- --------------------------------------------------------

--
-- Table structure for table `account_status`
--

CREATE TABLE `account_status` (
  `status_id` int NOT NULL,
  `account_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `account_status`
--

INSERT INTO `account_status` (`status_id`, `account_status`) VALUES
(1, 'Active'),
(2, 'Closed'),
(3, 'Suspended'),
(4, 'Pending'),
(5, 'Frozen');

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `branch_id` int NOT NULL,
  `branch_name` varchar(100) NOT NULL,
  `branch_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`branch_id`, `branch_name`, `branch_address`) VALUES
(1, 'Dhaka Branch', '123 Main Street, Dhaka, Bangladesh'),
(2, 'Chittagong Branch', '456 A Road, Chittagong, Bangladesh'),
(3, 'Sylhet Branch', '789 B Avenue, Sylhet, Bangladesh'),
(4, 'Rajshahi Branch', '321 C Lane, Rajshahi, Bangladesh'),
(5, 'Khulna Branch', '654 D Blvd, Khulna, Bangladesh'),
(6, 'Mymensingh Branch', '987 E Drive, Mymensingh, Bangladesh'),
(7, 'Barisal Branch', '102 F Street, Barisal, Bangladesh'),
(8, 'Rangpur Branch', '200 G Place, Rangpur, Bangladesh'),
(9, 'Narsingdi Branch', '111 H Park, Narsingdi, Bangladesh'),
(10, 'Comilla Branch', '555 I Road, Comilla, Bangladesh');

-- --------------------------------------------------------

--
-- Table structure for table `card_info`
--

CREATE TABLE `card_info` (
  `card_id` int NOT NULL,
  `user_id` int NOT NULL,
  `card_number` varchar(16) NOT NULL,
  `card_type` varchar(20) NOT NULL,
  `expiry_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `card_info`
--

INSERT INTO `card_info` (`card_id`, `user_id`, `card_number`, `card_type`, `expiry_date`) VALUES
(1, 1, '1234567812345678', 'Debit', '2026-11-12'),
(2, 2, '2345678923456789', 'Credit', '2025-09-10'),
(3, 3, '3456789034567890', 'Debit', '2026-05-15'),
(4, 4, '4567890145678901', 'Credit', '2024-07-18'),
(5, 5, '5678901256789012', 'Debit', '2026-03-22'),
(6, 6, '6789012367890123', 'Credit', '2024-11-25'),
(7, 7, '7890123478901234', 'Debit', '2025-12-14'),
(8, 8, '8901234589012345', 'Credit', '2026-02-19'),
(9, 9, '9012345690123456', 'Debit', '2025-08-01'),
(10, 10, '0123456701234567', 'Credit', '2024-04-09');

-- --------------------------------------------------------

--
-- Table structure for table `loans`
--

CREATE TABLE `loans` (
  `loan_id` int NOT NULL,
  `user_id` int NOT NULL,
  `loan_amount` decimal(10,2) NOT NULL,
  `interest_rate` decimal(5,2) NOT NULL,
  `loan_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `loans`
--

INSERT INTO `loans` (`loan_id`, `user_id`, `loan_amount`, `interest_rate`, `loan_date`) VALUES
(1, 1, 20000.00, 5.50, '2022-04-10'),
(2, 2, 50000.00, 7.00, '2021-11-05'),
(3, 3, 15000.00, 6.50, '2022-01-15'),
(4, 4, 30000.00, 8.00, '2022-07-22'),
(5, 5, 10000.00, 6.00, '2022-03-19'),
(6, 6, 25000.00, 5.00, '2022-05-18'),
(7, 7, 40000.00, 6.80, '2022-06-25'),
(8, 8, 15000.00, 7.50, '2022-02-12'),
(9, 9, 35000.00, 5.20, '2022-08-29'),
(10, 10, 20000.00, 6.00, '2022-10-05');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int NOT NULL,
  `loan_id` int NOT NULL,
  `payment_amount` decimal(10,2) NOT NULL,
  `payment_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `loan_id`, `payment_amount`, `payment_date`) VALUES
(1, 1, 5000.00, '2022-05-10'),
(2, 2, 10000.00, '2021-12-12'),
(3, 3, 3000.00, '2022-02-18'),
(4, 4, 7000.00, '2022-08-01'),
(5, 5, 2000.00, '2022-04-10'),
(6, 6, 5000.00, '2022-06-22'),
(7, 7, 8000.00, '2022-09-10'),
(8, 8, 2000.00, '2022-04-02'),
(9, 9, 6000.00, '2022-11-15'),
(10, 10, 3000.00, '2022-10-15');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `transaction_id` int NOT NULL,
  `account_id` int NOT NULL,
  `transaction_type` int NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `transaction_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`transaction_id`, `account_id`, `transaction_type`, `amount`, `transaction_date`) VALUES
(1, 1, 1, 5000.00, '2025-03-05 18:02:46'),
(2, 2, 2, 2000.00, '2025-03-05 18:02:46'),
(3, 3, 1, 3000.00, '2025-03-05 18:02:46'),
(4, 4, 2, 1000.00, '2025-03-05 18:02:46'),
(5, 5, 1, 7000.00, '2025-03-05 18:02:46'),
(6, 6, 3, 4000.00, '2025-03-05 18:02:46'),
(7, 7, 4, 1500.00, '2025-03-05 18:02:46'),
(8, 8, 2, 2500.00, '2025-03-05 18:02:46'),
(9, 9, 1, 500.00, '2025-03-05 18:02:46'),
(10, 10, 3, 6000.00, '2025-03-05 18:02:46');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_types`
--

CREATE TABLE `transaction_types` (
  `type_id` int NOT NULL,
  `type_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `transaction_types`
--

INSERT INTO `transaction_types` (`type_id`, `type_name`) VALUES
(1, 'Deposit'),
(2, 'Withdrawal'),
(3, 'Transfer'),
(4, 'Loan Payment'),
(5, 'Interest');

-- --------------------------------------------------------

--
-- Table structure for table `transfers`
--

CREATE TABLE `transfers` (
  `transfer_id` int NOT NULL,
  `source_account` int NOT NULL,
  `destination_account` int NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `transfer_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `transfers`
--

INSERT INTO `transfers` (`transfer_id`, `source_account`, `destination_account`, `amount`, `transfer_date`) VALUES
(1, 1, 2, 2000.00, '2025-03-05 18:02:48'),
(2, 2, 3, 1500.00, '2025-03-05 18:02:48'),
(3, 4, 5, 2500.00, '2025-03-05 18:02:48'),
(4, 5, 6, 1000.00, '2025-03-05 18:02:48'),
(5, 7, 8, 1500.00, '2025-03-05 18:02:48'),
(6, 8, 9, 1000.00, '2025-03-05 18:02:48'),
(7, 9, 10, 500.00, '2025-03-05 18:02:48'),
(8, 1, 3, 1000.00, '2025-03-05 18:02:48'),
(9, 6, 7, 2000.00, '2025-03-05 18:02:48'),
(10, 2, 9, 3000.00, '2025-03-05 18:02:48');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone_number` varchar(15) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `date_of_birth` date NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `first_name`, `last_name`, `address`, `phone_number`, `email`, `date_of_birth`, `created_at`) VALUES
(1, 'Rahim', 'Ahmed', 'Dhaka, Bangladesh', '01712345678', 'rahim.ahmed@gmail.com', '1985-02-15', '2025-03-05 18:02:44'),
(2, 'Sultana', 'Begum', 'Chittagong, Bangladesh', '01898765432', 'sultana.begum@gmail.com', '1990-06-10', '2025-03-05 18:02:44'),
(3, 'Mizanur', 'Rahman', 'Sylhet, Bangladesh', '01976543210', 'mizanur.rahman@gmail.com', '1983-11-22', '2025-03-05 18:02:44'),
(4, 'Shakil', 'Islam', 'Barisal, Bangladesh', '01798765432', 'shakil.islam@gmail.com', '1987-03-05', '2025-03-05 18:02:44'),
(5, 'Nasima', 'Sultana', 'Khulna, Bangladesh', '01876543211', 'nasima.sultana@gmail.com', '1992-09-08', '2025-03-05 18:02:44'),
(6, 'Aminul', 'Islam', 'Rajshahi, Bangladesh', '01654321098', 'aminul.islam@gmail.com', '1988-01-30', '2025-03-05 18:02:44'),
(7, 'Momena', 'Begum', 'Dhaka, Bangladesh', '01765432123', 'momena.begum@gmail.com', '1994-05-14', '2025-03-05 18:02:44'),
(8, 'Rashed', 'Khan', 'Chittagong, Bangladesh', '01845678901', 'rashed.khan@gmail.com', '1991-07-19', '2025-03-05 18:02:44'),
(9, 'Jahirul', 'Islam', 'Mymensingh, Bangladesh', '01987654321', 'jahirul.islam@gmail.com', '1986-12-12', '2025-03-05 18:02:44'),
(10, 'Fariha', 'Ahmed', 'Dhaka, Bangladesh', '01711223344', 'fariha.ahmed@gmail.com', '1993-04-27', '2025-03-05 18:02:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`account_id`),
  ADD UNIQUE KEY `account_number` (`account_number`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `account_status`
--
ALTER TABLE `account_status`
  ADD PRIMARY KEY (`status_id`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`branch_id`);

--
-- Indexes for table `card_info`
--
ALTER TABLE `card_info`
  ADD PRIMARY KEY (`card_id`),
  ADD UNIQUE KEY `card_number` (`card_number`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `loans`
--
ALTER TABLE `loans`
  ADD PRIMARY KEY (`loan_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `loan_id` (`loan_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`transaction_id`),
  ADD KEY `account_id` (`account_id`),
  ADD KEY `transaction_type` (`transaction_type`);

--
-- Indexes for table `transaction_types`
--
ALTER TABLE `transaction_types`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `transfers`
--
ALTER TABLE `transfers`
  ADD PRIMARY KEY (`transfer_id`),
  ADD KEY `source_account` (`source_account`),
  ADD KEY `destination_account` (`destination_account`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone_number` (`phone_number`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `account_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `account_status`
--
ALTER TABLE `account_status`
  MODIFY `status_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `branch_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `card_info`
--
ALTER TABLE `card_info`
  MODIFY `card_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `loans`
--
ALTER TABLE `loans`
  MODIFY `loan_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `transaction_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `transaction_types`
--
ALTER TABLE `transaction_types`
  MODIFY `type_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `transfers`
--
ALTER TABLE `transfers`
  MODIFY `transfer_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accounts`
--
ALTER TABLE `accounts`
  ADD CONSTRAINT `accounts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `card_info`
--
ALTER TABLE `card_info`
  ADD CONSTRAINT `card_info_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `loans`
--
ALTER TABLE `loans`
  ADD CONSTRAINT `loans_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`loan_id`) REFERENCES `loans` (`loan_id`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`account_id`),
  ADD CONSTRAINT `transactions_ibfk_2` FOREIGN KEY (`transaction_type`) REFERENCES `transaction_types` (`type_id`);

--
-- Constraints for table `transfers`
--
ALTER TABLE `transfers`
  ADD CONSTRAINT `transfers_ibfk_1` FOREIGN KEY (`source_account`) REFERENCES `accounts` (`account_id`),
  ADD CONSTRAINT `transfers_ibfk_2` FOREIGN KEY (`destination_account`) REFERENCES `accounts` (`account_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
