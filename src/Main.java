// Technische Universitaet Muenchen 
// Fakultaet fuer Informatik 
// Riitta Hoellerer
//
// Praktikum des Uebersetzerbaus
// SS 2001
//
//
// Main.java
//
// Main program for Mima Compiler
// consisting of Lexer, Parser and Visitors
// (generated with JFlex, CUP and classgen)
//  
// JFlex - The Fast Scanner Generator for Java
// home page: 
// http://www.jflex.de/  
//
// CUP - LALR Parser Generator for Java
// home page: 
// http://www.cs.princeton.edu/~appel/modern/java/CUP/
//
//  Classgen Class Generator for Java
//  home page:
//  /usr/proj/uebbau/classgen-1.1/


import java.io.*;

import de.brainiiiii.sqlgen.parser.*;




public class Main {


 /**
   * Runs the parser on an input file.
   *
   *
   * @param argv   the command line, argv[0] is the filename to run
   *               the parser on.
   */
  public static void main(String argv[]) 
    throws java.io.IOException, java.lang.Exception
 {
    Lexer scanner = null;
    try {
      scanner = new Lexer( new java.io.FileReader(argv[0]) );
    }
    catch (java.io.FileNotFoundException e) {
      System.out.println("File not found : \""+argv[0]+"\"");
      System.exit(1);
    }
    catch (java.io.IOException e) {
      System.out.println("Error opening file \""+argv[0]+"\"");
      System.exit(1);
    }
    catch (ArrayIndexOutOfBoundsException e) {
      System.out.println("Usage : java Main <inputfile>");
      System.exit(1);
    }

    try {
      Parser p = new Parser(scanner);
      Object result = p.parse().value;
      System.out.println(result);
    }
    catch (java.io.IOException e) {
      System.out.println("An I/O error occured while parsing : \n"+e);
      System.exit(1);
    }
  }
}




