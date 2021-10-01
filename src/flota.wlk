class ChevroletCorsa {
	var color = null
	
	method capacidad(){return 4}// comentarios
	method velocidad(){return 150}
	method peso(){return 1300}
	method setColor(nuevoColor){color = nuevoColor}
	method color(){return color}
}

class RenaultKwid {
	var tieneTanqueAdicional = false
	
	method agregarTanqueAdicional(){tieneTanqueAdicional = true}
	method capacidad(){return if (tieneTanqueAdicional) 3 else 4}
	method peso(){return if (tieneTanqueAdicional) 1350 else 1200}
	method velocidad(){return if (tieneTanqueAdicional) 120 else 110}
	method color(){return "azul"}
}

object trafic{
				
	method capacidad(){return interior.capacidad()}
	method velocidad(){return motor.velocidad()}
	method color(){return "blanco"}
	method peso(){return 4000 + motor.peso() + interior.peso()}
}

object motor{
		var tipo = "pulenta"
				
		method peso(){return if (tipo == "pulenta") 800 else 500}
		method velocidad(){return if (tipo == "pulenta") 130 else 80}
		method cambiarTipo(nuevoTipo){tipo = nuevoTipo}
		method tipo(){return tipo}
}

object interior{
	var tipo = "comodo"
	
	method peso(){return if (tipo == "comodo") 700 else 1000}
	method capacidad(){return if (tipo == "comodo") 5 else 12}
	method cambiarTipo(nuevoTipo){tipo = nuevoTipo}
	method tipo(){return tipo}
}

class AutoEspecial{
	method capacidad(){return 4}
	method peso(){return 1300}
	method velocidad(){return 180}
	method color(){return ""}
}



