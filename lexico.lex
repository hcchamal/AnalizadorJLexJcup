import java.lang.System;
import java_cup.runtime.Symbol;

class lexico {
      public static void main(String argv[])
	throws java.io.IOException {
	Yylex yy = new Yylex(System.in);
	while (yy.yylex() != null) {}	
    }
}

class Yytoken {
  Yytoken () {}
}
 
%%

%cup
%full
%ignorecase

%eofval{
	return new Symbol (sym.EOF, new String ("Fin del archivo"));
%eofval}

%line    
%char  

IDENTIFICADOR = [a-z|A-Z][a-z|A-Z|0-9|_]*
DIGITO = [0-9][0-9]*(.?[0-9]*)
ESPACIOS = [ \t\r\n]
COMENTARIO = #[a-z|A-Z|0-9| ]*


%%
 

<YYINITIAL> {ESPACIOS} 	{/*IGNORE*/} 
<YYINITIAL> {DIGITO} 	{ System.out.println ("DIGITO = [0-9][0-9]*(.?[0-9]*), LEXEMA:" + yytext() ); return new Symbol (sym.DIGITO, yychar, yyline, yytext());}
<YYINITIAL> "set" 		{ System.out.println ("SET = SET, LEXEMA:" + yytext() ); return new Symbol (sym.SET, yychar, yyline, yytext())} 
<YYINITIAL> "puts" 		{ System.out.println ("PUTS = PUTS, LEXEMA:" + yytext() ); return new Symbol (sym.PUTS, yychar, yyline, yytext())} 
<YYINITIAL> "expr" 		{ System.out.println ("EXPR = EXPR, LEXEMA:" + yytext() ); return new Symbol (sym.EXPR, yychar, yyline, yytext())} 
<YYINITIAL> "if" 		{ System.out.println ("IF = IF, LEXEMA:" + yytext() ); return new Symbol (sym.IF, yychar, yyline, yytext())} 
<YYINITIAL> "then" 		{ System.out.println ("THEN = THEN, LEXEMA:" + yytext() ); return new Symbol (sym.THEN, yychar, yyline, yytext())} 
<YYINITIAL> "elseif" 		{ System.out.println ("ELSEIF = ELSEIF, LEXEMA:" + yytext() ); return new Symbol (sym.ELSEIF, yychar, yyline, yytext())} 
<YYINITIAL> "else" 		{ System.out.println ("ELSE = ELSE, LEXEMA:" + yytext() ); return new Symbol (sym.ELSE, yychar, yyline, yytext())} 
<YYINITIAL> "switch" 		{ System.out.println ("SWITCH = SWITCH, LEXEMA:" + yytext() ); return new Symbol (sym.SWITCH, yychar, yyline, yytext())} 
<YYINITIAL> "default" 		{ System.out.println ("DEFAULT = DEFAULT, LEXEMA:" + yytext() ); return new Symbol (sym.DEFAULT, yychar, yyline, yytext())} 
<YYINITIAL> "while" 		{ System.out.println ("WHILE = WHILE, LEXEMA:" + yytext() ); return new Symbol (sym.WHILE, yychar, yyline, yytext())} 
<YYINITIAL> "continue" 		{ System.out.println ("CONTINUE = CONTINUE, LEXEMA:" + yytext() ); return new Symbol (sym.CONTINUE, yychar, yyline, yytext())} 
<YYINITIAL> "for" 		{ System.out.println ("FOR = FOR, LEXEMA:" + yytext() ); return new Symbol (sym.FOR, yychar, yyline, yytext())} 
<YYINITIAL> "proc" 		{ System.out.println ("PROC = PROC, LEXEMA:" + yytext() ); return new Symbol (sym.PROC, yychar, yyline, yytext())} 
<YYINITIAL> "return" 		{ System.out.println ("RETURN = RETURN, LEXEMA:" + yytext() ); return new Symbol (sym.RETURN, yychar, yyline, yytext())} 
<YYINITIAL> "incr" 		{ System.out.println ("INCR = INCR, LEXEMA:" + yytext() ); return new Symbol (sym.INCR, yychar, yyline, yytext())} 
<YYINITIAL> "$" 		{ System.out.println ("Sigo de dolar = $, LEXEMA:" + yytext() ); return new Symbol (sym.DOLAR, yychar, yyline, yytext())} 
<YYINITIAL> "\"" 		{ System.out.println ("COMILLAS = \", LEXEMA:" + yytext() ); return new Symbol (sym.COMILLAS, yychar, yyline, yytext())} 
<YYINITIAL> "[\\]" 		{ System.out.println ("DIAGONAL INVERSA = \\, LEXEMA:" + yytext() ); return new Symbol (sym.DIAGONALINV, yychar, yyline, yytext())} 
<YYINITIAL> "{" 		{ System.out.println ("APERTURA DE LLAVE = {, LEXEMA:" + yytext() ); return new Symbol (sym.LLAVEAP, yychar, yyline, yytext())} 
<YYINITIAL> "}" 		{ System.out.println ("CERRADURA DE LLAVE = }, LEXEMA:" + yytext() ); return new Symbol (sym.LLAVECL, yychar, yyline, yytext())} 
<YYINITIAL> "[" 		{ System.out.println ("APERTURA DE CORCHETE = [, LEXEMA:" + yytext() ); return new Symbol (sym.CORCHETEAP, yychar, yyline, yytext())} 
<YYINITIAL> "]" 		{ System.out.println ("CERRADURA DE CORCHETE = ], LEXEMA:" + yytext() ); return new Symbol (sym.CORCHETECL, yychar, yyline, yytext())} 
<YYINITIAL> "+" 		{ System.out.println ("SIGNO MAS = +, LEXEMA:" + yytext() ); return new Symbol (sym.SIGNMAS, yychar, yyline, yytext())} 
<YYINITIAL> "-" 		{ System.out.println ("SIGNO MENOS = -, LEXEMA:" + yytext() ); return new Symbol (sym.SIGNMEN, yychar, yyline, yytext())} 
<YYINITIAL> "*" 		{ System.out.println ("ASTERISCO = *, LEXEMA:" + yytext() ); return new Symbol (sym.ASTERISCO, yychar, yyline, yytext())} 
<YYINITIAL> "/" 		{ System.out.println ("DIAGONAL = /, LEXEMA:" + yytext() ); return new Symbol (sym.DIAGONAL, yychar, yyline, yytext())} 
<YYINITIAL> "%" 		{ System.out.println ("PORCENTAJE = %, LEXEMA:" + yytext() ); return new Symbol (sym.PORCENTAJE, yychar, yyline, yytext())} 
<YYINITIAL> "<" 		{ System.out.println ("MENOR QUE = <, LEXEMA:" + yytext() ); return new Symbol (sym.MENORQUE, yychar, yyline, yytext())} 
<YYINITIAL> ">" 		{ System.out.println ("MAYOR QUE = >, LEXEMA:" + yytext() ); return new Symbol (sym.MAYORQUE, yychar, yyline, yytext())} 
<YYINITIAL> "=" 		{ System.out.println ("IGUAL = =, LEXEMA:" + yytext() ); return new Symbol (sym.IGUAL, yychar, yyline, yytext())} 
<YYINITIAL> "eq" 		{ System.out.println ("EQUALS = eq, LEXEMA:" + yytext() ); return new Symbol (sym.EQUALS, yychar, yyline, yytext())} 
<YYINITIAL> "ne" 		{ System.out.println ("NOT EQUALS = ne, LEXEMA:" + yytext() ); return new Symbol (sym.NOEQUALS, yychar, yyline, yytext())} 
<YYINITIAL> "in" 		{ System.out.println ("EQUALS IN LIST = in, LEXEMA:" + yytext() ); return new Symbol (sym.NOEQLIST, yychar, yyline, yytext())} 
<YYINITIAL> "ni" 		{ System.out.println ("NOT EQUALS IN LIST = ni, LEXEMA:" + yytext() ); return new Symbol (sym.EQLIST, yychar, yyline, yytext())} 
<YYINITIAL> "&&" 		{ System.out.println ("AND = &&, LEXEMA:" + yytext() ); return new Symbol (sym.AND, yychar, yyline, yytext())} 
<YYINITIAL> "||" 		{ System.out.println ("OR = ||, LEXEMA:" + yytext() ); return new Symbol (sym.OR, yychar, yyline, yytext())} 
<YYINITIAL> "!" 		{ System.out.println ("NEGACION = !, LEXEMA:" + yytext() ); return new Symbol (sym.NEGACION, yychar, yyline, yytext())} 
<YYINITIAL> {COMENTARIO} 		{ System.out.println ("COMENTARIO = #[a-z|A-Z][a-z|A-Z|0-9|_]*, LEXEMA:" + yytext() );} 
<YYINITIAL> {IDENTIFICADOR} 	{ System.out.println ("IDENTIFICADOR = [a-z|A-Z][a-z|A-Z|0-9|_]*, LEXEMA:" + yytext() ); return new Symbol (sym.IDENTIFICADOR, yychar, yyline, yytext())} 


.
  { 
    System.out.println("error lexico en "  + yyline + "," + yychar + " No se reconoce " + yytext());
    yychar=0;
  }