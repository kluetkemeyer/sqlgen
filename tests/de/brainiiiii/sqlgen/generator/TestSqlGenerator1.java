package de.brainiiiii.sqlgen.generator;

import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;

import de.brainiiiii.sqlgen.tree.SqlBinaryExpr;
import de.brainiiiii.sqlgen.tree.SqlBinaryOperator;
import de.brainiiiii.sqlgen.tree.SqlConstIntExpr;
import de.brainiiiii.sqlgen.tree.SqlColExpr;
import de.brainiiiii.sqlgen.tree.SyntaxNode;
import de.brainiiiii.sqlgen.tree.SqlSelectColumn;

public class TestSqlGenerator1 {

	protected SqlGenerator generator;
	
	
	@Before
	public void setUp() {
		this.generator = new SqlGenerator();
	}
		
	@Test
	public void testCodeOfConstString() {
		final SqlConstIntExpr expr = new SqlConstIntExpr(42);
		final String code = this.generator.generateCode(expr);
		
		Assert.assertEquals("42", code);		
	}
	
	@Test
	public void testColumnExpression1() {
		final SqlColExpr expr = new SqlColExpr("tab", "col");
		final String code = this.generator.generateCode(expr);
		
		Assert.assertEquals("`tab`.`col`", code);
	}
	
	@Test
	public void testSimpleAddExpression() {
		final SqlConstIntExpr expr1 = new SqlConstIntExpr(1337);
		final SqlColExpr expr2 = new SqlColExpr("table", "column");
		final SqlBinaryExpr expr = new SqlBinaryExpr(SqlBinaryOperator.PLUS, expr1, expr2);
		final String code = this.generator.generateCode(expr);
		
		Assert.assertEquals("(1337 + `table`.`column`)", code);
	}
	
	@Test
	public void testSelectUserRights() {
		final SyntaxNode select = new SqlSelectColumn(new SqlBinaryExpr(SqlBinaryOperator.PLUS, new SqlColExpr("u", "rights"), new SqlConstIntExpr(0)), "rights");
		
		final String code = this.generator.generateCode(select);
		
		Assert.assertEquals("SELECT (`u`.`rights` + 0) AS `rights` FROM `user__user` AS `u` WHERE `u`.`userId` = 1", code);
	}
}
