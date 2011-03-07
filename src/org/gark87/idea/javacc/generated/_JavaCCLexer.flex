/* Generated By:JJTree(jj2IntelliJ output version)&JavaCC(jj2IntelliJ output version): Do not edit this line. _JavaCCLexer.flex */
/**
 * It's an automatically generated code. Do not modify it.
 * ATTENTION! It was generated by JFlex patched by the JetBrains guys.
 *
 *   # git clone git://git.jetbrains.org/idea/community.git $IDEADIR
 *   # $IDEADIR/tools/lexer/jflex-1.4/bin/jflex --skel $IDEADIR/tools/lexer/idea-flex.skeleton \
 *        --charat --jlex -d . _JavaCCLexer.flex
 *
 */
package org.gark87.idea.javacc.generated;
import com.intellij.lexer.FlexLexer;
import com.intellij.psi.tree.IElementType;

%%

%{
  public void goTo(int offset) {
    zzCurrentPos = zzMarkedPos = zzStartRead = offset;
    zzPushbackPos = 0;
    zzAtEOF = offset < zzEndRead;
  }

  public IElementType advance() throws java.io.IOException {
    IElementType result = internalAdvance();
    int start = zzStartRead;
    while(result != null && (result == JavaCCConstants.MORE || result == JavaCCConstants.SKIP)) {
      result = internalAdvance();
      if (result == JavaCCConstants.SKIP)
        start = zzStartRead;
    }
    zzStartRead = start;
    return result;
  }
%}
%unicode
%class _JavaCCLexer
%implements FlexLexer
%function internalAdvance
%type IElementType
%eof{  return;
%eof}

%state IN_SINGLE_LINE_COMMENT
%state IN_FORMAL_COMMENT
%state IN_MULTI_LINE_COMMENT

