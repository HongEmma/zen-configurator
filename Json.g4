grammar Json;  
  
@header{  
package a3;   
}  
  
LEFT_BRACKET : '{';  
RIGHT_BRACKET : '}';  
ANY_CHAR : (~('{' | '}'))+;  
  
bracket_body : LEFT_BRACKET (ANY_CHAR | bracket_body)* RIGHT_BRACKET;  
expr : (bracket_body)+; 