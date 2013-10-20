package de.brainiiiii.sqlgen.generator;

import java.lang.StringBuffer;

import de.brainiiiii.sqlgen.tree.VisitorAdaptor;
import de.brainiiiii.sqlgen.tree.SyntaxNode;

abstract class AbstractGenerator extends VisitorAdaptor {
	
	protected StringBuffer code;
	
	
	public String generateCode(SyntaxNode node) {
		this.code = new StringBuffer();
		node.accept(this);
		return this.code.toString();
	}
	
  public void visit() {
	  throw new RuntimeException("Visit unknown node");
	  }
  }
