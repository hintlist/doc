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
	3: string typeKey;
	4: string shortDescription;
	5: string fullDescription;
	6: int rate;
	7: int myRate;
	8: string placeKey;
	9: int timestamp;
}

service EventsManager {
	list<Event> findAll(
		1: int page,
		2: int count
	);
	list<Event> findAllByType(
		1: TTypeKey key,
		2: int page,
		3: int count
	);
	Event findByKey(
		1: TEventKey key
	);
	
}