_OPTIONS="options"
_LOOKAHEAD="LOOKAHEAD"
_IGNORE_CASE="IGNORE\u005fCASE"
_PARSER_BEGIN="PARSER\u005fBEGIN"
_PARSER_END="PARSER\u005fEND"
_JAVACODE="JAVACODE"
_TOKEN="TOKEN"
_SPECIAL_TOKEN="SPECIAL\u005fTOKEN"
_MORE="MORE"
_SKIP="SKIP"
_TOKEN_MGR_DECLS="TOKEN\u005fMGR\u005fDECLS"
_EOF="EOF"
ABSTRACT="abstract"
BOOLEAN="boolean"
BREAK="break"
BYTE="byte"
CASE="case"
CATCH="catch"
CHAR="char"
CLASS="class"
CONST="const"
CONTINUE="continue"
_DEFAULT="default"
DO="do"
DOUBLE="double"
ELSE="else"
EXTENDS="extends"
FALSE="false"
FINAL="final"
FINALLY="finally"
FLOAT="float"
FOR="for"
GOTO="goto"
IF="if"
IMPLEMENTS="implements"
IMPORT="import"
INSTANCEOF="instanceof"
INT="int"
INTERFACE="interface"
LONG="long"
NATIVE="native"
NEW="new"
NULL="null"
PACKAGE="package"
PRIVATE="private"
PROTECTED="protected"
PUBLIC="public"
RETURN="return"
SHORT="short"
STATIC="static"
SUPER="super"
SWITCH="switch"
SYNCHRONIZED="synchronized"
THIS="this"
THROW="throw"
THROWS="throws"
TRANSIENT="transient"
TRUE="true"
TRY="try"
VOID="void"
VOLATILE="volatile"
WHILE="while"
INTEGER_LITERAL=(({DECIMAL_LITERAL}([lL])?)|({HEX_LITERAL}([lL])?)|({OCTAL_LITERAL}([lL])?))
DECIMAL_LITERAL=[1-9]([0-9])*
HEX_LITERAL="0"[xX]([0-9a-fA-F])+
OCTAL_LITERAL="0"([0-7])*
FLOATING_POINT_LITERAL=((([0-9])+"\u002e"([0-9])*({EXPONENT})?([fFdD])?)|("\u002e"([0-9])+({EXPONENT})?([fFdD])?)|(([0-9])+{EXPONENT}([fFdD])?)|(([0-9])+({EXPONENT})?[fFdD]))
EXPONENT=[eE]([\u002b\u002d])?([0-9])+
CHARACTER_LITERAL="\u0027"(([^\u0027\u005c\u000a\u000d])|("\u005c"(([ntbrf\u005c\u0027\u0022])|([0-7]([0-7])?)|([0-3][0-7][0-7])|("u"([0-9aAbBcCdDeEfF])+))))"\u0027"
STRING_LITERAL="\u0022"((([^\u0022\u005c\u000a\u000d])|("\u005c"(([ntbrf\u005c\u0027\u0022])|([0-7]([0-7])?)|([0-3][0-7][0-7])|("u"([0-9aAbBcCdDeEfF])+)))))*"\u0022"
IDENTIFIER={LETTER}((({LETTER})|({DIGIT})))*
LETTER=[\u0024A-Z\u005fa-zÀ-ÖØ-öø-ÿĀ-\u1fff\u3040-\u318f\u3300-\u337f㐀-㴭一-\u9fff豈-\ufaff]
DIGIT=[0-9٠-٩۰-۹०-९০-৯੦-੯૦-૯୦-୯௧-௯౦-౯೦-೯൦-൯๐-๙໐-໙၀-၉]
LPAREN="\u0028"
RPAREN="\u0029"
LBRACE="\u007b"
RBRACE="\u007d"
LBRACKET="\u005b"
RBRACKET="\u005d"
SEMICOLON="\u003b"
COMMA="\u002c"
DOT="\u002e"
ASSIGN="\u003d"
GT="\u003e"
LT="\u003c"
BANG="\u0021"
TILDE="\u007e"
HOOK="\u003f"
COLON="\u003a"
EQ="\u003d\u003d"
LE="\u003c\u003d"
GE="\u003e\u003d"
NE="\u0021\u003d"
SC_OR="\u007c\u007c"
SC_AND="\u0026\u0026"
INCR="\u002b\u002b"
DECR="\u002d\u002d"
PLUS="\u002b"
MINUS="\u002d"
STAR="\u002a"
SLASH="\u002f"
BIT_AND="\u0026"
BIT_OR="\u007c"
XOR="\u005e"
REM="\u0025"
PLUSASSIGN="\u002b\u003d"
MINUSASSIGN="\u002d\u003d"
STARASSIGN="\u002a\u003d"
SLASHASSIGN="\u002f\u003d"
ANDASSIGN="\u0026\u003d"
ORASSIGN="\u007c\u003d"
XORASSIGN="\u005e\u003d"
REMASSIGN="\u0025\u003d"
SHARP="\u0023"
MULTI_LINE_COMMENT="\u002a\u002f"
SINGLE_LINE_COMMENT=(("\u000a")|("\u000d")|("\u000d\u000a"))
FORMAL_COMMENT="\u002a\u002f"

%%

