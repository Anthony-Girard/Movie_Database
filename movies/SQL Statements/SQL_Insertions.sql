INSERT INTO Movie(MovieId, Title, ReleaseDate, Duration, Genre)
VALUES ('1001', 'Aquaman', '2018-12-21', '143','Action');

INSERT INTO Movie(MovieId, Title, ReleaseDate, Duration, Genre)
VALUES ('1002', 'Justice League', '2017-11-17', '120','Action');

INSERT INTO Movie(MovieId, Title, ReleaseDate, Duration, Genre)
VALUES ('1003', 'Coco', '2017-11-22', '105','Comedy');

INSERT INTO Movie(MovieId, Title, ReleaseDate, Duration, Genre)
VALUES ('1004', 'If You Saw His Heart', '2018-01-10', '86','Drama');

INSERT INTO Movie(MovieId, Title, ReleaseDate, Duration, Genre)
VALUES ('1005', 'The Open House', '2018-01-19', '94','Horror');

INSERT INTO Movie(MovieId, Title, ReleaseDate, Duration, Genre)
VALUES ('1006', 'Dont Breathe', '2016-08-26', '88','Horror');

-- Aquaman

INSERT INTO Person(PersonID, PersonName, PersonAge)
VALUES ('2001', 'James Wan', '41');

INSERT INTO Person(PersonID, PersonName, PersonAge)
VALUES ('2002', 'Jason Momoa', '43');

INSERT INTO Person(PersonID, PersonName, PersonAge)
VALUES ('2003', 'Amber Heard', '32');

INSERT INTO Person(PersonID, PersonName, PersonAge)
VALUES ('2004', 'Nicole Kidman', '51');

INSERT INTO MoviePerson(MPId)
VALUES ('2001');

INSERT INTO MoviePerson(MPId)
VALUES ('2002');

INSERT INTO MoviePerson(MPId)
VALUES ('2003');

INSERT INTO MoviePerson(MPId)
VALUES ('2004');

INSERT INTO CrewMember(CrewId)
VALUES ('2001');

INSERT INTO Director(DirectorId, Movie)
VALUES ('2001', '1001');

INSERT INTO Actor(ActorId)
VALUES ('2002');

INSERT INTO Actor(ActorId)
VALUES ('2003');

INSERT INTO Actor(ActorId)
VALUES ('2004');


-- Justice League

INSERT INTO Person(PersonID, PersonName, PersonAge)
VALUES ('2005', 'Zack Snyder', '52');

INSERT INTO Person(PersonID, PersonName, PersonAge)
VALUES ('2006', 'Ben Affleck', '46');

INSERT INTO Person(PersonID, PersonName, PersonAge)
VALUES ('2007', 'Amy Adams', '44');

INSERT INTO MoviePerson(MPId)
VALUES ('2005');

INSERT INTO MoviePerson(MPId)
VALUES ('2006');

INSERT INTO MoviePerson(MPId)
VALUES ('2007');

INSERT INTO CrewMember(CrewId)
VALUES ('2005');

INSERT INTO Director(DirectorId, Movie)
VALUES ('2005', '1002');

INSERT INTO Actor(ActorId)
VALUES ('2006');

INSERT INTO Actor(ActorId)
VALUES ('2007');


-- Coco

INSERT INTO Person(PersonID, PersonName, PersonAge)
VALUES ('2008', 'Adrian Molina', '44');

INSERT INTO Person(PersonID, PersonName, PersonAge)
VALUES ('2009', 'Gael Garcia Bernal', '40');

INSERT INTO Person(PersonID, PersonName, PersonAge)
VALUES ('2010', 'Benjamin Bratt', '36');

INSERT INTO Person(PersonID, PersonName, PersonAge)
VALUES ('2011', 'Alanna Ubach', '28');

INSERT INTO MoviePerson(MPId)
VALUES ('2008');

INSERT INTO MoviePerson(MPId)
VALUES ('2009');

INSERT INTO MoviePerson(MPId)
VALUES ('2010');

INSERT INTO MoviePerson(MPId)
VALUES ('2011');

INSERT INTO CrewMember(CrewId)
VALUES ('2008');

