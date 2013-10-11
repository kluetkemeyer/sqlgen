/*
 * Generated by classgen, version 1.5
 * 11.10.13 11:54
 */
package de.brainiiiii.sqlgen;

public class IndexDekl implements SyntaxNode {

  private SyntaxNode parent;
  public boolean isFulltext;
  public boolean isUnique;
  public StringList columns;

  public IndexDekl (boolean isFulltext, boolean isUnique, StringList columns) {
    this.isFulltext = isFulltext;
    this.isUnique = isUnique;
    this.columns = columns;
    if (columns != null) columns.setParent(this);
  }

  public SyntaxNode getParent() {
    return parent;
  }

  public void setParent(SyntaxNode parent) {
    this.parent = parent;
  }

  public void accept(Visitor visitor) {
    visitor.visit(this);
  }

  public void childrenAccept(Visitor visitor) {
    if (columns != null) columns.accept(visitor);
  }

  public void traverseTopDown(Visitor visitor) {
    accept(visitor);
    if (columns != null) columns.traverseTopDown(visitor);
  }

  public void traverseBottomUp(Visitor visitor) {
    if (columns != null) columns.traverseBottomUp(visitor);
    accept(visitor);
  }

  public String toString() {
    return toString("");
  }

  public String toString(String tab) {
    StringBuffer buffer = new StringBuffer();
    buffer.append(tab);
    buffer.append("IndexDekl(\n");
    buffer.append("  "+tab+isFulltext);
    buffer.append("\n");
    buffer.append("  "+tab+isUnique);
    buffer.append("\n");
      if (columns != null)
        buffer.append(columns.toString("  "+tab));
      else
        buffer.append(tab+"  null");
    buffer.append("\n");
    buffer.append(tab);
    buffer.append(") [IndexDekl]");
    return buffer.toString();
  }
}
