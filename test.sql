project "TT-DB"

define enumeration Gender {
	MALE,
	FEMALE
}

define enumeration GuestbookEntryState {
	GBS_PREPARED,
	GBS_PUBLISHED,
	GBS_DELETED
}

define entity guestbook(gb__entry) {
	primary {
		id (entryId): ID = AUTO
	}
	data {
		authorName: STRING(255),
		authorMail: NULLABLE STRING(255) = NULL,
		authorHome: NULLABLE STRING(255) = NULL,
		title: STRING(255),
		text: TEXT,
		state: ENUM(GuestbookEntryState) = GuestbookEntryState.GBS_PREPARED,
		date: DATETIME,
		ipAddr: STRING(255)
	}
}
		

define entity person(base__person) {
	primary {
		id (personId): ID = AUTO
	}
	data {
		firstname: STRING(255),
		lastname: STRING(255),
		secondnames (secondName): ARRAY[3] OF NULLABLE STRING(128) = NULL,
		addressSet (addressSetId): NULLABLE REFERENCE(addressSet) = NULL
	}
}

define entity addressSet(base__addressSet) {
	primary {
		id (personId): ID = AUTO
	}
}

define private statement _user_categories(userId) {
	SELECT		user.id								AS	userId,
				NULL								AS	personId,
				category.id							AS	categoryId
	FROM		user__user							AS	user
	JOIN		user__category						AS	category
		ON		user.id = category.id
	WHERE		user.id = userId
}

define public statement getUserCategories(userId) {
	_user_categories(userId)
}
	
