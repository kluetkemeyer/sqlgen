// Technische Universitaet Muenchen 
// Fakultaet fuer Informatik 
// Riitta Hoellerer
//
// Praktikum des Uebersetzerbaus
// SS 2001
//
//  mimaAST.cl 
//  Classgen Abctract Syntax Tree Specification for Mima 
//
//  home page:
//  /usr/proj/uebbau/classgen-1.1/
//


package de.brainiiiii.sqlgen;



Project ::= "String":ident PackageDekl:pckg ProjectDeklBlock*:blocks

PackageDekl ::= "String":ident PackageDekl
		|  /* empty */
                 
ProjectDeklBlock ::= { EnumDekl } "String":ident "String"*:options
		| { TableDekl } "String":ident "String":physicalName ColumnDekl*:primaries ColumnDekl*:cols IndexDekl*:indices
			 
ColumnDekl ::= { SingleColumnDekl } "String":ident "String":phyicalName ColumnDeklType:type DefaultValue:defaultValue
		| { ArrayColumnDekl } "String":ident "int":arrayLength "String":phyicalName ColumnDeklType:type DefaultValue:defaultValue

DefaultValue ::= { DefaultAuto }
		| { DefaultConstNull }
		| { DefaultConstInt } "int":value
		| { DefaultConstString } "String":value
		| { DefaultConstBool } "boolean":value

IndexDekl ::= "boolean":isFulltext "boolean":isUnique String*:columns 

ColumnDeklType ::= { NullableColumnDekl } NonNullableColumnDekl:subType
		| { NonNullableColumnDekl }
		
NonNullableColumnDekl ::= { IDType }
		| { StringType } "int":maxLength
		| { IntType }
		| { BooleanType }
		| { CharType }
		| { DoubleType }
		| { TextType }
		| { DateType }
		| { DateTimeType }
		| { TimeType }
		| { EnumType } "String":enumName
		| { TableReferenceType } "String":tableName
		| { ColumnReferenceType } "String":tableName "String":columnName