INSERT INTO Director(DirectorId, Movie)
VALUES ('2008', '1003');

INSERT INTO Actor(ActorId)
VALUES ('2009');

INSERT INTO Actor(ActorId)
VALUES ('2010');

INSERT INTO Actor(ActorId)
VALUES ('2011');


-- If you saw his heart

INSERT INTO Person(PersonID, PersonName, PersonAge)
VALUES ('2012', 'Joan Chemla', '47');

INSERT INTO Person(PersonID, PersonName, PersonAge)
VALUES ('2013', 'Marine Vacth', '31');

INSERT INTO Person(PersonID, PersonName, PersonAge)
VALUES ('2014', 'Karim Leklou', '36');

INSERT INTO MoviePerson(MPId)
VALUES ('2012');

INSERT INTO MoviePerson(MPId)
VALUES ('2013');

INSERT INTO MoviePerson(MPId)
VALUES ('2014');

INSERT INTO CrewMember(CrewId)
VALUES ('2012');

INSERT INTO Director(DirectorId, Movie)
VALUES ('2012', '1004');

INSERT INTO Actor(ActorId)
VALUES ('2013');

INSERT INTO Actor(ActorId)
VALUES ('2014');


-- The Open House

INSERT INTO Person(PersonID, PersonName, PersonAge)
VALUES ('2015', 'Suzanne Coote', '30');

INSERT INTO Person(PersonID, PersonName, PersonAge)
VALUES ('2016', 'Dylan Minnette', '24');

INSERT INTO Person(PersonID, PersonName, PersonAge)
VALUES ('2017', 'Piercey Dalton', '24');

INSERT INTO Person(PersonID, PersonName, PersonAge)
VALUES ('2018', 'Aaron Abrams', '29');

INSERT INTO MoviePerson(MPId)
VALUES ('2015');

INSERT INTO MoviePerson(MPId)
VALUES ('2016');

INSERT INTO MoviePerson(MPId)
VALUES ('2017');

INSERT INTO MoviePerson(MPId)
VALUES ('2018');

INSERT INTO CrewMember(CrewId)
VALUES ('2015');

INSERT INTO Director(DirectorId, Movie)
VALUES ('2015', '1005');

INSERT INTO Actor(ActorId)
VALUES ('2016');

INSERT INTO Actor(ActorId)
VALUES ('2017');

INSERT INTO Actor(ActorId)
VALUES ('2018');


-- Don't Breathe

INSERT INTO Person(PersonID, PersonName, PersonAge)
VALUES ('2019', 'Fede Alvarez', '40');

INSERT INTO Person(PersonID, PersonName, PersonAge)
VALUES ('2020', 'Stephen Lang', '27');

INSERT INTO Person(PersonID, PersonName, PersonAge)
VALUES ('2021', 'Jane Levy', '28');

INSERT INTO MoviePerson(MPId)
VALUES ('2019');

INSERT INTO MoviePerson(MPId)
VALUES ('2020');

INSERT INTO MoviePerson(MPId)
VALUES ('2021');

INSERT INTO CrewMember(CrewId)
VALUES ('2019');

INSERT INTO Director(DirectorId, Movie)
VALUES ('2019', '1006');

INSERT INTO Actor(ActorId)
VALUES ('2020');

INSERT INTO Actor(ActorId)
VALUES ('2021');

-- Aquaman

INSERT INTO Has_Person(Movie, MoviePerson)
VALUES ('1001', '2001');

INSERT INTO Has_Person(Movie, MoviePerson)
VALUES ('1001', '2002');

INSERT INTO Has_Person(Movie, MoviePerson)
VALUES ('1001', '2003');

INSERT INTO Has_Person(Movie, MoviePerson)
VALUES ('1001', '2004');

-- Justice League

INSERT INTO Has_Person(Movie, MoviePerson)
VALUES ('1002', '2002');

INSERT INTO Has_Person(Movie, MoviePerson)
VALUES ('1002', '2005');

INSERT INTO Has_Person(Movie, MoviePerson)
VALUES ('1002', '2006');

INSERT INTO Has_Person(Movie, MoviePerson)
VALUES ('1002', '2007');

-- Coco

