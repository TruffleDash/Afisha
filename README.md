# README

## Цель проекта:
Создать веб-сервис для покупки билетов на концерты.

## Функциональные требования:

### Регистрация и аутентификация:

Пользователи могут зарегистрироваться, указав необходимую информацию.
Аутентификация с использованием электронной почты и пароля.
### Продажа билетов:

Пользователи могут просматривать доступные концерты и мероприятия.
Возможность выбирать категории билетов (например, VIP, обычные).
Добавление билетов в корзину и оплата заказа.
Управление мероприятиями для администраторов:

Добавление, редактирование и удаление мероприятий.
Установка цен на билеты и количество доступных билетов.
Просмотр статистики продаж для каждого мероприятия.
Управление пользователями для администраторов:

Просмотр списка пользователей и их заказов.
Возможность блокировки или удаления пользовательских аккаунтов.
### Оповещения:

Автоматические уведомления о подтверждении заказа, изменениях в расписании мероприятий и других важных событиях.
### История заказов:

Пользователи могут просматривать историю своих заказов и статусы оплаты.
## Разделение ролей:

### Гость:

Может просматривать мероприятия и информацию о билетах.
Регистрация и аутентификация для оформления заказа.

### Зарегистрированный пользователь:

Все возможности гостя.
Возможность добавления билетов в корзину и оформление заказа.
Просмотр истории заказов.

### Администратор:

Все возможности зарегистрированного пользователя.
Управление мероприятиями: добавление, редактирование, удаление.
Управление пользователями: блокировка, удаление.
Просмотр статистики продаж и общей активности.


## Запуск
1. docker-compose build
2. docker-compose up
3. docker-compose exec app bash
   2.2 rails db:create
   2.3 rails db:migrate
4. генерация админа - (пароль и логин) rake create_admin

   afisha - localhost:3000
   pass - localhost:3001
