/*
 * Generated by classgen, version 1.5
 * 11.10.13 11:54
 */
package de.brainiiiii.sqlgen;

public class BooleanType extends NonNullableColumnDekl {


  public BooleanType () {
  }

  public void accept(Visitor visitor) {
    visitor.visit(this);
  }

  public void childrenAccept(Visitor visitor) {
  }

  public void traverseTopDown(Visitor visitor) {
    accept(visitor);
  }

  public void traverseBottomUp(Visitor visitor) {
    accept(visitor);
  }

  public String toString(String tab) {
    StringBuffer buffer = new StringBuffer();
    buffer.append(tab);
    buffer.append("BooleanType(\n");
    buffer.append(tab);
    buffer.append(") [BooleanType]");
    return buffer.toString();
  }
}