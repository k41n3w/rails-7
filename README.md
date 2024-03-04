# Projeto Rails 7 Ruby 2.3.0

Para se utilizado como base futuramente.

Link para o projeto: https://fly.io/apps/rails-7

---

## Uso local:

Copie os arquivos e substitua o nome do projeto pelo seu.

Logo após:

```ruby
# builde o projeto
docker-compose -f build

# execute o projeto
docker-compose up
```

Ao acessar o localhost:3000 no navegador a primeira rode a migration.

---

## Caso queira fazer o deploy no https://fly.io/

### instale o cli no MAC OS
`brew install flyctl`

### faça login no Fly.io
`fly auth login`

### faça deploy no Fly.io
`fly launch`

Para esse passo né necessário antes ter seu projeto buildado localmente, eventualmente isso vai gerar necessidade de instalação de pacotes adicionais na sua máquina local, exemplo: precisa instalar o Postgres.
