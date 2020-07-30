* Ruby version
2.5.1
* Rails version
5.2.4.3



Alors voici la BDD associée à AirDogSitter:
Je te laisse te référer au fichier ./db/seeds.rb pour voir ce que j'ai créé.
Les models sont:

* City (city_name)
* DogSitter (first_name, last_name, city_id)
* Dog (nick_name, breed, age, city_id)
* Stroll (date, location, duration, city_id, dog_id, dog_sitter_id)

Les seeds ont été créés avec Faker.


A partir de là je te laisse explorer :) !
