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
package de.brainiiiii.sqlgen.parser;

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

StringLiteral = \" [^\"]* \"

IntLiteral = 0 | [1-9][0-9]*

new_line = \r|\n|\r\n;

white_space = {new_line} | [ \t\f]

%%

/* Scanner for reserved SQLgen words */
"project" { return symbol(GEN_PROJECT); }
"define" { return symbol(GEN_DEFINE); }
"statement" { return symbol(GEN_STMT); }
"private" { return symbol(GEN_PRIVATE); }
"public" { return symbol(GEN_PUBLIC); }
"enumeration" { return symbol(GEN_ENUMERATION); }
"entity" { return symbol(GEN_ENTITY); }
"primary" { return symbol(GEN_PRIMARY); }
"data" { return symbol(GEN_DATA); }
"BYTE" { return symbol(GEN_BYTE); }
"WORD" { return symbol(GEN_WORD); }
"ID" { return symbol(GEN_ID); }
"REFERENCE" { return symbol(GEN_REFERENCE); }
"AUTO" { return symbol(GEN_AUTO); }

/* Scanner for reserved SQL words */
"A"	{ return symbol(SQL_A); }
"ABORT"	{ return symbol(SQL_ABORT); }
"ABS"	{ return symbol(SQL_ABS); }
"ABSOLUTE"	{ return symbol(SQL_ABSOLUTE); }
"ACCESS"	{ return symbol(SQL_ACCESS); }
"ACTION"	{ return symbol(SQL_ACTION); }
"ADA"	{ return symbol(SQL_ADA); }
"ADD"	{ return symbol(SQL_ADD); }
"ADMIN"	{ return symbol(SQL_ADMIN); }
"AFTER"	{ return symbol(SQL_AFTER); }
"AGGREGATE"	{ return symbol(SQL_AGGREGATE); }
"ALIAS"	{ return symbol(SQL_ALIAS); }
"ALL"	{ return symbol(SQL_ALL); }
"ALLOCATE"	{ return symbol(SQL_ALLOCATE); }
"ALSO"	{ return symbol(SQL_ALSO); }
"ALTER"	{ return symbol(SQL_ALTER); }
"ALWAYS"	{ return symbol(SQL_ALWAYS); }
"ANALYSE"	{ return symbol(SQL_ANALYSE); }
"ANALYZE"	{ return symbol(SQL_ANALYZE); }
"AND"	{ return symbol(SQL_AND); }
"ANY"	{ return symbol(SQL_ANY); }
"ARE"	{ return symbol(SQL_ARE); }
"ARRAY"	{ return symbol(SQL_ARRAY); }
"AS"	{ return symbol(SQL_AS); }
"ASC"	{ return symbol(SQL_ASC); }
"ASENSITIVE"	{ return symbol(SQL_ASENSITIVE); }
"ASSERTION"	{ return symbol(SQL_ASSERTION); }
"ASSIGNMENT"	{ return symbol(SQL_ASSIGNMENT); }
"ASYMMETRIC"	{ return symbol(SQL_ASYMMETRIC); }
"AT"	{ return symbol(SQL_AT); }
"ATOMIC"	{ return symbol(SQL_ATOMIC); }
"ATTRIBUTE"	{ return symbol(SQL_ATTRIBUTE); }
"ATTRIBUTES"	{ return symbol(SQL_ATTRIBUTES); }
"AUDIT"	{ return symbol(SQL_AUDIT); }
"AUTHORIZATION"	{ return symbol(SQL_AUTHORIZATION); }
"AUTO_INCREMENT"	{ return symbol(SQL_AUTO_INCREMENT); }
"AVG"	{ return symbol(SQL_AVG); }
"AVG_ROW_LENGTH"	{ return symbol(SQL_AVG_ROW_LENGTH); }
"BACKUP"	{ return symbol(SQL_BACKUP); }
"BACKWARD"	{ return symbol(SQL_BACKWARD); }
"BEFORE"	{ return symbol(SQL_BEFORE); }
"BEGIN"	{ return symbol(SQL_BEGIN); }
"BERNOULLI"	{ return symbol(SQL_BERNOULLI); }
"BETWEEN"	{ return symbol(SQL_BETWEEN); }
"BIGINT"	{ return symbol(SQL_BIGINT); }
"BINARY"	{ return symbol(SQL_BINARY); }
"BIT"	{ return symbol(SQL_BIT); }
"BIT_LENGTH"	{ return symbol(SQL_BIT_LENGTH); }
"BITVAR"	{ return symbol(SQL_BITVAR); }
"BLOB"	{ return symbol(SQL_BLOB); }
"BOOL"	{ return symbol(SQL_BOOL); }
"BOOLEAN"	{ return symbol(SQL_BOOLEAN); }
"BOTH"	{ return symbol(SQL_BOTH); }
"BREADTH"	{ return symbol(SQL_BREADTH); }
"BREAK"	{ return symbol(SQL_BREAK); }
"BROWSE"	{ return symbol(SQL_BROWSE); }
"BULK"	{ return symbol(SQL_BULK); }
"BY"	{ return symbol(SQL_BY); }
"C"	{ return symbol(SQL_C); }
"CACHE"	{ return symbol(SQL_CACHE); }
"CALL"	{ return symbol(SQL_CALL); }
"CALLED"	{ return symbol(SQL_CALLED); }
"CARDINALITY"	{ return symbol(SQL_CARDINALITY); }
"CASCADE"	{ return symbol(SQL_CASCADE); }
"CASCADED"	{ return symbol(SQL_CASCADED); }
"CASE"	{ return symbol(SQL_CASE); }
"CAST"	{ return symbol(SQL_CAST); }
"CATALOG"	{ return symbol(SQL_CATALOG); }
"CATALOG_NAME"	{ return symbol(SQL_CATALOG_NAME); }
"CEIL"	{ return symbol(SQL_CEIL); }
"CEILING"	{ return symbol(SQL_CEILING); }
"CHAIN"	{ return symbol(SQL_CHAIN); }
"CHANGE"	{ return symbol(SQL_CHANGE); }
"CHAR"	{ return symbol(SQL_CHAR); }
"CHAR_LENGTH"	{ return symbol(SQL_CHAR_LENGTH); }
"CHARACTER"	{ return symbol(SQL_CHARACTER); }
"CHARACTER_LENGTH"	{ return symbol(SQL_CHARACTER_LENGTH); }
"CHARACTER_SET_CATALOG"	{ return symbol(SQL_CHARACTER_SET_CATALOG); }
"CHARACTER_SET_NAME"	{ return symbol(SQL_CHARACTER_SET_NAME); }
"CHARACTER_SET_SCHEMA"	{ return symbol(SQL_CHARACTER_SET_SCHEMA); }
"CHARACTERISTICS"	{ return symbol(SQL_CHARACTERISTICS); }
"CHARACTERS"	{ return symbol(SQL_CHARACTERS); }
"CHECK"	{ return symbol(SQL_CHECK); }
"CHECKED"	{ return symbol(SQL_CHECKED); }
"CHECKPOINT"	{ return symbol(SQL_CHECKPOINT); }
"CHECKSUM"	{ return symbol(SQL_CHECKSUM); }
"CLASS"	{ return symbol(SQL_CLASS); }
"CLASS_ORIGIN"	{ return symbol(SQL_CLASS_ORIGIN); }
"CLOB"	{ return symbol(SQL_CLOB); }
"CLOSE"	{ return symbol(SQL_CLOSE); }
"CLUSTER"	{ return symbol(SQL_CLUSTER); }
"CLUSTERED"	{ return symbol(SQL_CLUSTERED); }
"COALESCE"	{ return symbol(SQL_COALESCE); }
"COBOL"	{ return symbol(SQL_COBOL); }
"COLLATE"	{ return symbol(SQL_COLLATE); }
"COLLATION"	{ return symbol(SQL_COLLATION); }
"COLLATION_CATALOG"	{ return symbol(SQL_COLLATION_CATALOG); }
"COLLATION_NAME"	{ return symbol(SQL_COLLATION_NAME); }
"COLLATION_SCHEMA"	{ return symbol(SQL_COLLATION_SCHEMA); }
"COLLECT"	{ return symbol(SQL_COLLECT); }
"COLUMN"	{ return symbol(SQL_COLUMN); }
"COLUMN_NAME"	{ return symbol(SQL_COLUMN_NAME); }
"COLUMNS"	{ return symbol(SQL_COLUMNS); }
"COMMAND_FUNCTION"	{ return symbol(SQL_COMMAND_FUNCTION); }
"COMMAND_FUNCTION_CODE"	{ return symbol(SQL_COMMAND_FUNCTION_CODE); }
"COMMENT"	{ return symbol(SQL_COMMENT); }
"COMMIT"	{ return symbol(SQL_COMMIT); }
"COMMITTED"	{ return symbol(SQL_COMMITTED); }
"COMPLETION"	{ return symbol(SQL_COMPLETION); }
"COMPRESS"	{ return symbol(SQL_COMPRESS); }
"COMPUTE"	{ return symbol(SQL_COMPUTE); }
"CONDITION"	{ return symbol(SQL_CONDITION); }
"CONDITION_NUMBER"	{ return symbol(SQL_CONDITION_NUMBER); }
"CONNECT"	{ return symbol(SQL_CONNECT); }
"CONNECTION"	{ return symbol(SQL_CONNECTION); }
"CONNECTION_NAME"	{ return symbol(SQL_CONNECTION_NAME); }
"CONSTRAINT"	{ return symbol(SQL_CONSTRAINT); }
"CONSTRAINT_CATALOG"	{ return symbol(SQL_CONSTRAINT_CATALOG); }
"CONSTRAINT_NAME"	{ return symbol(SQL_CONSTRAINT_NAME); }
"CONSTRAINT_SCHEMA"	{ return symbol(SQL_CONSTRAINT_SCHEMA); }
"CONSTRAINTS"	{ return symbol(SQL_CONSTRAINTS); }
"CONSTRUCTOR"	{ return symbol(SQL_CONSTRUCTOR); }
"CONTAINS"	{ return symbol(SQL_CONTAINS); }
"CONTAINSTABLE"	{ return symbol(SQL_CONTAINSTABLE); }
"CONTINUE"	{ return symbol(SQL_CONTINUE); }
"CONVERSION"	{ return symbol(SQL_CONVERSION); }
"CONVERT"	{ return symbol(SQL_CONVERT); }
"COPY"	{ return symbol(SQL_COPY); }
"CORR"	{ return symbol(SQL_CORR); }
"CORRESPONDING"	{ return symbol(SQL_CORRESPONDING); }
"COUNT"	{ return symbol(SQL_COUNT); }
"COVAR_POP"	{ return symbol(SQL_COVAR_POP); }
"COVAR_SAMP"	{ return symbol(SQL_COVAR_SAMP); }
"CREATE"	{ return symbol(SQL_CREATE); }
"CREATEDB"	{ return symbol(SQL_CREATEDB); }
"CREATEROLE"	{ return symbol(SQL_CREATEROLE); }
"CREATEUSER"	{ return symbol(SQL_CREATEUSER); }
"CROSS"	{ return symbol(SQL_CROSS); }
"CSV"	{ return symbol(SQL_CSV); }
"CUBE"	{ return symbol(SQL_CUBE); }
"CUME_DIST"	{ return symbol(SQL_CUME_DIST); }
"CURRENT"	{ return symbol(SQL_CURRENT); }
"CURRENT_DATE"	{ return symbol(SQL_CURRENT_DATE); }
"CURRENT_DEFAULT_TRANSFORM_GROUP"	{ return symbol(SQL_CURRENT_DEFAULT_TRANSFORM_GROUP); }
"CURRENT_PATH"	{ return symbol(SQL_CURRENT_PATH); }
"CURRENT_ROLE"	{ return symbol(SQL_CURRENT_ROLE); }
"CURRENT_TIME"	{ return symbol(SQL_CURRENT_TIME); }
"CURRENT_TIMESTAMP"	{ return symbol(SQL_CURRENT_TIMESTAMP); }
"CURRENT_TRANSFORM_GROUP_FOR_TYPE"	{ return symbol(SQL_CURRENT_TRANSFORM_GROUP_FOR_TYPE); }
"CURRENT_USER"	{ return symbol(SQL_CURRENT_USER); }
"CURSOR"	{ return symbol(SQL_CURSOR); }
"CURSOR_NAME"	{ return symbol(SQL_CURSOR_NAME); }
"CYCLE"	{ return symbol(SQL_CYCLE); }
"DATA"	{ return symbol(SQL_DATA); }
"DATABASE"	{ return symbol(SQL_DATABASE); }
"DATABASES"	{ return symbol(SQL_DATABASES); }
"DATE"	{ return symbol(SQL_DATE); }
"DATETIME"	{ return symbol(SQL_DATETIME); }
"DATETIME_INTERVAL_CODE"	{ return symbol(SQL_DATETIME_INTERVAL_CODE); }
"DATETIME_INTERVAL_PRECISION"	{ return symbol(SQL_DATETIME_INTERVAL_PRECISION); }
"DAY"	{ return symbol(SQL_DAY); }
"DAY_HOUR"	{ return symbol(SQL_DAY_HOUR); }
"DAY_MICROSECOND"	{ return symbol(SQL_DAY_MICROSECOND); }
"DAY_MINUTE"	{ return symbol(SQL_DAY_MINUTE); }
"DAY_SECOND"	{ return symbol(SQL_DAY_SECOND); }
"DAYOFMONTH"	{ return symbol(SQL_DAYOFMONTH); }
"DAYOFWEEK"	{ return symbol(SQL_DAYOFWEEK); }
"DAYOFYEAR"	{ return symbol(SQL_DAYOFYEAR); }
"DBCC"	{ return symbol(SQL_DBCC); }
"DEALLOCATE"	{ return symbol(SQL_DEALLOCATE); }
"DEC"	{ return symbol(SQL_DEC); }
"DECIMAL"	{ return symbol(SQL_DECIMAL); }
"DECLARE"	{ return symbol(SQL_DECLARE); }
"DEFAULT"	{ return symbol(SQL_DEFAULT); }
"DEFAULTS"	{ return symbol(SQL_DEFAULTS); }
"DEFERRABLE"	{ return symbol(SQL_DEFERRABLE); }
"DEFERRED"	{ return symbol(SQL_DEFERRED); }
"DEFINED"	{ return symbol(SQL_DEFINED); }
"DEFINER"	{ return symbol(SQL_DEFINER); }
"DEGREE"	{ return symbol(SQL_DEGREE); }
"DELAY_KEY_WRITE"	{ return symbol(SQL_DELAY_KEY_WRITE); }
"DELAYED"	{ return symbol(SQL_DELAYED); }
"DELETE"	{ return symbol(SQL_DELETE); }
"DELIMITER"	{ return symbol(SQL_DELIMITER); }
"DELIMITERS"	{ return symbol(SQL_DELIMITERS); }
"DENSE_RANK"	{ return symbol(SQL_DENSE_RANK); }
"DENY"	{ return symbol(SQL_DENY); }
"DEPTH"	{ return symbol(SQL_DEPTH); }
"DEREF"	{ return symbol(SQL_DEREF); }
"DERIVED"	{ return symbol(SQL_DERIVED); }
"DESC"	{ return symbol(SQL_DESC); }
"DESCRIBE"	{ return symbol(SQL_DESCRIBE); }
"DESCRIPTOR"	{ return symbol(SQL_DESCRIPTOR); }
"DESTROY"	{ return symbol(SQL_DESTROY); }
"DESTRUCTOR"	{ return symbol(SQL_DESTRUCTOR); }
"DETERMINISTIC"	{ return symbol(SQL_DETERMINISTIC); }
"DIAGNOSTICS"	{ return symbol(SQL_DIAGNOSTICS); }
"DICTIONARY"	{ return symbol(SQL_DICTIONARY); }
"DISABLE"	{ return symbol(SQL_DISABLE); }
"DISCONNECT"	{ return symbol(SQL_DISCONNECT); }
"DISK"	{ return symbol(SQL_DISK); }
"DISPATCH"	{ return symbol(SQL_DISPATCH); }
"DISTINCT"	{ return symbol(SQL_DISTINCT); }
"DISTINCTROW"	{ return symbol(SQL_DISTINCTROW); }
"DISTRIBUTED"	{ return symbol(SQL_DISTRIBUTED); }
"DIV"	{ return symbol(SQL_DIV); }
"DO"	{ return symbol(SQL_DO); }
"DOMAIN"	{ return symbol(SQL_DOMAIN); }
"DOUBLE"	{ return symbol(SQL_DOUBLE); }
"DROP"	{ return symbol(SQL_DROP); }
"DUAL"	{ return symbol(SQL_DUAL); }
"DUMMY"	{ return symbol(SQL_DUMMY); }
"DUMP"	{ return symbol(SQL_DUMP); }
"DYNAMIC"	{ return symbol(SQL_DYNAMIC); }
"DYNAMIC_FUNCTION"	{ return symbol(SQL_DYNAMIC_FUNCTION); }
"DYNAMIC_FUNCTION_CODE"	{ return symbol(SQL_DYNAMIC_FUNCTION_CODE); }
"EACH"	{ return symbol(SQL_EACH); }
"ELEMENT"	{ return symbol(SQL_ELEMENT); }
"ELSE"	{ return symbol(SQL_ELSE); }
"ELSEIF"	{ return symbol(SQL_ELSEIF); }
"ENABLE"	{ return symbol(SQL_ENABLE); }
"ENCLOSED"	{ return symbol(SQL_ENCLOSED); }
"ENCODING"	{ return symbol(SQL_ENCODING); }
"ENCRYPTED"	{ return symbol(SQL_ENCRYPTED); }
"END"	{ return symbol(SQL_END); }
"END-EXEC"	{ return symbol(SQL_END_EXEC); }
"ENUM"	{ return symbol(SQL_ENUM); }
"EQUALS"	{ return symbol(SQL_EQUALS); }
"ERRLVL"	{ return symbol(SQL_ERRLVL); }
"ESCAPE"	{ return symbol(SQL_ESCAPE); }
"ESCAPED"	{ return symbol(SQL_ESCAPED); }
"EVERY"	{ return symbol(SQL_EVERY); }
"EXCEPT"	{ return symbol(SQL_EXCEPT); }
"EXCEPTION"	{ return symbol(SQL_EXCEPTION); }
"EXCLUDE"	{ return symbol(SQL_EXCLUDE); }
"EXCLUDING"	{ return symbol(SQL_EXCLUDING); }
"EXCLUSIVE"	{ return symbol(SQL_EXCLUSIVE); }
"EXEC"	{ return symbol(SQL_EXEC); }
"EXECUTE"	{ return symbol(SQL_EXECUTE); }
"EXISTING"	{ return symbol(SQL_EXISTING); }
"EXISTS"	{ return symbol(SQL_EXISTS); }
"EXIT"	{ return symbol(SQL_EXIT); }
"EXP"	{ return symbol(SQL_EXP); }
"EXPLAIN"	{ return symbol(SQL_EXPLAIN); }
"EXTERNAL"	{ return symbol(SQL_EXTERNAL); }
"EXTRACT"	{ return symbol(SQL_EXTRACT); }
"FETCH"	{ return symbol(SQL_FETCH); }
"FIELDS"	{ return symbol(SQL_FIELDS); }
"FILE"	{ return symbol(SQL_FILE); }
"FILLFACTOR"	{ return symbol(SQL_FILLFACTOR); }
"FILTER"	{ return symbol(SQL_FILTER); }
"FINAL"	{ return symbol(SQL_FINAL); }
"FIRST"	{ return symbol(SQL_FIRST); }
"FLOAT"	{ return symbol(SQL_FLOAT); }
"FLOAT4"	{ return symbol(SQL_FLOAT4); }
"FLOAT8"	{ return symbol(SQL_FLOAT8); }
"FLOOR"	{ return symbol(SQL_FLOOR); }
"FLUSH"	{ return symbol(SQL_FLUSH); }
"FOLLOWING"	{ return symbol(SQL_FOLLOWING); }
"FOR"	{ return symbol(SQL_FOR); }
"FORCE"	{ return symbol(SQL_FORCE); }
"FOREIGN"	{ return symbol(SQL_FOREIGN); }
"FORTRAN"	{ return symbol(SQL_FORTRAN); }
"FORWARD"	{ return symbol(SQL_FORWARD); }
"FOUND"	{ return symbol(SQL_FOUND); }
"FREE"	{ return symbol(SQL_FREE); }
"FREETEXT"	{ return symbol(SQL_FREETEXT); }
"FREETEXTTABLE"	{ return symbol(SQL_FREETEXTTABLE); }
"FREEZE"	{ return symbol(SQL_FREEZE); }
"FROM"	{ return symbol(SQL_FROM); }
"FULL"	{ return symbol(SQL_FULL); }
"FULLTEXT"	{ return symbol(SQL_FULLTEXT); }
"FUNCTION"	{ return symbol(SQL_FUNCTION); }
"FUSION"	{ return symbol(SQL_FUSION); }
"G"	{ return symbol(SQL_G); }
"GENERAL"	{ return symbol(SQL_GENERAL); }
"GENERATED"	{ return symbol(SQL_GENERATED); }
"GET"	{ return symbol(SQL_GET); }
"GLOBAL"	{ return symbol(SQL_GLOBAL); }
"GO"	{ return symbol(SQL_GO); }
"GOTO"	{ return symbol(SQL_GOTO); }
"GRANT"	{ return symbol(SQL_GRANT); }
"GRANTED"	{ return symbol(SQL_GRANTED); }
"GRANTS"	{ return symbol(SQL_GRANTS); }
"GREATEST"	{ return symbol(SQL_GREATEST); }
"GROUP"	{ return symbol(SQL_GROUP); }
"GROUPING"	{ return symbol(SQL_GROUPING); }
"HANDLER"	{ return symbol(SQL_HANDLER); }
"HAVING"	{ return symbol(SQL_HAVING); }
"HEADER"	{ return symbol(SQL_HEADER); }
"HEAP"	{ return symbol(SQL_HEAP); }
"HIERARCHY"	{ return symbol(SQL_HIERARCHY); }
"HIGH_PRIORITY"	{ return symbol(SQL_HIGH_PRIORITY); }
"HOLD"	{ return symbol(SQL_HOLD); }
"HOLDLOCK"	{ return symbol(SQL_HOLDLOCK); }
"HOST"	{ return symbol(SQL_HOST); }
"HOSTS"	{ return symbol(SQL_HOSTS); }
"HOUR"	{ return symbol(SQL_HOUR); }
"HOUR_MICROSECOND"	{ return symbol(SQL_HOUR_MICROSECOND); }
"HOUR_MINUTE"	{ return symbol(SQL_HOUR_MINUTE); }
"HOUR_SECOND"	{ return symbol(SQL_HOUR_SECOND); }
"IDENTIFIED"	{ return symbol(SQL_IDENTIFIED); }
"IDENTITY"	{ return symbol(SQL_IDENTITY); }
"IDENTITY_INSERT"	{ return symbol(SQL_IDENTITY_INSERT); }
"IDENTITYCOL"	{ return symbol(SQL_IDENTITYCOL); }
"IF"	{ return symbol(SQL_IF); }
"IGNORE"	{ return symbol(SQL_IGNORE); }
"ILIKE"	{ return symbol(SQL_ILIKE); }
"IMMEDIATE"	{ return symbol(SQL_IMMEDIATE); }
"IMMUTABLE"	{ return symbol(SQL_IMMUTABLE); }
"IMPLEMENTATION"	{ return symbol(SQL_IMPLEMENTATION); }
"IMPLICIT"	{ return symbol(SQL_IMPLICIT); }
"IN"	{ return symbol(SQL_IN); }
"INCLUDE"	{ return symbol(SQL_INCLUDE); }
"INCLUDING"	{ return symbol(SQL_INCLUDING); }
"INCREMENT"	{ return symbol(SQL_INCREMENT); }
"INDEX"	{ return symbol(SQL_INDEX); }
"INDICATOR"	{ return symbol(SQL_INDICATOR); }
"INFILE"	{ return symbol(SQL_INFILE); }
"INFIX"	{ return symbol(SQL_INFIX); }
"INHERIT"	{ return symbol(SQL_INHERIT); }
"INHERITS"	{ return symbol(SQL_INHERITS); }
"INITIAL"	{ return symbol(SQL_INITIAL); }
"INITIALIZE"	{ return symbol(SQL_INITIALIZE); }
"INITIALLY"	{ return symbol(SQL_INITIALLY); }
"INNER"	{ return symbol(SQL_INNER); }
"INOUT"	{ return symbol(SQL_INOUT); }
"INPUT"	{ return symbol(SQL_INPUT); }
"INSENSITIVE"	{ return symbol(SQL_INSENSITIVE); }
"INSERT"	{ return symbol(SQL_INSERT); }
"INSERT_ID"	{ return symbol(SQL_INSERT_ID); }
"INSTANCE"	{ return symbol(SQL_INSTANCE); }
"INSTANTIABLE"	{ return symbol(SQL_INSTANTIABLE); }
"INSTEAD"	{ return symbol(SQL_INSTEAD); }
"INT"	{ return symbol(SQL_INT); }
"INT1"	{ return symbol(SQL_INT1); }
"INT2"	{ return symbol(SQL_INT2); }
"INT3"	{ return symbol(SQL_INT3); }
"INT4"	{ return symbol(SQL_INT4); }
"INT8"	{ return symbol(SQL_INT8); }
"INTEGER"	{ return symbol(SQL_INTEGER); }
"INTERSECT"	{ return symbol(SQL_INTERSECT); }
"INTERSECTION"	{ return symbol(SQL_INTERSECTION); }
"INTERVAL"	{ return symbol(SQL_INTERVAL); }
"INTO"	{ return symbol(SQL_INTO); }
"INVOKER"	{ return symbol(SQL_INVOKER); }
"IS"	{ return symbol(SQL_IS); }
"ISAM"	{ return symbol(SQL_ISAM); }
"ISNULL"	{ return symbol(SQL_ISNULL); }
"ISOLATION"	{ return symbol(SQL_ISOLATION); }
"ITERATE"	{ return symbol(SQL_ITERATE); }
"JOIN"	{ return symbol(SQL_JOIN); }
"K"	{ return symbol(SQL_K); }
"KEY"	{ return symbol(SQL_KEY); }
"KEY_MEMBER"	{ return symbol(SQL_KEY_MEMBER); }
"KEY_TYPE"	{ return symbol(SQL_KEY_TYPE); }
"KEYS"	{ return symbol(SQL_KEYS); }
"KILL"	{ return symbol(SQL_KILL); }
"LANCOMPILER"	{ return symbol(SQL_LANCOMPILER); }
"LANGUAGE"	{ return symbol(SQL_LANGUAGE); }
"LARGE"	{ return symbol(SQL_LARGE); }
"LAST"	{ return symbol(SQL_LAST); }
"LAST_INSERT_ID"	{ return symbol(SQL_LAST_INSERT_ID); }
"LATERAL"	{ return symbol(SQL_LATERAL); }
"LEADING"	{ return symbol(SQL_LEADING); }
"LEAST"	{ return symbol(SQL_LEAST); }
"LEAVE"	{ return symbol(SQL_LEAVE); }
"LEFT"	{ return symbol(SQL_LEFT); }
"LENGTH"	{ return symbol(SQL_LENGTH); }
"LESS"	{ return symbol(SQL_LESS); }
"LEVEL"	{ return symbol(SQL_LEVEL); }
"LIKE"	{ return symbol(SQL_LIKE); }
"LIMIT"	{ return symbol(SQL_LIMIT); }
"LINENO"	{ return symbol(SQL_LINENO); }
"LINES"	{ return symbol(SQL_LINES); }
"LISTEN"	{ return symbol(SQL_LISTEN); }
"LN"	{ return symbol(SQL_LN); }
"LOAD"	{ return symbol(SQL_LOAD); }
"LOCAL"	{ return symbol(SQL_LOCAL); }
"LOCALTIME"	{ return symbol(SQL_LOCALTIME); }
"LOCALTIMESTAMP"	{ return symbol(SQL_LOCALTIMESTAMP); }
"LOCATION"	{ return symbol(SQL_LOCATION); }
"LOCATOR"	{ return symbol(SQL_LOCATOR); }
"LOCK"	{ return symbol(SQL_LOCK); }
"LOGIN"	{ return symbol(SQL_LOGIN); }
"LOGS"	{ return symbol(SQL_LOGS); }
"LONG"	{ return symbol(SQL_LONG); }
"LONGBLOB"	{ return symbol(SQL_LONGBLOB); }
"LONGTEXT"	{ return symbol(SQL_LONGTEXT); }
"LOOP"	{ return symbol(SQL_LOOP); }
"LOW_PRIORITY"	{ return symbol(SQL_LOW_PRIORITY); }
"LOWER"	{ return symbol(SQL_LOWER); }
"M"	{ return symbol(SQL_M); }
"MAP"	{ return symbol(SQL_MAP); }
"MATCH"	{ return symbol(SQL_MATCH); }
"MATCHED"	{ return symbol(SQL_MATCHED); }
"MAX"	{ return symbol(SQL_MAX); }
"MAX_ROWS"	{ return symbol(SQL_MAX_ROWS); }
"MAXEXTENTS"	{ return symbol(SQL_MAXEXTENTS); }
"MAXVALUE"	{ return symbol(SQL_MAXVALUE); }
"MEDIUMBLOB"	{ return symbol(SQL_MEDIUMBLOB); }
"MEDIUMINT"	{ return symbol(SQL_MEDIUMINT); }
"MEDIUMTEXT"	{ return symbol(SQL_MEDIUMTEXT); }
"MEMBER"	{ return symbol(SQL_MEMBER); }
"MERGE"	{ return symbol(SQL_MERGE); }
"MESSAGE_LENGTH"	{ return symbol(SQL_MESSAGE_LENGTH); }
"MESSAGE_OCTET_LENGTH"	{ return symbol(SQL_MESSAGE_OCTET_LENGTH); }
"MESSAGE_TEXT"	{ return symbol(SQL_MESSAGE_TEXT); }
"METHOD"	{ return symbol(SQL_METHOD); }
"MIDDLEINT"	{ return symbol(SQL_MIDDLEINT); }
"MIN"	{ return symbol(SQL_MIN); }
"MIN_ROWS"	{ return symbol(SQL_MIN_ROWS); }
"MINUS"	{ return symbol(SQL_MINUS); }
"MINUTE"	{ return symbol(SQL_MINUTE); }
"MINUTE_MICROSECOND"	{ return symbol(SQL_MINUTE_MICROSECOND); }
"MINUTE_SECOND"	{ return symbol(SQL_MINUTE_SECOND); }
"MINVALUE"	{ return symbol(SQL_MINVALUE); }
"MLSLABEL"	{ return symbol(SQL_MLSLABEL); }
"MOD"	{ return symbol(SQL_MOD); }
"MODE"	{ return symbol(SQL_MODE); }
"MODIFIES"	{ return symbol(SQL_MODIFIES); }
"MODIFY"	{ return symbol(SQL_MODIFY); }
"MODULE"	{ return symbol(SQL_MODULE); }
"MONTH"	{ return symbol(SQL_MONTH); }
"MONTHNAME"	{ return symbol(SQL_MONTHNAME); }
"MORE"	{ return symbol(SQL_MORE); }
"MOVE"	{ return symbol(SQL_MOVE); }
"MULTISET"	{ return symbol(SQL_MULTISET); }
"MUMPS"	{ return symbol(SQL_MUMPS); }
"MYISAM"	{ return symbol(SQL_MYISAM); }
"NAME"	{ return symbol(SQL_NAME); }
"NAMES"	{ return symbol(SQL_NAMES); }
"NATIONAL"	{ return symbol(SQL_NATIONAL); }
"NATURAL"	{ return symbol(SQL_NATURAL); }
"NCHAR"	{ return symbol(SQL_NCHAR); }
"NCLOB"	{ return symbol(SQL_NCLOB); }
"NESTING"	{ return symbol(SQL_NESTING); }
"NEW"	{ return symbol(SQL_NEW); }
"NEXT"	{ return symbol(SQL_NEXT); }
"NO"	{ return symbol(SQL_NO); }
"NO_WRITE_TO_BINLOG"	{ return symbol(SQL_NO_WRITE_TO_BINLOG); }
"NOAUDIT"	{ return symbol(SQL_NOAUDIT); }
"NOCHECK"	{ return symbol(SQL_NOCHECK); }
"NOCOMPRESS"	{ return symbol(SQL_NOCOMPRESS); }
"NOCREATEDB"	{ return symbol(SQL_NOCREATEDB); }
"NOCREATEROLE"	{ return symbol(SQL_NOCREATEROLE); }
"NOCREATEUSER"	{ return symbol(SQL_NOCREATEUSER); }
"NOINHERIT"	{ return symbol(SQL_NOINHERIT); }
"NOLOGIN"	{ return symbol(SQL_NOLOGIN); }
"NONCLUSTERED"	{ return symbol(SQL_NONCLUSTERED); }
"NONE"	{ return symbol(SQL_NONE); }
"NORMALIZE"	{ return symbol(SQL_NORMALIZE); }
"NORMALIZED"	{ return symbol(SQL_NORMALIZED); }
"NOSUPERUSER"	{ return symbol(SQL_NOSUPERUSER); }
"NOT"	{ return symbol(SQL_NOT); }
"NOTHING"	{ return symbol(SQL_NOTHING); }
"NOTIFY"	{ return symbol(SQL_NOTIFY); }
"NOTNULL"	{ return symbol(SQL_NOTNULL); }
"NOWAIT"	{ return symbol(SQL_NOWAIT); }
"NULL"	{ return symbol(SQL_NULL); }
"NULLABLE"	{ return symbol(SQL_NULLABLE); }
"NULLIF"	{ return symbol(SQL_NULLIF); }
"NULLS"	{ return symbol(SQL_NULLS); }
"NUMBER"	{ return symbol(SQL_NUMBER); }
"NUMERIC"	{ return symbol(SQL_NUMERIC); }
"OBJECT"	{ return symbol(SQL_OBJECT); }
"OCTET_LENGTH"	{ return symbol(SQL_OCTET_LENGTH); }
"OCTETS"	{ return symbol(SQL_OCTETS); }
"OF"	{ return symbol(SQL_OF); }
"OFF"	{ return symbol(SQL_OFF); }
"OFFLINE"	{ return symbol(SQL_OFFLINE); }
"OFFSET"	{ return symbol(SQL_OFFSET); }
"OFFSETS"	{ return symbol(SQL_OFFSETS); }
"OIDS"	{ return symbol(SQL_OIDS); }
"OLD"	{ return symbol(SQL_OLD); }
"ON"	{ return symbol(SQL_ON); }
"ONLINE"	{ return symbol(SQL_ONLINE); }
"ONLY"	{ return symbol(SQL_ONLY); }
"OPEN"	{ return symbol(SQL_OPEN); }
"OPENDATASOURCE"	{ return symbol(SQL_OPENDATASOURCE); }
"OPENQUERY"	{ return symbol(SQL_OPENQUERY); }
"OPENROWSET"	{ return symbol(SQL_OPENROWSET); }
"OPENXML"	{ return symbol(SQL_OPENXML); }
"OPERATION"	{ return symbol(SQL_OPERATION); }
"OPERATOR"	{ return symbol(SQL_OPERATOR); }
"OPTIMIZE"	{ return symbol(SQL_OPTIMIZE); }
"OPTION"	{ return symbol(SQL_OPTION); }
"OPTIONALLY"	{ return symbol(SQL_OPTIONALLY); }
"OPTIONS"	{ return symbol(SQL_OPTIONS); }
"OR"	{ return symbol(SQL_OR); }
"ORDER"	{ return symbol(SQL_ORDER); }
"ORDERING"	{ return symbol(SQL_ORDERING); }
"ORDINALITY"	{ return symbol(SQL_ORDINALITY); }
"OTHERS"	{ return symbol(SQL_OTHERS); }
"OUT"	{ return symbol(SQL_OUT); }
"OUTER"	{ return symbol(SQL_OUTER); }
"OUTFILE"	{ return symbol(SQL_OUTFILE); }
"OUTPUT"	{ return symbol(SQL_OUTPUT); }
"OVER"	{ return symbol(SQL_OVER); }
"OVERLAPS"	{ return symbol(SQL_OVERLAPS); }
"OVERLAY"	{ return symbol(SQL_OVERLAY); }
"OVERRIDING"	{ return symbol(SQL_OVERRIDING); }
"OWNER"	{ return symbol(SQL_OWNER); }
"PACK_KEYS"	{ return symbol(SQL_PACK_KEYS); }
"PAD"	{ return symbol(SQL_PAD); }
"PARAMETER"	{ return symbol(SQL_PARAMETER); }
"PARAMETER_MODE"	{ return symbol(SQL_PARAMETER_MODE); }
"PARAMETER_NAME"	{ return symbol(SQL_PARAMETER_NAME); }
"PARAMETER_ORDINAL_POSITION"	{ return symbol(SQL_PARAMETER_ORDINAL_POSITION); }
"PARAMETER_SPECIFIC_CATALOG"	{ return symbol(SQL_PARAMETER_SPECIFIC_CATALOG); }
"PARAMETER_SPECIFIC_NAME"	{ return symbol(SQL_PARAMETER_SPECIFIC_NAME); }
"PARAMETER_SPECIFIC_SCHEMA"	{ return symbol(SQL_PARAMETER_SPECIFIC_SCHEMA); }
"PARAMETERS"	{ return symbol(SQL_PARAMETERS); }
"PARTIAL"	{ return symbol(SQL_PARTIAL); }
"PARTITION"	{ return symbol(SQL_PARTITION); }
"PASCAL"	{ return symbol(SQL_PASCAL); }
"PASSWORD"	{ return symbol(SQL_PASSWORD); }
"PATH"	{ return symbol(SQL_PATH); }
"PCTFREE"	{ return symbol(SQL_PCTFREE); }
"PERCENT"	{ return symbol(SQL_PERCENT); }
"PERCENT_RANK"	{ return symbol(SQL_PERCENT_RANK); }
"PERCENTILE_CONT"	{ return symbol(SQL_PERCENTILE_CONT); }
"PERCENTILE_DISC"	{ return symbol(SQL_PERCENTILE_DISC); }
"PLACING"	{ return symbol(SQL_PLACING); }
"PLAN"	{ return symbol(SQL_PLAN); }
"PLI"	{ return symbol(SQL_PLI); }
"POSITION"	{ return symbol(SQL_POSITION); }
"POSTFIX"	{ return symbol(SQL_POSTFIX); }
"POWER"	{ return symbol(SQL_POWER); }
"PRECEDING"	{ return symbol(SQL_PRECEDING); }
"PRECISION"	{ return symbol(SQL_PRECISION); }
"PREFIX"	{ return symbol(SQL_PREFIX); }
"PREORDER"	{ return symbol(SQL_PREORDER); }
"PREPARE"	{ return symbol(SQL_PREPARE); }
"PREPARED"	{ return symbol(SQL_PREPARED); }
"PRESERVE"	{ return symbol(SQL_PRESERVE); }
"PRIMARY"	{ return symbol(SQL_PRIMARY); }
"PRINT"	{ return symbol(SQL_PRINT); }
"PRIOR"	{ return symbol(SQL_PRIOR); }
"PRIVILEGES"	{ return symbol(SQL_PRIVILEGES); }
"PROC"	{ return symbol(SQL_PROC); }
"PROCEDURAL"	{ return symbol(SQL_PROCEDURAL); }
"PROCEDURE"	{ return symbol(SQL_PROCEDURE); }
"PROCESS"	{ return symbol(SQL_PROCESS); }
"PROCESSLIST"	{ return symbol(SQL_PROCESSLIST); }
"PUBLIC"	{ return symbol(SQL_PUBLIC); }
"PURGE"	{ return symbol(SQL_PURGE); }
"QUOTE"	{ return symbol(SQL_QUOTE); }
"RAID0"	{ return symbol(SQL_RAID0); }
"RAISERROR"	{ return symbol(SQL_RAISERROR); }
"RANGE"	{ return symbol(SQL_RANGE); }
"RANK"	{ return symbol(SQL_RANK); }
"RAW"	{ return symbol(SQL_RAW); }
"READ"	{ return symbol(SQL_READ); }
"READS"	{ return symbol(SQL_READS); }
"READTEXT"	{ return symbol(SQL_READTEXT); }
"REAL"	{ return symbol(SQL_REAL); }
"RECHECK"	{ return symbol(SQL_RECHECK); }
"RECONFIGURE"	{ return symbol(SQL_RECONFIGURE); }
"RECURSIVE"	{ return symbol(SQL_RECURSIVE); }
"REF"	{ return symbol(SQL_REF); }
"REFERENCES"	{ return symbol(SQL_REFERENCES); }
"REFERENCING"	{ return symbol(SQL_REFERENCING); }
"REGEXP"	{ return symbol(SQL_REGEXP); }
"REGR_AVGX"	{ return symbol(SQL_REGR_AVGX); }
"REGR_AVGY"	{ return symbol(SQL_REGR_AVGY); }
"REGR_COUNT"	{ return symbol(SQL_REGR_COUNT); }
"REGR_INTERCEPT"	{ return symbol(SQL_REGR_INTERCEPT); }
"REGR_R2"	{ return symbol(SQL_REGR_R2); }
"REGR_SLOPE"	{ return symbol(SQL_REGR_SLOPE); }
"REGR_SXX"	{ return symbol(SQL_REGR_SXX); }
"REGR_SXY"	{ return symbol(SQL_REGR_SXY); }
"REGR_SYY"	{ return symbol(SQL_REGR_SYY); }
"REINDEX"	{ return symbol(SQL_REINDEX); }
"RELATIVE"	{ return symbol(SQL_RELATIVE); }
"RELEASE"	{ return symbol(SQL_RELEASE); }
"RELOAD"	{ return symbol(SQL_RELOAD); }
"RENAME"	{ return symbol(SQL_RENAME); }
"REPEAT"	{ return symbol(SQL_REPEAT); }
"REPEATABLE"	{ return symbol(SQL_REPEATABLE); }
"REPLACE"	{ return symbol(SQL_REPLACE); }
"REPLICATION"	{ return symbol(SQL_REPLICATION); }
"REQUIRE"	{ return symbol(SQL_REQUIRE); }
"RESET"	{ return symbol(SQL_RESET); }
"RESIGNAL"	{ return symbol(SQL_RESIGNAL); }
"RESOURCE"	{ return symbol(SQL_RESOURCE); }
"RESTART"	{ return symbol(SQL_RESTART); }
"RESTORE"	{ return symbol(SQL_RESTORE); }
"RESTRICT"	{ return symbol(SQL_RESTRICT); }
"RESULT"	{ return symbol(SQL_RESULT); }
"RETURN"	{ return symbol(SQL_RETURN); }
"RETURNED_CARDINALITY"	{ return symbol(SQL_RETURNED_CARDINALITY); }
"RETURNED_LENGTH"	{ return symbol(SQL_RETURNED_LENGTH); }
"RETURNED_OCTET_LENGTH"	{ return symbol(SQL_RETURNED_OCTET_LENGTH); }
"RETURNED_SQLSTATE"	{ return symbol(SQL_RETURNED_SQLSTATE); }
"RETURNS"	{ return symbol(SQL_RETURNS); }
"REVOKE"	{ return symbol(SQL_REVOKE); }
"RIGHT"	{ return symbol(SQL_RIGHT); }
"RLIKE"	{ return symbol(SQL_RLIKE); }
"ROLE"	{ return symbol(SQL_ROLE); }
"ROLLBACK"	{ return symbol(SQL_ROLLBACK); }
"ROLLUP"	{ return symbol(SQL_ROLLUP); }
"ROUTINE"	{ return symbol(SQL_ROUTINE); }
"ROUTINE_CATALOG"	{ return symbol(SQL_ROUTINE_CATALOG); }
"ROUTINE_NAME"	{ return symbol(SQL_ROUTINE_NAME); }
"ROUTINE_SCHEMA"	{ return symbol(SQL_ROUTINE_SCHEMA); }
"ROW"	{ return symbol(SQL_ROW); }
"ROW_COUNT"	{ return symbol(SQL_ROW_COUNT); }
"ROW_NUMBER"	{ return symbol(SQL_ROW_NUMBER); }
"ROWCOUNT"	{ return symbol(SQL_ROWCOUNT); }
"ROWGUIDCOL"	{ return symbol(SQL_ROWGUIDCOL); }
"ROWID"	{ return symbol(SQL_ROWID); }
"ROWNUM"	{ return symbol(SQL_ROWNUM); }
"ROWS"	{ return symbol(SQL_ROWS); }
"RULE"	{ return symbol(SQL_RULE); }
"SAVE"	{ return symbol(SQL_SAVE); }
"SAVEPOINT"	{ return symbol(SQL_SAVEPOINT); }
"SCALE"	{ return symbol(SQL_SCALE); }
"SCHEMA"	{ return symbol(SQL_SCHEMA); }
"SCHEMA_NAME"	{ return symbol(SQL_SCHEMA_NAME); }
"SCHEMAS"	{ return symbol(SQL_SCHEMAS); }
"SCOPE"	{ return symbol(SQL_SCOPE); }
"SCOPE_CATALOG"	{ return symbol(SQL_SCOPE_CATALOG); }
"SCOPE_NAME"	{ return symbol(SQL_SCOPE_NAME); }
"SCOPE_SCHEMA"	{ return symbol(SQL_SCOPE_SCHEMA); }
"SCROLL"	{ return symbol(SQL_SCROLL); }
"SEARCH"	{ return symbol(SQL_SEARCH); }
"SECOND"	{ return symbol(SQL_SECOND); }
"SECOND_MICROSECOND"	{ return symbol(SQL_SECOND_MICROSECOND); }
"SECTION"	{ return symbol(SQL_SECTION); }
"SECURITY"	{ return symbol(SQL_SECURITY); }
"SELECT"	{ return symbol(SQL_SELECT); }
"SELF"	{ return symbol(SQL_SELF); }
"SENSITIVE"	{ return symbol(SQL_SENSITIVE); }
"SEPARATOR"	{ return symbol(SQL_SEPARATOR); }
"SEQUENCE"	{ return symbol(SQL_SEQUENCE); }
"SERIALIZABLE"	{ return symbol(SQL_SERIALIZABLE); }
"SERVER_NAME"	{ return symbol(SQL_SERVER_NAME); }
"SESSION"	{ return symbol(SQL_SESSION); }
"SESSION_USER"	{ return symbol(SQL_SESSION_USER); }
"SET"	{ return symbol(SQL_SET); }
"SETOF"	{ return symbol(SQL_SETOF); }
"SETS"	{ return symbol(SQL_SETS); }
"SETUSER"	{ return symbol(SQL_SETUSER); }
"SHARE"	{ return symbol(SQL_SHARE); }
"SHOW"	{ return symbol(SQL_SHOW); }
"SHUTDOWN"	{ return symbol(SQL_SHUTDOWN); }
"SIGNAL"	{ return symbol(SQL_SIGNAL); }
"SIMILAR"	{ return symbol(SQL_SIMILAR); }
"SIMPLE"	{ return symbol(SQL_SIMPLE); }
"SIZE"	{ return symbol(SQL_SIZE); }
"SMALLINT"	{ return symbol(SQL_SMALLINT); }
"SOME"	{ return symbol(SQL_SOME); }
"SONAME"	{ return symbol(SQL_SONAME); }
"SOURCE"	{ return symbol(SQL_SOURCE); }
"SPACE"	{ return symbol(SQL_SPACE); }
"SPATIAL"	{ return symbol(SQL_SPATIAL); }
"SPECIFIC"	{ return symbol(SQL_SPECIFIC); }
"SPECIFIC_NAME"	{ return symbol(SQL_SPECIFIC_NAME); }
"SPECIFICTYPE"	{ return symbol(SQL_SPECIFICTYPE); }
"SQL"	{ return symbol(SQL_SQL); }
"SQL_BIG_RESULT"	{ return symbol(SQL_SQL_BIG_RESULT); }
"SQL_BIG_SELECTS"	{ return symbol(SQL_SQL_BIG_SELECTS); }
"SQL_BIG_TABLES"	{ return symbol(SQL_SQL_BIG_TABLES); }
"SQL_CALC_FOUND_ROWS"	{ return symbol(SQL_SQL_CALC_FOUND_ROWS); }
"SQL_LOG_OFF"	{ return symbol(SQL_SQL_LOG_OFF); }
"SQL_LOG_UPDATE"	{ return symbol(SQL_SQL_LOG_UPDATE); }
"SQL_LOW_PRIORITY_UPDATES"	{ return symbol(SQL_SQL_LOW_PRIORITY_UPDATES); }
"SQL_SELECT_LIMIT"	{ return symbol(SQL_SQL_SELECT_LIMIT); }
"SQL_SMALL_RESULT"	{ return symbol(SQL_SQL_SMALL_RESULT); }
"SQL_WARNINGS"	{ return symbol(SQL_SQL_WARNINGS); }
"SQLCA"	{ return symbol(SQL_SQLCA); }
"SQLCODE"	{ return symbol(SQL_SQLCODE); }
"SQLERROR"	{ return symbol(SQL_SQLERROR); }
"SQLEXCEPTION"	{ return symbol(SQL_SQLEXCEPTION); }
"SQLSTATE"	{ return symbol(SQL_SQLSTATE); }
"SQLWARNING"	{ return symbol(SQL_SQLWARNING); }
"SQRT"	{ return symbol(SQL_SQRT); }
"SSL"	{ return symbol(SQL_SSL); }
"STABLE"	{ return symbol(SQL_STABLE); }
"START"	{ return symbol(SQL_START); }
"STARTING"	{ return symbol(SQL_STARTING); }
"STATE"	{ return symbol(SQL_STATE); }
"STATEMENT"	{ return symbol(SQL_STATEMENT); }
"STATIC"	{ return symbol(SQL_STATIC); }
"STATISTICS"	{ return symbol(SQL_STATISTICS); }
"STATUS"	{ return symbol(SQL_STATUS); }
"STDDEV_POP"	{ return symbol(SQL_STDDEV_POP); }
"STDDEV_SAMP"	{ return symbol(SQL_STDDEV_SAMP); }
"STDIN"	{ return symbol(SQL_STDIN); }
"STDOUT"	{ return symbol(SQL_STDOUT); }
"STORAGE"	{ return symbol(SQL_STORAGE); }
"STRAIGHT_JOIN"	{ return symbol(SQL_STRAIGHT_JOIN); }
"STRICT"	{ return symbol(SQL_STRICT); }
"STRING"	{ return symbol(SQL_STRING); }
"STRUCTURE"	{ return symbol(SQL_STRUCTURE); }
"STYLE"	{ return symbol(SQL_STYLE); }
"SUBCLASS_ORIGIN"	{ return symbol(SQL_SUBCLASS_ORIGIN); }
"SUBLIST"	{ return symbol(SQL_SUBLIST); }
"SUBMULTISET"	{ return symbol(SQL_SUBMULTISET); }
"SUBSTRING"	{ return symbol(SQL_SUBSTRING); }
"SUCCESSFUL"	{ return symbol(SQL_SUCCESSFUL); }
"SUM"	{ return symbol(SQL_SUM); }
"SUPERUSER"	{ return symbol(SQL_SUPERUSER); }
"SYMMETRIC"	{ return symbol(SQL_SYMMETRIC); }
"SYNONYM"	{ return symbol(SQL_SYNONYM); }
"SYSDATE"	{ return symbol(SQL_SYSDATE); }
"SYSID"	{ return symbol(SQL_SYSID); }
"SYSTEM"	{ return symbol(SQL_SYSTEM); }
"SYSTEM_USER"	{ return symbol(SQL_SYSTEM_USER); }
"TABLE"	{ return symbol(SQL_TABLE); }
"TABLE_NAME"	{ return symbol(SQL_TABLE_NAME); }
"TABLES"	{ return symbol(SQL_TABLES); }
"TABLESAMPLE"	{ return symbol(SQL_TABLESAMPLE); }
"TABLESPACE"	{ return symbol(SQL_TABLESPACE); }
"TEMP"	{ return symbol(SQL_TEMP); }
"TEMPLATE"	{ return symbol(SQL_TEMPLATE); }
"TEMPORARY"	{ return symbol(SQL_TEMPORARY); }
"TERMINATE"	{ return symbol(SQL_TERMINATE); }
"TERMINATED"	{ return symbol(SQL_TERMINATED); }
"TEXT"	{ return symbol(SQL_TEXT); }
"TEXTSIZE"	{ return symbol(SQL_TEXTSIZE); }
"THAN"	{ return symbol(SQL_THAN); }
"THEN"	{ return symbol(SQL_THEN); }
"TIES"	{ return symbol(SQL_TIES); }
"TIME"	{ return symbol(SQL_TIME); }
"TIMESTAMP"	{ return symbol(SQL_TIMESTAMP); }
"TIMEZONE_HOUR"	{ return symbol(SQL_TIMEZONE_HOUR); }
"TIMEZONE_MINUTE"	{ return symbol(SQL_TIMEZONE_MINUTE); }
"TINYBLOB"	{ return symbol(SQL_TINYBLOB); }
"TINYINT"	{ return symbol(SQL_TINYINT); }
"TINYTEXT"	{ return symbol(SQL_TINYTEXT); }
"TO"	{ return symbol(SQL_TO); }
"TOAST"	{ return symbol(SQL_TOAST); }
"TOP"	{ return symbol(SQL_TOP); }
"TOP_LEVEL_COUNT"	{ return symbol(SQL_TOP_LEVEL_COUNT); }
"TRAILING"	{ return symbol(SQL_TRAILING); }
"TRAN"	{ return symbol(SQL_TRAN); }
"TRANSACTION"	{ return symbol(SQL_TRANSACTION); }
"TRANSACTION_ACTIVE"	{ return symbol(SQL_TRANSACTION_ACTIVE); }
"TRANSACTIONS_COMMITTED"	{ return symbol(SQL_TRANSACTIONS_COMMITTED); }
"TRANSACTIONS_ROLLED_BACK"	{ return symbol(SQL_TRANSACTIONS_ROLLED_BACK); }
"TRANSFORM"	{ return symbol(SQL_TRANSFORM); }
"TRANSFORMS"	{ return symbol(SQL_TRANSFORMS); }
"TRANSLATE"	{ return symbol(SQL_TRANSLATE); }
"TRANSLATION"	{ return symbol(SQL_TRANSLATION); }
"TREAT"	{ return symbol(SQL_TREAT); }
"TRIGGER"	{ return symbol(SQL_TRIGGER); }
"TRIGGER_CATALOG"	{ return symbol(SQL_TRIGGER_CATALOG); }
"TRIGGER_NAME"	{ return symbol(SQL_TRIGGER_NAME); }
"TRIGGER_SCHEMA"	{ return symbol(SQL_TRIGGER_SCHEMA); }
"TRIM"	{ return symbol(SQL_TRIM); }
"TRUNCATE"	{ return symbol(SQL_TRUNCATE); }
"TRUSTED"	{ return symbol(SQL_TRUSTED); }
"TSEQUAL"	{ return symbol(SQL_TSEQUAL); }
"TYPE"	{ return symbol(SQL_TYPE); }
"UESCAPE"	{ return symbol(SQL_UESCAPE); }
"UID"	{ return symbol(SQL_UID); }
"UNBOUNDED"	{ return symbol(SQL_UNBOUNDED); }
"UNCOMMITTED"	{ return symbol(SQL_UNCOMMITTED); }
"UNDER"	{ return symbol(SQL_UNDER); }
"UNDO"	{ return symbol(SQL_UNDO); }
"UNENCRYPTED"	{ return symbol(SQL_UNENCRYPTED); }
"UNION"	{ return symbol(SQL_UNION); }
"UNIQUE"	{ return symbol(SQL_UNIQUE); }
"UNKNOWN"	{ return symbol(SQL_UNKNOWN); }
"UNLISTEN"	{ return symbol(SQL_UNLISTEN); }
"UNLOCK"	{ return symbol(SQL_UNLOCK); }
"UNNAMED"	{ return symbol(SQL_UNNAMED); }
"UNNEST"	{ return symbol(SQL_UNNEST); }
"UNSIGNED"	{ return symbol(SQL_UNSIGNED); }
"UNTIL"	{ return symbol(SQL_UNTIL); }
"UPDATE"	{ return symbol(SQL_UPDATE); }
"UPDATETEXT"	{ return symbol(SQL_UPDATETEXT); }
"UPPER"	{ return symbol(SQL_UPPER); }
"USAGE"	{ return symbol(SQL_USAGE); }
"USE"	{ return symbol(SQL_USE); }
"USER"	{ return symbol(SQL_USER); }
"USER_DEFINED_TYPE_CATALOG"	{ return symbol(SQL_USER_DEFINED_TYPE_CATALOG); }
"USER_DEFINED_TYPE_CODE"	{ return symbol(SQL_USER_DEFINED_TYPE_CODE); }
"USER_DEFINED_TYPE_NAME"	{ return symbol(SQL_USER_DEFINED_TYPE_NAME); }
"USER_DEFINED_TYPE_SCHEMA"	{ return symbol(SQL_USER_DEFINED_TYPE_SCHEMA); }
"USING"	{ return symbol(SQL_USING); }
"UTC_DATE"	{ return symbol(SQL_UTC_DATE); }
"UTC_TIME"	{ return symbol(SQL_UTC_TIME); }
"UTC_TIMESTAMP"	{ return symbol(SQL_UTC_TIMESTAMP); }
"VACUUM"	{ return symbol(SQL_VACUUM); }
"VALID"	{ return symbol(SQL_VALID); }
"VALIDATE"	{ return symbol(SQL_VALIDATE); }
"VALIDATOR"	{ return symbol(SQL_VALIDATOR); }
"VALUE"	{ return symbol(SQL_VALUE); }
"VALUES"	{ return symbol(SQL_VALUES); }
"VAR_POP"	{ return symbol(SQL_VAR_POP); }
"VAR_SAMP"	{ return symbol(SQL_VAR_SAMP); }
"VARBINARY"	{ return symbol(SQL_VARBINARY); }
"VARCHAR"	{ return symbol(SQL_VARCHAR); }
"VARCHAR2"	{ return symbol(SQL_VARCHAR2); }
"VARCHARACTER"	{ return symbol(SQL_VARCHARACTER); }
"VARIABLE"	{ return symbol(SQL_VARIABLE); }
"VARIABLES"	{ return symbol(SQL_VARIABLES); }
"VARYING"	{ return symbol(SQL_VARYING); }
"VERBOSE"	{ return symbol(SQL_VERBOSE); }
"VIEW"	{ return symbol(SQL_VIEW); }
"VOLATILE"	{ return symbol(SQL_VOLATILE); }
"WAITFOR"	{ return symbol(SQL_WAITFOR); }
"WHEN"	{ return symbol(SQL_WHEN); }
"WHENEVER"	{ return symbol(SQL_WHENEVER); }
"WHERE"	{ return symbol(SQL_WHERE); }
"WHILE"	{ return symbol(SQL_WHILE); }
"WIDTH_BUCKET"	{ return symbol(SQL_WIDTH_BUCKET); }
"WINDOW"	{ return symbol(SQL_WINDOW); }
"WITH"	{ return symbol(SQL_WITH); }
"WITHIN"	{ return symbol(SQL_WITHIN); }
"WITHOUT"	{ return symbol(SQL_WITHOUT); }
"WORK"	{ return symbol(SQL_WORK); }
"WRITE"	{ return symbol(SQL_WRITE); }
"WRITETEXT"	{ return symbol(SQL_WRITETEXT); }
"X509"	{ return symbol(SQL_X509); }
"XOR"	{ return symbol(SQL_XOR); }
"YEAR"	{ return symbol(SQL_YEAR); }
"YEAR_MONTH"	{ return symbol(SQL_YEAR_MONTH); }
"ZEROFILL"	{ return symbol(SQL_ZEROFILL); }
"ZONE"	{ return symbol(SQL_ZONE); }




  
/* literals */
{IntLiteral} 		{ return symbol(CONST_INT, new Integer(Integer.parseInt(yytext()))); } 
{StringLiteral}		{ return symbol(CONST_STRING, yytext().substring(1, yytext().length()-1)); }
"TRUE"				{ return symbol(CONST_BOOL, true); }
"FALSE"				{ return symbol(CONST_BOOL, false); }


/* names */
{Ident}           	{ return symbol(IDENT, yytext()); }


/* separators */
";"				  	{ return symbol(S_SEMICOLON); }
"."				  	{ return symbol(S_DOT); }
","					{ return symbol(S_COMMA); }
":"					{ return symbol(S_COLON); }
"("				  	{ return symbol(S_LBRACE); }
")"					{ return symbol(S_RBRACE); }
"{"					{ return symbol(S_OPEN); }
"}"					{ return symbol(S_CLOSE); }
">="				{ return symbol(S_GE); }
">"					{ return symbol(S_GT); }
"<="				{ return symbol(S_LE); }
"<"					{ return symbol(S_LT); }
"="					{ return symbol(S_EQ); }
"+"					{ return symbol(S_PLUS); }
"-"					{ return symbol(S_MINUS); }
"*"					{ return symbol(S_MULT); }
"/"					{ return symbol(S_DIV); }
"["					{ return symbol(S_OLBRACE); }
"]"					{ return symbol(S_ORBRACE); }


{white_space}     { /* ignore */ }


/* error fallback */
.|\n              {  /* throw new Error("Illegal character <"+ yytext()+">");*/
		    error("Illegal character <"+ yytext()+">");
                  }
