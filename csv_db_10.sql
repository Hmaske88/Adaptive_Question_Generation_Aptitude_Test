-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 14, 2024 at 01:26 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `csv_db 10`
--

-- --------------------------------------------------------

--
-- Table structure for table `aptitude`
--

CREATE TABLE `aptitude` (
  `sno` int(11) NOT NULL,
  `question` text NOT NULL,
  `a` varchar(20) NOT NULL,
  `b` varchar(20) NOT NULL,
  `c` varchar(20) NOT NULL,
  `d` varchar(20) NOT NULL,
  `answer` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `aptitude`
--

INSERT INTO `aptitude` (`sno`, `question`, `a`, `b`, `c`, `d`, `answer`) VALUES
(1, 'A train running at the speed of 60 km/hr crosses a pole in 9 seconds. What is the length of the train?', '120 metres', '180 metres', '324 metres', '150 metres', '150 metres'),
(2, 'A train 125 m long passes a man, running at 5 km/hr in the same direction in which the train is going, in 10 seconds. The speed of the train is:', '45 km/hr', '50 km/hr', '54 km/hr', '55 km/hr', '50 km/hr'),
(3, 'The length of the bridge, which a train 130 metres long and travelling at 45 km/hr can cross in 30 seconds, is:', '200 m', '225 m', '245 m', '250 m', '245 m'),
(4, 'Two trains running in opposite directions cross a man standing on the platform in 27 seconds and 17 seconds respectively and they cross each other in 23 seconds. The ratio of their speeds is:', '1:03', '3:02', '3:04', 'None of these', '3:02'),
(5, 'A train passes a station platform in 36 seconds and a man standing on the platform in 20 seconds. If the speed of the train is 54 km/hr, what is the length of the platform?', '120 m', '240 m', '300 m', 'None of these', '240 m'),
(6, 'A train 240 m long passes a pole in 24 seconds. How long will it take to pass a platform 650 m long?', ' 65 sec', '89 sec', '100 sec', '150 sec', '89 sec'),
(7, 'Two trains of equal length are running on parallel lines in the same direction at 46 km/hr and 36 km/hr. The faster train passes the slower train in 36 seconds. The length of each train is:', '50 m', '72 m', '80 m', '82 m', '50 m'),
(8, 'A train 360 m long is running at a speed of 45 km/hr. In what time will it pass a bridge 140 m long?', '40 sec', '42 sec', '45 sec', '48 sec', '40 sec'),
(9, 'A person crosses a 600 m long street in 5 minutes. What is his speed in km per hour?', '3.6', '7.2', '8.4', '10', '7.2'),
(10, 'An aeroplane covers a certain distance at a speed of 240 kmph in 5 hours. To cover the same distance in 5/3 hours, it must travel at a speed of:', '300 kmph', '360 kmph', '600 kmph', '720 kmph', '720 kmph'),
(11, 'If a person walks at 14 km/hr instead of 10 km/hr, he would have walked 20 km more. The actual distance travelled by him is:', '50 km', '56 km', '70 km', '80 km', '50 km'),
(12, 'Excluding stoppages, the speed of a bus is 54 kmph and including stoppages, it is 45 kmph. For how many minutes does the bus stop per hour?', '9', '10', '12', '20', '10'),
(13, 'In a flight of 600 km, an aircraft was slowed down due to bad weather. Its average speed for the trip was reduced by 200 km/hr and the time of flight increased by 30 minutes. The duration of the flight is:', '1 hour', '2 hour', '3 hour', '4 hour', '1 hour'),
(14, 'A man complete a journey in 10 hours. He travels first half of the journey at the rate of 21 km/hr and second half at the rate of 24 km/hr. Find the total journey in km.', '220 km', '224 km', '230 km', '234 km', '224 km'),
(15, 'The ratio between the speeds of two trains is 7 : 8. If the second train runs 400 km in 4 hours, then the speed of the first train is:', '70 km/hr', '75 km/hr', '84 km/hr', '87.5 km/hr', '87.5 km/hr'),
(16, 'Two ships are sailing in the sea on the two sides of a lighthouse. The angle of elevation of the top of the lighthouse is observed from the ships are 30? and 45? respectively. If the lighthouse is 100 m high, the distance between the two ships is:', '173 m', '200 m', '273 m', '300 m', '273 m'),
(17, 'A man standing at a point P is watching the top of a tower, which makes an angle of elevation of 30? with the man\'s eye. The man walks some distance towards the tower to watch its top and the angle of the elevation becomes 60?. What is the distance between the base of the tower and the point P?', '8 units', '12 units', 'Data inadequate', 'None of these', 'Data inadequate'),
(18, 'The angle of elevation of a ladder leaning against a wall is 60? and the foot of the ladder is 4.6 m away from the wall. The length of the ladder is:', '2.3 m', '4.6 m', '7.8 m', '9.2 m', '9.2 m'),
(19, 'An observer 1.6 m tall is 203 away from a tower. The angle of elevation from his eye to the top of the tower is 30?. The height of the tower is:', '21.6 m', '23.2 m', '24.72 m', 'None of these', '21.6 m'),
(20, 'From a point P on a level ground, the angle of elevation of the top tower is 30?. If the tower is 100 m high, the distance of point P from the foot of the tower is:', '149 m', '156 m', '173 m', '200 m', '173 m'),
(21, 'A, B and C can do a piece of work in 20, 30 and 60 days respectively. In how many days can A do the work if he is assisted by B and C on every third day?', '12 days', '15 days', '16 days', '18 days', '15 days'),
(22, 'A alone can do a piece of work in 6 days and B alone in 8 days. A and B undertook to do it for Rs. 3200. With the help of C, they completed the work in 3 days. How much is to be paid to C?', 'Rs. 375', 'Rs. 400', 'Rs. 600', 'Rs. 800', 'Rs. 400'),
(23, 'If 6 men and 8 boys can do a piece of work in 10 days while 26 men and 48 boys can do the same in 2 days, the time taken by 15 men and 20 boys in doing the same type of work will be:', '4 days', '5 days', '6 days', '7 days', '4 days'),
(24, 'A does 80% of a work in 20 days. He then calls in B and they together finish the remaining work in 3 days. How long B alone would take to do the whole work?', '23 days', '37 days', '37.5 days', '40 days', '37.5 days'),
(25, 'A machine P can print one lakh books in 8 hours, machine Q can print the same number of books in 10 hours while machine R can print them in 12 hours. All the machines are started at 9 A.M. while machine P is closed at 11 A.M. and the remaining two machines complete work. Approximately at what time will the work (to print one lakh books) be finished ?', '11:30 A.M.', '12 noon', '12:30 P.M.', '1:00 P.M.', '1:00 P.M.'),
(26, 'A can finish a work in 18 days and B can do the same work in 15 days. B worked for 10 days and left the job. In how many days, A alone can finish the remaining work?', '5', '5.5', '6', '8', '6'),
(27, '4 men and 6 women can complete a work in 8 days, while 3 men and 7 women can complete it in 10 days. In how many days will 10 women complete it?', '35', '40', '45', '50', '40'),
(28, 'A sum of money at simple interest amounts to Rs. 815 in 3 years and to Rs. 854 in 4 years. The sum is:', 'Rs. 650', 'Rs. 690', 'Rs. 698', 'Rs. 700', 'Rs. 698'),
(29, 'Mr. Thomas invested an amount of Rs. 13,900 divided in two different schemes A and B at the simple interest rate of 14% p.a. and 11% p.a. respectively. If the total amount of simple interest earned in 2 years be Rs. 3508, what was the amount invested in Scheme B?', 'Rs. 6400', 'Rs. 6500', 'Rs. 7200', 'Rs. 7500', 'Rs. 6400'),
(30, 'A sum fetched a total simple interest of Rs. 4016.25 at the rate of 9 p.c.p.a. in 5 years. What is the sum?', 'Rs. 4462.50', 'Rs. 8032.50', 'Rs. 8900', 'Rs. 8925', 'Rs. 8925'),
(31, 'A bank offers 5% compound interest calculated on half-yearly basis. A customer deposits Rs. 1600 each on 1st?January and 1st?July of a year. At the end of the year, the amount he would have gained by way of interest is:', 'Rs. 120', 'Rs. 121', 'Rs. 122', 'Rs. 123', 'Rs. 121'),
(32, 'The difference between simple and compound interests compounded annually on a certain sum of money for 2 years at 4% per annum is Re. 1. The sum (in Rs.) is:', '625', '630', '640', '650', '625'),
(33, 'There is 60% increase in an amount in 6 years at simple interest. What will be the compound interest of Rs. 12,000 after 3 years at the same rate?', 'Rs. 2160', 'Rs. 3120', 'Rs. 3972', 'Rs. 6240', 'Rs. 3972'),
(34, 'At what rate of compound interest per annum will a sum of Rs. 1200 become Rs. 1348.32 in 2 years?', '7', '6', '7.5', '6.5', '6'),
(35, 'The cost price of 20 articles is the same as the selling price of?x?articles. If the profit is 25%, then the value of?x?is:', '15', '16', '18', '25', '16'),
(36, 'In a certain store, the profit is 320% of the cost. If the cost increases by 25% but the selling price remains constant, approximately what percentage of the selling price is the profit?', '30', '70', '100', '250', '70'),
(37, 'A vendor bought toffees at 6 for a rupee. How many for a rupee must he sell to gain 20%?', '3', '4', '6', '5', '5'),
(38, 'The percentage profit earned by selling an article for Rs. 1920 is equal to the percentage loss incurred by selling the same article for Rs. 1280. At what price should the article be sold to make 25% profit?', 'Rs. 2000', 'Rs. 2200', 'Rs. 2400', 'None of these', 'Rs. 2000'),
(39, 'A and B invest in a business in the ratio 3 : 2. If 5% of the total profit goes to charity and A\'s share is Rs. 855, the total profit is:', 'Rs. 1425', 'Rs. 1500', 'Rs. 1537.50', 'Rs. 1576', 'Rs. 1500'),
(40, 'A, B, C subscribe Rs. 50,000 for a business. A subscribes Rs. 4000 more than B and B Rs. 5000 more than C. Out of a total profit of Rs. 35,000, A receives:', 'Rs. 8400', 'Rs. 11900', 'Rs. 13600', 'Rs. 14700', 'Rs. 14700'),
(41, 'A starts business with Rs. 3500 and after 5 months, B joins with A as his partner. After a year, the profit is divided in the ratio 2 : 3. What is B\'s contribution in the capital?', 'Rs. 7500', 'Rs. 8000', 'Rs. 8500', 'Rs. 9000', 'Rs. 9000'),
(42, 'Two students appeared at an examination. One of them secured 9 marks more than the other and his marks was 56% of the sum of their marks. The marks obtained by them are:', '39, 30', '41, 32', '42, 33', '43, 34', '42, 33'),
(43, 'A fruit seller had some apples. He sells 40% apples and still has 420 apples. Originally, he had:', '588 apples', '600 apples', '672 apples', '700 apples', '700 apples'),
(44, 'What percentage of numbers from 1 to 70 have 1 or 9 in the unit\'s digit?', '1', '14', '20', '21', '20'),
(45, 'If 20% of?a?=?b, then?b% of 20 is the same as:', '4% of?a', '5% of?a', '20% of?a', 'None of these', '4% of?a'),
(46, 'In a certain school, 20% of students are below 8 years of age. The number of students above 8 years of age is??of the number of students of 8 years of age which is 48. What is the total number of students in the school?', '72', '80', '100', '120', '100'),
(47, 'From a group of 7 men and 6 women, five persons are to be selected to form a committee so that at least 3 men are there on the committee. In how many ways can it be done?', '564', '645', '735', '756', '756'),
(48, 'In how many different ways can the letters of the word \'CORPORATION\' be arranged so that the vowels always come together?', '810', '1440', '2880', '50400', '50400'),
(49, 'A sum of money is to be distributed among A, B, C, D in the proportion of 5 : 2 : 4 : 3. If C gets Rs. 1000 more than D, what is B\'s share?', 'Rs. 500', 'Rs. 1500', 'Rs. 2000', 'None of these', 'Rs. 2000'),
(50, 'In a mixture 60 litres, the ratio of milk and water 2 : 1. If this ratio is to be 1 : 2, then the quantity of water to be further added is:', '20 litres', '30 litres', '40 litres', '60 litres', '60 litres');

-- --------------------------------------------------------

--
-- Table structure for table `submissions_apti`
--

CREATE TABLE `submissions_apti` (
  `sno` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `score` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `submissions_apti`
--

INSERT INTO `submissions_apti` (`sno`, `date`, `score`) VALUES
(1, '2024-02-11 19:34:02', 22),
(2, '2024-02-11 19:47:27', 10),
(3, '2024-02-11 22:31:44', 24),
(4, '2024-03-14 17:48:14', 6);

-- --------------------------------------------------------

--
-- Table structure for table `submissions_tech`
--

CREATE TABLE `submissions_tech` (
  `sno` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `score` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `submissions_tech`
--

INSERT INTO `submissions_tech` (`sno`, `date`, `score`) VALUES
(1, '2024-02-11 22:44:17', 25),
(2, '2024-02-11 22:46:02', 80),
(3, '2024-02-11 22:47:18', 50);

-- --------------------------------------------------------

--
-- Table structure for table `technical`
--

CREATE TABLE `technical` (
  `sno` int(11) NOT NULL,
  `question` text NOT NULL,
  `a` varchar(50) NOT NULL,
  `b` varchar(50) NOT NULL,
  `c` varchar(50) NOT NULL,
  `d` varchar(50) NOT NULL,
  `answer` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `technical`
--

INSERT INTO `technical` (`sno`, `question`, `a`, `b`, `c`, `d`, `answer`) VALUES
(1, 'What is the term used for describing the judgmental or commonsense part of problem solving?', 'Heuristic', 'Critical', 'Value based', 'Analytical', 'Heuristic'),
(2, 'Which kind of planning consists of successive representations of different levels of a plan?', 'hierarchical planning', 'non-hierarchical planning', 'All of the above', 'project planning', 'hierarchical planning'),
(3, 'What could cause a fixed disk error.', 'No-CD installed', 'bad ram', 'slow processor', 'Incorrect CMOS settings', 'Incorrect CMOS settings'),
(4, 'A hard disk is divided into tracks which are further subdivided into:', 'clusters', 'sectors', 'vectors', 'heads', 'sectors'),
(5, 'Which of the following is not a logical data-base structure?', 'tree', 'relational', 'network', 'chain', 'chain'),
(6, 'Each of data files has a _____ that describe the way the data is stored in the file.', 'File structure', 'Records', 'Fields', 'Database', 'File structure'),
(7, 'What is the language used by most of the DBMSs for helping their users to access data?', 'High level language', 'Query language', 'SQL', '4GL', 'Query language'),
(8, 'In SQL, which command is used to make permanent changes made by statements issue since the beginning of a transaction?', 'ZIP', 'PACK', 'COMMIT', 'SAVE', 'COMMIT'),
(9, 'In SQL, which command(s) is(are) used to enable/disable a database trigger?', 'MODIFY USER', 'CHANGE USER', 'ALTER TRIGGER', 'All of the above', 'ALTER TRIGGER'),
(10, 'Which command is used to remove an index from the database in SQL?', 'DELETE INDEX', 'DROP INDEX', 'REMOVE INDEX', 'ROLL BACK INDEX', 'DROP INDEX'),
(11, 'The part of machine level instruction, which tells the central processor what has to be done, is', 'Operation code', 'Address', 'Locator', 'Flip-Flop', 'Operation code'),
(12, 'To avoid the race condition, the number of processes that may be simultaneously inside their critical section is', '8', '1', '16', '0', '1'),
(13, 'Process is', 'program in High level language kept on disk', 'contents of main memory', 'a program in execution', 'a job in secondary memory', 'a program in execution'),
(14, 'What command is used to count the total number of lines, words, and characters contained in a file?', 'countw', 'wcount', 'wc', 'count p', 'wc'),
(15, 'What command is used to remove files?', 'dm', 'rm', 'delete', 'erase', 'rm'),
(16, 'What command is used to remove the directory?', 'rdir', 'remove', 'rd', 'rmdir', 'rmdir'),
(17, 'What TCP/IP protocol is used for remote terminal connection service?', 'UDP', 'RARP', 'FTP', 'TELNET', 'TELNET'),
(18, 'Frames from one LAN can be transmitted to another LAN via the device', 'Router', 'Bridge', 'Repeater', 'Modem', 'Bridge'),
(19, 'You have a class A network address 10.0.0.0 with 40 subnets, but are required to add 60 new subnets very soon. You would like to still allow for the largest possible number of host IDs per subnet. Which subnet mask should you assign?', '255.240.0.0', '255.248.0.0', '255.252.0.0', '255.254.0.0', '255.254.0.0'),
(20, 'What is the default subnet mask for a class C network?', '127.0.0.1', '255.0.0.0', '255.255.0.0', '255.255.255.0', '255.255.255.0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aptitude`
--
ALTER TABLE `aptitude`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `submissions_apti`
--
ALTER TABLE `submissions_apti`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `submissions_tech`
--
ALTER TABLE `submissions_tech`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `technical`
--
ALTER TABLE `technical`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aptitude`
--
ALTER TABLE `aptitude`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `submissions_apti`
--
ALTER TABLE `submissions_apti`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `submissions_tech`
--
ALTER TABLE `submissions_tech`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `technical`
--
ALTER TABLE `technical`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
