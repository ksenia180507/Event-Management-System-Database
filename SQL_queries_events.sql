USE EventManagementDB;

-- Display registrations for events
SELECT U.first_name, U.last_name, E.event_name, R.purchase_date
FROM Registrations R
JOIN Participants P ON R.participant_id = P.participant_id
JOIN Users U ON P.user_id = U.user_id
JOIN Events E ON R.event_id = E.event_id;

-- Count the registrations
SELECT E.event_name, COUNT(R.registration_id) AS Total_Registrations
FROM Events E
LEFT JOIN Registrations R ON E.event_id = R.event_id
GROUP BY E.event_name;


-- Counting the average price for ticket
SELECT E.event_name, AVG(T.price) AS Average_Price
FROM Tickets T
JOIN Events E ON T.event_id = E.event_id
GROUP BY E.event_name;

-- Most expensive tickets for five events
SELECT E.event_name, T.ticket_type, T.price
FROM Tickets T
JOIN Events E ON T.event_id = E.event_id
ORDER BY price DESC
LIMIT 5;

-- Profit for the event
SELECT E.event_name, SUM(T.price * T.amount) AS Profit
FROM Tickets T
JOIN Events E ON T.event_id = E.event_id
GROUP BY E.event_name
ORDER BY Profit  DESC;

-- Display the session tittles with speakers and their fields of expertise
SELECT SE.session_tittle AS Session, CONCAT(U.first_name, ' ', U.last_name) AS Speaker, SP.field_expertise AS Expertise
FROM Session_speaker SS
JOIN Sessions SE ON SS.session_id = SE.session_id
JOIN Speakers SP ON SS.speaker_id = SP.speaker_id
JOIN Users U ON SP.user_id = U.user_id
ORDER BY SE.session_tittle;

-- Event with most registrations 
SELECT event_name
FROM Events
WHERE event_id = (SELECT event_id
FROM Registrations
GROUP BY event_id
ORDER BY COUNT(*) DESC
LIMIT 1);

-- Transaction which simulates a ticket purchase, as it is makes the registration and update the amount of tickets 

START TRANSACTION;

INSERT INTO Registrations
(purchase_date, participant_id, ticket_id, event_id)
VALUES
(CURDATE(), 8, 2, 1);

UPDATE Tickets
SET amount = amount - 1
WHERE ticket_id = 2;

COMMIT;

-- Checks whether the transaction works

ROLLBACK;

SELECT * FROM Tickets WHERE ticket_id = 2;


-- CRUD queries

-- Checking the ticket price 
SELECT ticket_id, ticket_type, price
FROM Tickets
WHERE ticket_id = 1;

-- Updating the ticket price
UPDATE Tickets
SET price = 75.00
WHERE ticket_id = 1;


-- Checking for the existence of the registration 
SELECT *
FROM Registrations
WHERE registration_id = 5;

-- Deleting the registration
DELETE FROM Registrations
WHERE registration_id = 5;

-- Restoring/adding back the registration
INSERT INTO Registrations (registration_id, participant_id, event_id)
VALUES (5, 3, 2);




