pelikan.planfix.ru

ПОРЯДОК ИНТЕГРАЦИИ
	0. asana - задача создана, в ней указано описание  (она на основе шаблона) кто ответственный, комплектация пеликана
		<полезная нагрузка>[камера sony, gitup&flir, hd-link, пульт COEX, ВМГ-группа]
		Информация отправляется на почту в planfix, планфикс выделяет признаки, создает задачу <новая> по шаблону и берет в неё данные для полей.
			<проект сборка 3.2>
			<сроки задачи>
			<<импорт участников>>
			<<добавление действия для логирования>>
			<<Передана аналитика времени>>
			<<Передано, кто создал таску>> [ответственный]
		Сабтаски должны иметь кастомные названия, на основе них создавать сабтаски в ПФ. 
		Итеграция: Письмо автоматически пересылается на почту Планфикс. Планфикс создает задачу на основе письма. 
	1. Виртуальный почтовый ящик проекта. Настройка полей
		Имя таски - номер пеликана и для кого

				
	2. Статусы процесса
		черновик;
		новая;
		в работе;
		отмененная;
		отклоненная;
		отмененная;
		выполненная;
		завершенная;

	3. Планировщик на основе процесса
		планировщик сборщика
		планировщик групенфюрера

	4. Автоматические сценарии для планировщика
		ЕСЛИ создана задача и СТАТУС = новая
		ЕСЛИ задача 
			Создать задачу (подзадача):
				ПРОВЕРКА КОМПЛЕКТОВКИ
					<назначить ответственного>[выбрать на основе надзадачи]
					<изменить название>[добавить в название номер задачи по полю]

				ОБРАБОТКА ЭЛЕКТРОНИКИ
				ПОДГОТОВКА ПРОВОДОВ
				ЗЕНКОВКА ОТВЕРСТИЙ
				СВЕРЛЕНИЕ ТРУБОК ЛУЧЕЙ И НОГ
				УСТАНОВКА ОГНЕЙ
				СБОРКА ЛУЧЕЙ С СЕРВИСНЫМИ НАГРУЗКАМИ
				ПАЙКА КРЕСТОВИНЫ
				ПРОШИВКА ESC-РЕГУЛЯТОРОВ
				СБОРКА И УСТАНОВКА ШАССИ
				УСТАНОВКА КОНТАКТНЫХ ПЛОЩАДОК И PCM
				УСТАНОВКА РАЗЪЁМА ДЛЯ НАГРУЗКИ
				СБОРКА БАНКИ ОТСЕКА АККУМУЛЯТОРА
				СБОРКА КРЕСТОВИНЫ
				УСТАНОВКА ЭЛЕКТРОНИКИ НА ВЕРХНЮЮ ДЕКУ
				ПРОШИВКА И ПАРАМЕТРЫ
				КАЛИБРОВКИ IMU-СЕНСОРОВ, АППАРАТУРЫ, ПОЛЕТНЫХ РЕЖИМОВ И ТОКОВОГО ДАТЧИКА
				ПРЕДПОЛЁТНЫЕ ТЕСТЫ
				ТЕСТОВЫЙ ПОЛЁТ HARD
				СБОРКА БЫСТРОСЪЁМА
				СБОРКА ПОДВЕСА КАМЕРЫ GITUP ИЛИ ТЕПЛОВИЗОРА FLIR
				СБОРКА ПОДВЕСА КАМЕРЫ CANON
				СБОРКА МОДУЛЯ ПЕРЕВОЗКИ ГРУЗА
				СБОРКА ПОДВЕСА IR-LOCK и LIDAR
				СБОРКА ЯЩИКА
			(Дописывать к задаче описание что нужно сделать. Скриншоты, схемы. )
	5. Шаблон задачи
	6. Поля и справочники

	ТРУДНОСТИ
	1. не удалось импортировать дату из письма
	2. Поставить при импорте проект Производство коптеров
	