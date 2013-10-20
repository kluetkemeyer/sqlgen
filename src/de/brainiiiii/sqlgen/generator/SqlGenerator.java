package de.brainiiiii.sqlgen.generator;

import de.brainiiiii.sqlgen.tree.SqlBinaryExpr;
import de.brainiiiii.sqlgen.tree.SqlBinaryOperator;
import de.brainiiiii.sqlgen.tree.SqlConstIntExpr;
import de.brainiiiii.sqlgen.tree.SqlColExpr;
import de.brainiiiii.sqlgen.tree.SqlSelectColumn;

class SqlGenerator extends AbstractGenerator {
	
	protected void appendName(final String name) {
		this.code.append("`" + name + "`");
	}
	
	public void visit(SqlConstIntExpr expr) {
	  this.code.append("" + expr.value);
	 }
	public void visit(SqlColExpr expr) {
		this.appendName(expr.table);
		this.code.append(".");
		this.appendName(expr.column);
	 }
	 
	 public void visitBinaryOperator(int operator) {
		 switch(operator) {
			 case SqlBinaryOperator.PLUS:
				this.code.append(" + ");
				return;
				
			case SqlBinaryOperator.MINUS:
			this.code.append(" - ");
			return;
			
			default:
			this.visit();
		}
	}
	 
	 public void visit(SqlBinaryExpr expr) {
		 this.code.append("(");
		 expr.subExprA.accept(this);
		 this.visitBinaryOperator(expr.op);
		 expr.subExprB.accept(this);
		 this.code.append(")");
		}
		 
	public void visit(SqlSelectColumn expr) {
		expr.expr.accept(this);
		this.code.append(" AS ");
		this.appendName(expr.alias);
	}
}
	
	