INSERT INTO Has_Person(Movie, MoviePerson)
VALUES ('1003', '2008');

INSERT INTO Has_Person(Movie, MoviePerson)
VALUES ('1003', '2009');

INSERT INTO Has_Person(Movie, MoviePerson)
VALUES ('1003', '2010');

INSERT INTO Has_Person(Movie, MoviePerson)
VALUES ('1003', '2011');

-- If You Saw His Heart

INSERT INTO Has_Person(Movie, MoviePerson)
VALUES ('1004', '2009');

INSERT INTO Has_Person(Movie, MoviePerson)
VALUES ('1004', '2012');

INSERT INTO Has_Person(Movie, MoviePerson)
VALUES ('1004', '2013');

INSERT INTO Has_Person(Movie, MoviePerson)
VALUES ('1004', '2014');

-- The Open House

INSERT INTO Has_Person(Movie, MoviePerson)
VALUES ('1005', '2015');

INSERT INTO Has_Person(Movie, MoviePerson)
VALUES ('1005', '2016');

INSERT INTO Has_Person(Movie, MoviePerson)
VALUES ('1005', '2017');

INSERT INTO Has_Person(Movie, MoviePerson)
VALUES ('1005', '2018');

-- Don't Breathe

INSERT INTO Has_Person(Movie, MoviePerson)
VALUES ('1006', '2016');

INSERT INTO Has_Person(Movie, MoviePerson)
VALUES ('1006', '2019');

INSERT INTO Has_Person(Movie, MoviePerson)
VALUES ('1006', '2020');

INSERT INTO Has_Person(Movie, MoviePerson)
VALUES ('1006', '2021');


-- WRITERS
INSERT INTO Person(PersonID, PersonName, PersonAge)
VALUES ('2022', 'Will Beall', '42');

INSERT INTO MoviePerson(MPId)
VALUES ('2022');

INSERT INTO CrewMember(CrewId)
VALUES ('2022');

INSERT INTO Writer(WriterId, Movie)
VALUES ('2022', '1001');

INSERT INTO Has_Person(Movie, MoviePerson)
VALUES ('1001', '2022');

INSERT INTO Person(PersonID, PersonName, PersonAge)
VALUES ('2023', 'Chris Terrio', '50');

INSERT INTO MoviePerson(MPId)
VALUES ('2023');

INSERT INTO CrewMember(CrewId)
VALUES ('2023');

INSERT INTO Writer(WriterId, Movie)
VALUES ('2023', '1002');

INSERT INTO Has_Person(Movie, MoviePerson)
VALUES ('1002', '2023');

INSERT INTO Person(PersonID, PersonName, PersonAge)
VALUES ('2024', 'Lee Unkrich', '52');

INSERT INTO MoviePerson(MPId)
VALUES ('2024');

INSERT INTO CrewMember(CrewId)
VALUES ('2024');

INSERT INTO Writer(WriterId, Movie)
VALUES ('2024', '1003');

INSERT INTO Has_Person(Movie, MoviePerson)
VALUES ('1003', '2024');

INSERT INTO Person(PersonID, PersonName, PersonAge)
VALUES ('2025', 'Santiago Amigorena', '40');

INSERT INTO MoviePerson(MPId)
VALUES ('2025');

INSERT INTO CrewMember(CrewId)
VALUES ('2025');

INSERT INTO Writer(WriterId, Movie)
VALUES ('2025', '1004');

INSERT INTO Has_Person(Movie, MoviePerson)
VALUES ('1004', '2025');

INSERT INTO Person(PersonID, PersonName, PersonAge)
VALUES ('2026', 'Matt Angel', '43');

INSERT INTO MoviePerson(MPId)
VALUES ('2026');

INSERT INTO CrewMember(CrewId)
VALUES ('2026');

INSERT INTO Writer(WriterId, Movie)
VALUES ('2026', '1005');

INSERT INTO Has_Person(Movie, MoviePerson)
VALUES ('1005', '2026');

INSERT INTO Person(PersonID, PersonName, PersonAge)
VALUES ('2027', 'Rodo Sayagues', '32');

INSERT INTO MoviePerson(MPId)
VALUES ('2027');

