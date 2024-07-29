SELECT nom, annéeNaiss
FROM artiste
WHERE  annéeNaiss < 1950;


 SELECT titre
FROM Film
WHERE genre = 'drame';


SELECT f.titre, r.nomRôle
FROM artiste a
JOIN role r ON a.idArtiste = r.idActeur
JOIN film f ON r.idFilm = f.idFilm
WHERE a.nom = 'Willis' AND a.prénom = 'Bruce';

SELECT a.nom, a.prénom
FROM film f
JOIN artiste a ON f.idRéalisateur = a.idArtiste
WHERE f.titre = 'Memento';

SELECT n.note
FROM film f
JOIN notation n ON f.idFilm = n.idFilm
WHERE f.titre = 'Fargo';


SELECT a.nom, a.prénom
FROM artiste a
JOIN role r ON a.idArtiste = r.idActeur
WHERE r.nomRôle = 'Chewbacca';

SELECT f.titre
FROM artiste a
JOIN role r ON a.idArtiste = r.idActeur
JOIN film f ON r.idFilm = f.idFilm
WHERE a.nom = 'Willis' AND a.prénom = 'Bruce' AND r.nomRôle = 'John McClane';

SELECT f.titre
FROM artiste a
JOIN role r ON a.idArtiste = r.idActeur
JOIN film f ON r.idFilm = f.idFilm
WHERE a.nom = 'Willis' AND a.prénom = 'Bruce' AND r.nomRôle = 'John McClane';

SELECT f.titre
FROM artiste a
JOIN role r ON a.idArtiste = r.idActeur
JOIN film f ON r.idFilm = f.idFilm
WHERE a.nom = 'Willis' AND a.prénom = 'Bruce' AND r.nomRôle = 'John McClane';

SELECT f.titre
FROM artiste a
JOIN role r ON a.idArtiste = r.idActeur
JOIN film f ON r.idFilm = f.idFilm
WHERE a.nom = 'Willis' AND a.prénom = 'Bruce' AND r.nomRôle = 'John McClane';


SELECT f.titre
FROM artiste a
JOIN role r ON a.idArtiste = r.idActeur
JOIN film f ON r.idFilm = f.idFilm
WHERE a.nom = 'Willis' AND a.prénom = 'Bruce' AND r.nomRôle = 'John McClane';

SELECT f.titre
FROM internaute i
JOIN notation n ON i.email = n.email
JOIN film f ON n.idFilm = f.idFilm
WHERE i.nom = 'Nom0' AND i.prénom = 'Prénom0';

SELECT DISTINCT f.titre
FROM film f
JOIN artiste a1 ON f.idRéalisateur = a1.idArtiste
JOIN role r ON f.idFilm = r.idFilm
JOIN artiste a2 ON r.idActeur = a2.idArtiste
WHERE a1.nom = 'Burton' AND a1.prénom = 'Tim'
  AND a2.nom = 'Depp' AND a2.prénom = 'Johnny';
  
  SELECT f.titre, r.nomRôle
FROM artiste a
JOIN role r ON a.idArtiste = r.idActeur
JOIN film f ON r.idFilm = f.idFilm
WHERE a.nom = 'Allen' AND a.prénom = 'Woody';

SELECT DISTINCT a.nom AS nomMetteurEnScene, a.prénom AS prénomMetteurEnScene, r.nomRôle, f.titre
FROM film f
JOIN artiste a ON f.idRéalisateur = a.idArtiste
JOIN role r ON f.idFilm = r.idFilm
JOIN artiste a2 ON r.idActeur = a2.idArtiste
WHERE a.idArtiste = a2.idArtiste;


SELECT f.titre
FROM film f
JOIN artiste a ON f.idRéalisateur = a.idArtiste
LEFT JOIN role r ON f.idFilm = r.idFilm AND r.idActeur = a.idArtiste
WHERE a.nom = 'Tarantino' AND a.prénom = 'Quentin'
  AND r.idActeur IS NULL;
SELECT DISTINCT a.nom AS nomMetteurEnScene, a.prénom AS prénomMetteurEnScene, r.nomRôle, f.titre
FROM film f
JOIN artiste a ON f.idRéalisateur = a.idArtiste
JOIN role r ON f.idFilm = r.idFilm
JOIN artiste a2 ON r.idActeur = a2.idArtiste
WHERE a.idArtiste = a2.idArtiste;

SELECT f.titre
FROM film f
JOIN artiste a ON f.idRéalisateur = a.idArtiste
LEFT JOIN role r ON f.idFilm = r.idFilm
LEFT JOIN artiste a2 ON r.idActeur = a2.idArtiste
WHERE a.nom = 'Hitchcock' AND a.prénom = 'Alfred'
  AND (a2.nom != 'Stewart' OR a2.nom IS NULL)
  AND (a2.prénom != 'James' OR a2.prénom IS NULL);
  
SELECT f.titre AS titreFilm,
       a1.prénom AS prénomRéalisateur,
       a1.nom AS nomRéalisateur,
       a2.prénom AS prénomInterprete,
       a2.nom AS nomInterprete
