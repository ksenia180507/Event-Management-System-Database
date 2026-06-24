USE EventManagementDB;

-- Insertion of the information to the Roles table 
INSERT INTO Roles (role_name) VALUES
('Admin'),
('Organizer'),
('Participant'),
('Speaker');

-- Insertion of the information to the Users table
INSERT INTO Users (first_name, last_name, email, phone_number, role_id) VALUES
('Alice', 'Johnson', 'alice@example.com', '+4915111111111', 1),
('Bob', 'Smith', 'bob_smith@example.com', '+4915222222222', 2),
('Carol', 'Brown', 'carol@example.com', '+4915333333333', 3),
('David', 'Wilson', 'david@example.com', '+4915444444444', 4),
('Emma', 'Davis', 'emma@example.com', '+4915555555555', 2),
('Dany', 'Red', 'dany@example.com', '+309876543121', 1),
('Bob', 'Ross', 'bob_ross@example.com', '+908765434567', 2),
('Tom', 'Shelter', 'tom@example.com', '+4567843325465', 3),
('Fred', 'Duru', 'fred@example.com', '+876543214332', 4),
('Stacy', 'Lu', 'stacy@example.com', '+786548906567', 2),
('Ege', 'Gok', 'ege@example.com', '+79858454540', 1),
('Ryan', 'Grey', 'ryan@example.com', '+18766789080', 2),
('Liv', 'Mel', 'livmel@example.com', '+497563018723', 3),
('Jake', 'Green', 'jake@example.com', '+908769089087', 4),
('Hermes', 'Erm', 'hermes@example.com', '+431233214353', 2);

-- Insertion of the information to the Users table
INSERT INTO Users (first_name, last_name, email, phone_number, role_id) VALUES
('Mia', 'Taylor', 'mia.taylor@example.com', '+447700111111', 3),
('Noah', 'Martin', 'noah.martin@example.com', '+447700111112', 3),
('Sophia', 'Clark', 'sophia.clark@example.com', '+447700111113', 3),
('Liam', 'Walker', 'liam.walker@example.com', '+447700111114', 3),
('Olivia', 'Hall', 'olivia.hall@example.com', '+447700111115', 3),
('Ethan', 'Young', 'ethan.young@example.com', '+447700111116', 3),
('Ava', 'King', 'ava.king@example.com', '+447700111117', 3),
('Lucas', 'Wright', 'lucas.wright@example.com', '+447700111118', 3),
('Isabella', 'Scott', 'isabella.scott@example.com', '+447700111119', 3),
('James', 'Adams', 'james.adams@example.com', '+447700111120', 3);

-- Insertion of the information to the Organizers table
INSERT INTO Organizers (user_id) VALUES
(2),
(5),
(7),
(10),
(12),
(15);

-- Insertion of the information to the Participants table
INSERT INTO Participants (date_of_birth, user_id) VALUES
('2000-05-12', 3),
('1999-09-21', 8),
('2002-03-14', 13);

-- Insertion of the information to the Participants table
INSERT INTO Participants (date_of_birth, user_id) VALUES
('1999-04-11', 16),
('2000-08-23', 17),
('1998-12-02', 18),
('2001-03-17', 19),
('1997-07-29', 20),
('2002-01-14', 21),
('1999-09-08', 22),
('2000-11-19', 23),
('2001-05-27', 24),
('1998-02-06', 25);

-- Insertion of the information to the Speakers table
INSERT INTO Speakers (user_id, field_expertise) VALUES
(4, 'Artificial Intelligence'),
(9, 'Cybersecurity'),
(14, 'Cloud Computing');

-- Insertion of the information to the Venues table
INSERT INTO Venues (venue_name, country, city, street_address, max_capacity) VALUES
('Tech Hall Berlin', 'Germany', 'Berlin', 'Alexanderplatz 1', 500),
('Innovation Center Munich', 'Germany', 'Munich', 'Marienplatz 10', 300),
('San Francisco Innovation Lab', 'USA', 'San Francisco', 'Market Street 800', 700),
('Warsaw Business Hall', 'Poland', 'Warsaw', 'Nowy Świat 10', 550),
('Tokyo Global Forum', 'Japan', 'Tokyo', 'Shibuya Crossing 1', 1500),
('Dubai Expo Hall', 'UAE', 'Dubai', 'Sheikh Zayed Road 50', 2000);

-- Insertion of the information to the Events table
INSERT INTO Events (event_name, start_date, end_date, venue_id, organizer_id) VALUES
('AI Future Summit', '2026-07-10 10:00:00', '2026-07-10 18:00:00', 1, 1),
('Berlin Startup Expo', '2026-07-15 09:00:00', '2026-07-15 17:00:00', 1, 2),
('Munich Tech Conference', '2026-07-20 10:00:00', '2026-07-20 18:00:00', 2, 3),
('San Francisco AI Hackathon', '2026-08-01 08:00:00', '2026-08-01 20:00:00', 3, 1),
('Silicon Valley Meetup', '2026-08-05 09:00:00', '2026-08-05 16:00:00', 3, 2),
('Warsaw Business Forum', '2026-08-10 10:00:00', '2026-08-10 18:00:00', 4, 3),
('Eastern Europe Startup Day', '2026-08-12 09:00:00', '2026-08-12 17:00:00', 4, 4),
('Tokyo AI Conference', '2026-09-01 10:00:00', '2026-09-01 18:00:00', 5, 1),
('Japan Tech Expo', '2026-09-03 09:00:00', '2026-09-03 17:00:00', 5, 2),
('Future of Robotics Tokyo', '2026-09-05 10:00:00', '2026-09-05 18:00:00', 5, 3),
('Dubai Innovation Summit', '2026-10-01 10:00:00', '2026-10-01 18:00:00', 6, 4),
('Middle East Tech Forum', '2026-10-03 09:00:00', '2026-10-03 17:00:00', 6, 1),
('FinTech Dubai Expo', '2026-10-05 10:00:00', '2026-10-05 18:00:00', 6, 2),
('Global Cybersecurity Summit', '2026-11-01 10:00:00', '2026-11-01 18:00:00', 1, 3),
('Cloud & AI World', '2026-11-05 09:00:00', '2026-11-05 17:00:00', 2, 4);

