#!/bin/bash
set -e

# Remover um possível server.pid preexistente do Rails.
rm -f /rails-7/tmp/pids/server.pid

# Executar o comando passado para o docker run, ex., `rails server`.
exec "$@"