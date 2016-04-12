DROP TABLE IF EXISTS People;
DROP TABLE IF EXISTS Players;
DROP TABLE IF EXISTS Coaches;
DROP TABLE IF EXISTS Teams;


-- People --
CREATE TABLE People (
  pid      char(2) not null,
  FN       text,
  LN       text,
  Address  text,
  PhoneNum varchar(12),
  PlayerorCoach  text,
 primary key(pid)
);


-- Players --
CREATE TABLE Players (
  pid      char(2) not null references People(pid),
  age      char(4),
 primary key(pid)
);        


-- Coach --
CREATE TABLE Coach (
  pid      char(2) not null references People(pid),
  numOfTeams char(2),
 primary key(pid)
);


-- Teams -- 
CREATE TABLE Teams (
  tid      char(2),
  teamName text,
  ageGroup text,
 primary key(tid)
);

-- CoachTeams -- 
CREATE TABLE CoachTeams (
  pid      char(2) not null references Coach(pid),
  tid      char(2) not null references Teams(tid),
 primary key(tid, pid)
);



-- SQL statements for loading example data into the CAP3 database
-- Connect to your Postgres server and set the active database to CAP3. Then . . .

-- People --
INSERT INTO People( pid, FN, LN, Address, PhoneNum, PlayerorCoach )
  VALUES('1', 'Kevin', 'Scharr', '138 knoll drive', '555-1138', 'Player');
INSERT INTO People( pid, FN, LN, Address, PhoneNum, PlayerorCoach )
  VALUES('2', 'Charles', 'Bruce', '123 park drive', '555-1262', 'Coach');
INSERT INTO People( pid, FN, LN, Address, PhoneNum, PlayerorCoach )
  VALUES('3', 'Matt', 'Doyle', '432 Uri Drive', '555-1337', 'Coach');
INSERT INTO People( pid, FN, LN, Address, PhoneNum, PlayerorCoach )
  VALUES('4', 'Harry', 'Walton', '3488 Forge road', '555-3636', 'Player');
INSERT INTO People( pid, FN, LN, Address, PhoneNum, PlayerorCoach )
  VALUES('5', 'Alex', 'Frato', '2352 Mower Way', '555-5675', 'Player');
INSERT INTO People( pid, FN, LN, Address, PhoneNum, PlayerorCoach )
  VALUES('6', 'Barry', 'Alan', '46 Flash Run', '555-8826', 'Player');

-- Players --
INSERT INTO Players( pid, age )
  VALUES('1', '7');
INSERT INTO Players( pid, age )
  VALUES('4', '13');
INSERT INTO Players( pid, age )
  VALUES('5', '6');
INSERT INTO Players( pid, age )
  VALUES('6', '15');

-- Coach --
INSERT INTO Coach( pid, numOfTeams )
  VALUES('2', '2');
INSERT INTO Coach( pid, numOfTeams )
  VALUES('2', '2');

  --Teams--
INSERT INTO Coach( tid, teamName, ageGroup )
  VALUES('1', 'Wolverines', 'under10');
INSERT INTO Coach( tid, teamName, ageGroup )
  VALUES('2', 'Titans', '10to14');
INSERT INTO Coach( tid, teamName, ageGroup )
  VALUES('3', 'Digidestined', 'over14');

--Coach Teams--
INSERT INTO CoachTeams( tid, pid )
  VALUES('1', '2');
INSERT INTO CoachTeams( tid, pid )
  VALUES('2', '3');
INSERT INTO CoachTeams( tid, pid )
  VALUES('3', '2');