namespace scala mmf.hintlist
namespace php mmf.hintlist



struct EventType {
	1: string key
	2: string name
	3: int32 timestamp
}

struct Event {
	1: string key
	2: string name
	3: string typeKey
	4: string shortDescription
	5: string fullDescription
	6: int32 rate
	7: int32 myRate
	8: string placeKey
	9: int32 timestamp
}

struct PlaceType {
	1: string key
	2: string name
	3: int32 timestamp
}

struct Place {
	1: string key
	2: string name
	3: string shortDescription
	4: string fullDescription
	5: string typeKey
	6: int32 rate
	7: int32 myRate
	8: int32 timestamp
	9: Address address
}