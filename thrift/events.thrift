namespace scala mmf.hintlist

include "base.thrift"
include "map.thrift"

typedef i32 int
typedef i64 timestamp

struct EventType {
	1: string key;
	2: string name;
	3: int timestamp;
}

struct Event {
	1: string key;
	2: string name;
	3: string typeKey;
	4: string shortDescription;
	5: string fullDescription;
	6: int rate;
	7: int myRate;
	8: string placeKey;
	9: int timestamp;
}
