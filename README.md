# bddexe_01

## SQL

### Préparation

Lancez **WAMP** pour démarrer les services **Apache** et **MySQL**.

Importez le fichier `bddexe_01.sql` dans **PHPMyAdmin** en **désactivant les clefs étrangères** en **MariaDB et/ou MySQL**.


Ouvrez **Workbench**, ensuite suivez ce schéma : .

    Database > Connect to Database >

Connectez-vous à votre serveur MariaDB ou MySQL, en acceptant un éventuel message d'erreur (Connexion Warnings).

Si le problème persiste et que Workbench se ferme, tentez d'ouvrir la connexion avec l'autre driver (MariaDB <> MySQL), puis connectez-vous une à la base de données nommée `bddexe_01` (qu'il faudra en cas de problème importer à nouveau dans **PHPMyAdmin** dans l'autre type de DB).

Allez ensuite dans

        Navigator (fenêtre ouverte à gauche) > Schemas  > sélectionnez bddexe_01 

Une fenêtre s'ouvre avec les tables de la base de données, ainsi qu'une fenêtre de requête SQL (Query 1).

### En cas d'échec d'ouverture : Plugin pour VSCode

J'ai pu installer "Database Client for Visual Studio Code" pour pouvoir effectuer les requêtes depuis VSCode sans devoir lancer Workbench.

Et si rien ne fonctionne, vous pouvez toujours utiliser **PHPMyAdmin** pour effectuer les requêtes.



### Modèle de notre base de donnée en MySQL

