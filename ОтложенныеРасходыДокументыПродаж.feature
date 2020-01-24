#language: ru

Функционал: В документах продаж должны быть несколько менеджеров 

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий


Сценарий:

	И Я открываю навигационную ссылку "e1cib/data/Документ.РеализацияТоваровУслуг?ref=b3b200155d01390411e955de578799d5"
	Тогда открылось окно 'Реализация товаров и услуг 0ПУТ-000747 от *'
	И я перехожу к закладке "Отложенные расходы"
	И я изменяю флаг 'Ручное заполнение'
	Тогда открылось окно 'Реализация товаров и услуг 0ПУТ-000747 от * *'
	И в таблице "ТЧОтложенныеРасходы" я активизирую поле "Связанный товар или услуга"
	И в таблице 'ТЧОтложенныеРасходы' я удаляю строку
	И в таблице "ТЧОтложенныеРасходы" я нажимаю на кнопку 'Заполнить отложенные расходы'
	И в таблице "ТЧОтложенныеРасходы" я активизирую поле "Характеристика связанная"
	И в таблице 'ТЧОтложенныеРасходы' я удаляю строку
	И я изменяю флаг 'Ручное заполнение'
	И Я закрываю окно 'Реализация товаров и услуг 0ПУТ-000747 от * *'
	Тогда открылось окно '1С:Предприятие'
	И я нажимаю на кнопку 'Нет'

	И Я открываю навигационную ссылку "e1cib/data/Документ.АктВыполненныхРабот?ref=b3b200155d01390411e9555c918c483c"
	Тогда открылось окно 'Акт выполненных работ 0ИУТ-000286 от *'
	И я перехожу к закладке "Группы аналитического учета"
	И я перехожу к закладке "Отложенные расходы"
	И я изменяю флаг 'Ручное заполнение'
	Тогда открылось окно 'Акт выполненных работ 0ИУТ-000286 от * *'
	И в таблице "ТЧОтложенныеРасходы" я активизирую поле "Характеристика связанная"
	И я выбираю пункт контекстного меню с именем 'ТЧОтложенныеРасходыКонтекстноеМенюУдалить' на элементе формы с именем "ТЧОтложенныеРасходы"
	И в таблице "ТЧОтложенныеРасходы" я нажимаю на кнопку 'Заполнить отложенные расходы'
	И Я закрываю окно 'Акт выполненных работ 0ИУТ-000286 от * *'
	Тогда открылось окно '1С:Предприятие'
	И я нажимаю на кнопку 'Нет'