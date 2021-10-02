class ChevroletCorsa {
	var color = null
	
	method capacidad(){return 4}
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
	var interior = "comodo"
	var motor = "pulenta"			
	
	method cambiarMotor(tipo){motor = tipo}
	method cambiarInterior(tipo){interior = tipo}
	method tipoDeMotor(){return motor}
	method tipoDeInterior(){return interior}
	method capacidad(){return if (interior == "comodo") 5 else 12}
	method velocidad(){return if (motor == "pulenta") 130 else 80}
	method color(){return "blanco"}
	method peso(){
		return 
			4000 + 
			if (motor == "pulenta") 800 else 500 +
			if (interior == "comodo") 700 else 1000
	}
}

class AutoEspecial{
	var color = null
	var capacidad = null
	var velocidad = null
	var peso = null
	
	method asignarColor(nuevoColor){color = nuevoColor}
	method asignarCapacidad(nuevaCapacidad){capacidad = nuevaCapacidad}
	method asignarVelocidad(nuevaVelocidad){velocidad = nuevaVelocidad}
	method asignarPeso(nuevoPeso){peso = nuevoPeso}
	method capacidad(){return 5}
	method peso(){return 1300}
	method velocidad(){return 180}
	method color(){return color}
}



