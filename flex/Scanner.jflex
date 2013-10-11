// Technische Universitaet Muenchen 
// Fakultaet fuer Informatik 
// Riitta Hoellerer
//
// Praktikum des Uebersetzerbaus
// SS 2001
//
// mimalex.flex
// JFlex lexer specification for Mima
//  
// JFlex - The Fast Scanner Generator for Java
//  home page: 
// /usr/proj/uebbau/JFlex/
//
package de.brainiiiii.sqlgen;

import java_cup.runtime.Symbol;

%%

%class Lexer
%public
%cup
%implements sym
%line
%column

%{

  private Symbol symbol(int sym) {
    return new Symbol(sym, yyline+1, yycolumn+1);
  }
  
  private Symbol symbol(int sym, Object val) {
    return new Symbol(sym, yyline+1, yycolumn+1, val);
  }
  
  private void error(String message) {
    System.out.println("Error at line "+(yyline+1)+", column "+(yycolumn+1)+" : "+message);
  }
%} 

Ident = [a-zA-Z_] [a-zA-Z0-9_]*

IntLiteral = 0 | [1-9][0-9]*

new_line = \r|\n|\r\n;

white_space = {new_line} | [ \t\f]

%%


/* keywords */
"package"			{ return symbol(PACKAGE); }
"project"			{ return symbol(PROJECT); }
"define"			{ return symbol(DEFINE); }
"type"				{ return symbol(TYPE); }
"enum"				{ return symbol(ENUM_DEF); }
"table"				{ return symbol(TABLE); }
"primary"			{ return symbol(PRIMARY); }
"data"				{ return symbol(DATA); }
"indices"			{ return symbol(INDICES); }
"AS"				{ return symbol(AS); }
"INDEX"				{ return symbol(INDEX); }
"FULLTEXT"			{ return symbol(FULLTEXT); }
"UNIQUE"			{ return symbol(UNIQUE); }

/* column types */
"NULLABLE"			{ return symbol(NULLABLE); }
"ID"				{ return symbol(ID); }
"INTEGER"          	{ return symbol(INT); }
"BOOLEAN"          	{ return symbol(BOOL); }
"CHAR"          	{ return symbol(CHAR); }
"DOUBLE"          	{ return symbol(DOUBLE); }
"TEXT"          	{ return symbol(TEXT); }
"DATE"          	{ return symbol(DATE); }
"ENUM"          	{ return symbol(ENUM); }
"DATETIME"         	{ return symbol(DATETIME); }
"STRING"			{ return symbol(STRING); }
"REFERENCE"			{ return symbol(REFERENCE); }

/* column values */
"auto"				{ return symbol(AUTO_ID); }
"NULL"				{ return symbol(NULL); }
"TRUE"				{ return symbol(BOOLCONST, new Boolean(true)); }
"FALSE"				{ return symbol(BOOLCONST, new Boolean(false)); }

/* names */
{Ident}           	{ return symbol(IDENT, yytext()); }
  
/* literals */
 {IntLiteral} 		{ return symbol(INTCONST, new Integer(Integer.parseInt(yytext()))); } 



/* separators */
";"				  	{ return symbol(SC); }
"."				  	{ return symbol(DOT); }
","					{ return symbol(COMMA); }
"("				  	{ return symbol(LBRACE); }
")"					{ return symbol(RBRACE); }
"{"					{ return symbol(OPEN); }
"}"					{ return symbol(CLOSE); }
"="					{ return symbol(EQ); }
"["					{ return symbol(OLBRACE); }
"]"					{ return symbol(ORBRACE); }

/* SQL Tokens */
"SELECT"			{ return symbol(SQL_SELECT); }
"FROM"				{ return symbol(SQL_FROM); }
"WHERE"				{ return symbol(SQL_WHERE); }
"ORDER BY"			{ return symbol(SQL_ORDER); }
"LIMIT"				{ return symbol(SQL_LIMIT); }


{white_space}     { /* ignore */ }


/* error fallback */
.|\n              {  /* throw new Error("Illegal character <"+ yytext()+">");*/
		    error("Illegal character <"+ yytext()+">");
                  }