FROM film f
JOIN artiste a1 ON f.idRéalisateur = a1.idArtiste
JOIN role r ON f.idFilm = r.idFilm
JOIN artiste a2 ON r.idActeur = a2.idArtiste
WHERE a1.prénom = a2.prénom
  AND a1.idArtiste != a2.idArtiste;


SELECT f.titre AS titreFilm,
       a1.prénom AS prénomRéalisateur,
       a1.nom AS nomRéalisateur,
       a2.prénom AS prénomInterprete,
       a2.nom AS nomInterprete
FROM film f
JOIN artiste a1 ON f.idRéalisateur = a1.idArtiste
JOIN role r ON f.idFilm = r.idFilm
JOIN artiste a2 ON r.idActeur = a2.idArtiste
WHERE a1.prénom = a2.prénom
  AND a1.idArtiste != a2.idArtiste;


SELECT f.titre AS titreFilm,
       a1.prénom AS prénomRéalisateur,
       a1.nom AS nomRéalisateur,
       a2.prénom AS prénomInterprete,
       a2.nom AS nomInterprete
FROM film f
JOIN artiste a1 ON f.idRéalisateur = a1.idArtiste
JOIN role r ON f.idFilm = r.idFilm
JOIN artiste a2 ON r.idActeur = a2.idArtiste
WHERE a1.prénom = a2.prénom
  AND a1.idArtiste != a2.idArtiste;


SELECT f.titre AS titreFilm,
       a1.prénom AS prénomRéalisateur,
       a1.nom AS nomRéalisateur,
       a2.prénom AS prénomInterprete,
       a2.nom AS nomInterprete
FROM film f
JOIN artiste a1 ON f.idRéalisateur = a1.idArtiste
JOIN role r ON f.idFilm = r.idFilm
JOIN artiste a2 ON r.idActeur = a2.idArtiste
WHERE a1.prénom = a2.prénom
  AND a1.idArtiste != a2.idArtiste;


SELECT f.titre AS titreFilm,
       a1.prénom AS prénomRéalisateur,
       a1.nom AS nomRéalisateur,
       a2.prénom AS prénomInterprete,
       a2.nom AS nomInterprete
FROM film f
JOIN artiste a1 ON f.idRéalisateur = a1.idArtiste
JOIN role r ON f.idFilm = r.idFilm
JOIN artiste a2 ON r.idActeur = a2.idArtiste
WHERE a1.prénom = a2.prénom
  AND a1.idArtiste != a2.idArtiste;


SELECT f.titre AS titreFilm,
       a1.prénom AS prénomRéalisateur,
       a1.nom AS nomRéalisateur,
       a2.prénom AS prénomInterprete,
       a2.nom AS nomInterprete
FROM film f
JOIN artiste a1 ON f.idRéalisateur = a1.idArtiste
JOIN role r ON f.idFilm = r.idFilm
JOIN artiste a2 ON r.idActeur = a2.idArtiste
WHERE a1.prénom = a2.prénom
  AND a1.idArtiste != a2.idArtiste;




SELECT f.titre
FROM film f
LEFT JOIN role r ON f.idFilm = r.idFilm
WHERE r.idFilm IS NULL;

SELECT f.titre
FROM film f
LEFT JOIN notation n ON f.idFilm = n.idFilm
LEFT JOIN internaute i ON n.email = i.email
WHERE i.nom IS NULL AND i.prénom IS NULL
   OR i.nom != 'Nom1' OR i.prénom != 'Prénom1';
   
  SELECT DISTINCT a.nom, a.prénom
FROM artiste a
WHERE a.idArtiste NOT IN (
    SELECT DISTINCT f.idRéalisateur
    FROM film f
)
AND a.idArtiste IN (
    SELECT DISTINCT r.idActeur
    FROM role r
);

SELECT AVG(n.note) AS moyenneNotes
FROM film f
JOIN notation n ON f.idFilm = n.idFilm
WHERE f.titre = 'Memento';

SELECT a.nom AS nomRéalisateur,
       a.prénom AS prénomRéalisateur,
       COUNT(f.idFilm) AS nombreDeFilms
FROM artiste a
JOIN film f ON a.idArtiste = f.idRéalisateur
GROUP BY a.nom, a.prénom
ORDER BY nombreDeFilms DESC;
SELECT a.nom AS nomRéalisateur,
       a.prénom AS prénomRéalisateur
FROM artiste a
JOIN film f ON a.idArtiste = f.idRéalisateur
GROUP BY a.nom, a.prénom
HAVING COUNT(f.idFilm) >= 2;

SELECT f.titre
FROM film f
JOIN notation n ON f.idFilm = n.idFilm
GROUP BY f.idFilm, f.titre
HAVING AVG(n.note) > 7;


SELECT f.titre
FROM film f
JOIN notation n ON f.idFilm = n.idFilm
GROUP BY f.idFilm, f.titre
HAVING AVG(n.note) > 7;