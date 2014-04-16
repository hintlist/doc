namespace scala mmf.hintlist

include "base.thrift"
include "map.thrift"

typedef i32 int
typedef i64 timestamp

struct PlaceType {
	1: string key;
	2: string name;
	3: int timestamp;
}

struct Place {
	1: string key;
	2: string name;
	3: string shortDescription;
	4: string fullDescription;
	5: string typeKey;
	6: int rate;
	7: int myRate;
	8: int timestamp;
	9: map.Address address;
}
