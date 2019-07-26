# Control Engenharia - Implementação
## Configuração

Clone o projeto

```sh
$ git clone https://github.com/pedrohcrisanto/control.git
```

Instale as dependências
```sh
$ cd /control/
$ sudo docker-compose run --rm app bundle install
```

Crie o banco, migre as tabelas e logo após popule o banco de dados<br>
```sh
$ sudo docker-compose run --rm app bundle exec rails db:create db:migrate db:seed 
```
<strong>(login:admin@control.eng.br', password:<small>'123456'</small>)</strong> 

Rode a aplicação
```sh
$ sudo docker-compose up
```

Abra o seu navegador(de preferência Chrome ou Firefox) e navegue para `localhost:3000`

Para realizar Testes
```sh
$ sudo docker-compose run --rm app bundle exec rspec
```
## Deploy no Heroku

https://controleng.herokuapp.com/

