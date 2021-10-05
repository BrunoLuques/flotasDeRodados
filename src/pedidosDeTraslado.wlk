import flota.*
import dependencias.*

class Pedidos {
	var property distancia
	var property tiempo
	var property cantPasajeros
	const property coloresIncompatibles = []
	
	method velocidadRequerida(){
		return distancia / tiempo
	}
	
	method puedeSatisfacer(auto){
		return 
			auto.velocidadMaxima() - self.velocidadRequerida() >= 10 and
			auto.capacidad() >= cantPasajeros and
			not coloresIncompatibles.contains(auto.color())
	}
}