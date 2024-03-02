FROM ruby:latest

# Instalar dependências necessárias para o projeto
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

# Configurar o diretório de trabalho
WORKDIR /rails-7

# Se você está usando Rails 6 ou superior, é necessário ter o Yarn
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update && apt-get install -y yarn

# Copiar o Gemfile e Gemfile.lock
COPY Gemfile /rails-7/Gemfile
COPY Gemfile.lock /rails-7/Gemfile.lock

# Instalar as gems
RUN bundle install

# Copiar o projeto para o container
COPY . /rails-7

# Adicionar um ponto de entrada para corrigir um problema com o server.pid
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]

EXPOSE 3000

# Iniciar o servidor Rails
CMD ["rails", "server", "-b", "0.0.0.0"]