-- ============================================================
-- REQUÊTES D'ANALYSE
-- Données entièrement fictives
-- ============================================================


-- ============================================================
-- 1 APERÇU DES DONNÉES
-- ============================================================

SELECT *
FROM cliniques;


-- ============================================================
-- 2 NOMBRE TOTAL DE PATIENTS
-- ============================================================

SELECT SUM(nombre_patients) AS total_patients
FROM cliniques;


-- ============================================================
-- 3 NOMBRE TOTAL DE SÉJOURS
-- ============================================================

SELECT SUM(nombre_sejours) AS total_sejours
FROM cliniques;


-- ============================================================
-- 4 NOMBRE D'ÉTABLISSEMENTS
-- ============================================================

SELECT COUNT(DISTINCT etablissement) AS nombre_etablissements
FROM cliniques;


-- ============================================================
-- 5 DURÉE MOYENNE DE SÉJOUR
-- ============================================================

SELECT ROUND(AVG(duree_moyenne_sejour), 2) AS duree_moyenne_sejour
FROM cliniques;


-- ============================================================
-- 6 NOMBRE DE PATIENTS PAR ÉTABLISSEMENT
-- ============================================================

SELECT etablissement, SUM(nombre_patients) AS total_patients
FROM cliniques
GROUP BY etablissement
ORDER BY total_patients DESC;


-- ============================================================
-- 7 NOMBRE DE SÉJOURS PAR ÉTABLISSEMENT
-- ============================================================

SELECT etablissement, SUM(nombre_sejours) AS total_sejours
FROM cliniques
GROUP BY etablissement
ORDER BY total_sejours DESC;


-- ============================================================
-- 8 NOMBRE DE PATIENTS PAR DÉPARTEMENT
-- ============================================================

SELECT departement, SUM(nombre_patients) AS total_patients
FROM cliniques
GROUP BY departement
ORDER BY total_patients DESC;


-- ============================================================
-- 9. NOMBRE DE PATIENTS PAR TYPE D'ACTIVITÉ
-- ============================================================

SELECT activite, SUM(nombre_patients) AS total_patients
FROM cliniques
GROUP BY activite
ORDER BY total_patients DESC;


-- ============================================================
-- 10 ÉVOLUTION MENSUELLE DES PATIENTS EN 2026
-- ============================================================

SELECT mois, SUM(nombre_patients) AS total_patients
FROM cliniques
WHERE annee = 2026
GROUP BY mois
ORDER BY mois;


-- ============================================================
-- 11 NOMBRE DE PATIENTS PAR ÉTABLISSEMENT EN 2026
-- ============================================================

SELECT etablissement, SUM(nombre_patients) AS total_patients
FROM cliniques
WHERE annee = 2026
GROUP BY etablissement
ORDER BY total_patients DESC;


-- ============================================================
-- 12 COMPARAISON DE L'ACTIVITÉ PAR ÉTABLISSEMENT
-- ============================================================

SELECT etablissement, activite, SUM(nombre_patients) AS total_patients
FROM cliniques
GROUP BY etablissement, activite
ORDER BY etablissement, total_patients DESC;


-- ============================================================
-- 13 DURÉE MOYENNE DE SÉJOUR PAR ÉTABLISSEMENT
-- ============================================================

SELECT etablissement, ROUND(AVG(duree_moyenne_sejour), 2) AS duree_moyenne
FROM cliniques
GROUP BY etablissement
ORDER BY duree_moyenne DESC;


-- ============================================================
-- 1. DURÉE MOYENNE DE SÉJOUR PAR ACTIVITÉ
-- ============================================================

SELECT activite, ROUND(AVG(duree_moyenne_sejour), 2) AS duree_moyenne
FROM cliniques
GROUP BY activite
ORDER BY duree_moyenne DESC;


-- ============================================================
-- 15 ÉVOLUTION DU NOMBRE DE PATIENTS PAR ANNÉE
-- ============================================================

SELECT annee, SUM(nombre_patients) AS total_patients
FROM cliniques
GROUP BY annee
ORDER BY annee;


-- ============================================================
-- 16 ÉTABLISSEMENT AVEC LE PLUS GRAND NOMBRE DE PATIENTS
-- ============================================================

SELECT etablissement, SUM(nombre_patients) AS total_patients
FROM cliniques
GROUP BY etablissement
ORDER BY total_patients DESC LIMIT 1;