class ChevroletCorsa {
	var property color = null
	
	method capacidad(){return 4}
	method velocidadMaxima(){return 150}
	method peso(){return 1300}
	
}

class RenaultKwid {
	var property tieneTanqueAdicional = false
	
	method capacidad(){return if (tieneTanqueAdicional) 3 else 4}
	method peso(){return if (tieneTanqueAdicional) 1350 else 1200}
	method velocidadMaxima(){return if (tieneTanqueAdicional) 120 else 110}
	method color(){return "azul"}
}


class AutoEspecial {
	var property color = null
	var property capacidad = null
	var property velocidadMaxima = null
	var property peso = null
}


object trafic {
	const pesoBase = 4000

	method capacidad(){return interior.capacidad()}
	method velocidadMaxima(){return motor.velocidadMaxima()}
	method peso(){return pesoBase + interior.peso() + motor.peso()}
	method color(){return "blanco"}

}

object interior {
	var property esComodo = true
	
	method cambiarTipo(){esComodo = not esComodo}
	method capacidad(){return if (esComodo) 5 else 12}
	method peso(){return if (esComodo) 700 else 1000}
}

object motor {
	var esPulenta = true
	
	method cambiarTipo(){esPulenta = not esPulenta}
	method peso(){return if (esPulenta) 800 else 500}
	method velocidadMaxima(){return if (esPulenta) 130 else 80}
}












