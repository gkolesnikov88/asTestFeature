#language: ru

Функционал: Коды на вход и на выход, вывод на форме справочника Пользователи

Как Администартор
Я хочу проверить наличие кодов на вход и на выход
Чтобы пользователи могли регистрироваться в системе по отпечаткам

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий


Сценарий: проверяю наличие кодов на вход и на выход в справочнике пользователи

	И В командном интерфейсе я выбираю 'НСИ и администрирование' 'Настройки пользователей и прав'
	Тогда открылось окно 'Настройки пользователей и прав'
	И я нажимаю на кнопку 'Пользователи'
	Тогда открылось окно 'Пользователи'
	И в таблице "ПользователиСписок" я перехожу к строке:
		| Пользователь                  |
		| Колесников Георгий Валерьевич |
	И в таблице "ПользователиСписок" я выбираю текущую строку
	Тогда открылось окно 'Колесников Георгий Валерьевич (Пользователь)'
    И в поле 'Код пользователя вход' я ввожу текст '11'
    И в поле 'Код пользователя выход' я ввожу текст '12'
	И Я закрываю окно 'Колесников Георгий Валерьевич (Пользователь) *'
	Тогда открылось окно '1С:Предприятие'
	И я нажимаю на кнопку 'Нет'
    Тогда открылось окно 'Пользователи'
	И Я закрываю окно 'Пользователи'