INSERT INTO CrewMember(CrewId)
VALUES ('2027');

INSERT INTO Writer(WriterId, Movie)
VALUES ('2027', '1006');

INSERT INTO Has_Person(Movie, MoviePerson)
VALUES ('1006', '2027');

-- Directs

INSERT INTO Directs(DirectorID, MovieID)
VALUES ('2001', '1001');

INSERT INTO Directs(DirectorID, MovieID)
VALUES ('2005', '1002');

INSERT INTO Directs(DirectorID, MovieID)
VALUES ('2008', '1003');

INSERT INTO Directs(DirectorID, MovieID)
VALUES ('2012', '1004');

INSERT INTO Directs(DirectorID, MovieID)
VALUES ('2015', '1005');

INSERT INTO Directs(DirectorID, MovieID)
VALUES ('2019', '1006');

-- Writes

INSERT INTO Writes(WriterID, MovieID)
VALUES ('2022', '1001');

INSERT INTO Writes(WriterID, MovieID)
VALUES ('2023', '1002');

INSERT INTO Writes(WriterID, MovieID)
VALUES ('2024', '1003');

INSERT INTO Writes(WriterID, MovieID)
VALUES ('2025', '1004');

INSERT INTO Writes(WriterID, MovieID)
VALUES ('2026', '1005');

INSERT INTO Writes(WriterID, MovieID)
VALUES ('2027', '1006');

-- Reviews 

INSERT INTO Reviews(ReviewID, MovieID, Rating, Comments)
VALUES ('1', '1001', '0', 'Worst Marvel movie');

INSERT INTO Reviews(ReviewID, MovieID, Rating, Comments)
VALUES ('2', '1001', '5', 'Great');

INSERT INTO Reviews(ReviewID, MovieID, Rating, Comments)
VALUES ('3', '1001', '1', 'Awful');

INSERT INTO Reviews(ReviewID, MovieID, Rating, Comments)
VALUES ('4', '1001', '4', 'This movie was really exciting');

INSERT INTO Reviews(ReviewID, MovieID, Rating, Comments)
VALUES ('5', '1001', '4', 'One of the funniest Marvel movies');

INSERT INTO Reviews(ReviewID, MovieID, Rating, Comments)
VALUES ('6', '1001', '5', 'I love Jason Momoa!');

INSERT INTO Reviews(ReviewID, MovieID, Rating, Comments)
VALUES ('7', '1001', '3', 'Not very good, not very bad');


INSERT INTO Reviews(ReviewID, MovieID, Rating, Comments)
VALUES ('8', '1002', '4', 'I thought it was really good');

INSERT INTO Reviews(ReviewID, MovieID, Rating, Comments)
VALUES ('9', '1002', '2', 'Sort of boring');

INSERT INTO Reviews(ReviewID, MovieID, Rating, Comments)
VALUES ('10', '1002', '3', 'Liked seeing all of them together');

INSERT INTO Reviews(ReviewID, MovieID, Rating, Comments)
VALUES ('11', '1002', '1', 'Really bad');

INSERT INTO Reviews(ReviewID, MovieID, Rating, Comments)
VALUES ('12', '1002', '2', 'Funny, but bad plot');

INSERT INTO Reviews(ReviewID, MovieID, Rating, Comments)
VALUES ('13', '1002', '3', 'Average Marvel movie');

INSERT INTO Reviews(ReviewID, MovieID, Rating, Comments)
VALUES ('14', '1002', '4', 'One of the best movies Ive seen this year');


INSERT INTO Reviews(ReviewID, MovieID, Rating, Comments)
VALUES ('15', '1003', '5', 'I loved this movie!');

INSERT INTO Reviews(ReviewID, MovieID, Rating, Comments)
VALUES ('16', '1003', '4', 'So good...');

INSERT INTO Reviews(ReviewID, MovieID, Rating, Comments)
VALUES ('17', '1003', '3', 'I liked it');

INSERT INTO Reviews(ReviewID, MovieID, Rating, Comments)
VALUES ('18', '1003', '2', 'Sort of boring');

INSERT INTO Reviews(ReviewID, MovieID, Rating, Comments)
VALUES ('19', '1003', '5', 'Such a cute movie');

