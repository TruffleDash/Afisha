# Используем официальный образ Ruby как базовый
FROM ruby:3.2.2

# Установка зависимостей для Node.js и Yarn
RUN apt-get update -qq && apt-get install -y nodejs npm && \
    npm install --global yarn

# Установка Node.js и Yarn
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash - && \
    apt-get install -y nodejs && \
    npm install --global yarn

# Создаем рабочую директорию для нашего приложения
WORKDIR /myapp

# Копируем Gemfile и Gemfile.lock в /myapp
COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock

# Устанавливаем зависимости для Ruby
RUN bundle install

# Копируем наш исходный код в /myapp
COPY . /myapp

# Устанавливаем Webpacker
RUN bundle exec rails webpacker:install
EXPOSE 3000
CMD ["./bin/rails", "server", "-b", "0.0.0.0"]
