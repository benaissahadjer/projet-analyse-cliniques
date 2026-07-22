# Analyse de l'activité d'établissements de santé

## Présentation du projet

Ce projet personnel a été réalisé dans le cadre de ma préparation à une recherche d'alternance en Master 2 Statistique et Science des Données, parcours Management de l'Information et de la Décision (SSD-MIND).

L'objectif est de mettre en pratique une démarche complète d'analyse de données appliquée au secteur de la santé, depuis l'exploitation d'une base de données jusqu'à la création d'indicateurs et d'un tableau de bord d'aide à la décision.

> **Important :** les données utilisées dans ce projet sont entièrement fictives. Elles ont été créées uniquement à des fins d'apprentissage et de démonstration.

---

## Objectifs du projet

Le projet suit les principales étapes d'une démarche d'analyse de données :

**Données → Vérification et préparation → Analyse → Indicateurs → Visualisation → Tableau de bord → Aide à la décision**

Les principaux objectifs sont :

- structurer et vérifier la qualité des données ;
- analyser l'activité des établissements ;
- construire des indicateurs de pilotage ;
- étudier les différences entre établissements et territoires ;
- suivre l'évolution de l'activité dans le temps ;
- créer des visualisations claires ;
- construire un tableau de bord interactif facilitant l'exploration des données.

---

## Données analysées

La base de données représente fictivement l'activité de plusieurs établissements de santé.

Elle contient notamment les variables suivantes :

- **Établissement** : nom de l'établissement de santé concerné par les données.

- **Département** : numéro du département dans lequel se situe l'établissement de santé.

- **Année** : année à laquelle les données d'activité correspondent.

- **Mois** : mois auquel les données d'activité correspondent.

- **Type d'activité** : domaine d'activité médicale concerné, par exemple la médecine, la chirurgie, la maternité ou les soins de réadaptation.

- **Nombre de patients** : nombre de patients pris en charge pour l'établissement.

- **Nombre de séjours** : nombre total de séjours hospitaliers enregistrés pour l’établissement, la période et le type d’activité concernés.

- **Durée moyenne de séjour** : durée moyenne, exprimée en jours, pendant laquelle les patients sont restés dans l'établissement.

Les données couvrent plusieurs établissements et départements et permettent de réaliser des analyses temporelles, territoriales et par type d'activité.

---

## Préparation et qualité des données

Avant l'analyse, plusieurs contrôles ont été réalisés afin de vérifier la qualité et la cohérence de la base :

- recherche et suppression des doublons ;
- identification des valeurs manquantes ;
- vérification des formats et types de données ;
- suppression des espaces inutiles ;
- contrôle des valeurs incohérentes.

Des fonctionnalités Excel et Power Query ont également été explorées afin de faciliter et d'automatiser certaines étapes de préparation des données.

---

## Analyses réalisées

Les données ont été analysées principalement avec **Excel et les tableaux croisés dynamiques**.

Les principales analyses portent sur :

- l'activité globale des établissements ;
- la comparaison du nombre de patients entre les établissements ;
- la répartition de l'activité par département ;
- la répartition par type d'activité ;
- l'évolution mensuelle du nombre de patients ;
- la durée moyenne de séjour.

---

## Tableau de bord

Un tableau de bord interactif a été développé sous Excel afin de synthétiser les principaux résultats.

### Indicateurs clés

Le tableau de bord présente quatre KPI principaux :

| Indicateur | Valeur |
|---|---:|
| Total des patients | 110 337 |
| Total des séjours | 81 183 |
| Nombre d'établissements | 6 |
| Durée moyenne de séjour | 5,64 jours |

### Visualisations

Le dashboard contient notamment :

- l'évolution mensuelle du nombre de patients ;
- le nombre de patients par établissement ;
- le nombre de patients par type d'activité ;
- le nombre de patients par département.

Des filtres interactifs permettent également d'explorer les résultats selon différentes dimensions.

> Les résultats présentés sont uniquement liés au jeu de données fictif utilisé dans ce projet et ne représentent pas l'activité réelle d'établissements de santé.

---

## Outils et compétences mobilisés


- **Excel**
  - Tableaux croisés dynamiques
  - Graphiques croisés dynamiques
  - KPI
  - Segments et filtres interactifs
  - Fonctions de traitement et de contrôle des données

- **Power Query**
  - découverte des fonctionnalités de préparation et de transformation des données.

- **Analyse de données**
  - Contrôle de la qualité des données
  - Construction d'indicateurs
  - Analyse comparative
  - Analyse temporelle
  - Analyse territoriale
  - Datavisualisation


- **SQL**
  - requêtes d'exploration et d'analyse des données.

- **LaTeX**
  - rédaction du rapport d'analyse.

- **Git / GitHub**
  - organisation et versionnement du projet.

---

## Structure du projet

```text
projet-analyse-cliniques/
│
├── data/
│   └── base_cliniques.xlsx
│
├── excel/
│   └── analyse_cliniques.xlsx
│
├── dashboard/
│
├── sql/
│   └── requetes_analyse.sql
│
├── report/
│   └── rapport_analyse_cliniques.pdf
│
├── screenshots/
│   └── dashboard.png
│
└── README.md
---
## Auteur et contact

**Hadjer Benaissa**  
📧 benaissahadjer12@gmail.com  
🎓 Master 2 Statistique et Science des Données – parcours MIND  
📍 Université de Montpellier
