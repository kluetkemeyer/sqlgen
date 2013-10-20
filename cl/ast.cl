// Classgen file

package de.brainiiiii.sqlgen.tree;

SqlUnaryOperator ::=	one of IS_NULL, NOT, MINUS
SqlBinaryOperator ::=	one of PLUS, MINUS, MULT, DIV, MOD, AND, OR, LT, LE, EQ, GE, GT

SqlExpr ::= 				{SqlConstIntExpr} "Integer":value
						|	{SqlConstStringExpr} "String":value
						|	{SqlConstBoolExpr} "Boolean":value
						|	{SqlConstNullExpr}
						|	{SqlUnaryExpr} "int":op SqlExpr:subExpr
						|	{SqlBinaryExpr} "int":op SqlExpr:subExprA SqlExpr:subExprB
						|	{SqlInExpr} SqlExpr:condition SqlExpr*:options
						|	{SqlColExpr} "String":table "String":column
