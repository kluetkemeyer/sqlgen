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

import node.Constants;
import java_cup.runtime.Symbol;

%%

%class Lexer
%cup
%implements sym, Constants
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

Ident = [a-zA-Z] [a-zA-Z0-9]*

IntLiteral = 0 | [1-9][0-9]*

new_line = \r|\n|\r\n;

white_space = {new_line} | [ \t\f]

%%


/* keywords */
"package"			{ return symbol(PACKAGE); }
"project"			{ return symbol(PROJECT); }
"define"			{ return symbol(DEFINE); }
"type"				{ return symbol(TYPE); }
/*"int"             { return symbol(TYPE, new Integer( INTTYPE ) ); }*/
/*"bool"            { return symbol(TYPE, new Integer( BOOLTYPE ) ); }*/

/* names */
{Ident}           { return symbol(IDENT, yytext()); }
  
/* literals */
/* {IntLiteral} { return symbol(INTCONST, new Integer(Integer.parseInt(yytext()))); } */



/* separators */
";"				  { return symbol(SC); }
"."				  { return symbol(DOT); }



{white_space}     { /* ignore */ }


/* error fallback */
.|\n              {  /* throw new Error("Illegal character <"+ yytext()+">");*/
		    error("Illegal character <"+ yytext()+">");
                  }
