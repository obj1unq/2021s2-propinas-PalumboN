class Cliente { 
//	 Comportamiento común: 
//		- conocen su salario
//		- Pagar una cuenta
	const salario
	
	// Template Method ("método plantilla"): 
	// Tiene una lógica general y delega una parte a las subclases (específica)
	method costoTotal(valorPlato) =
		valorPlato + self.calcularPropina(valorPlato)

	method calcularPropina(valorPlato) // abstracto

}

//	Comportamiento específico:
//		- Calcular la propina
class Comun inherits Cliente { 
	override method calcularPropina(valorPlato) = 0.1 * valorPlato
}

class Comedido inherits Cliente { 
	const maximoDePropina
	
	override method calcularPropina(valorPlato) = 
		maximoDePropina.min(0.2 * valorPlato) 
}

class Amarrete inherits Cliente { 
	override method calcularPropina(valorPlato) = 0
}

class Asalariado inherits Cliente {
	override method calcularPropina(valorPlato) = 0.01 * salario
}
