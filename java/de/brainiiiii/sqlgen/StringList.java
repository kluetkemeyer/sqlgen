/*
 * Generated by classgen, version 1.5
 * 11.10.13 11:54
 */
package de.brainiiiii.sqlgen;

import java.util.Vector;
import java.util.Enumeration;

public class StringList extends ColumnDeklType implements SyntaxNode {

  private Vector items;
  private SyntaxNode parent;

  public StringList() {
    items = new Vector();
  }

  public StringList(String anItem) {
    this();
    append(anItem);
  }

  public StringList append(String anItem) {
    if (anItem == null) return this;
    items.addElement(anItem);
    return this;
  }

  public Enumeration elements() {
    return items.elements();
  }

  public String elementAt(int index) {
    return (String) items.elementAt(index);
  }

  public void setElementAt(String item, int index) {
    items.setElementAt(item, index);
  }

  public void insertElementAt(String item, int index) {
    items.insertElementAt(item, index);
  }

  public void removeElementAt(int index) {
    items.removeElementAt(index);
  }

  public int size() { return items.size(); }

  public boolean isEmpty() { return items.isEmpty(); }

  public boolean contains(String item) {
    int size = items.size();
    for (int i = 0; i < size; i++)
      if ( item.equals(items.elementAt(i)) ) return true;
    return false;
  }

  public int indexOf(String item) {
    return items.indexOf(item);
  }

  public String toString() {
    return toString("");
  }

  public String toString(String tab) {
    StringBuffer buffer = new StringBuffer();
    buffer.append(tab);
    buffer.append("StringList (\n");
    int size = items.size();
    for (int i = 0; i < size; i++) {
      buffer.append("  "+tab+items.elementAt(i));
      buffer.append("\n");
    }
    buffer.append(tab);
    buffer.append(") [StringList]");
    return buffer.toString();
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
  }

  public void traverseTopDown(Visitor visitor) {
    this.accept(visitor);
  }

  public void traverseBottomUp(Visitor visitor) {
    this.accept(visitor);
  }

}