INSERT INTO Reviews(ReviewID, MovieID, Rating, Comments)
VALUES ('20', '1003', '5', 'Best movie of the year, I loved it');

INSERT INTO Reviews(ReviewID, MovieID, Rating, Comments)
VALUES ('21', '1003', '4', 'Great');


INSERT INTO Reviews(ReviewID, MovieID, Rating, Comments)
VALUES ('22', '1004', '4', 'Loved the actors');

INSERT INTO Reviews(ReviewID, MovieID, Rating, Comments)
VALUES ('23', '1004', '4', 'Great cinemetography');

INSERT INTO Reviews(ReviewID, MovieID, Rating, Comments)
VALUES ('24', '1004', '2', 'Not bad');

INSERT INTO Reviews(ReviewID, MovieID, Rating, Comments)
VALUES ('25', '1004', '2', 'I wont spoil it, but the ending was bad');

INSERT INTO Reviews(ReviewID, MovieID, Rating, Comments)
VALUES ('26', '1004', '3', 'Slow at first, but good');

INSERT INTO Reviews(ReviewID, MovieID, Rating, Comments)
VALUES ('27', '1004', '3', 'Great acting');

INSERT INTO Reviews(ReviewID, MovieID, Rating, Comments)
VALUES ('28', '1004', '3', 'Fun plot');


INSERT INTO Reviews(ReviewID, MovieID, Rating, Comments)
VALUES ('29', '1005', '3', 'Pretty good horror movie');

INSERT INTO Reviews(ReviewID, MovieID, Rating, Comments)
VALUES ('30', '1005', '3', 'Scary!');

INSERT INTO Reviews(ReviewID, MovieID, Rating, Comments)
VALUES ('31', '1005', '2', 'Scary but didnt make any sense');

INSERT INTO Reviews(ReviewID, MovieID, Rating, Comments)
VALUES ('32', '1005', '1', 'So incredibly bad');

INSERT INTO Reviews(ReviewID, MovieID, Rating, Comments)
VALUES ('33', '1005', '2', 'Awful');

INSERT INTO Reviews(ReviewID, MovieID, Rating, Comments)
VALUES ('34', '1005', '2', 'Cliche');

INSERT INTO Reviews(ReviewID, MovieID, Rating, Comments)
VALUES ('35', '1005', '1', 'Classic bad horror movie');



INSERT INTO Reviews(ReviewID, MovieID, Rating, Comments)
VALUES ('36', '1006', '3', 'Really spooky');

INSERT INTO Reviews(ReviewID, MovieID, Rating, Comments)
VALUES ('37', '1006', '4', 'Plot was actually good for a horror movie');

INSERT INTO Reviews(ReviewID, MovieID, Rating, Comments)
VALUES ('38', '1006', '2', 'Too slow at the beginning');

INSERT INTO Reviews(ReviewID, MovieID, Rating, Comments)
VALUES ('39', '1006', '2', 'Interesting idea but bad');

INSERT INTO Reviews(ReviewID, MovieID, Rating, Comments)
VALUES ('40', '1006', '2', 'Not so good');

INSERT INTO Reviews(ReviewID, MovieID, Rating, Comments)
VALUES ('41', '1006', '4', 'Super freaky and exciting!');

INSERT INTO Reviews(ReviewID, MovieID, Rating, Comments)
VALUES ('42', '1006', '2', 'Bad');

-- More movies(Movie, Person(5), MoviePerson(5), CrewMember(2), Director, Directs, Actor(3), Writer, Writes, has_Person(5), Reviews(7)) 


-- Amores Perros

INSERT INTO Movie(MovieId, Title, ReleaseDate, Duration, Genre)
VALUES ('1007', 'Amores Perros', '2001-04-13', '154','Drama');

INSERT INTO Person(PersonID, PersonName, PersonAge)
VALUES ('2028', 'Alejandro Inarritu', '51');

INSERT INTO Person(PersonID, PersonName, PersonAge)
VALUES ('2029', 'Guillermo Arriaga', '61');

INSERT INTO Person(PersonID, PersonName, PersonAge)
VALUES ('2030', 'Emilio Echevarria', '70');

