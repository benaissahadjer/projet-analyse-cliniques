-- =====================================================
-- Création de la table cliniques
-- Données entièrement fictives
-- =====================================================

CREATE TABLE cliniques (
    id INT PRIMARY KEY,
    etablissement VARCHAR(100),
    departement INT,
    annee INT,
    mois INT,
    activite VARCHAR(100),
    nombre_patients INT,
    nombre_sejours INT,
    duree_moyenne_sejour DECIMAL(5,2)
);