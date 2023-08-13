﻿#language: ru

@tree

Функционал: Проверка работы документа Продаж товаров и услуг совместно с бонусной системой. 

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Главный сценарий тестирования реализации с функционалом бонусных карт 
* Тестирование на стороне фронт офиса
	И я создаю обычную продажу (фронт)
	И  я создаю обычную продажу с созданием новой бонусной карты (фронт)
	И я создаю обычную продажу с поиском бонусной карты (фронт)

	И я создаю обычную продажу с поиском бонусной карты и списанием бонусов (фронт)

	И я удаляю тестовые данные (фронт)
	
		
	И В командном интерфейсе я выбираю 'Отус' 'Настройки бонусной системы'
	Тогда открылось окно 'Настройки бонусной системы'
	И я изменяю флаг с именем 'отусЭтоФронтОфис'
	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
	И я жду закрытия окна 'Настройки бонусной системы *' в течение 20 секунд
	
	И я создаю обычную продажу (бэк)
	И я создаю обычную продажу с созданием новой бонусной карты (бэк)
	 
	И я создаю обычную продажу с поиском бонусной карты (бэк)
	
	И я создаю обычную продажу с поиском бонусной карты и списанием бонусов (бэк)

	И я удаляю тестовые данные (бэк)