INSERT INTO Person(PersonID, PersonName, PersonAge)
VALUES ('2031', 'Vanessa Bauche', '45');

INSERT INTO MoviePerson(MPId)
VALUES ('2028');

INSERT INTO MoviePerson(MPId)
VALUES ('2029');

INSERT INTO MoviePerson(MPId)
VALUES ('2030');

INSERT INTO MoviePerson(MPId)
VALUES ('2031');

INSERT INTO CrewMember(CrewId)
VALUES ('2028');

INSERT INTO CrewMember(CrewId)
VALUES ('2029');

INSERT INTO Director(DirectorId, Movie)
VALUES ('2028', '1007');

INSERT INTO Directs(DirectorID, MovieID)
VALUES ('2028', '1007');

INSERT INTO Writer(WriterId, Movie)
VALUES ('2029', '1007');

INSERT INTO Writes(WriterID, MovieID)
VALUES ('2029', '1007');

INSERT INTO Actor(ActorId)
VALUES ('2030');

INSERT INTO Actor(ActorId)
VALUES ('2031');

INSERT INTO Has_Person(Movie, MoviePerson)
VALUES ('1007', '2009');

INSERT INTO Has_Person(Movie, MoviePerson)
VALUES ('1007', '2028');

INSERT INTO Has_Person(Movie, MoviePerson)
VALUES ('1007', '2029');

INSERT INTO Has_Person(Movie, MoviePerson)
VALUES ('1007', '2030');

INSERT INTO Has_Person(Movie, MoviePerson)
VALUES ('1007', '2031');

INSERT INTO Reviews(ReviewID, MovieID, Rating, Comments)
VALUES ('43', '1007', '5', 'One of my favorite movies');

INSERT INTO Reviews(ReviewID, MovieID, Rating, Comments)
VALUES ('44', '1007', '4', 'Amazing film');

INSERT INTO Reviews(ReviewID, MovieID, Rating, Comments)
VALUES ('45', '1007', '5', 'Best movie Ive seen this year');

INSERT INTO Reviews(ReviewID, MovieID, Rating, Comments)
VALUES ('46', '1007', '3', 'Way too long');

INSERT INTO Reviews(ReviewID, MovieID, Rating, Comments)
VALUES ('47', '1007', '3', 'Nice acting');

INSERT INTO Reviews(ReviewID, MovieID, Rating, Comments)
VALUES ('48', '1007', '5', 'The plot was so good');

INSERT INTO Reviews(ReviewID, MovieID, Rating, Comments)
VALUES ('49', '1007', '5', 'Loved it');

-- Sorry to Bother You

INSERT INTO Movie(MovieId, Title, ReleaseDate, Duration, Genre)
VALUES ('1008', 'Sorry to Bother You', '2018-07-13', '111','Comedy');

INSERT INTO Person(PersonID, PersonName, PersonAge)
VALUES ('2032', 'Boots Riley', '46');

INSERT INTO Person(PersonID, PersonName, PersonAge)
VALUES ('2033', 'Lakeith Stanfield', '28');

INSERT INTO Person(PersonID, PersonName, PersonAge)
VALUES ('2034', 'Tessa Thompson', '27');

INSERT INTO Person(PersonID, PersonName, PersonAge)
VALUES ('2035', 'Omari Hardwick', '30');

INSERT INTO MoviePerson(MPId)
VALUES ('2032');

INSERT INTO MoviePerson(MPId)
VALUES ('2033');

INSERT INTO MoviePerson(MPId)
VALUES ('2034');

INSERT INTO MoviePerson(MPId)
VALUES ('2035');

INSERT INTO CrewMember(CrewId)
VALUES ('2032');

INSERT INTO Director(DirectorId, Movie)
VALUES ('2032', '1008');

INSERT INTO Directs(DirectorID, MovieID)
VALUES ('2032', '1008');

INSERT INTO Writer(WriterId, Movie)
VALUES ('2032', '1008');

INSERT INTO Writes(WriterID, MovieID)
VALUES ('2032', '1008');

INSERT INTO Actor(ActorId)
VALUES ('2033');

INSERT INTO Actor(ActorId)
VALUES ('2034');

