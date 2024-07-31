SELECT nom, annéeNaiss
FROM artiste
WHERE  annéeNaiss < 1950;
/*Table artiste : contient les informations sur les artistes (nom, prénom, année de naissance, etc.).
Filtre annéeNaiss < 1950 : sélectionne les artistes nés avant l'année 1950.
Colonnes retournées : nom et annéeNaiss des artistes.*/

 SELECT titre
FROM Film
WHERE genre = 'drame';

/*Table Film : contient les informations sur les films (titre, genre, réalisateur, etc.).
Filtre genre = 'drame' : sélectionne les films appartenant au genre "drame".
Colonne retournée : titre des films.*/


SELECT f.titre, r.nomRôle
FROM artiste a
JOIN role r ON a.idArtiste = r.idActeur
JOIN film f ON r.idFilm = f.idFilm
WHERE a.nom = 'Willis' AND a.prénom = 'Bruce';
/*Tables artiste, role, film :
artiste pour les informations sur les artistes,
role pour les rôles joués dans les films,
film pour les détails des films.
Jointures :
a.idArtiste = r.idActeur : lie les artistes aux rôles joués.
r.idFilm = f.idFilm : lie les rôles aux films correspondants.
Filtre : sélectionne les rôles joués par "Bruce Willis".
Colonnes retournées : titre des films et nomRôle joué.*/

SELECT a.nom, a.prénom
FROM film f
JOIN artiste a ON f.idRéalisateur = a.idArtiste
WHERE f.titre = 'Memento';
/*Tables film, artiste :
film pour les informations sur les films,
artiste pour les détails sur les réalisateurs.
Jointure : f.idRéalisateur = a.idArtiste pour associer les réalisateurs aux films.
Filtre : sélectionne le film "Memento".
Colonnes retournées : nom et prénom du réalisateur.*/

SELECT n.note
FROM film f
JOIN notation n ON f.idFilm = n.idFilm
WHERE f.titre = 'Fargo';
/*Tables film, notation :
film pour les informations sur les films,
notation pour les notes données aux films.
Jointure : f.idFilm = n.idFilm pour associer les films à leurs notes.
Filtre : sélectionne le film "Fargo".
Colonne retournée : note pour chaque évaluation du film.
*/


SELECT a.nom, a.prénom
FROM artiste a
JOIN role r ON a.idArtiste = r.idActeur
WHERE r.nomRôle = 'Chewbacca';
/*Tables artiste, role :
artiste pour les informations sur les artistes,
role pour les rôles joués.
Jointure : a.idArtiste = r.idActeur pour associer les artistes aux rôles.
Filtre : sélectionne le rôle "Chewbacca".
Colonnes retournées : nom et prénom des artistes ayant joué ce rôle.*/

SELECT f.titre
FROM artiste a
JOIN role r ON a.idArtiste = r.idActeur
JOIN film f ON r.idFilm = f.idFilm
WHERE a.nom = 'Willis' AND a.prénom = 'Bruce' AND r.nomRôle = 'John McClane';
/*Tables et jointures similaires à la requête 3.
Filtre supplémentaire : r.nomRôle = 'John McClane' pour sélectionner ce rôle précis joué par Bruce Willis.
Colonne retournée : titre des films correspondants.*/

SELECT f.titre
FROM artiste a
JOIN role r ON a.idArtiste = r.idActeur
JOIN film f ON r.idFilm = f.idFilm
WHERE a.nom = 'Willis' AND a.prénom = 'Bruce' AND r.nomRôle = 'John McClane';
/*Tables internaute, notation, film :
internaute pour les informations sur les internautes (utilisateurs),
notation pour les notes données,
film pour les détails des films.
Jointures :
i.email = n.email pour associer les internautes à leurs notations,
n.idFilm = f.idFilm pour associer les notations aux films.
Filtre : sélectionne l'internaute identifié par "Nom0" et "Prénom0".
Colonne retournée : titre des films notés par cet internaute.*/
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
/*Tables internaute, notation, film :
internaute pour les informations sur les internautes (utilisateurs),
notation pour les notes données,
film pour les détails des films.
Jointures :
i.email = n.email pour associer les internautes à leurs notations,
n.idFilm = f.idFilm pour associer les notations aux films.
Filtre : sélectionne l'internaute identifié par "Nom0" et "Prénom0".
Colonne retournée : titre des films notés par cet internaute.*/

