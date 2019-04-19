/*
 * generated by Xtext
 */
package org.eclipse.xtext.example.domainmodel.ide

import com.google.inject.Guice
import org.eclipse.xtext.example.domainmodel.DomainmodelRuntimeModule
import org.eclipse.xtext.example.domainmodel.DomainmodelStandaloneSetup
import org.eclipse.xtext.util.Modules2

/**
 * Initialization support for running Xtext languages as language servers.
 */
class DomainmodelIdeSetup extends DomainmodelStandaloneSetup {

	override createInjector() {
		Guice.createInjector(Modules2.mixin(new DomainmodelRuntimeModule, new DomainmodelIdeModule))
	}

}
