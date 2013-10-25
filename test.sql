project "TT-DB"

define enumeration Gender {
	MALE,
	FEMALE
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
	
