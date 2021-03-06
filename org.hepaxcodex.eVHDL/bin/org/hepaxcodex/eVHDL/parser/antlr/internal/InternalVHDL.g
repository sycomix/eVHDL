/*
* generated by Xtext
*/
grammar InternalVHDL;

options {
	superClass=AbstractInternalAntlrParser;
	
}

@lexer::header {
package org.hepaxcodex.eVHDL.parser.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.parser.antlr.Lexer;
}

@parser::header {
package org.hepaxcodex.eVHDL.parser.antlr.internal; 

import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.AbstractInternalAntlrParser;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.parser.antlr.AntlrDatatypeRuleToken;
import org.hepaxcodex.eVHDL.services.VHDLGrammarAccess;

}

@parser::members {

 	private VHDLGrammarAccess grammarAccess;
 	
    public InternalVHDLParser(TokenStream input, VHDLGrammarAccess grammarAccess) {
        this(input);
        this.grammarAccess = grammarAccess;
        registerRules(grammarAccess.getGrammar());
    }
    
    @Override
    protected String getFirstRuleName() {
    	return "vHDLPagckage";	
   	}
   	
   	@Override
   	protected VHDLGrammarAccess getGrammarAccess() {
   		return grammarAccess;
   	}
}

@rulecatch { 
    catch (RecognitionException re) { 
        recover(input,re); 
        appendSkippedTokens();
    } 
}




// Entry rule entryRulevHDLPagckage
entryRulevHDLPagckage returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getVHDLPagckageRule()); }
	 iv_rulevHDLPagckage=rulevHDLPagckage 
	 { $current=$iv_rulevHDLPagckage.current; } 
	 EOF 
;

// Rule vHDLPagckage
rulevHDLPagckage returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(
(
		{ 
	        newCompositeNode(grammarAccess.getVHDLPagckageAccess().getElementsEntity_declarationParserRuleCall_0()); 
	    }
		lv_elements_0_0=ruleentity_declaration		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getVHDLPagckageRule());
	        }
       		add(
       			$current, 
       			"elements",
        		lv_elements_0_0, 
        		"entity_declaration");
	        afterParserOrEnumRuleCall();
	    }

)
)
;





// Entry rule entryRuleentity_declaration
entryRuleentity_declaration returns [String current=null] 
	:
	{ newCompositeNode(grammarAccess.getEntity_declarationRule()); } 
	 iv_ruleentity_declaration=ruleentity_declaration 
	 { $current=$iv_ruleentity_declaration.current.getText(); }  
	 EOF 
;

// Rule entity_declaration
ruleentity_declaration returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(
	kw='entity' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getEntity_declarationAccess().getEntityKeyword_0()); 
    }
    this_ID_1=RULE_ID    {
		$current.merge(this_ID_1);
    }

    { 
    newLeafNode(this_ID_1, grammarAccess.getEntity_declarationAccess().getIDTerminalRuleCall_1()); 
    }

	kw='is' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getEntity_declarationAccess().getIsKeyword_2()); 
    }

    { 
        newCompositeNode(grammarAccess.getEntity_declarationAccess().getEntity_headerParserRuleCall_3()); 
    }
    this_entity_header_3=ruleentity_header    {
		$current.merge(this_entity_header_3);
    }

    { 
        afterParserOrEnumRuleCall();
    }

	kw='end' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getEntity_declarationAccess().getEndKeyword_4()); 
    }
)
    ;





// Entry rule entryRuleentity_header
entryRuleentity_header returns [String current=null] 
	:
	{ newCompositeNode(grammarAccess.getEntity_headerRule()); } 
	 iv_ruleentity_header=ruleentity_header 
	 { $current=$iv_ruleentity_header.current.getText(); }  
	 EOF 
;

