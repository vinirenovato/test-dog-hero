# test-dog-hero

Ter instalado:

Ruby;

gem 'selenium-webdriver',        '3.14.0'
gem 'cucumber',                  '3.1.2'
gem 'capybara',                 '3.10.1'
gem 'pry'
gem 'rspec'
gem 'site_prism'

Para executar o script:

Entrar na pasta raiz do projeto pelo terminal;

Executar o comando "cucumber" para executar todas as features
Executar o comando "cucumber -t @success" para executar o teste de login com sucesso
Executar o comando "cucumber -t @error" para executar o teste de login inválido
