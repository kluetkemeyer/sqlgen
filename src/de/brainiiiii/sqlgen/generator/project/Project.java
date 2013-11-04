package de.brainiiiii.sqlgen.generator.project;

import java.util.Map;
import java.util.TreeMap;

final class Project {
	
	public final String name;
	
	private final Map<String, Enumeration> enums;
	
	public Project(final String name) {
		this.name = name;
		
		this.enums = new TreeMap<String, Enumeration>();
	}
	
	public Enumeration addEnum(final String name) {
		final Enumeration e = new Enumeration(this, name);
		this.enums.put(name, e);
		return e;
	}
}
