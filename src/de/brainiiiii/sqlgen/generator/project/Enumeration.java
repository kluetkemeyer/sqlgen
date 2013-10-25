package de.brainiiiii.sqlgen.generator.project;

final class Enumeration {
	
	public final String identifier;
	
	public final Project parentProject;
	
	Enumeration(final Project parent, final String identifier) {
		this.parentProject = parent;
		this.identifier = identifier;
	}
		
}
