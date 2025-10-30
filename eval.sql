use books;
/* 1.2Requêtes de mise à jour : */


INSERT INTO category(name)
	VALUES("Roman"),
		  ("SF"),
          ("fantastique"),
          ("biopic"),
          ("thriller");

    INSERT INTO book(title, description, publication_date, author, id_category)
	VALUES(
    "Harry Potter à l'école des sorciers",
    "L'intrigue du premier roman débute durant l'été 1991.",
    "1997-06-26",
    "J. K. Rowling",
    3
    ),
   (
    "Harry Potter et la Chambre des secrets",
    "L'année suivante, Harry et ses amis doivent faire face à une nouvelle menace à Poudlard. ",
    "1998-07-02",
    "J. K. Rowling",
     3
    ),
	(
    "Harry Potter et le Prisonnier d'Azkaban",
    "À l'été 1993, les sorciers, ainsi que les Moldus, sont informés de l'évasion de prison d'un dangereux criminel nommé Sirius Black.",
    "1999-07-08",
    "J. K. Rowling",
     3
    ),
	(
    "Harry Potter et la Coupe de feu",
    "Dans l'intrigue du quatrième roman, une édition du célèbre tournoi des Trois Sorciers se déroule exceptionnellement à Poudlard et deux autres délégations européennes se rendent sur place pour participer
	à la compétition : des élèves de l'Académie de magie Beauxbâtons et ceux de l'Institut Durmstrang.",
    "2001-07-08",
    "J. K. Rowling",
     3
    ),
	(
    "Harry Potter et l'Ordre du Phénix",
    "Au début de ce cinquième roman, Harry retrouve son parrain Sirius, Lupin, Hermione et la famille Weasley au 12 square Grimmaurd, qui devient le quartier général de l'ordre du Phénix, l'organisation fondée par Dumbledore au moment de la première ascension de Voldemort.",
    "2003-06-21",
    "J. K. Rowling",
     3
    ),
	(
    "Harry Potter et le Prince de sang-mêlé",
    "L'intrigue de ce sixième roman se concentre davantage sur l'histoire de Voldemort. Un passé que Harry et Dumbledore éclaircissent en visionnant les souvenirs des personnes ayant fréquenté le mage noir durant sa jeunesse",
    "2005-07-16",
    "J. K. Rowling",
    3
    ),
	(
    "Harry Potter et les Reliques de la Mort",
    "Harry, Ron et Hermione, âgés à présent de 17 ans, décident de ne pas retourner à Poudlard et de se consacrer entièrement 
    à la recherche des horcruxes.",
    "2007-07-21",
    "J. K. Rowling",
    3
    ),
	(
    "La Fille du temps",
    "Cloué au lit après une chute, Alan Grant, inspecteur à Scotland Yard, 
    ne sait que faire pour tromper son ennui. Marta Hallard, une amie comédienne, lui propose de compléter ses connaissances historiques. Elle lui apporte des portraits de plusieurs grands 
    personnages du passé dont l'existence a été entachée d'une part d’ombre",
    "1969-07-21",
    "Josephine Tey",
    5
    ),
	(
    "Un certain goût pour la mort",
    "Dans la sacristie de la vieille église de St. Matthew, 
    à Paddington, deux corps sont retrouvés, égorgés.",
    "1986-02-12",
    "P. D. James",
    5
    ),
	(
    "Papillon",
    "Dans cet ouvrage, vendu à plus de 13 millions d'exemplaires dans le monde, l'auteur dit retracer ses propres aventures.",
    "1969-06-02",
    "Henri Charrière",
    4
    ),
	(
    "Les Cendres d'Angela",
    "Ce roman autobiographique se compose de diverses anecdotes et histoires d'enfance de Frank McCourt.",
    "1996-09-05",
    "Frank McCourt",
    4
    ),
	(
    "La Porte des mondes",
    "La peste noire a tué les trois quarts de la population européenne, retardant ainsi le progrès et, finalement, la révolution industrielle",
    "1967-09-05",
    "Robert Silverberg",
    2
    ),
	(
    "L'Enfant tombé des étoiles",
    "John Thomas Stuart XI, dont un ancêtre a rapporté un animal extraterrestre d'un voyage interstellaire, a un problème : l'animal, dont il a hérité, se développe dans des proportions hors normes.",
    "1954-12-24",
    "Robert A. Heinlein",
    2
    ),
	(
    "Le Jeune Homme et l'Espace",
    "Rêvant de remporter un voyage lunaire, le jeune Kip gagne un scaphandre spatial comme lot de consolation dans un concours publicitaire.",
    "1958-08-02",
    "Robert A. Heinlein",
    2
    ),
	(
    "Le Temps des changements",
    "Kinal Darrival est prince du royaume de Salla, sur la planête Borthan. Colonisée par les humains plusieurs siècles auparavant, Borthan garde peu de contact avec la Terre.",
    "1971-03-02",
    "Robert Silverberg",
    2
    );
    