SELECT DISTINCT f.titre
FROM film f
JOIN artiste a1 ON f.idRéalisateur = a1.idArtiste
JOIN role r ON f.idFilm = r.idFilm
JOIN artiste a2 ON r.idActeur = a2.idArtiste
WHERE a1.nom = 'Burton' AND a1.prénom = 'Tim'
  AND a2.nom = 'Depp' AND a2.prénom = 'Johnny';
  /*Tables film, artiste, avec deux alias a1 pour le réalisateur et a2 pour les acteurs.
Jointures :
f.idRéalisateur = a1.idArtiste pour associer les films à leur réalisateur,
f.idFilm = r.idFilm et r.idActeur = a2.idArtiste pour associer les rôles aux films et aux artistes respectivement.
Filtre : sélectionne les films réalisés par Tim Burton et interprétés par Johnny Depp.
Colonne retournée : titre des films, avec DISTINCT pour éviter les doublons.*/
  
  SELECT f.titre, r.nomRôle
FROM artiste a
JOIN role r ON a.idArtiste = r.idActeur
JOIN film f ON r.idFilm = f.idFilm
WHERE a.nom = 'Allen' AND a.prénom = 'Woody';
/*Tables et jointures similaires à la requête 3.
Filtre : sélectionne Woody Allen.
Colonnes retournées : titre des films et nomRôle joué par Woody Allen.*/

SELECT DISTINCT a.nom AS nomMetteurEnScene, a.prénom AS prénomMetteurEnScene, r.nomRôle, f.titre
FROM film f
JOIN artiste a ON f.idRéalisateur = a.idArtiste
JOIN role r ON f.idFilm = r.idFilm
JOIN artiste a2 ON r.idActeur = a2.idArtiste
WHERE a.idArtiste = a2.idArtiste;
/*Tables film, artiste (avec alias a pour le réalisateur et a2 pour les acteurs).
Jointures :
f.idRéalisateur = a.idArtiste pour associer les réalisateurs aux films,
f.idFilm = r.idFilm et r.idActeur = a2.idArtiste pour associer les rôles aux films et aux acteurs respectivement.
Filtre : sélectionne les films où le réalisateur (a) est également acteur (a2).
Colonnes retournées : nom et prénom du réalisateur (aliasés), nomRôle joué, et titre des films.*/


SELECT f.titre
FROM film f
JOIN artiste a ON f.idRéalisateur = a.idArtiste
LEFT JOIN role r ON f.idFilm = r.idFilm AND r.idActeur = a.idArtiste
WHERE a.nom = 'Tarantino' AND a.prénom = 'Quentin'
  AND r.idActeur IS NULL;
  /*Tables film, artiste, et jointure externe LEFT JOIN :
film et artiste pour les films et leurs réalisateurs,
role avec une jointure externe pour vérifier si Tarantino n'a pas joué dans le film.
Filtre :
Sélectionne les films réalisés par Quentin Tarantino,
r.idActeur IS NULL : s'assure que Tarantino n'a pas joué dans le film.
Colonne retournée : titre des films.*/
SELECT DISTINCT a.nom AS nomMetteurEnScene, a.prénom AS prénomMetteurEnScene, r.nomRôle, f.titre
FROM film f
JOIN artiste a ON f.idRéalisateur = a.idArtiste
JOIN role r ON f.idFilm = r.idFilm
JOIN artiste a2 ON r.idActeur = a2.idArtiste

SELECT f.titre
FROM film f
JOIN artiste a ON f.idRéalisateur = a.idArtiste
LEFT JOIN role r ON f.idFilm = r.idFilm
LEFT JOIN artiste a2 ON r.idActeur = a2.idArtiste
WHERE a.nom = 'Hitchcock' AND a.prénom = 'Alfred'
  AND (a2.nom != 'Stewart' OR a2.nom IS NULL)
  AND (a2.prénom != 'James' OR a2.prénom IS NULL);
  /*Tables film, artiste (alias a et a2), role :
film et artiste pour les films et leurs réalisateurs,
role pour les rôles et acteurs (ou absence de rôles).
Jointures :
f.idRéalisateur = a.idArtiste pour associer les réalisateurs aux films,
f.idFilm = r.idFilm et r.idActeur = a2.idArtiste pour associer les acteurs aux films.
Filtre :
Sélectionne les films d'Alfred Hitchcock,
a2.nom != 'Stewart' OR a2.nom IS NULL et a2.prénom != 'James' OR a2.prénom IS NULL pour exclure James Stewart.
Colonne retournée : titre des films.*/
  
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
/*Tables film, artiste (alias a1 pour réalisateur et a2 pour acteur), role :
film pour les détails des films,
artiste pour les informations sur les réalisateurs et les acteurs.
Jointures :
f.idRéalisateur = a1.idArtiste pour associer les réalisateurs aux films,
f.idFilm = r.idFilm et r.idActeur = a2.idArtiste pour associer les rôles aux acteurs.
Filtre :
Associe les films où le prénom du réalisateur (a1) et de l'acteur (a2) est le même,
a1.idArtiste != a2.idArtiste pour s'assurer qu'ils ne sont pas la même personne.
Colonnes retournées : titreFilm, prénomRéalisateur, nomRéalisateur, prénomInterprete, et nomInterprete.*/