-- Insertion of the information to the Categories table
INSERT INTO Categories (category_name) VALUES
('Technology'),
('AI'),
('Business'),
('Startups'),
('Education'),
('Networking'),
('Cybersecurity'),
('Cloud Computing'),
('FinTech'),
('Innovation');

-- Insertion of the information to the Sessions table
INSERT INTO Sessions (session_title, start_time, end_time, event_id) VALUES
('AI Trends 2026', '2026-07-10 11:00:00', '2026-07-10 12:30:00', 1),
('Machine Learning Basics', '2026-07-10 13:00:00', '2026-07-10 14:30:00', 1),
('Startup Funding Guide', '2026-07-15 10:00:00', '2026-07-15 11:30:00', 2),
('Investor Pitch Workshop', '2026-07-15 12:00:00', '2026-07-15 13:30:00', 2),
('Cloud Infrastructure', '2026-07-20 11:00:00', '2026-07-20 12:30:00', 3),
('AI Hackathon Rules', '2026-08-01 09:00:00', '2026-08-01 10:00:00', 4),
('Hackathon Coding Sprint', '2026-08-01 10:30:00', '2026-08-01 18:00:00', 4),
('Startup Scaling', '2026-08-10 11:00:00', '2026-08-10 12:30:00', 6),
('Robotics Future', '2026-09-05 11:00:00', '2026-09-05 12:30:00', 10),
('Cybersecurity Threats', '2026-11-01 11:00:00', '2026-11-01 12:30:00', 14),
('Cloud AI Integration', '2026-11-05 10:00:00', '2026-11-05 11:30:00', 15);

-- Insertion of the information to the Tickets table
INSERT INTO Tickets (ticket_type, price, amount, event_id) VALUES
('Standard', 49.99, 100, 1),
('VIP', 99.99, 50, 1),
('Standard', 29.99, 80, 2);

-- Insertion of the information to the Tickets table
INSERT INTO Tickets (ticket_type, price, amount, event_id) VALUES
('VIP', 120.00, 40, 2),
('Standard', 60.00, 200, 3),
('Standard', 80.00, 300, 4),
('VIP', 200.00, 80, 4),
('Standard', 45.00, 180, 5),
('Standard', 55.00, 160, 6),
('Standard', 70.00, 220, 7),
('Standard', 65.00, 200, 8),
('VIP', 150.00, 60, 8),
('Standard', 75.00, 250, 9),
('Standard', 90.00, 300, 10),
('Standard', 85.00, 280, 11),
('Standard', 95.00, 300, 12),
('Standard', 110.00, 350, 13),
('Standard', 120.00, 400, 14),
('Standard', 100.00, 320, 15),
('VIP', 250.00, 100, 15);

-- Insertion of the information to the Registrations table
INSERT INTO Registrations
(purchase_date, participant_id, ticket_id, event_id)
VALUES
('2026-06-01', 1, 1, 1),
('2026-06-01', 2, 2, 1),
('2026-06-02', 3, 3, 2),
('2026-06-02', 4, 4, 2),
('2026-06-03', 5, 5, 3),
('2026-06-04', 6, 6, 4),
('2026-06-04', 7, 7, 4),
('2026-06-05', 8, 8, 5),
('2026-06-06', 9, 9, 6),
('2026-06-07', 10, 10, 7),
('2026-06-08', 11, 11, 8),
('2026-06-09', 12, 12, 8),
('2026-06-10', 13, 13, 9),
('2026-06-11', 1, 14, 10),
('2026-06-12', 2, 15, 11),
('2026-06-13', 3, 16, 12),
('2026-06-14', 4, 17, 13),
('2026-06-15', 5, 18, 14),
('2026-06-16', 6, 19, 15),
('2026-06-17', 7, 20, 15);

-- Insertion of the information to the Event_category table
INSERT INTO Event_category (event_id, category_id) VALUES
(1,1),(1,2),
(2,4),
(3,1),
(4,2),
(5,1),
(6,3),
(7,4),
(8,2),
(9,1),
(10,1),
(11,3),
(12,9),
(13,7),
(14,8),
(15,1),(15,2);

-- Insertion of the information to the Session_speaker table
INSERT INTO Session_speaker (session_id, speaker_id) VALUES
(1,1),
(2,2),
(3,3),
(4,1),
(5,2),
(6,3),
(7,1),
(8,2),
(9,3),
(10,1);