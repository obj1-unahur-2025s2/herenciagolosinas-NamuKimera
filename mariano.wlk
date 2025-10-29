import golosinas.*

object mariano {
	const golosinas = []
	 
	method comprar(golosina) {
		golosinas.add(golosina)
	}
	method desechar(golosina) {
		golosinas.remove(golosina)
	}
	
	method golosinas() = golosinas

	method primerGolosina() = golosinas.first()

	method ultimaGolosina() = golosinas.last()
	
	method pesoGolosinas() = golosinas.sum({golo => golo.peso()})
	
	method probarGolosinas() {
		golosinas.forEach({golo => golo.mordisco() })
	}
	
	method golosinaMasPesada() = golosinas.max({golo => golo.peso()})
	
	method hayGolosinaSinTACC() = golosinas.any({golosina => golosina.libreGluten()})
	
	method preciosCuidados() = golosinas.all({golosina => golosina.precio() < 10})
	
	method golosinaDeSabor(sabor) = golosinas.find({golosina => golosina.sabor() == sabor })
	
	method golosinasDeSabor(sabor) = golosinas.filter({golo => golo.sabor() == sabor })
	
	method sabores() = golosinas.map({golo => golo.sabor() }).asSet()

	method bañar(unaGolosina) {
		golosinas.add(unaGolosina)
	}

	method golosinaMasCara() = golosinas.max({ golo => golo.precio()})

	method golosinasFaltantes(golosinasDeseadas) = golosinasDeseadas.difference(golosinas)

	method saboresFaltantes(saboresDeseados) = saboresDeseados.filter({_saborDeseado => !self.tieneGolosinaDeSabor(_saborDeseado)})
	
	method tieneGolosinaDeSabor(sabor) = golosinas.any({golo => golo.sabor() == sabor})
}