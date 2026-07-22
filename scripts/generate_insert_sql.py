import pandas as pd

# Lire le fichier de données ODS
df = pd.read_excel("data/Data.ods", engine="odf")

# Renommer les colonnes pour correspondre aux noms utilisés en SQL
df = df.rename(columns={
    "ID": "id",
    "Établissement": "etablissement",
    "Département": "departement",
    "Année": "annee",
    "Mois": "mois",
    "Activité": "activite",
    "Nombre de patients": "nombre_patients",
    "Nombre de séjours": "nombre_sejours",
    "Durée moyenne (jours)": "duree_moyenne_sejour"
})


# Fonction pour préparer correctement les textes pour SQL
def sql_text(value):
    if pd.isna(value):
        return "NULL"

    value = str(value).strip()
    value = value.replace("'", "''")

    return f"'{value}'"


# Générer les lignes de données SQL
values = []

for _, row in df.iterrows():

    ligne = (
        f"({int(row['id'])}, "
        f"{sql_text(row['etablissement'])}, "
        f"{int(row['departement'])}, "
        f"{int(row['annee'])}, "
        f"{int(row['mois'])}, "
        f"{sql_text(row['activite'])}, "
        f"{int(row['nombre_patients'])}, "
        f"{int(row['nombre_sejours'])}, "
        f"{float(row['duree_moyenne_sejour']):.2f})"
    )

    values.append(ligne)


# Construire la requête SQL complète
sql = """-- =====================================================
-- Insertion des données
-- Données entièrement fictives
-- =====================================================

INSERT INTO cliniques (
    id,
    etablissement,
    departement,
    annee,
    mois,
    activite,
    nombre_patients,
    nombre_sejours,
    duree_moyenne_sejour
)
VALUES
"""

sql += ",\n".join(values)
sql += ";\n"


# Créer automatiquement le fichier SQL
with open(
    "sql/02_insertion_donnees.sql",
    "w",
    encoding="utf-8"
) as fichier:

    fichier.write(sql)


print(f"Fichier SQL créé avec succès : {len(df)} lignes générées.")