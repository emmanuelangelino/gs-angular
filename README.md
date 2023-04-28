# Gamer Shop
eCommerce Gamer feito com integração entre back e front-end para testes das funcionalidades com API.

Uso do Node, Express, Joi e JWT com o MySQL no back e do Angular com Ant Design, Swiper e outras funcionalidades no front.

## Funcionalidades
A página inicial contém os produtos com suas fichas em formato de cartões, você pode clicar para ver mais informações, adicionar ao carrinho e retirar, e prosseguir também para continuar com a compra.

Também temos um sistema de login e cadastro e até de edição do perfil e histórido de pedidos.

Obs.: O site ainda possui algumas inconsistências, mas está bem funcional na versão atual.

### Requisitos
Precisamos do Node na versão 16, versões acima (mais atuais) podem dar conflito, e também do npm e do angular, esses podem estar nas suas versões atuais.

Obs.: Dependendo da instalação do Node, será necessário instalar o nvm para regredir para uma versão anterior (16).

Iremos precisar também de um banco de dados criado no MySQL, que deve ser instalado com as confirurações recomendadas. Dentro da pasta <b>env</b> do <b>backend</b> devemos editar o arquivo <b>development.env</b> com as informações do banco de dados criado. Depois devemos executar a query com o <b>sql_dump.sql</b> que também está no backend, esse arquivo irá criar nossas tabelas e preencher com algumas informações para teste e visualização.

Os <b>package.json</b> estão configurados corretamente, portanto, com o npm funcionando é só mandar o <b>npm install</b> no terminal do <b>backend</b> e no terminal do <b>client</b>. Em seguida a gente inicia o backend no terminal com <b>npm run dev</b> e o client com <b>ng serve</b>.
