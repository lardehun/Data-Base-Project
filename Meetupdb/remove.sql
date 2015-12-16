USE Meetdb;

DELETE FROM meetup WHERE Location = 'Miskolc';
DELETE FROM statuses WHERE Value = 'Not Going';
DELETE FROM users WHERE Id = 5;