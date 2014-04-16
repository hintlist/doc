HintList REST API Documentation
===============================

| Method | Route | Request body | Response | Example URL | Example Response | Example Request Body | Description |
| ------ |:-------:|:-----:|:------:|:------:|:------:|:-----:|:----:|
| GET |  /events/  | - | [{event_1}, ... ] | /events/ | [{event_structure}] | - | Получение 1 страницу списка всех мероприятий |
| POST | /events/ | {event_structure} | {event_structure} | /events/ | {event_structure} | {event_structure} | Добавление нового мероприятия |
| GET | /events/{page} | - | [{event_1},...] | /events/1 | [{event_structure}] | - | Получение n-ной страницы списка всех мероприятий |
| GET | /events/types/{page} | - | [{type_1},...] | /events/types/ | [{event_type_structure}] | - | Получение списка всех типов мероприятий |
| POST | /events/types/ | {eventtype_structure} | {eventtype_structure} | /events/types | {eventtype_structure} | {eventtype_structure} | Добавление нового Типа мероприятий |
| PUT | /events/types/{type}/ | {eventtype_structure} | {eventtype_structure} | /events/movies/need-for-speed | {eventtype_structure} | {eventtype_structure} | Обновить информацию о типе мероприятия |
| DELETE | /events/types/{type} | - | - | /events/types/movies | - | - | Удалить тип мероприятия |
| GET | /events/{type}/{page} | - | [{event_1},...] | /events/movies/1 | [{event_structure}] | - | Получение n-ной страницы списка мероприятий одного типа |
| GET | /events/{type}/{name} | - | {event_structure} | /events/movies/need-for-speed | {event_structure} | - | Получение описания одного мероприятия |
| PUT | /events/{type}/{name} | {event_structure} | {event_structure} | /events/movies/need-for-speed | {event_structure} | {event_structure} | Обновить информацию о мероприятии |
| DELETE | /events/{type}/{name} | - | - | /events/movies/need-for-speed | - | - | Удалить мероприятие |
| GET |  /places/  | - | [{place_1}, ... ] | /places/ | [{place_structure}] | - | Получение 1 страницу списка всех новых мест |
| POST | /places/ | {place_structure} | {place_structure} | /places/ | {place_structure} | {place_structure} | Добавление нового места |
| GET | /places?page={page} | - | [{place_1},...] | /places?page=1 | [{place_structure}] | - | Получение n-ной страницы списка всех новых места|
| GET | /places/types?page={page} | - | [{placetype_1},...] | /places/types?page=1 | [{placetype_structure}] | - | Получение списка всех типов мест |
| POST | /places/types/ | {placetype_structure} | {placetype_structure} | /places/types | {placetype_structure} | {placetype_structure} | Добавление нового Типа меcт |
| PUT | /places/types/{type}/ | {placetype_structure} | {placetype_structure} | /places/cafes/ | {placetype_structure} | {placetype_structure} | Обновить информацию о типе места |
| DELETE | /places/types/{type} | - | - | /places/types/cafes| - | - | Удалить тип места |
| GET | /places/{type}?page={page} | - | [{place_1},...] | /places/cafes?page=1 | [{place_structure}] | - | Получение n-ной страницы списка новых мест одного типа |
| GET | /places/{type}/{name} | - | {place_structure} | /places/cafes/Olivio | {place_structure} | - | Получение описания одного нового места |
| PUT | /places/{type}/{name} | {place_structure} | {place_structure} | /places/cafes/Olivio | {place_structure} | {place_structure} | Обновить информацию о новом месте |
| DELETE | /places/{type}/{name} | - | - | /places/cafes/Olivio | - | - | Удалить Новое место |
| GET | /places/{type}?page={page} | - | [{place_1},...] | /places/cafes?page=1 | [{place_structure}] | - | Получение n-ной страницы списка новых мест одного типа |
| GET | /places/{type}/{name} | - | {place_structure} | /places/cafes/Olivio | {place_structure} | - | Получение описания одного нового места |
| PUT | /places/{type}/{name} | {place_structure} | {place_structure} | /places/cafes/Olivio | {place_structure} | {place_structure} | Обновить информацию о новом месте |
| DELETE | /places/{type}/{name} | - | - | /places/cafes/Olivio | - | - | Удалить Новое место |
| GET | /{username}/wishlist/ | - | [{(event OR place)_1}, ...] | /masha/wishlist | [{event_structure}, {place_structure}] | - | Получение списка мест или мероприятий, которые отмечены "Хочу попробовать"|
| GET | /{username}/wishlist/{events OR places}/ | - | [{(event OR place)_1}, ...] | /masha/wishlist/events/ | [{event_structure}] | - | Получение списка или мест, или мероприятий, которые отмечены "Хочу попробовать"|
| POST | /{username}/wishlist/ | {(event OR place)} | {(event OR place)} | /masha/wishlist/ | {(event OR place)} | {(event OR place)} | Добавление в список места или мероприятия, которое отмечено "Хочу попробовать"|
| DELETE | /{username}/wishlist/{events OR places}/{type}/{name} | - | - | /masha/wishlist/places/cafe/Olivio | - | - | Удалить место или мероприятие из списка, отмеченных "Хочу попробовать" |
| GET | /home/{latitude}/{longitude}/{zoom} | - | [{event OR place}, ...] | /home/28.234564543/34.213465443245/14 | [{event_structure}, {place_structure}] | - | Получение списка новых мероприятий и мест по местоположению и масштабу карты на экране|
| GET | /{username}/attendedlist/ | - | [{(event OR place)_1}, ...] | /masha/attendedlist/ | [{event_structure}, {place_structure}] | - | Получение списка или мест, или мероприятий, которые отмечены "Попробовал"|
| GET | /{username}/attendedlist/{events OR places}/ | - | [{(event OR place)_1}, ...] | /masha/attendedlist/events/ | [{event_structure}] | - | Получение списка или мест, или мероприятий, которые отмечены "Попробовал"|
| POST | /{username}/attendedlist/ | {(event OR place)} | {(event OR place)} | /masha/attendedlist/ | {(event OR place)} | {(event OR place)} | Добавление в список места или мероприятия, которое отмечено "Попробовал"|
| DELETE | /{username}/attendedlist/{events OR places}/{type}/{name} | - | - | /masha/attendedlist/places/cafe/Olivio | - | - | Удалить место или мероприятие из списка, отмеченных "Попробовал" |
| GET | /search/?type={type}&name={name}&date={date}&tags[]={tags} | - | [{(event OR place)_1}, ...] | /search/?type=movie&name=Event1| [{event_structure}] | - | Получение списка мероприятий или мест по запросу в поиске |
| POST | /login | {"username": %username%, "email": %email%, "password": %password%} | - | /login | {"username": "Masha", "password": "a4s3d2"} | - | Авторизация через login(email) и пароль |
| POST | /login?vk | - | - | - | - | - | Авторизация через vk |
| POST | /{username}/ | {user} | {user} | /masha/ | {user} | {user} | Регистрация нового пользователя |
| PUT | /{username}/ | {user} | {user} | /masha/ | {user} | {user} | Редактирование существующего пользователя |
| DELETE | /{username}/ | - | - | /masha/ | - | - | Удаление существующего пользователя |

Event structure
---------------

```javascript
{
	"key"  : "event1",
	"name"  : "Event1",
	"description" : "Descr1",
	"rate"  : 2,
	"your_rate"  : 1,
	"place"  : {
	"name": "Place1",
	...
	},
	"timestamp"  : 192838272,
	"isTriedOut" : true,
	"isDesired"  : false,
	"type"  : "type1",
	"tags"  : ["sleep","rest"]
}
```

Place structure
---------------

```javascript
{
	"key"  : "place1",
	"name"  : "place1",
	"description" : "Descr1"
	"rate"  : 2,
	"your_rate"  : 1,
	"address"  : {
		"street": "str. ",
		"building": 34,
		"app": null,
		"longitude": 56.87997,
		"latitude": 23.92374
	},
	"isTriedOut" : true,
	"isDesired"  : false,
	"type"  : "type1",
	"tags"  : ["sleep","rest"]
}
```

User structure
---------------

```javascript
{
	"username"  : "Masha",
	"email" : "Descr1@mail.com",
	"firstName": "",
	"lastName": "",
	"vkID"  : 2
}
```