class Cliente { 
	const property salario
	var property formaDeDarPropina
	
	method costoTotal(valorPlato) =
		valorPlato + formaDeDarPropina.calcularPropina(valorPlato, self)

}


// FORMAS DE DAR PROPINA
object comun { 
	method calcularPropina(valorPlato, cliente) = 0.1 * valorPlato
}

object amarrete { 
	method calcularPropina(valorPlato, cliente) = 0
}

class Comedido {
	var property maximoDePropina = 0
	
	method calcularPropina(valorPlato, cliente) = 
		maximoDePropina.min(0.2 * valorPlato) 
}

object asalariado {
	method calcularPropina(valorPlato, cliente) = 0.01 * cliente.salario()
}

