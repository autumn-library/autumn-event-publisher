#Использовать logos

Перем Лог;
Перем Табакерка;

Процедура ОпубликоватьСобытие(Источник, ИмяСобытия, ПараметрыСобытия) Экспорт

	Лог.Отладка("Получено событие ""%1"". Источник ""%2""", ИмяСобытия, Источник);
	ПараметрыСобытия.Вставить(0, Источник);

	// Что если публикатор событий будет декорирован напильниками?
	// Отложенный селф-инжект табакерки? 
	КонечныйПубликаторСобытий = Табакерка.Достать();
	Попытка
		КонечныйПубликаторСобытий.ВызватьСобытие(ИмяСобытия, ПараметрыСобытия);
	Исключение
		Сообщить(ИнформацияОбОшибке().ПодробноеОписаниеОшибки());
		ВызватьИсключение;
	КонецПопытки;
КонецПроцедуры

&Желудь
Процедура ПриСозданииОбъекта(&Табакерка &Пластилин ПубликаторСобытий)
	Табакерка = ПубликаторСобытий;
	Лог = Логирование.ПолучитьЛог("oscript.lib.autumn.event-publisher.ПубликаторСобытий");
КонецПроцедуры