namespace * mmf.hinstlist.map

struct LatLng {
	1: double lat
	2: double lng
}

struct Address {
	1: string country
	2: string state
	3: string city
	4: string street
	5: int32 houseNumber
	6: int32 appartment
	7: LatLng latLng
	
}