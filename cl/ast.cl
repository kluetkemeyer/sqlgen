// Classgen file

package de.brainiiiii.sqlgen.tree;

SqlUnaryOperator ::=	one of IS_NULL, NOT, MINUS

SqlBinaryOperator ::=	one of PLUS, MINUS, MULT, DIV, MOD, AND, OR, LT, 
							LE, EQ, GE, GT
							
SqlJoinType ::=			one of CROSS, INNER, LEFT_OUTER, RIGHT_OUTER, 
							LEFT, RIGHT
							
SqlUnionType ::=		one of UNION, DIFF


SqlExpr ::= 				{SqlConstIntExpr} "int":value
						|	{SqlConstStringExpr} "String":value
						|	{SqlConstBoolExpr} "boolean":value
						|	{SqlConstNullExpr}
						|	{SqlUnaryExpr} "int":op SqlExpr:subExpr
						|	{SqlBinaryExpr} "int":op SqlExpr:subExprA SqlExpr:subExprB
						|	{SqlInExpr} SqlExpr:condition SqlExpr*:options
						|	{SqlFieldExpr}
						|	{SqlMethodCallExpr} "String":method SqlExpr*:params
						|	{SqlSelectExpr} SqlSelect:select
						|	{SqlParamExpr} "String":name
						
SqlFieldExpr ::=			{SqlColExpr} "String":table "String":column
						| 	{SqlSetExpr} SqlFieldExpr:field "String":offset
						|	{SqlIndexExpr} SqlFieldExpr:field "int":offset

SqlSelectColumn ::=			{SqlNamedSelectColumn} SqlExpr:expr "String":alias
						|	{SqlAnonymousSelectColumn} SqlExpr:expr
						
SqlSource ::=				{SqlTableSource} "String":source "String":alias
						|	{SqlStmtSource} SqlStmt:source "String":alias
						
SqlJoin ::=					"int":joinType SqlSource:source SqlExpr:on

SqlStmt ::=					{SqlSelect} SqlSelectColumn*:cols SqlSource*:sources SqlJoin*:joins SqlExpr:where
						|	{SqlUnion} "int":type SqlStmt:stmtA SqlStmt:stmtB
						|	{GenMethodCall} "String":name SqlExpr*:params

GenAccessLevel ::=		one of PRIVATE, PUBLIC

GenBlock ::=				{GenStmtDefinition} "int":accLevel "String":name "String"*:params SqlStmt:stmt
						|	{GenEnumDefinition} "String":name "String"*:values
						|	{GenEntityDefinition} "String":name "String":physicalName GenColumnDefinition*:primaryCols GenColumnDefinition*:dataCols

GenDocument ::=				"String":project GenBlock*:blocks		

GenColumnDefinition ::= 	"String":name "String":physicalName GenColumnType:type GenExpr:defaultValue

GenColumnType ::=			{GenNullableColumnType} GenConcreteColumnType:type
						|	{GenNonNullableColumnType} GenConcreteColumnType:type
						|	{GenArrayColumnType} "int":size GenColumnType:innerType
					
GenNumericDataType ::=	one of BYTE, WORD, INT, LONGINT, FLOAT, DOUBLE
GenStringDataType ::=	one of CHAR, VARCHAR, TEXT, LONGTEXT
GenTimestampDataType ::=one of DATE, TIME, DATETIME

GenConcreteColumnType ::=	{GenNumericColumnType} "int":type "int":displayResolution
						|	{GenStringColumnType} "int":type "int":maximalLength
						|	{GenBooleanColumnType}
						|	{GenEnumerationColumnType} "String":enumName
						|	{GenReferenceColumnType} "String":referenceTable
						|	{GenTimestampColumnType} "int":type
						|	{GenIdColumnType}

GenExpr ::=					{GenEnumerationExpr} "String":enumName "String":valueName
						|	{GenNullExpr}
						|	{GenBoolExpr} "boolean":value
						|	{GenIntExpr} "int":value
						|	{GenDoubleExpr} "double":value
						| 	{GenStringExpr} "String":value
						|	{GenAutoExpr}
