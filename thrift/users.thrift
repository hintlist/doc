namespace php mmf.hintlist.user

include "base.thrift"

typedef string TUserKey
typedef string TVkID
typedef string TAuthKey

exception NotAuthorisedException {
	1: string errorMessage,
}

exception UserNotFoundException {
	1: string errorMessage,
}

struct Friend {
	1: TUserKey username
	2: TVkID vkId
} 

struct User {
	1: TUserKey username
	2: string email
	3: string firstName
	4: string lastName
	5: TVkID vkId
}

service UsersManager {
	User findByKey(1: TUserKey key) throws ( 1:NotAuthorisedException e, 2: UserNotFoundException );
	User findByAuthKey(1: TAuthKey key) throws ( 1:NotAuthorisedException e, 2: UserNotFoundException );
	TAuthKey authenticate(
		1: string username,
		2: string password
	) throws ( 1:UserNotFoundException e );
}

service FriendsManager {
	
}