INSERT INTO users(firstname, lastname, email, password)
	VALUES("Guillaume", "Garnier", "guillaume@test.fr", "1234"),
		  ("Alain ", "Térieur", "alain_terrieur@test.fr", "1234"), 
          ("Alex", "Térieur", "alex_terieur@test.fr", "1234");
          
UPDATE book SET id_users = 1 WHERE id_book = 1; 
UPDATE book SET id_users = 1 WHERE id_book = 2;
UPDATE book SET id_users = 1 WHERE id_book = 3;
UPDATE book SET id_users = 1 WHERE id_book = 4;
UPDATE book SET id_users = 1 WHERE id_book = 5;
UPDATE book SET id_users = 2 WHERE id_book = 6;
UPDATE book SET id_users = 2 WHERE id_book = 7;
UPDATE book SET id_users = 2 WHERE id_book = 8;
UPDATE book SET id_users = 2 WHERE id_book = 9;
UPDATE book SET id_users = 2 WHERE id_book = 10;
UPDATE book SET id_users = 3 WHERE id_book = 11;
UPDATE book SET id_users = 3 WHERE id_book = 12;
UPDATE book SET id_users = 3 WHERE id_book = 13;
UPDATE book SET id_users = 3 WHERE id_book = 14;
UPDATE book SET id_users = 3 WHERE id_book = 15;



/* 1.3Requêtes de création de droits */


CREATE USER 'Admin'@'%' IDENTIFIED BY 'admin';
CREATE USER 'Utilisateur'@'%' IDENTIFIED BY 'utilisateur';

GRANT ALL PRIVILEGES ON * . * TO 'Admin'@'%';
GRANT SELECT, INSERT, UPDATE, DELETE ON books . users TO 'Utilisateur'@'%';
GRANT SELECT, INSERT, UPDATE, DELETE ON books . book  TO 'Utilisateur'@'%';
GRANT SELECT ON books . category  TO 'Utilisateur'@'%';
FLUSH PRIVILEGES;

/* 1.4 Requêtes de consultations : */

SELECT u.id_users, u.firstname, u.lastname, u.email FROM users u;

SELECT b.id_book, b.title, b.description, b.publication_date FROM book b ORDER BY title ASC, publication_date ASC;   

SELECT b.id_book, b.title, b.description, b.publication_date, c.name FROM book b
JOIN category c ON c.id_category = b.id_category;


SELECT b.id_book, b.title, b.description, b.publication_date, c.name category_name , u.firstname, u.lastname FROM users u 
JOIN book b ON b.id_users = u.id_users
JOIN category c ON c.id_category = b.id_category
WHERE u.firstname = "Guillaume" AND u.lastname ="Garnier"



/* 1.5 Requête de procédure : */


DELIMITER $$
CREATE PROCEDURE add_user(
IN new_firstname VARCHAR(50),
IN new_lastname VARCHAR(50),
IN new_email VARCHAR(50),
IN new_password VARCHAR(100)
)
BEGIN
    IF (SELECT u.id_users FROM users AS u WHERE u.email = new_email) > 0  THEN
        ROLLBACK;
        SIGNAL SQLSTATE '10000' SET MESSAGE_TEXT = 'le compte existe déjà en BDD';
    END IF;
    INSERT INTO users(firstname, lastname, email, password ) VALUE(new_firstname, new_lastname, new_email, new_password );
    COMMIT;
END
$$

CALL add_user("Jean", "Peuplus", "JPeuplus@test.fr", "1234")