SELECT f.titre
FROM film f
LEFT JOIN role r ON f.idFilm = r.idFilm
WHERE r.idFilm IS NULL;
/*Tables film, role :
film pour les informations sur les films,
role pour les rôles associés.
Jointure externe LEFT JOIN :
Permet d'inclure tous les films, même ceux sans rôle associé.
Filtre : r.idFilm IS NULL pour sélectionner les films sans rôles associés.
Colonne retournée : titre des films.*/

SELECT f.titre
FROM film f
LEFT JOIN notation n ON f.idFilm = n.idFilm
LEFT JOIN internaute i ON n.email = i.email
WHERE i.nom IS NULL AND i.prénom IS NULL
   OR i.nom != 'Nom1' OR i.prénom != 'Prénom1';
   -- Cette requête sélectionne les titres des films pour lesquels il n'existe pas de notations ou pour lesquelles toutes les notations
-- sont associées à des internautes qui n'ont pas le nom et prénom spécifiés ('Nom1' et 'Prénom1').
   
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
-- Cette requête sélectionne les noms et prénoms des artistes qui ont joué dans au moins un film mais qui n'ont pas réalisé de films. 
-- Elle filtre les artistes pour inclure uniquement ceux qui apparaissent dans la table 'role' en tant qu'acteurs (ayant un rôle dans un film),
-- mais qui n'apparaissent pas dans la table 'film' en tant que réalisateurs.


SELECT AVG(n.note) AS moyenneNotes
FROM film f
JOIN notation n ON f.idFilm = n.idFilm
WHERE f.titre = 'Memento';
-- Cette requête calcule la note moyenne du film intitulé 'Memento'. 
-- Elle utilise une jointure entre les tables 'film' et 'notation' pour associer le film à ses notations, 
-- puis filtre les résultats pour ne retenir que les notations du film 'Memento'. 
-- Le résultat final est la note moyenne de ce film, calculée à partir de toutes ses notations.


SELECT a.nom AS nomRéalisateur,
       a.prénom AS prénomRéalisateur,
       COUNT(f.idFilm) AS nombreDeFilms
FROM artiste a
JOIN film f ON a.idArtiste = f.idRéalisateur
GROUP BY a.nom, a.prénom
ORDER BY nombreDeFilms DESC;
-- Cette requête sélectionne les noms et prénoms des réalisateurs, ainsi que le nombre de films qu'ils ont réalisés. 
-- Elle effectue une jointure entre les tables 'artiste' et 'film' pour associer chaque réalisateur à ses films, 
-- puis regroupe les résultats par nom et prénom du réalisateur. 
-- Enfin, elle trie les réalisateurs par le nombre de films réalisés, du plus grand au plus petit.

SELECT a.nom AS nomRéalisateur,
       a.prénom AS prénomRéalisateur
FROM artiste a
JOIN film f ON a.idArtiste = f.idRéalisateur
GROUP BY a.nom, a.prénom
HAVING COUNT(f.idFilm) >= 2;
-- Cette requête sélectionne les noms et prénoms des réalisateurs qui ont dirigé au moins deux films. 
-- Elle utilise une jointure entre les tables 'artiste' et 'film' pour associer chaque réalisateur à ses films, 
-- puis regroupe les résultats par nom et prénom du réalisateur. 
-- La clause HAVING filtre les réalisateurs pour n'inclure que ceux ayant réalisé deux films ou plus.
SELECT f.titre
FROM film f
JOIN notation n ON f.idFilm = n.idFilm
GROUP BY f.idFilm, f.titre
HAVING AVG(n.note) > 7;

-- Cette requête sélectionne les titres des films ayant une note moyenne supérieure à 7. 
-- Elle effectue une jointure entre les tables 'film' et 'notation' pour associer chaque film à ses notations, 
-- puis regroupe les résultats par identifiant et titre du film. 
-- La clause HAVING filtre les films pour n'inclure que ceux dont la note moyenne est strictement supérieure à 7.

SELECT f.titre
FROM film f
JOIN notation n ON f.idFilm = n.idFilm
GROUP BY f.idFilm, f.titre
HAVING AVG(n.note) > 7;