![Base SQL](https://raw.githubusercontent.com/WebDevCF2m2023/exercices-SQL/main/image.png)

### Dictionnaire de données de la base

[Dictionnaire de données en pdf](https://raw.githubusercontent.com/WebDevCF2m2023/exercices-SQL/main/db_structure_bddexe_01.pdf) à télécharger.

### Relations

- Relation **many to many entre** `news` et `categ` dans la table `news_has_categ`, en **CASCADE ON DELETE** pour éviter la suppression manuelle du lien entre les news et les catégories (en cas de suppression d'une news **ou** d'une catégorie).

![news_has_categ](https://raw.githubusercontent.com/WebDevCF2m2023/exercices-SQL/main/img/fk_news_has_categ.png)

- Relation **many to one** entre `news` et `user`, en **SET NULL ON DELETE** pour permettre à un article de rester dans la DB si on supprime l'utilisateur (! le champ `news.user_iduser` doit permettre le NULL)

![news](https://raw.githubusercontent.com/WebDevCF2m2023/exercices-SQL/main/img/fk_news-with-user.png)

- Relation **many to one** entre `user` et `permission`, **SET NULL ON DELETE** pour permettre à un utilisateur de rester dans la DB si on supprime une permission (! le champ `user.permission_idpermission` doit permettre le NULL)

![news](https://raw.githubusercontent.com/WebDevCF2m2023/exercices-SQL/main/img/fk_user-permission.png)

## Révisions SQL

Ouvrez le fichier `nos-requetes.sql` dans la fenêtre de requête de **Workbench** ou dans **VSCode** et/ou copiez les requêtes dans la fenêtre de requête SQL de **Workbench** ou **VSCode** ou **PHPMyAdmin**.

### Exécution de la révision

Sélectionnez les requêtes à exécuter une par une, puis cliquez sur l'exécution la requête.

Le commentaire vous permet de voir la demande de celle-ci, le résultat attendu vous est envoyé.

**Tâchez de comprendre la requête avant de l'exécuter, et de comparer le résultat obtenu avec celui attendu.**

## Exercice 1

copiez `enonce-exe1.sql` et renommez la copie du fichier en `votre-nom-exe1.sql`.

**Remplissez** le contenu de `votre-nom-exe1.sql` avec les requêtes SQL correspondant aux demandes suivantes.

Voici le visuel des résultats attendus pour chaque requête :



-- Sélectionnez tous les champs de `categ` ordonnés par `name` ascendant

![1](https://raw.githubusercontent.com/WebDevCF2m2023/exercices-SQL/main/img/1.png)

-- Séléctionnez `idcateg` et `name` de `categ` quand `idcateg` vaut 4

![2](https://raw.githubusercontent.com/WebDevCF2m2023/exercices-SQL/main/img/2.png)

-- Séléctionnez `idcateg` et `name` de `categ` quand `idcateg` se trouve entre 2 et 4

![3](https://raw.githubusercontent.com/WebDevCF2m2023/exercices-SQL/main/img/3.png)

-- Séléctionnez `idcateg` et `name` de `categ` quand `idcateg` est 1, 3 ou 5 ordonné par `name` descendant

![4](https://raw.githubusercontent.com/WebDevCF2m2023/exercices-SQL/main/img/4.png)

-- Séléctionnez tous les champs de `categ` quand `desc` contient 'et' n'importe où dans la chaîne

![5](https://raw.githubusercontent.com/WebDevCF2m2023/exercices-SQL/main/img/5.png)

-- Séléctionnez tous les champs de `categ` dont l' `idcateg` vaut 5 ainsi que les `idnews` et `title` de la table `news` qui se trouvent dans cette catégorie, même si il n'y en a pas (présence de `categ` dans tous les cas, 17 lignes de résultats) , ordonnés par `news`.`title` ASC

![6](https://raw.githubusercontent.com/WebDevCF2m2023/exercices-SQL/main/img/6.png)

-- Séléctionnez tous les champs de `categ` dont l' `idcateg` vaut 5 ainsi que les `idnews` et `title` de la table `news` qui se trouvent dans cette catégorie, même si il n'y en a pas (présence de `categ` dans tous les cas, 6 lignes de résultats) , ordonnés par `news`.`title` ASC ET que `news`.`visible` vaut 1 !

![7](https://raw.githubusercontent.com/WebDevCF2m2023/exercices-SQL/main/img/7.png)

-- Séléctionnez tous les champs de `categ` dont l' `idcateg` vaut 5 ainsi que les `idnews` (concaténés sur une seul ligne avec la ',' comme séparateur) et `title` (concaténés sur une seul ligne avec '|||' comme séparateur) de la table `news` qui se trouvent dans cette catégorie, même si il n'y en a pas (présence de `categ` dans tous les cas, 1 ligne de résultats) , ET que `news`.`visible` vaut 1 !

![8](https://raw.githubusercontent.com/WebDevCF2m2023/exercices-SQL/main/img/8.png)

-- Séléctionnez `idnews` et `title` de la table `news` lorsque le `title` commence par 'c' (7 résultats)

![9](https://raw.githubusercontent.com/WebDevCF2m2023/exercices-SQL/main/img/9.png)

-- Séléctionnez `idnews` et `title` de la table `news` lorsque le `title` commence par 'a' et `visible` vaut 1 (10 résultats)

![10](https://raw.githubusercontent.com/WebDevCF2m2023/exercices-SQL/main/img/10.png)

-- Séléctionnez `idnews` et `title` de la table `news`, ainsi que les `iduser` et `login` de la table `user` (seulement si il y a une jointure) lorsque le `title` commence par 'a' et `visible` vaut 1 (10 résultats)

![11](https://raw.githubusercontent.com/WebDevCF2m2023/exercices-SQL/main/img/11.png)

-- Séléctionnez `idnews` et `title` de la table `news`, ainsi que les `iduser` et `login` de la table `user` (seulement si il y a une jointure) lorsque le `title` commence par 'a' et `visible` vaut 1 , classés par `user`.`login` ascendant (10 résultats)

![12](https://raw.githubusercontent.com/WebDevCF2m2023/exercices-SQL/main/img/12.png)

-- Séléctionnez `idnews` et `title` de la table `news`, ainsi que les `iduser` et `login` de la table `user` (seulement si il y a une jointure) lorsque le `title` commence par 'a' et `visible` vaut 1 , classés par `user`.`login` ascendant en ne gardant que les 3 premiers résultats (3 résultats)

![13](https://raw.githubusercontent.com/WebDevCF2m2023/exercices-SQL/main/img/13.png)

-- Séléctionnez `idnews` et `title` de la table `news`, ainsi que les `iduser` et `login` de la table `user` (seulement si il y a une jointure) lorsque le `title` commence par 'a' et `visible` vaut 1 , classés par `user`.`login` ascendant en ne gardant que les 3 derniers résultats (3 résultats)

![14](https://raw.githubusercontent.com/WebDevCF2m2023/exercices-SQL/main/img/14.png)

-- Sélectionnez `iduser` et `login` de la table `user`, avec le nombre d'articles écrit par chacun renommé `nbarticles`, classés par `nbarticles` descendant et en n'en gardant que les 5 premiers (5 résultats)

![15](https://raw.githubusercontent.com/WebDevCF2m2023/exercices-SQL/main/img/15.png)

## Bon boulot !