<YYINITIAL> {_OPTIONS} { return org.gark87.idea.javacc.generated.JavaCCConstants._OPTIONS; }
<YYINITIAL> {_LOOKAHEAD} { return org.gark87.idea.javacc.generated.JavaCCConstants._LOOKAHEAD; }
<YYINITIAL> {_IGNORE_CASE} { return org.gark87.idea.javacc.generated.JavaCCConstants._IGNORE_CASE; }
<YYINITIAL> {_PARSER_BEGIN} { return org.gark87.idea.javacc.generated.JavaCCConstants._PARSER_BEGIN; }
<YYINITIAL> {_PARSER_END} { return org.gark87.idea.javacc.generated.JavaCCConstants._PARSER_END; }
<YYINITIAL> {_JAVACODE} { return org.gark87.idea.javacc.generated.JavaCCConstants._JAVACODE; }
<YYINITIAL> {_TOKEN} { return org.gark87.idea.javacc.generated.JavaCCConstants._TOKEN; }
<YYINITIAL> {_SPECIAL_TOKEN} { return org.gark87.idea.javacc.generated.JavaCCConstants._SPECIAL_TOKEN; }
<YYINITIAL> {_MORE} { return org.gark87.idea.javacc.generated.JavaCCConstants._MORE; }
<YYINITIAL> {_SKIP} { return org.gark87.idea.javacc.generated.JavaCCConstants._SKIP; }
<YYINITIAL> {_TOKEN_MGR_DECLS} { return org.gark87.idea.javacc.generated.JavaCCConstants._TOKEN_MGR_DECLS; }
<YYINITIAL> {_EOF} { return org.gark87.idea.javacc.generated.JavaCCConstants._EOF; }
<YYINITIAL> "\u0020" { return org.gark87.idea.javacc.generated.JavaCCConstants.SKIP; }
<YYINITIAL> "\u0009" { return org.gark87.idea.javacc.generated.JavaCCConstants.SKIP; }
<YYINITIAL> "\u000a" { return org.gark87.idea.javacc.generated.JavaCCConstants.SKIP; }
<YYINITIAL> "\u000d" { return org.gark87.idea.javacc.generated.JavaCCConstants.SKIP; }
<YYINITIAL> "\u000c" { return org.gark87.idea.javacc.generated.JavaCCConstants.SKIP; }
<YYINITIAL> "\u002f\u002f" { yybegin(IN_SINGLE_LINE_COMMENT);return org.gark87.idea.javacc.generated.JavaCCConstants.MORE; }
<YYINITIAL> "\u002f\u002a\u002a"[\u0000-\u002e0-\uffff] { yybegin(IN_FORMAL_COMMENT);return org.gark87.idea.javacc.generated.JavaCCConstants.MORE; }
<YYINITIAL> "\u002f\u002a" { yybegin(IN_MULTI_LINE_COMMENT);return org.gark87.idea.javacc.generated.JavaCCConstants.MORE; }
<YYINITIAL> {ABSTRACT} { return org.gark87.idea.javacc.generated.JavaCCConstants.ABSTRACT; }
<YYINITIAL> {BOOLEAN} { return org.gark87.idea.javacc.generated.JavaCCConstants.BOOLEAN; }
<YYINITIAL> {BREAK} { return org.gark87.idea.javacc.generated.JavaCCConstants.BREAK; }
<YYINITIAL> {BYTE} { return org.gark87.idea.javacc.generated.JavaCCConstants.BYTE; }
<YYINITIAL> {CASE} { return org.gark87.idea.javacc.generated.JavaCCConstants.CASE; }
<YYINITIAL> {CATCH} { return org.gark87.idea.javacc.generated.JavaCCConstants.CATCH; }
<YYINITIAL> {CHAR} { return org.gark87.idea.javacc.generated.JavaCCConstants.CHAR; }
<YYINITIAL> {CLASS} { return org.gark87.idea.javacc.generated.JavaCCConstants.CLASS; }
<YYINITIAL> {CONST} { return org.gark87.idea.javacc.generated.JavaCCConstants.CONST; }
<YYINITIAL> {CONTINUE} { return org.gark87.idea.javacc.generated.JavaCCConstants.CONTINUE; }
<YYINITIAL> {_DEFAULT} { return org.gark87.idea.javacc.generated.JavaCCConstants._DEFAULT; }
<YYINITIAL> {DO} { return org.gark87.idea.javacc.generated.JavaCCConstants.DO; }
<YYINITIAL> {DOUBLE} { return org.gark87.idea.javacc.generated.JavaCCConstants.DOUBLE; }
<YYINITIAL> {ELSE} { return org.gark87.idea.javacc.generated.JavaCCConstants.ELSE; }
<YYINITIAL> {EXTENDS} { return org.gark87.idea.javacc.generated.JavaCCConstants.EXTENDS; }
<YYINITIAL> {FALSE} { return org.gark87.idea.javacc.generated.JavaCCConstants.FALSE; }
<YYINITIAL> {FINAL} { return org.gark87.idea.javacc.generated.JavaCCConstants.FINAL; }
<YYINITIAL> {FINALLY} { return org.gark87.idea.javacc.generated.JavaCCConstants.FINALLY; }
<YYINITIAL> {FLOAT} { return org.gark87.idea.javacc.generated.JavaCCConstants.FLOAT; }
<YYINITIAL> {FOR} { return org.gark87.idea.javacc.generated.JavaCCConstants.FOR; }
<YYINITIAL> {GOTO} { return org.gark87.idea.javacc.generated.JavaCCConstants.GOTO; }
<YYINITIAL> {IF} { return org.gark87.idea.javacc.generated.JavaCCConstants.IF; }
<YYINITIAL> {IMPLEMENTS} { return org.gark87.idea.javacc.generated.JavaCCConstants.IMPLEMENTS; }
<YYINITIAL> {IMPORT} { return org.gark87.idea.javacc.generated.JavaCCConstants.IMPORT; }
<YYINITIAL> {INSTANCEOF} { return org.gark87.idea.javacc.generated.JavaCCConstants.INSTANCEOF; }
<YYINITIAL> {INT} { return org.gark87.idea.javacc.generated.JavaCCConstants.INT; }
<YYINITIAL> {INTERFACE} { return org.gark87.idea.javacc.generated.JavaCCConstants.INTERFACE; }
<YYINITIAL> {LONG} { return org.gark87.idea.javacc.generated.JavaCCConstants.LONG; }
<YYINITIAL> {NATIVE} { return org.gark87.idea.javacc.generated.JavaCCConstants.NATIVE; }
<YYINITIAL> {NEW} { return org.gark87.idea.javacc.generated.JavaCCConstants.NEW; }
<YYINITIAL> {NULL} { return org.gark87.idea.javacc.generated.JavaCCConstants.NULL; }
<YYINITIAL> {PACKAGE} { return org.gark87.idea.javacc.generated.JavaCCConstants.PACKAGE; }
<YYINITIAL> {PRIVATE} { return org.gark87.idea.javacc.generated.JavaCCConstants.PRIVATE; }
<YYINITIAL> {PROTECTED} { return org.gark87.idea.javacc.generated.JavaCCConstants.PROTECTED; }
<YYINITIAL> {PUBLIC} { return org.gark87.idea.javacc.generated.JavaCCConstants.PUBLIC; }
<YYINITIAL> {RETURN} { return org.gark87.idea.javacc.generated.JavaCCConstants.RETURN; }
<YYINITIAL> {SHORT} { return org.gark87.idea.javacc.generated.JavaCCConstants.SHORT; }
<YYINITIAL> {STATIC} { return org.gark87.idea.javacc.generated.JavaCCConstants.STATIC; }
<YYINITIAL> {SUPER} { return org.gark87.idea.javacc.generated.JavaCCConstants.SUPER; }
<YYINITIAL> {SWITCH} { return org.gark87.idea.javacc.generated.JavaCCConstants.SWITCH; }
<YYINITIAL> {SYNCHRONIZED} { return org.gark87.idea.javacc.generated.JavaCCConstants.SYNCHRONIZED; }
<YYINITIAL> {THIS} { return org.gark87.idea.javacc.generated.JavaCCConstants.THIS; }
<YYINITIAL> {THROW} { return org.gark87.idea.javacc.generated.JavaCCConstants.THROW; }
<YYINITIAL> {THROWS} { return org.gark87.idea.javacc.generated.JavaCCConstants.THROWS; }
<YYINITIAL> {TRANSIENT} { return org.gark87.idea.javacc.generated.JavaCCConstants.TRANSIENT; }
<YYINITIAL> {TRUE} { return org.gark87.idea.javacc.generated.JavaCCConstants.TRUE; }
<YYINITIAL> {TRY} { return org.gark87.idea.javacc.generated.JavaCCConstants.TRY; }
<YYINITIAL> {VOID} { return org.gark87.idea.javacc.generated.JavaCCConstants.VOID; }
<YYINITIAL> {VOLATILE} { return org.gark87.idea.javacc.generated.JavaCCConstants.VOLATILE; }
<YYINITIAL> {WHILE} { return org.gark87.idea.javacc.generated.JavaCCConstants.WHILE; }
<YYINITIAL> {INTEGER_LITERAL} { return org.gark87.idea.javacc.generated.JavaCCConstants.INTEGER_LITERAL; }
<YYINITIAL> {FLOATING_POINT_LITERAL} { return org.gark87.idea.javacc.generated.JavaCCConstants.FLOATING_POINT_LITERAL; }
<YYINITIAL> {CHARACTER_LITERAL} { return org.gark87.idea.javacc.generated.JavaCCConstants.CHARACTER_LITERAL; }
<YYINITIAL> {STRING_LITERAL} { return org.gark87.idea.javacc.generated.JavaCCConstants.STRING_LITERAL; }
<YYINITIAL> {IDENTIFIER} { return org.gark87.idea.javacc.generated.JavaCCConstants.IDENTIFIER; }
<YYINITIAL> {LPAREN} { return org.gark87.idea.javacc.generated.JavaCCConstants.LPAREN; }
<YYINITIAL> {RPAREN} { return org.gark87.idea.javacc.generated.JavaCCConstants.RPAREN; }
<YYINITIAL> {LBRACE} { return org.gark87.idea.javacc.generated.JavaCCConstants.LBRACE; }
<YYINITIAL> {RBRACE} { return org.gark87.idea.javacc.generated.JavaCCConstants.RBRACE; }
<YYINITIAL> {LBRACKET} { return org.gark87.idea.javacc.generated.JavaCCConstants.LBRACKET; }
<YYINITIAL> {RBRACKET} { return org.gark87.idea.javacc.generated.JavaCCConstants.RBRACKET; }
<YYINITIAL> {SEMICOLON} { return org.gark87.idea.javacc.generated.JavaCCConstants.SEMICOLON; }
<YYINITIAL> {COMMA} { return org.gark87.idea.javacc.generated.JavaCCConstants.COMMA; }
<YYINITIAL> {DOT} { return org.gark87.idea.javacc.generated.JavaCCConstants.DOT; }
<YYINITIAL> {ASSIGN} { return org.gark87.idea.javacc.generated.JavaCCConstants.ASSIGN; }
<YYINITIAL> {GT} { return org.gark87.idea.javacc.generated.JavaCCConstants.GT; }
<YYINITIAL> {LT} { return org.gark87.idea.javacc.generated.JavaCCConstants.LT; }
<YYINITIAL> {BANG} { return org.gark87.idea.javacc.generated.JavaCCConstants.BANG; }
<YYINITIAL> {TILDE} { return org.gark87.idea.javacc.generated.JavaCCConstants.TILDE; }
<YYINITIAL> {HOOK} { return org.gark87.idea.javacc.generated.JavaCCConstants.HOOK; }
<YYINITIAL> {COLON} { return org.gark87.idea.javacc.generated.JavaCCConstants.COLON; }
<YYINITIAL> {EQ} { return org.gark87.idea.javacc.generated.JavaCCConstants.EQ; }
<YYINITIAL> {LE} { return org.gark87.idea.javacc.generated.JavaCCConstants.LE; }
<YYINITIAL> {GE} { return org.gark87.idea.javacc.generated.JavaCCConstants.GE; }
<YYINITIAL> {NE} { return org.gark87.idea.javacc.generated.JavaCCConstants.NE; }
<YYINITIAL> {SC_OR} { return org.gark87.idea.javacc.generated.JavaCCConstants.SC_OR; }
<YYINITIAL> {SC_AND} { return org.gark87.idea.javacc.generated.JavaCCConstants.SC_AND; }
<YYINITIAL> {INCR} { return org.gark87.idea.javacc.generated.JavaCCConstants.INCR; }
<YYINITIAL> {DECR} { return org.gark87.idea.javacc.generated.JavaCCConstants.DECR; }
<YYINITIAL> {PLUS} { return org.gark87.idea.javacc.generated.JavaCCConstants.PLUS; }
<YYINITIAL> {MINUS} { return org.gark87.idea.javacc.generated.JavaCCConstants.MINUS; }
<YYINITIAL> {STAR} { return org.gark87.idea.javacc.generated.JavaCCConstants.STAR; }
<YYINITIAL> {SLASH} { return org.gark87.idea.javacc.generated.JavaCCConstants.SLASH; }
<YYINITIAL> {BIT_AND} { return org.gark87.idea.javacc.generated.JavaCCConstants.BIT_AND; }
<YYINITIAL> {BIT_OR} { return org.gark87.idea.javacc.generated.JavaCCConstants.BIT_OR; }
<YYINITIAL> {XOR} { return org.gark87.idea.javacc.generated.JavaCCConstants.XOR; }
<YYINITIAL> {REM} { return org.gark87.idea.javacc.generated.JavaCCConstants.REM; }
<YYINITIAL> {PLUSASSIGN} { return org.gark87.idea.javacc.generated.JavaCCConstants.PLUSASSIGN; }
<YYINITIAL> {MINUSASSIGN} { return org.gark87.idea.javacc.generated.JavaCCConstants.MINUSASSIGN; }
<YYINITIAL> {STARASSIGN} { return org.gark87.idea.javacc.generated.JavaCCConstants.STARASSIGN; }
<YYINITIAL> {SLASHASSIGN} { return org.gark87.idea.javacc.generated.JavaCCConstants.SLASHASSIGN; }
<YYINITIAL> {ANDASSIGN} { return org.gark87.idea.javacc.generated.JavaCCConstants.ANDASSIGN; }
<YYINITIAL> {ORASSIGN} { return org.gark87.idea.javacc.generated.JavaCCConstants.ORASSIGN; }
<YYINITIAL> {XORASSIGN} { return org.gark87.idea.javacc.generated.JavaCCConstants.XORASSIGN; }
<YYINITIAL> {REMASSIGN} { return org.gark87.idea.javacc.generated.JavaCCConstants.REMASSIGN; }
<YYINITIAL> {SHARP} { return org.gark87.idea.javacc.generated.JavaCCConstants.SHARP; }
<IN_MULTI_LINE_COMMENT> {MULTI_LINE_COMMENT} { yybegin(YYINITIAL);return org.gark87.idea.javacc.generated.JavaCCConstants.MULTI_LINE_COMMENT; }
<IN_MULTI_LINE_COMMENT> (.|\n) { return org.gark87.idea.javacc.generated.JavaCCConstants.MORE; }
<IN_SINGLE_LINE_COMMENT> {SINGLE_LINE_COMMENT} { yybegin(YYINITIAL);return org.gark87.idea.javacc.generated.JavaCCConstants.SINGLE_LINE_COMMENT; }
<IN_SINGLE_LINE_COMMENT> (.|\n) { return org.gark87.idea.javacc.generated.JavaCCConstants.MORE; }
<IN_FORMAL_COMMENT> {FORMAL_COMMENT} { yybegin(YYINITIAL);return org.gark87.idea.javacc.generated.JavaCCConstants.FORMAL_COMMENT; }
<IN_FORMAL_COMMENT> (.|\n) { return org.gark87.idea.javacc.generated.JavaCCConstants.MORE; }