/*
 * Generated by classgen, version 1.5
 * 11.10.13 11:54
 */
package de.brainiiiii.sqlgen;

public class DefaultAuto extends DefaultValue {


  public DefaultAuto () {
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
    buffer.append("DefaultAuto(\n");
    buffer.append(tab);
    buffer.append(") [DefaultAuto]");
    return buffer.toString();
  }
}
