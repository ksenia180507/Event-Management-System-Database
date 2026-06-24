CREATE DATABASE EventManagementDB;
USE EventManagementDB;


-- Roles table creation
CREATE TABLE Roles(
role_id INT AUTO_INCREMENT PRIMARY KEY,
role_name VARCHAR(50) NOT NULL);

-- Users table created
CREATE TABLE Users(
user_id INT AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
email VARCHAR(100) NOT NULL UNIQUE,
phone_number VARCHAR(20) NOT NULL,
role_id INT,
FOREIGN KEY (role_id) REFERENCES Roles(role_id));

-- Organizers table created
CREATE TABLE Organizers(
organizer_id INT AUTO_INCREMENT PRIMARY KEY,
user_id INT,
FOREIGN KEY (user_id) REFERENCES Users(user_id));

-- Participants table created
CREATE TABLE Participants(
participant_id INT AUTO_INCREMENT PRIMARY KEY,
date_of_birth DATE,
user_id INT,
FOREIGN KEY (user_id) REFERENCES Users(user_id));

-- Speakers table created
CREATE TABLE Speakers(
speaker_id INT AUTO_INCREMENT PRIMARY KEY,
user_id INT,
field_expertise VARCHAR(100) NOT NULL,
FOREIGN KEY (user_id) REFERENCES Users(user_id));

-- Vanues table created
CREATE TABLE Venues(
venue_id INT AUTO_INCREMENT PRIMARY KEY,
venue_name VARCHAR(100) NOT NULL,
country VARCHAR(50),
city VARCHAR(50),
street_address VARCHAR(100),
max_capacity INT);

-- Events table created
CREATE TABLE Events(
event_id INT AUTO_INCREMENT PRIMARY KEY,
event_name VARCHAR(100) NOT NULL,
start_date DATETIME NOT NULL,
end_date DATETIME NOT NULL,
venue_id INT,
organizer_id INT,
FOREIGN KEY (venue_id) REFERENCES Venues(venue_id),
FOREIGN KEY (organizer_id) REFERENCES Organizers(organizer_id));

-- Categories table created
CREATE TABLE Categories(
category_id INT AUTO_INCREMENT PRIMARY KEY,
category_name VARCHAR(100) NOT NULL);

-- Sessions table created
CREATE TABLE Sessions(
session_id INT AUTO_INCREMENT PRIMARY KEY,
session_title VARCHAR(100) NOT NULL,
start_time DATETIME NOT NULL,
end_time DATETIME NOT NULL,
event_id INT,
FOREIGN KEY (event_id) REFERENCES Events(event_id));

-- Tickets table created
CREATE TABLE Tickets(
ticket_id INT AUTO_INCREMENT PRIMARY KEY,
ticket_type VARCHAR(50) NOT NULL,
price DECIMAL(10,2) NOT NULL,
amount INT NOT NULL,
event_id INT, 
FOREIGN KEY (event_id) REFERENCES Events(event_id));

-- Registrations table created
CREATE TABLE Registrations(
registration_id INT AUTO_INCREMENT PRIMARY KEY,
purchase_date DATE NOT NULL,
participant_id INT,
ticket_id INT,
event_id INT,
FOREIGN KEY (participant_id) REFERENCES Participants(participant_id),
FOREIGN KEY (ticket_id) REFERENCES Tickets(ticket_id),
FOREIGN KEY (event_id) REFERENCES Events(event_id));

-- Event_category table created
CREATE TABLE Event_category(
event_cat_id INT AUTO_INCREMENT PRIMARY KEY,
event_id INT,
category_id INT,
FOREIGN KEY (event_id) REFERENCES Events(event_id),
FOREIGN KEY (category_id) REFERENCES Categories(category_id));

-- Session_speaker table created
CREATE TABLE Session_speaker(
session_speak_id INT AUTO_INCREMENT PRIMARY KEY,
session_id INT,
speaker_id INT,
FOREIGN KEY (session_id) REFERENCES Sessions(session_id),
FOREIGN KEY (speaker_id) REFERENCES Speakers(speaker_id));