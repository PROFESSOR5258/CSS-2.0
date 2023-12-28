-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2023 at 12:26 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vjeera_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `cid` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `loc` varchar(20) NOT NULL,
  `phoneno` bigint(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `prof` varchar(50) NOT NULL,
  `info` varchar(100) NOT NULL,
  `suggest_info` varchar(100) NOT NULL,
  `client_status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `client_payment`
--

CREATE TABLE `client_payment` (
  `payment_id` int(11) NOT NULL,
  `client_name` varchar(20) NOT NULL,
  `client_pay_date` varchar(20) NOT NULL,
  `pay_amt` int(10) NOT NULL,
  `pay_mode` varchar(20) NOT NULL,
  `payment_for` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `client_reg`
--

CREATE TABLE `client_reg` (
  `reg_id` int(11) NOT NULL,
  `client_reg_date` varchar(50) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `business_name` varchar(50) NOT NULL,
  `business_nature` varchar(50) NOT NULL,
  `phoneno` bigint(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `city` int(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `country` varchar(50) NOT NULL,
  `website` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `client_services`
--

CREATE TABLE `client_services` (
  `ser_id` int(11) NOT NULL,
  `client_fname` varchar(20) NOT NULL,
  `client_lname` varchar(20) NOT NULL,
  `ser_name` varchar(50) NOT NULL,
  `ser_sdate` varchar(20) NOT NULL,
  `handle_by` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-05-15 21:14:43.593085'),
(2, 'auth', '0001_initial', '2023-05-15 21:14:44.242472'),
(3, 'admin', '0001_initial', '2023-05-15 21:14:44.367484'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-05-15 21:14:44.367484'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-05-15 21:14:44.383103'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-05-15 21:14:44.461238'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-05-15 21:14:44.523726'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-05-15 21:14:44.539364'),
(9, 'auth', '0004_alter_user_username_opts', '2023-05-15 21:14:44.539364'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-05-15 21:14:44.617477'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-05-15 21:14:44.617477'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-05-15 21:14:44.633119'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-05-15 21:14:44.648740'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-05-15 21:14:44.664365'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-05-15 21:14:44.679991'),
(16, 'auth', '0011_update_proxy_permissions', '2023-05-15 21:14:44.695616'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-05-15 21:14:44.711228'),
(18, 'sessions', '0001_initial', '2023-05-15 21:14:44.783081');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0yn4zdht0y1guh9brcl5tepwzp3bd86x', 'e30:1pyhj3:N8YOZYtcKlFM8Gh8lwRQRT6uLqP4NK472AdUvuyD1cI', '2023-05-29 23:35:33.060888'),
('25i85jp4f24jyqm7ksrri2k14xodgg6e', 'eyJuYW1lIjoiQWRtaW4iLCJwYXNzd29yZCI6ImFkbWluMTIzIn0:1pypWH:7gvpMfrakmHWZpSj_MdoAqY_sv8sNH54Bcrw2_Nx8X4', '2023-05-30 07:54:53.033889'),
('acnzdp5gko8u30h2p3d5jl7r5kxfrn0w', 'eyJuYW1lIjoiQWRtaW4iLCJwYXNzd29yZCI6ImFkbWluMTIzIn0:1pypIt:Y4yNzWxVg9Wg99KoHFXZQHvVostOw1YG1jcP8tvXAEA', '2023-05-30 07:41:03.409573'),
('e8luiko0v1a7v4xo6oxgxgzo7xrozl5e', 'eyJuYW1lIjoiQWRtaW4iLCJwYXNzd29yZCI6IiJ9:1pyhtc:SAWSKWRVFc6qs1jRO5M5A1YHMUCEe5dg4bTBMg2fFBs', '2023-05-29 23:46:28.108437'),
('fy5gste567rn22d9k1k95dbz99pfd543', 'eyJuYW1lIjoiQWRtaW4iLCJwYXNzd29yZCI6ImFkbWluMTIzIn0:1pzEIy:ke2WZ-R2YMNj6zAlnVpqKXS_WQaBSRyeMQwh5h5chnk', '2023-05-31 10:22:48.126337'),
('maxkb2pvc47jur084fr0u4ktdvv81634', 'e30:1pyhpN:YcVfv4gFsiuj5N9wj9zGktz8SfJ7AQVziN8n9UGXkWQ', '2023-05-29 23:42:05.761853'),
('memwcdjdlnzo0woju1bvop2lxy8pagbt', 'eyJuYW1lIjoiQWRtaW4iLCJwYXNzd29yZCI6ImFkbWluMTIzIn0:1pyhTb:3sPXNVyaXx4qZttqQ-iSjwDB3u4ePPZ4qwkdj6wGS1U', '2023-05-29 23:19:35.423294');

-- --------------------------------------------------------

--
-- Table structure for table `emp_leave_entry_table`
--

CREATE TABLE `emp_leave_entry_table` (
  `emp_leave_entry_id` int(11) NOT NULL,
  `emp_id` int(20) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `leave_start_date` varchar(20) NOT NULL,
  `leave_end_date` varchar(20) NOT NULL,
  `tot_no_days` int(20) NOT NULL,
  `leave_remark` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emp_notice_period_table`
--

CREATE TABLE `emp_notice_period_table` (
  `emp_notice_id` int(11) NOT NULL,
  `emp_id` int(20) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `job` varchar(20) NOT NULL,
  `resign_date` varchar(20) NOT NULL,
  `notice_period_day` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emp_pay_entry_table`
--

CREATE TABLE `emp_pay_entry_table` (
  `emp_pay_id` int(11) NOT NULL,
  `emp_id` int(20) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `pay_date` varchar(50) NOT NULL,
  `job` varchar(20) NOT NULL,
  `wg` int(20) NOT NULL,
  `wd` int(20) NOT NULL,
  `pay` int(20) NOT NULL,
  `comm` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `event_activity_table`
--

CREATE TABLE `event_activity_table` (
  `event_id` int(11) NOT NULL,
  `plan_date` varchar(20) NOT NULL,
  `plan_by` varchar(20) NOT NULL,
  `event_name` varchar(20) NOT NULL,
  `event_site` varchar(20) NOT NULL,
  `loc` varchar(20) NOT NULL,
  `approval_by` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `interview_schedule_table`
--

CREATE TABLE `interview_schedule_table` (
  `interview_id` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `branch` varchar(20) NOT NULL,
  `tech_skill` varchar(50) NOT NULL,
  `toc` varchar(20) NOT NULL,
  `phoneno` bigint(10) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `new_candidate_table`
--

CREATE TABLE `new_candidate_table` (
  `candidate_id` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `branch` varchar(20) NOT NULL,
  `tech_skill` varchar(100) NOT NULL,
  `type_candidate` varchar(20) NOT NULL,
  `last_com_name` varchar(50) NOT NULL,
  `last_comp_package` int(20) NOT NULL,
  `tot_no_experience` int(20) NOT NULL,
  `phoneno` bigint(10) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `new_emp_reg_table`
--

CREATE TABLE `new_emp_reg_table` (
  `new_emp_id` int(11) NOT NULL,
  `reg_date` varchar(20) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phoneno` bigint(10) NOT NULL,
  `l_add` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `p_add` varchar(100) NOT NULL,
  `adhar_no` int(20) NOT NULL,
  `pancard_no` varchar(20) NOT NULL,
  `job_title` varchar(50) NOT NULL,
  `job_loc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `petty_cash_entry_table`
--

CREATE TABLE `petty_cash_entry_table` (
  `petty_id` int(11) NOT NULL,
  `cash_entry_date` varchar(20) NOT NULL,
  `product_name` varchar(20) NOT NULL,
  `rate` int(20) NOT NULL,
  `qty` int(20) NOT NULL,
  `purchase_by` varchar(20) NOT NULL,
  `gst` int(20) NOT NULL,
  `f_amt` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pickup_dropup_table`
--

CREATE TABLE `pickup_dropup_table` (
  `pickup_dropup_id` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `pickup_loc` varchar(50) NOT NULL,
  `drop_loc` varchar(50) NOT NULL,
  `rs_per_km` int(20) NOT NULL,
  `tot_km` int(20) NOT NULL,
  `per_day_cost` int(20) NOT NULL,
  `tot_mon_cost` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vaccancy_table`
--

CREATE TABLE `vaccancy_table` (
  `vaccancy_id` int(11) NOT NULL,
  `job` varchar(50) NOT NULL,
  `tot_no_vaccancy` int(20) NOT NULL,
  `package` int(20) NOT NULL,
  `pay_date` varchar(20) NOT NULL,
  `type_candidate` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vendor_enquiry_table`
--

CREATE TABLE `vendor_enquiry_table` (
  `vendor_id` int(11) NOT NULL,
  `vendor_enq_date` varchar(20) NOT NULL,
  `comp_name` varchar(20) NOT NULL,
  `comp_loc` varchar(20) NOT NULL,
  `comp_service` varchar(50) NOT NULL,
  `owner_name` varchar(20) NOT NULL,
  `owner_contact` bigint(10) NOT NULL,
  `phoneno` bigint(10) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vendor_payment_table`
--

CREATE TABLE `vendor_payment_table` (
  `pay_id` int(11) NOT NULL,
  `pay_date` varchar(20) NOT NULL,
  `pay_amt` int(20) NOT NULL,
  `pay_mode` varchar(20) NOT NULL,
  `pay_by` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vendor_registration_table`
--

CREATE TABLE `vendor_registration_table` (
  `reg_id` int(11) NOT NULL,
  `comp_name` varchar(50) NOT NULL,
  `comp_loc` varchar(50) NOT NULL,
  `comp_phoneno` bigint(10) NOT NULL,
  `owner_name` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `est_year` varchar(20) NOT NULL,
  `vendor_pay` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vendor_verification_table`
--

CREATE TABLE `vendor_verification_table` (
  `verification_id` int(11) NOT NULL,
  `comp_name` varchar(50) NOT NULL,
  `comp_loc` varchar(30) NOT NULL,
  `comp_phoneno` bigint(10) NOT NULL,
  `contact_person` bigint(10) NOT NULL,
  `verification_remark` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `client_payment`
--
ALTER TABLE `client_payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `client_reg`
--
ALTER TABLE `client_reg`
  ADD PRIMARY KEY (`reg_id`);

--
-- Indexes for table `client_services`
--
ALTER TABLE `client_services`
  ADD PRIMARY KEY (`ser_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `emp_leave_entry_table`
--
ALTER TABLE `emp_leave_entry_table`
  ADD PRIMARY KEY (`emp_leave_entry_id`);

--
-- Indexes for table `emp_notice_period_table`
--
ALTER TABLE `emp_notice_period_table`
  ADD PRIMARY KEY (`emp_notice_id`);

--
-- Indexes for table `emp_pay_entry_table`
--
ALTER TABLE `emp_pay_entry_table`
  ADD PRIMARY KEY (`emp_pay_id`);

--
-- Indexes for table `event_activity_table`
--
ALTER TABLE `event_activity_table`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `interview_schedule_table`
--
ALTER TABLE `interview_schedule_table`
  ADD PRIMARY KEY (`interview_id`);

--
-- Indexes for table `new_candidate_table`
--
ALTER TABLE `new_candidate_table`
  ADD PRIMARY KEY (`candidate_id`);

--
-- Indexes for table `new_emp_reg_table`
--
ALTER TABLE `new_emp_reg_table`
  ADD PRIMARY KEY (`new_emp_id`);

--
-- Indexes for table `petty_cash_entry_table`
--
ALTER TABLE `petty_cash_entry_table`
  ADD PRIMARY KEY (`petty_id`);

--
-- Indexes for table `pickup_dropup_table`
--
ALTER TABLE `pickup_dropup_table`
  ADD PRIMARY KEY (`pickup_dropup_id`);

--
-- Indexes for table `vaccancy_table`
--
ALTER TABLE `vaccancy_table`
  ADD PRIMARY KEY (`vaccancy_id`);

--
-- Indexes for table `vendor_enquiry_table`
--
ALTER TABLE `vendor_enquiry_table`
  ADD PRIMARY KEY (`vendor_id`);

--
-- Indexes for table `vendor_payment_table`
--
ALTER TABLE `vendor_payment_table`
  ADD PRIMARY KEY (`pay_id`);

--
-- Indexes for table `vendor_registration_table`
--
ALTER TABLE `vendor_registration_table`
  ADD PRIMARY KEY (`reg_id`);

--
-- Indexes for table `vendor_verification_table`
--
ALTER TABLE `vendor_verification_table`
  ADD PRIMARY KEY (`verification_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `client_payment`
--
ALTER TABLE `client_payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `client_reg`
--
ALTER TABLE `client_reg`
  MODIFY `reg_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `client_services`
--
ALTER TABLE `client_services`
  MODIFY `ser_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `emp_leave_entry_table`
--
ALTER TABLE `emp_leave_entry_table`
  MODIFY `emp_leave_entry_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emp_notice_period_table`
--
ALTER TABLE `emp_notice_period_table`
  MODIFY `emp_notice_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emp_pay_entry_table`
--
ALTER TABLE `emp_pay_entry_table`
  MODIFY `emp_pay_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `event_activity_table`
--
ALTER TABLE `event_activity_table`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `interview_schedule_table`
--
ALTER TABLE `interview_schedule_table`
  MODIFY `interview_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `new_candidate_table`
--
ALTER TABLE `new_candidate_table`
  MODIFY `candidate_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `new_emp_reg_table`
--
ALTER TABLE `new_emp_reg_table`
  MODIFY `new_emp_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `petty_cash_entry_table`
--
ALTER TABLE `petty_cash_entry_table`
  MODIFY `petty_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pickup_dropup_table`
--
ALTER TABLE `pickup_dropup_table`
  MODIFY `pickup_dropup_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vaccancy_table`
--
ALTER TABLE `vaccancy_table`
  MODIFY `vaccancy_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vendor_enquiry_table`
--
ALTER TABLE `vendor_enquiry_table`
  MODIFY `vendor_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vendor_payment_table`
--
ALTER TABLE `vendor_payment_table`
  MODIFY `pay_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vendor_registration_table`
--
ALTER TABLE `vendor_registration_table`
  MODIFY `reg_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vendor_verification_table`
--
ALTER TABLE `vendor_verification_table`
  MODIFY `verification_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
