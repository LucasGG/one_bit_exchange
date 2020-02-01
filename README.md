# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

Foi um pouco complicado instalar o suporte a esse coffeescript no rails 6 já que esse não da mais suporte direto ao coffeescript e ainda que o script fornecido nessa lição depende do jquery sendo que não existe mais a pasta 'assets/javascripts'. Foi preciso reinstalar o webpacker, configurar com 'rails webpacker:install', instalar o suporte ao coffee com 'rails webpacker:install:coffee', adicionar certas dependências com o yarn e ainda configurar o environment.js do webpacker para carregar o jquery, além de importar os arquivos necessários no layout...
