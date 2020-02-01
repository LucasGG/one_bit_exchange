# Integração do coffeescript

Foi um pouco complicado instalar o suporte a esse coffeescript no rails 6 já que
não tem mais suporte direto ao coffeescript e ainda que o script fornecido nessa
lição depende do jquery sendo que certas coisas mudaram. Foi preciso reinstalar
o webpacker, instalar o suporte ao coffee com 'rails webpacker:install:coffee',
adicionar certas dependências com o yarn e ainda configurar o environment.js do
webpacker para carregar o jquery, além de importar os arquivos necessários no
layout...

# Heroku

"Reset Git repo before deploy" precisa estar desabilitado.
