#language: ru

Функционал: В документах заказы клиента для номенклатуры РТУ должно быть открыто поле содержание 

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий


Сценарий:

	И Я открываю навигационную ссылку 'e1cib/data/Документ.ЗаказКлиента?ref=b3b200155d01390411e9561522c87187'
	Тогда открылось окно 'Заказ клиента 0ПУТ-01009 от *'
	И я перехожу к закладке "Товары"
	И в таблице "Товары" я активизирую поле "Содержание"
	И в таблице "Товары" я выбираю текущую строку
	И в таблице "Товары" в поле 'Содержание' я ввожу текст '123'
	Тогда открылось окно 'Заказ клиента 0ПУТ-01009 от * *'
	И в таблице "Товары" я завершаю редактирование строки
	И Я закрываю окно 'Заказ клиента 0ПУТ-01009 от * *'
	Тогда открылось окно '1С:Предприятие'
	И я нажимаю на кнопку 'Нет'