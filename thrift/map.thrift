namespace * mmf.hinstlist

include "base.thrift"

typedef i32 int
typedef i64 timestamp

struct LatLng {
	1: double lat;
	2: double lng;
}

struct Address {
	1: string country;
	2: string state;
	3: string city;
	4: string street;
	5: int houseNumber;
	6: int appartment;
	7: LatLng latLng;
	
}