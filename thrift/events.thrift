namespace scala mmf.hintlist

include "base.thrift"
include "map.thrift"

typedef i32 int
typedef i64 timestamp
typedef string TTypeKey
typedef string TEventKey

struct EventType {
	1: TTypeKey key;
	2: string name;
	3: int timestamp;
}

struct Event {
	1: TEventKey key;
	2: string name;
	3: TTypeKey typeKey;
	4: string shortDescription;
	5: string fullDescription;
	6: int rate;
	7: int myRate;
	8: string placeKey;
	9: int timestamp;
}

service EventsManager {
	Event create(                         //добавление нового мероприятия
		1: string name,
		2: TTypeKey typeKey,
		3: string shortDescription,
		4: string fullDescription,
		7: string placeKey,
		8: int timestamp
	);
	Event update(                         //обновление информации о мероприятии
		1: string name,
		2: TTypeKey typeKey,
		3: string shortDescription,
		4: string fullDescription,
		7: string placeKey,
		8: int timestamp
	);
	list<Event> findAll(                  //поиск и вывод всех мероприятий
		1: int page,
		2: int count
	);
	list<Event> findAllByType(            //поиск и вывод всех мероприятий определенного типа
		1: TTypeKey key,
		2: int page,
		3: int count
	);
	Event findByKey(                      //поиск мероприятия по ключу(уникальному имени, которое дает сервер) и получение его описания
		1: TEventKey key
	);
	Event find(                           //поиск и вывод мероприятия
		1: TTypeKey typeKey
	)
	void delete(                         //удаление мероприятия
		1: TTypeKey typeKey
	)

	
}

service TypesManager{
	EventType create(                     //добавление нового типа мероприятий
		1: string name
	)
	EventType update(                    //обновление информации о типе мероприятия
		1: string name
	)
	list<EventType> findAll(             //поиск и вывод всех типов мероприятий
		1: int page,
		2: int count
	)
		void delete(                     //удалить тип мероприятия
		1: TTypeKey key
	)
}