INSERT INTO Actor(ActorId)
VALUES ('2035');

INSERT INTO Has_Person(Movie, MoviePerson)
VALUES ('1008', '2032');

INSERT INTO Has_Person(Movie, MoviePerson)
VALUES ('1008', '2033');

INSERT INTO Has_Person(Movie, MoviePerson)
VALUES ('1008', '2034');

INSERT INTO Has_Person(Movie, MoviePerson)
VALUES ('1008', '2035');

INSERT INTO Reviews(ReviewID, MovieID, Rating, Comments)
VALUES ('50', '1008', '4', 'Hilarious');

INSERT INTO Reviews(ReviewID, MovieID, Rating, Comments)
VALUES ('51', '1008', '4', 'A bunch of my favorite actors in one movie');

INSERT INTO Reviews(ReviewID, MovieID, Rating, Comments)
VALUES ('52', '1008', '5', 'Best director of the year');

INSERT INTO Reviews(ReviewID, MovieID, Rating, Comments)
VALUES ('53', '1008', '2', 'Insanely weird');

INSERT INTO Reviews(ReviewID, MovieID, Rating, Comments)
VALUES ('54', '1008', '3', 'Felt a little odd, but fun');

INSERT INTO Reviews(ReviewID, MovieID, Rating, Comments)
VALUES ('55', '1008', '5', 'Made a lot of good points');

INSERT INTO Reviews(ReviewID, MovieID, Rating, Comments)
VALUES ('56', '1008', '2', 'Not great');

-- The Shape of Water

INSERT INTO Movie(MovieId, Title, ReleaseDate, Duration, Genre)
VALUES ('1009', 'The Shape of Water', '2017-12-22', '123','Drama');

INSERT INTO Person(PersonID, PersonName, PersonAge)
VALUES ('2036', 'Guillermo del Toro', '54');

INSERT INTO Person(PersonID, PersonName, PersonAge)
VALUES ('2037', 'Vanessa Taylor', '61');

INSERT INTO Person(PersonID, PersonName, PersonAge)
VALUES ('2038', 'Emilio Echevarria', '70');

INSERT INTO Person(PersonID, PersonName, PersonAge)
VALUES ('2039', 'Vanessa Bauche', '45');

INSERT INTO Person(PersonID, PersonName, PersonAge)
VALUES ('2040', 'Vanessa Bauche', '45');

INSERT INTO MoviePerson(MPId)
VALUES ('2036');

INSERT INTO MoviePerson(MPId)
VALUES ('2037');

INSERT INTO MoviePerson(MPId)
VALUES ('2038');

INSERT INTO MoviePerson(MPId)
VALUES ('2039');

INSERT INTO MoviePerson(MPId)
VALUES ('2040');

INSERT INTO CrewMember(CrewId)
VALUES ('2036');

INSERT INTO CrewMember(CrewId)
VALUES ('2037');

INSERT INTO Director(DirectorId, Movie)
VALUES ('2036', '1009');

INSERT INTO Directs(DirectorID, MovieID)
VALUES ('2036', '1009');

INSERT INTO Writer(WriterId, Movie)
VALUES ('2037', '1009');

INSERT INTO Writes(WriterID, MovieID)
VALUES ('2037', '1009');

INSERT INTO Actor(ActorId)
VALUES ('2038');

INSERT INTO Actor(ActorId)
VALUES ('2039');

INSERT INTO Actor(ActorId)
VALUES ('2040');

INSERT INTO Has_Person(Movie, MoviePerson)
VALUES ('1009', '2036');

INSERT INTO Has_Person(Movie, MoviePerson)
VALUES ('1009', '2037');

INSERT INTO Has_Person(Movie, MoviePerson)
VALUES ('1009', '2038');

INSERT INTO Has_Person(Movie, MoviePerson)
VALUES ('1009', '2039');

INSERT INTO Has_Person(Movie, MoviePerson)
VALUES ('1009', '2040');

INSERT INTO Reviews(ReviewID, MovieID, Rating, Comments)
VALUES ('57', '1009', '3', 'I really enjoted this one');

INSERT INTO Reviews(ReviewID, MovieID, Rating, Comments)
VALUES ('58', '1009', '4', 'One of Toros better movies');

