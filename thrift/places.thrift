namespace scala mmf.hintlist

include "base.thrift"
include "map.thrift"

typedef i32 int
typedef i64 timestamp
typedef string TTypeKey
typedef string TPlaceKey


struct PlaceType {
	1: string key;
	2: string name;
	3: int timestamp;
}

struct Place {
	1: TPlaceKey key;
	2: string name;
	3: string shortDescription;
	4: string fullDescription;
	5: TypeKey typeKey;
	6: int rate;
	7: int myRate;
	8: int timestamp;
	9: map.Address address;
}

service PlacesManager {
	Place create(                        //добавление нового места
		1: string name;
		2: string shortDescription;
		3: string fullDescription;
		4: TypeKey typeKey;
		5: int timestamp;
		6: map.Address address;                        
		
	);
	Place update(                         //обновление информации о месте
		1: string name;
		2: string shortDescription;
		3: string fullDescription;
		4: TypeKey typeKey;
		5: int timestamp;
		6: map.Address address; 
	);
	list<Place> findAll(                  //поиск и вывод всех мест
		1: int page,
		2: int count
	);
	list<Place> findAllByType(            //поиск и вывод всех мест определенного типа
		1: TTypeKey key,
		2: int page,
		3: int count
	);
	Place findByKey(                     //поиск мест по ключу(уникальному имени, которое дает сервер) и получение его описания
		1: TPlaceKey key
	);
	void delete(                         //удаление места
		1: TPlaceKey typeKey
	)
	
}

service TypesManager{
	PlaceType create(                     //добавление нового типа мест
		1: string name
	)
	PlaceType update(                    //обновление информации о типе места
		1: string name
	)
	list<PlaceType> findAll(             //поиск и вывод всех типов мест
		1: int page,
		2: int count
	)
	PlaceType findByKey(                //поиск информации о типе места
		1:TTypeKey key
	)
		void delete(                     //удалить тип мест
		1: TTypeKey key
	)
}
