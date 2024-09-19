# SmellSmile 

## Le site internet:

Il s'agit de mon projet pour le diplome CDA Concepteur Développeur d'Application. C'est un simple site e-commerce qui comprends l'achat de produit divers et varié. Il est aussi composé d'un simple back-office afin de pouvoir ajouter/editer/supprimer des produits

![image info](./bootique.png)

![image info](./bootique2.png)

![image info](./bootique3.png)



## Technologie utilisé pour ce projet:

- Symfony 
- Easy Admin
- Twig
- Bootstrap
- Stripe
- Mailjet

## Comment installer le projet:

- Cloner le repo présent sur git :
  
    ```bash
    composer install
    ```

- Importer la base de donnée suivante smellsmile.sql
- Spécifier votre environnement comme ceci :

    ```bash
    DATABASE_URL="mysql://user_name:password@127.0.0.1:3306/database_name?serverVersion=mariadb-10.3.25"
    APP_ENV=dev
    ```

- Si besoin nettoyer le cache  :

    ```bash
    php bin/console cache:clear
    ```