// Rule entity_header
ruleentity_header returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
((
    { 
        newCompositeNode(grammarAccess.getEntity_headerAccess().getGeneric_clauseParserRuleCall_0()); 
    }
    this_generic_clause_0=rulegeneric_clause    {
		$current.merge(this_generic_clause_0);
    }

    { 
        afterParserOrEnumRuleCall();
    }
)?(
    { 
        newCompositeNode(grammarAccess.getEntity_headerAccess().getPort_clauseParserRuleCall_1()); 
    }
    this_port_clause_1=ruleport_clause    {
		$current.merge(this_port_clause_1);
    }

    { 
        afterParserOrEnumRuleCall();
    }
)?)
    ;





// Entry rule entryRulegeneric_clause
entryRulegeneric_clause returns [String current=null] 
	:
	{ newCompositeNode(grammarAccess.getGeneric_clauseRule()); } 
	 iv_rulegeneric_clause=rulegeneric_clause 
	 { $current=$iv_rulegeneric_clause.current.getText(); }  
	 EOF 
;

// Rule generic_clause
rulegeneric_clause returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(
	kw='generic' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getGeneric_clauseAccess().getGenericKeyword_0()); 
    }

	kw='(' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getGeneric_clauseAccess().getLeftParenthesisKeyword_1()); 
    }

    { 
        newCompositeNode(grammarAccess.getGeneric_clauseAccess().getGeneric_listParserRuleCall_2()); 
    }
    this_generic_list_2=rulegeneric_list    {
		$current.merge(this_generic_list_2);
    }

    { 
        afterParserOrEnumRuleCall();
    }

	kw=')' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getGeneric_clauseAccess().getRightParenthesisKeyword_3()); 
    }

	kw=';' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getGeneric_clauseAccess().getSemicolonKeyword_4()); 
    }
)
    ;





// Entry rule entryRuleport_clause
entryRuleport_clause returns [String current=null] 
	:
	{ newCompositeNode(grammarAccess.getPort_clauseRule()); } 
	 iv_ruleport_clause=ruleport_clause 
	 { $current=$iv_ruleport_clause.current.getText(); }  
	 EOF 
;

// Rule port_clause
ruleport_clause returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(
	kw='port' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getPort_clauseAccess().getPortKeyword_0()); 
    }

	kw='(' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getPort_clauseAccess().getLeftParenthesisKeyword_1()); 
    }

    { 
        newCompositeNode(grammarAccess.getPort_clauseAccess().getPort_listParserRuleCall_2()); 
    }
    this_port_list_2=ruleport_list    {
		$current.merge(this_port_list_2);
    }

    { 
        afterParserOrEnumRuleCall();
    }

	kw=')' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getPort_clauseAccess().getRightParenthesisKeyword_3()); 
    }

	kw=';' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getPort_clauseAccess().getSemicolonKeyword_4()); 
    }
)
    ;





// Entry rule entryRulegeneric_list
entryRulegeneric_list returns [String current=null] 
	:
	{ newCompositeNode(grammarAccess.getGeneric_listRule()); } 
	 iv_rulegeneric_list=rulegeneric_list 
	 { $current=$iv_rulegeneric_list.current.getText(); }  
	 EOF 
;

// Rule generic_list
rulegeneric_list returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
    this_ID_0=RULE_ID    {
		$current.merge(this_ID_0);
    }

    { 
    newLeafNode(this_ID_0, grammarAccess.getGeneric_listAccess().getIDTerminalRuleCall()); 
    }

    ;





// Entry rule entryRuleport_list
entryRuleport_list returns [String current=null] 
	:
	{ newCompositeNode(grammarAccess.getPort_listRule()); } 
	 iv_ruleport_list=ruleport_list 
	 { $current=$iv_ruleport_list.current.getText(); }  
	 EOF 
;

// Rule port_list
ruleport_list returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
    this_ID_0=RULE_ID    {
		$current.merge(this_ID_0);
    }

    { 
    newLeafNode(this_ID_0, grammarAccess.getPort_listAccess().getIDTerminalRuleCall()); 
    }

    ;





RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' ('b'|'t'|'n'|'f'|'r'|'u'|'"'|'\''|'\\')|~(('\\'|'"')))* '"'|'\'' ('\\' ('b'|'t'|'n'|'f'|'r'|'u'|'"'|'\''|'\\')|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;


