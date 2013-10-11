/*
 * Generated by classgen, version 1.5
 * 11.10.13 11:54
 */
package de.brainiiiii.sqlgen;

public class PackageDekl0 extends PackageDekl {

  public String ident;
  public PackageDekl packageDekl;

  public PackageDekl0 (String ident, PackageDekl packageDekl) {
    this.ident = ident;
    this.packageDekl = packageDekl;
    if (packageDekl != null) packageDekl.setParent(this);
  }

  public void accept(Visitor visitor) {
    visitor.visit(this);
  }

  public void childrenAccept(Visitor visitor) {
    if (packageDekl != null) packageDekl.accept(visitor);
  }

  public void traverseTopDown(Visitor visitor) {
    accept(visitor);
    if (packageDekl != null) packageDekl.traverseTopDown(visitor);
  }

  public void traverseBottomUp(Visitor visitor) {
    if (packageDekl != null) packageDekl.traverseBottomUp(visitor);
    accept(visitor);
  }

  public String toString(String tab) {
    StringBuffer buffer = new StringBuffer();
    buffer.append(tab);
    buffer.append("PackageDekl0(\n");
    buffer.append("  "+tab+ident);
    buffer.append("\n");
      if (packageDekl != null)
        buffer.append(packageDekl.toString("  "+tab));
      else
        buffer.append(tab+"  null");
    buffer.append("\n");
    buffer.append(tab);
    buffer.append(") [PackageDekl0]");
    return buffer.toString();
  }
}