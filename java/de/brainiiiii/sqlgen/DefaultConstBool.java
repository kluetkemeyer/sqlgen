/*
 * Generated by classgen, version 1.5
 * 11.10.13 11:54
 */
package de.brainiiiii.sqlgen;

public class DefaultConstBool extends DefaultValue {

  public boolean value;

  public DefaultConstBool (boolean value) {
    this.value = value;
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
    buffer.append("DefaultConstBool(\n");
    buffer.append("  "+tab+value);
    buffer.append("\n");
    buffer.append(tab);
    buffer.append(") [DefaultConstBool]");
    return buffer.toString();
  }
}
