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



Project ::= "String":ident ProjectDekl

ProjectDekl ::= PackageDekl:pckg ProjectDeklBlock*:blocks

PackageDekl ::= "String":ident PackageDekl
			  |  /* empty */
                 
ProjectDeklBlock ::= { EnumDekl } "String":ident String*:options
                   | { TableDekl } "String":ident "String":physicalName ColumnDekl*:primaries ColumnDekl*:cols IndexDekl*:indices
			 

