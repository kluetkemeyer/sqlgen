SELECT 
	select1.asdf IN (15, 12, 2), 
	5 AS fuenf, 
	tab.set1.k[15] AS indirectAccess,
	"Srtin Hello" AS const_string
FROM
	tabular1 AS tab,
	(SELECT
		"blub",
		x1.id AS id
	FROM
		tabular2 AS x2
	) AS select1,
	tabular3
JOIN adf AS asdf
LEFT OUTER JOIN asedfer ON 42 = 23
WHERE
	tabular1.id = tabular3.id
	AND select1.id IN (SELECT CONCAT(1, ""))
