INSERT INTO meetup(Start,Location,Topic,Description) values ('2016-01-01 12:00:00', 'Sajopetri', 'Ganajaszas', 'bring ganaj');
INSERT INTO meetup(Start,Location,Topic,Description) values ('2016-01-11 16:40:00', 'Miskolc', 'Programming', 'be cool');
INSERT INTO meetup(Start,Location,Topic,Description) values ('2016-01-21 14:00:00', 'Amsterdam', 'Studying', 'bring a lot of money lol');
INSERT INTO meetup(Start,Location,Topic,Description) values ('2016-01-23 22:00:00', 'Budapest', 'Visiting', '1st generation da best');
INSERT INTO meetup(Start,Location,Topic,Description) values ('2016-01-24 13:00:00', 'New York', 'Im Lazy', 'Disc. about how lazy i am');

INSERT INTO statuses(Value) values ('Going');
INSERT INTO statuses(Value) values ('Tentative');
INSERT INTO statuses(Value) values ('Not Going');
INSERT INTO statuses(Value) values ('Presenting');
INSERT INTO statuses(Value) values ('Going');

INSERT INTO users(Name, Birthdate, Introduction, Avatar, Email) values('Kerekes Kerek', '1996-09-12', 'Im the wheel maker', 'Helicopter', 'Kerekes@gmail.com');
INSERT INTO users(Name, Birthdate, Introduction, Avatar, Email) values('Sajtos Kerek', '1997-08-12', 'Im the brother of the wheel maker', 0, 'Sajt@gmail.com');
INSERT INTO users(Name, Birthdate, Introduction, Avatar, Email) values('Jany Kerek', '1994-09-12', 0, 'Tiny Helicopter', 'Jany@gmail.com');
INSERT INTO users(Name, Birthdate, Introduction, Avatar, Email) values('Apa Kerek', '1956-09-12', 'Im the wheel', 'Apach Helicopter', 'Kerek@gmail.com');
INSERT INTO users(Name, Birthdate, Introduction, Avatar, Email) values('Random Lajos', '1999-09-09', 'I dont like wheels', 'Anti Helicopter Poster', 0);

INSERT INTO meetup_registration(StatusId, MeetupId, UserId) values (4,1,1);
INSERT INTO meetup_registration(StatusId, MeetupId, UserId) values (1,1,5);
INSERT INTO meetup_registration(StatusId, MeetupId, UserId) values (1,1,3);
INSERT INTO meetup_registration(StatusId, MeetupId, UserId) values (2,1,1);
INSERT INTO meetup_registration(StatusId, MeetupId, UserId) values (1,5,1);