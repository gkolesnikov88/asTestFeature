#language: ru

Функционал: Проверка печатных форм Акт сверки по данным контрагента с печатью и подписью 

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий


Сценарий:

    И Я открываю навигационную ссылку "e1cib/data/Документ.СверкаВзаиморасчетов?ref=b3b200155d01390411e9548008a6a0cd"
	Тогда открылось окно 'Сверка взаиморасчетов 0ИУТ-000016 от *'
	И я нажимаю на кнопку 'Акт сверки взаиморасчетов по данным контрагента (с печатью и подписью)'
	Тогда открылось окно 'Печать документа'
    # Не отключать, таблица не успевает отрисоваться, получаем ошибку  ++
    И Пауза 1 
    # --
	И в табличном документе 'ТекущаяПечатнаяФорма' я перехожу к ячейке "Печать"
	И в табличном документе 'ТекущаяПечатнаяФорма' я перехожу к ячейке "ПодписьРуководителя"
	И Я закрываю окно 'Печать документа'
	Тогда открылось окно 'Сверка взаиморасчетов 0ИУТ-000016 от *'
	И Я закрываю окно 'Сверка взаиморасчетов 0ИУТ-000016 от *'