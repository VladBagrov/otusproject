﻿#language: ru

@tree
@ExportScenarios

Функционал: Создание документов продажи в различных режимах (приложение фронт)

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: я включаю режим фронта
	И В командном интерфейсе я выбираю 'Отус' 'Настройки бонусной системы'
	Тогда открылось окно 'Настройки бонусной системы'
	И я устанавливаю флаг с именем 'отусЭтоФронтОфис'
	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
	И я жду закрытия окна 'Настройки бонусной системы *' в течение 20 секунд

Сценарий: я создаю обычную продажу (фронт)
	И В командном интерфейсе я выбираю 'Отус' 'Продажи'
	Тогда открылось окно 'Продажи товара'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Продажа товара (создание)'
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" из выпадающего списка с именем "ТоварыТовар" я выбираю по строке 'Капучино'
	И в таблице "Товары" я завершаю редактирование строки
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
	И я жду закрытия окна 'Продажа товара (создание) *' в течение 20 секунд

Сценарий: я создаю обычную продажу с созданием новой бонусной карты (фронт)
	И В командном интерфейсе я выбираю 'Отус' 'Продажи'
	Тогда открылось окно 'Продажи товара'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Продажа товара (создание)'
	И я нажимаю на кнопку с именем 'НоваяКарта'
	Тогда открылось окно 'Отус новая карта'
	И в поле с именем 'Фамилия' я ввожу текст 'Николаев'
	И в поле с именем 'Имя' я ввожу текст 'Илья'
	И в поле с именем 'Телефон' я ввожу текст '556677'
	И я нажимаю на кнопку с именем 'Сохранить'
	Тогда открылось окно 'Продажа товара (создание)'
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" из выпадающего списка с именем "ТоварыТовар" я выбираю точное значение 'Капучино'
	И в таблице "Товары" я завершаю редактирование строки
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
	И я жду закрытия окна 'Продажа * от *' в течение 20 секунд
	
	И В командном интерфейсе я выбираю 'Отус' 'отус Виртуальные карты'
	Тогда открылось окно 'отус Виртуальные карты'
	И в таблице "Список" я нажимаю на кнопку с именем 'СписокНайти'
	Тогда открылось окно 'Найти'
	И из выпадающего списка с именем "FieldSelector" я выбираю точное значение 'Наименование'
	И в поле с именем 'Pattern' я ввожу текст 'Николаев Илья (556677)'
	И я нажимаю на кнопку с именем 'Find'
	Тогда открылось окно 'отус Виртуальные карты'
	И в таблице "Список" я активизирую поле с именем "Контрагент"
	И в таблице "Список" я выбираю текущую строку
	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'

Сценарий: я создаю обычную продажу с поиском бонусной карты (фронт)
	И В командном интерфейсе я выбираю 'Отус' 'Продажи'
	Тогда открылось окно 'Продажи товара'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Продажа товара (создание)'
	И я нажимаю на кнопку с именем 'НайтиКарту'
	Тогда открылось окно 'Введите номер телефона'
	И в поле с именем 'InputFld' я ввожу текст '556677'
	И я нажимаю на кнопку с именем 'OK'
	Тогда открылось окно 'Продажа товара (создание)'
	И у элемента с именем "отусВиртуальнаяКарта" я жду значения "Николаев Илья (556677)" в течение 5 секунд
	И у элемента с именем "ДекорацияБалансКарты" я жду значения "Баланс карты: 15" в течение 5 секунд по шаблону
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" из выпадающего списка с именем "ТоварыТовар" я выбираю по строке 'Капучино'
	И в таблице "Товары" я завершаю редактирование строки
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
	И я жду закрытия окна 'Продажа товара (создание) *' в течение 20 секунд

Сценарий: я создаю обычную продажу с поиском бонусной карты и списанием бонусов (фронт)
	И В командном интерфейсе я выбираю 'Отус' 'Продажи'
	Тогда открылось окно 'Продажи товара'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Продажа товара (создание)'
	И я нажимаю на кнопку с именем 'НайтиКарту'
	Тогда открылось окно 'Введите номер телефона'
	И в поле с именем 'InputFld' я ввожу текст '556677'
	И я нажимаю на кнопку с именем 'OK'
	И у элемента с именем "отусВиртуальнаяКарта" я жду значения "Николаев Илья (556677)" в течение 5 секунд
	И у элемента с именем "ДекорацияБалансКарты" я жду значения "Баланс карты: 30" в течение 5 секунд по шаблону
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" из выпадающего списка с именем "ТоварыТовар" я выбираю по строке 'капучино'
	И в таблице "Товары" я завершаю редактирование строки
	И я нажимаю на кнопку с именем 'СписатьБонусы'
	И В последнем сообщении TestClient есть строка "Списано 30 бонусов с карты"
	И таблица  "Оплата" содержит строки:
		| 'Способ оплаты' | 'Сумма' |
		| 'Бонусы' | '30,00' |
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
	И я жду закрытия окна 'Продажа товара (создание) *' в течение 20 секунд

Сценарий: я создаю обычную продажу с созданием новой бонусной карты, и проверкой что такая карта уже есть (фронт) (ошибка)
	И В командном интерфейсе я выбираю 'Отус' 'Продажи'
	Тогда открылось окно 'Продажи товара'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Продажа товара (создание)'
	И я нажимаю на кнопку с именем 'НоваяКарта'
	Тогда открылось окно 'Отус новая карта'
	И в поле с именем 'Фамилия' я ввожу текст 'Николаев'
	И в поле с именем 'Имя' я ввожу текст 'Илья'
	И в поле с именем 'Телефон' я ввожу текст '556677'
	И я нажимаю на кнопку с именем 'Сохранить'
	И В последнем сообщении TestClient есть строка "На телефон 556677 уже зарегистрирована виртуальная карта"

		

	

		







