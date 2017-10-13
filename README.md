# Rapidoo Challenge

Code challenge da Rapidoo

## Requisitos de software

Os requisitos estão presentes no Gemfile, mas são basicamente:


```
rails = 5.1.4
ruby = 2.4 ou superior
```

## Instruções de instalação

Para instalar, é necessário clonar o projeto

```
git clone git@github.com:fialhorenato/RapidooChallenge.git
bundle install
rake db:migrate ou rake db:setup
```

Recomendo utilizar o RVM com a versão 2.4 do Ruby, para isso:

```
source ~/.rvm/scripts/rvm
rvm install 2.4
rvm use 2.4
```

## Suposições feitas sobre os requisitos do desafio

A única suposição feita foi que caso o financiamento seja:

- Entre 11 e 20 dias, 2x a taxa básica
- Entre 21 e 30 dias, 3x a taxa básica

E assim por diante...

## Proximos passos

Um painel de administração dos dados, mostrando insights bacanas,além de alguma integração com algum CRM como salesforce como primeira etapa do funil.

Um extra-step seria transformar essa aplicação em uma API e fazer as requisições REST utilizando algum framework para frontend, pretendo fazer em Vue.js.

## Bonus points

- Hospedar a aplicação em um cloud gratuito, por exemplo Heroku - [https://nameless-earth-90748.herokuapp.com/](https://nameless-earth-90748.herokuapp.com/)
- Taxa-base dinâmica variando com o faturamento mensal das empresas (p.e acima de 100k/mês é 1.5% e abaixo de 50k/mês é 1.8%);
