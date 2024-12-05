-- Updated Database for Indian Railway Reservation System

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+05:30";

-- Database: orrsphp
--

-- --------------------------------------------------------

-- Table structure for table orrs_admin
create database orrsphp;
use orrsphp;

CREATE TABLE orrs_admin (
  admin_id int(20) NOT NULL AUTO_INCREMENT,
  admin_fname varchar(200) NOT NULL,
  admin_lname varchar(200) NOT NULL,
  admin_email varchar(200) NOT NULL,
  admin_uname varchar(200) NOT NULL,
  admin_pwd varchar(200) NOT NULL,
  admin_dpic varchar(60) NOT NULL,
  PRIMARY KEY (admin_id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Insert admin data
INSERT INTO orrs_admin (admin_id, admin_fname, admin_lname, admin_email, admin_uname, admin_pwd, admin_dpic) VALUES
(1, 'Indian', 'Admin', 'admin@irctc.co.in', 'Administrator', 'encrypted_password_here', 'admin_icon.png');

-- --------------------------------------------------------

-- Table structure for table orrs_employee
CREATE TABLE orrs_employee (
  emp_id int(20) NOT NULL AUTO_INCREMENT,
  emp_fname varchar(200) NOT NULL,
  emp_lname varchar(200) NOT NULL,
  emp_nat_idno varchar(200) NOT NULL,
  emp_phone varchar(10) NOT NULL,
  emp_addr varchar(200) NOT NULL,
  emp_uname varchar(200) NOT NULL,
  emp_email varchar(200) NOT NULL,
  emp_pwd varchar(200) NOT NULL,
  emp_dpic varchar(200) NOT NULL,
  emp_dept varchar(200) NOT NULL,
  PRIMARY KEY (emp_id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Insert employee data
INSERT INTO orrs_employee (emp_id, emp_fname, emp_lname, emp_nat_idno, emp_phone, emp_addr, emp_uname, emp_email, emp_pwd, emp_dpic, emp_dept) VALUES
(1, 'Rajesh', 'Kumar', 'A123456789', '9876543210', 'Delhi', 'rajesh', 'rajesh@irctc.co.in', 'encrypted_password', 'defaultimg.jpg', 'Ticket Inspector');

-- --------------------------------------------------------

-- Table structure for table orrs_passenger
CREATE TABLE orrs_passenger (
  pass_id int(20) NOT NULL AUTO_INCREMENT,
  pass_fname varchar(200) NOT NULL,
  pass_lname varchar(200) NOT NULL,
  pass_phone varchar(10) NOT NULL,
  pass_addr varchar(200) NOT NULL,
  pass_email varchar(200) NOT NULL,
  pass_pwd varchar(200) NOT NULL,
  pass_dpic varchar(200) NOT NULL,
  pass_uname varchar(200) NOT NULL,
  pass_bday date NOT NULL,
  pass_bio longtext NOT NULL,
  pass_train_number varchar(20) NOT NULL,
  pass_train_name varchar(200) NOT NULL,
  pass_dep_station varchar(200) NOT NULL,
  pass_dep_time varchar(50) NOT NULL,
  pass_arr_station varchar(200) NOT NULL,
  pass_train_fare decimal(10,2) NOT NULL,
  pass_fare_payment_code varchar(200) NOT NULL,
  PRIMARY KEY (pass_id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Insert passenger data
INSERT INTO orrs_passenger (pass_id, pass_fname, pass_lname, pass_phone, pass_addr, pass_email, pass_pwd, pass_dpic, pass_uname, pass_bday, pass_bio, pass_train_number, pass_train_name, pass_dep_station, pass_dep_time, pass_arr_station, pass_train_fare, pass_fare_payment_code) VALUES
(1, 'Anjali', 'Sharma', '9876541230', 'Mumbai', 'anjali@mail.com', 'encrypted_password', 'defaultimg.jpg', 'anjali', '1995-08-12', '', '12345', 'Rajdhani Express', 'Mumbai Central', '06:00 AM', 'New Delhi', '1500.00', 'PAY123456');

-- --------------------------------------------------------

-- Table structure for table orrs_train
CREATE TABLE orrs_train (
  id int(20) NOT NULL AUTO_INCREMENT,
  name varchar(200) NOT NULL,
  route varchar(200) NOT NULL,
  current varchar(200) NOT NULL,
  destination varchar(200) NOT NULL,
  time varchar(50) NOT NULL,
  passengers int(10) NOT NULL,
  number varchar(20) NOT NULL,
  fare decimal(10,2) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Insert train data
INSERT INTO orrs_train (id, name, route, current, destination, time, passengers, number, fare) VALUES
(1, 'Rajdhani Express', 'Mumbai - New Delhi', 'Mumbai Central', 'New Delhi', '06:00 AM', 120, '12345', '1500.00'),
(2, 'Shatabdi Express', 'Chennai - Bangalore', 'Chennai', 'Bangalore', '08:00 AM', 100, '12007', '800.00'),
(3, 'Duronto Express', 'Kolkata - Delhi', 'Kolkata', 'Delhi', '09:30 AM', 200, '12245', '2000.00');

-- --------------------------------------------------------

-- Table structure for table orrs_train_tickets
CREATE TABLE orrs_train_tickets (
  ticket_id int(20) NOT NULL AUTO_INCREMENT,
  pass_name varchar(200) NOT NULL,
  pass_email varchar(200) NOT NULL,
  pass_addr varchar(200) NOT NULL,
  train_name varchar(200) NOT NULL,
  train_no varchar(20) NOT NULL,
  train_dep_stat varchar(200) NOT NULL,
  train_arr_stat varchar(200) NOT NULL,
  train_fare decimal(10,2) NOT NULL,
  fare_payment_code varchar(200) NOT NULL,
  confirmation varchar(50) NOT NULL,
  PRIMARY KEY (ticket_id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Insert ticket data
INSERT INTO orrs_train_tickets (ticket_id, pass_name, pass_email, pass_addr, train_name, train_no, train_dep_stat, train_arr_stat, train_fare, fare_payment_code, confirmation) VALUES
(1, 'Anjali Sharma', 'anjali@mail.com', 'Mumbai', 'Rajdhani Express', '12345', 'Mumbai Central', 'New Delhi', '1500.00', 'PAY123456', 'Confirmed');