-- Actors --
CREATE TABLE actors (
  name      Text not null,
  address     text,
  birthday     text,
  haircolor text,
  eyecolor  Text,
  height     numeric(9,2),
  weight     Numeric(9,2),
  spouseName Text,
  favoriteColor Text,
  scrActAnnDate Text,
 primary key(name)
);


-- Movies --
CREATE TABLE movies (
  name	    text not null,
  year      text not null,
  mpaa      numeric(9,2),
  domBoxOff numeric(12,2),
  forBoxOff numeric(12,2),
 primary key(name)
);        


-- Directors --
CREATE TABLE directors (
  name            text not null,
  address         text,
  spouse          text,
  filmSchool      text,
  dirGuildAnnDate text,
 primary key(name)
);

--Actor/Movie
create table ActorMovie (
  ActName text  not null,
  MovName text  not null,
  Part    Text,
 primary key(ActName, MovName)
);

--Movie/Director
create table MovieDirector
  movName text,
  DirName Text,
 Primary Key(MovName, DirName)
);

INSERT INTO actors( name, birthday, haircolor, eyecolor, height, weight, favoriteColor, scrActAnnDate )
  VALUES('Nathan Fillion', '3/27/1971', 'brown', 'blue', 74, 200, 'brown', 1993);

INSERT INTO actors( name, birthday, haircolor, eyecolor, height, weight, favoriteColor, scrActAnnDate )
  VALUES('Idris Elba', '9/6/1972', 'brown', 'brown', 75, 215, 'Gold', 1994);

INSERT INTO actors( name, birthday, haircolor, eyecolor, height, weight, spouseName, favoriteColor, scrActAnnDate )
  VALUES('Nicolas Cage', '1/7/1964', 'brown', 'grey', 72, 187, 'Alice Kim', 'Black', 1981);

INSERT INTO movies( name, year, mpaa, domBoxOff, forBoxOff )
  VALUES('Ghost Rider', '2011', 'PG-13', 51774002, 80789928);

INSERT INTO movies( name, year, mpaa, domBoxOff, forBoxOff )
  VALUES('Serenity', '2005', 'PG-13', 25514517, 13354947);

INSERT INTO movies( name, year, mpaa, domBoxOff, forBoxOff )
  VALUES('Pacific Rim', '2013', 'PG-13', 101802906, 309200000);

INSERT INTO directors( name, spouse, filmSchool, dirGuildAnnDate )
  VALUES('Mark Neveldine', 'Alison Lohman', 'Los Angelas Film School', 2006 );

INSERT INTO directors( name, filmSchool, dirGuildAnnDate )
  VALUES('Brian Taylor', 'Los Angelas Film School', 2006 );

INSERT INTO directors( name, spouse, filmSchool, dirGuildAnnDate )
  VALUES('Joss Whedon', 'Kai Cole', 'Wesleyan University', 2002 );

INSERT INTO directors( name, spouse, filmSchool, dirGuildAnnDate )
  VALUES('Guillermo del Toro', 'Lorenza Newton', 'Centro de Investigación y Estudios Cinematográficos', 1985 );

INSERT INTO ActorMovie( ActName, MovName, Part )
  VALUES('Idris Elba', 'Pacific Rim', 'Stacker Pentecost' );

INSERT INTO ActorMovie( ActName, MovName, Part )
  VALUES('Idris Elba', 'Ghost Rider Spirit of Vengeance', 'Moreau' );

INSERT INTO ActorMovie( ActName, MovName, Part )
  VALUES('Nicolas Cage', 'Ghost Rider Spirit of Vengeance', 'Johnny Blaze/Ghost Rider' );

INSERT INTO ActorMovie( ActName, MovName, Part )
  VALUES('Nathan Fillion', 'Serenity', 'Malcomn Reynolds' );

INSERT INTO MovieDirector( MovName, DirName )
  VALUES('Ghost Rider Spirit of Vengeance', 'Mark Neveldine' );

INSERT INTO MovieDirector( MovName, DirName )
  VALUES('Ghost Rider Spirit of Vengeance', 'Brian Taylor' );

INSERT INTO MovieDirector( MovName, DirName )
  VALUES('Serenity', 'Joss Whedon' );

INSERT INTO MovieDirector( MovName, DirName )
  VALUES('Pacific Rim', 'Guillermo del Toro' );



select *
from actors



