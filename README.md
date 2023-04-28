# Gamer Shop
 eCommerce feito com integração entre back e front-end para testes das funcionalidades com API.
 
 Uso do Node, Express, Joi e JWT com o MySQL no back e do Angular com Ant Design, Swiper e outras funcionalidades no front.

## Funcionalidades
A página inicial contém os produtos com suas fichas em formato de cartões, você pode adicionar no carrinho e retirar, prosseguir também para continuar com a compra.

Também temos um sistema de login e cadastro e até de edição do perfil e histórido de pedidos.

Obs.: O site ainda possui algumas inconsistências, mas está bem funcional na versão atual.

### Requisitos
Precisamos do Node na versão 16, versões acima (mais atuais) podem dar conflito, e também do npm e do angular, esses podem estar nas suas versões atuais.

Obs.: Dependendo da instalação do Node, será necessário instalar o nvm para regredir para uma versão anterior (16).

Iremos precisar também de um banco de dados criado no MySQL, que deve ser instalado com as confirurações recomendadas. Dentro da pasta "env" do "backend" devemos editar o arquivo "development.env" com as informações do banco de dados criado. Depois devemos executar a query com o "sql_dump.sql" que também está no backend, esse arquivo irá criar nossas tabelas e preencher com algumas informações para teste e visualização.

Os "package.json" estão configurados corretamente, portanto, com o npm funcionando é só mandar o npm install no terminal do "backend" e no terminal do "client". Em seguida a gente inicia o backend no terminal com "npm run dev" e o client com "ng serve".
