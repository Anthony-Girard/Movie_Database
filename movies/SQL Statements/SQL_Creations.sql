CREATE DATABASE movieDB;

USE movieDB;

CREATE TABLE Movie(
    MovieId INTEGER NOT NULL,
    Title CHAR(20) NOT NULL,
    ReleaseDate DATE,
    Duration INTEGER NOT NULL,
    Genre CHAR(20)
	check(Genre IN ('Drama', 'Horror', 'Comedy', 'Tragedy',  'Action')), 
    PRIMARY KEY (MovieID)
    ); 
    
CREATE TABLE Person(
    PersonId INTEGER NOT NULL,
    PersonName CHAR(20) NOT NULL,
    PersonAge INTEGER,
    PRIMARY KEY (PersonId)
);

CREATE TABLE MoviePerson(
    MPId INTEGER NOT NULL,
    PRIMARY KEY (MPId),
    FOREIGN KEY (MPId) REFERENCES Person (PersonId)
);

CREATE TABLE Has_Person(
    Movie INTEGER NOT NULL,
    MoviePerson INTEGER NOT NULL, 
    FOREIGN KEY (Movie) REFERENCES Movie (MovieId),
    FOREIGN KEY (MoviePerson) REFERENCES MoviePerson (MPId),
    PRIMARY KEY (Movie, MoviePerson)
);

CREATE TABLE CrewMember( 
    CrewId INTEGER NOT NULL,
    PRIMARY KEY (CrewId),
    FOREIGN KEY (CrewId) REFERENCES MoviePerson (MPId)
);

CREATE TABLE Actor(
    ActorId INTEGER NOT NULL,
    PRIMARY KEY (ActorId),
    FOREIGN KEY (ActorId) REFERENCES MoviePerson (MPId)
);

CREATE TABLE Writer(
    WriterId INTEGER NOT NULL,
    Movie INTEGER NOT NULL,
    PRIMARY KEY (WriterId),
    FOREIGN KEY (WriterId) REFERENCES CrewMember (CrewId),
    FOREIGN KEY (Movie) REFERENCES Movie(MovieId) 
);

CREATE TABLE Writes(
    WriterId INTEGER NOT NULL,
    MovieId INTEGER NOT NULL,
    PRIMARY KEY (WriterID, MovieId),
    FOREIGN KEY (MovieId) REFERENCES Movie(MovieID),
    FOREIGN KEY (WriterId) REFERENCES Writer(WriterId)
);

CREATE TABLE Director(
    DirectorId INTEGER NOT NULL,
    Movie INTEGER NOT NULL,
    PRIMARY KEY (DirectorId),
    FOREIGN KEY (DirectorId) REFERENCES CrewMember (CrewId),
    FOREIGN KEY (Movie) REFERENCES Movie(MovieId)
);

CREATE TABLE Directs(
    DirectorId INTEGER NOT NULL,
    MovieId INTEGER NOT NULL,
    PRIMARY KEY (DirectorID, MovieId),
    FOREIGN KEY (MovieId) REFERENCES Movie(MovieID),
    FOREIGN KEY (DirectorId) REFERENCES Director(DirectorId)
);

CREATE TABLE Reviews(
    ReviewID INTEGER NOT NULL,
    MovieId INTEGER NOT NULL,
    Rating INTEGER 
	check(Rating >=0 and Rating<= 5),
    Comments CHAR(100),
    FOREIGN KEY (MovieId) REFERENCES Movie(MovieId),
    PRIMARY KEY(ReviewID)
);
