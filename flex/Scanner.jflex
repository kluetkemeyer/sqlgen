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
"enum"				{ return symbol(ENUM); }
"table"				{ return symbol(TABLE); }
"primary"			{ return symbol(PRIMARY); }
"data"				{ return symbol(DATA); }
"as"				{ return symbol(AS); }
"int"             	{ return symbol(INT); }
"bool"            	{ return symbol(BOOL); }

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



{white_space}     { /* ignore */ }


/* error fallback */
.|\n              {  /* throw new Error("Illegal character <"+ yytext()+">");*/
		    error("Illegal character <"+ yytext()+">");
                  }