INSERT INTO Reviews(ReviewID, MovieID, Rating, Comments)
VALUES ('59', '1009', '3', 'A bit boring');

INSERT INTO Reviews(ReviewID, MovieID, Rating, Comments)
VALUES ('60', '1009', '5', 'Loved this movie so much!');

INSERT INTO Reviews(ReviewID, MovieID, Rating, Comments)
VALUES ('61', '1009', '2', 'Overrated');

INSERT INTO Reviews(ReviewID, MovieID, Rating, Comments)
VALUES ('62', '1009', '3', 'Good');

INSERT INTO Reviews(ReviewID, MovieID, Rating, Comments)
VALUES ('63', '1009', '4', 'Great film');

-- Moana

INSERT INTO Movie(MovieId, Title, ReleaseDate, Duration, Genre)
VALUES ('1010', 'Moana', '2016-11-23', '107', 'Comedy');

INSERT INTO Person(PersonID, PersonName, PersonAge)
VALUES ('2041', 'Ron Clements', '50');

INSERT INTO Person(PersonID, PersonName, PersonAge)
VALUES ('2042', 'Jared Bush', '48');

INSERT INTO Person(PersonID, PersonName, PersonAge)
VALUES ('2043', 'Aulii Cravalho', '18');

INSERT INTO Person(PersonID, PersonName, PersonAge)
VALUES ('2044', 'Dwayne Johnson', '47');

INSERT INTO Person(PersonID, PersonName, PersonAge)
VALUES ('2045', 'Jemaine Clement', '44');

INSERT INTO MoviePerson(MPId)
VALUES ('2041');

INSERT INTO MoviePerson(MPId)
VALUES ('2042');

INSERT INTO MoviePerson(MPId)
VALUES ('2043');

INSERT INTO MoviePerson(MPId)
VALUES ('2044');

INSERT INTO MoviePerson(MPId)
VALUES ('2045');

INSERT INTO CrewMember(CrewId)
VALUES ('2041');

INSERT INTO CrewMember(CrewId)
VALUES ('2042');

INSERT INTO Director(DirectorId, Movie)
VALUES ('2041', '1010');

INSERT INTO Directs(DirectorID, MovieID)
VALUES ('2041', '1010');

INSERT INTO Writer(WriterId, Movie)
VALUES ('2042', '1010');

INSERT INTO Writes(WriterID, MovieID)
VALUES ('2042', '1010');

INSERT INTO Actor(ActorId)
VALUES ('2043');

INSERT INTO Actor(ActorId)
VALUES ('2044');

INSERT INTO Actor(ActorId)
VALUES ('2045');

INSERT INTO Has_Person(Movie, MoviePerson)
VALUES ('1010', '2041');

INSERT INTO Has_Person(Movie, MoviePerson)
VALUES ('1010', '2042');

INSERT INTO Has_Person(Movie, MoviePerson)
VALUES ('1010', '2043');

INSERT INTO Has_Person(Movie, MoviePerson)
VALUES ('1010', '2044');

INSERT INTO Has_Person(Movie, MoviePerson)
VALUES ('1010', '2045');

INSERT INTO Reviews(ReviewID, MovieID, Rating, Comments)
VALUES ('64', '1010', '5', 'One of the best Disney movies in a while');

INSERT INTO Reviews(ReviewID, MovieID, Rating, Comments)
VALUES ('65', '1010', '4', 'Everyone loved this movie');

INSERT INTO Reviews(ReviewID, MovieID, Rating, Comments)
VALUES ('66', '1010', '3', 'The music wasnt great');

INSERT INTO Reviews(ReviewID, MovieID, Rating, Comments)
VALUES ('67', '1010', '5', 'Loved this movie so much!');

INSERT INTO Reviews(ReviewID, MovieID, Rating, Comments)
VALUES ('68', '1010', '5', 'So insanely good');

INSERT INTO Reviews(ReviewID, MovieID, Rating, Comments)
VALUES ('69', '1010', '3', 'Not bad');

INSERT INTO Reviews(ReviewID, MovieID, Rating, Comments)
VALUES ('70', '1010', '4', 'Good film');