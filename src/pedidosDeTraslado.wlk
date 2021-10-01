import flota.*
import dependencias.*

class PedidoDeTraslado{
	var distancia = null
	var tiempo = null
	var cantidadDePasajeros = null
	var property coloresIncomopatibles =[]
	
	method distancia(){return distancia}
	method tiempo(){return tiempo}
	method cantidadDePasajeros(){return cantidadDePasajeros}
	method asignarCantidadDePasajeros(cantidad){cantidadDePasajeros = cantidad}
	method asignarDistancia(kilometros){distancia = kilometros}
	method asignarTiempo(horas){tiempo = horas}
	method agregarColorIncompatible(color){coloresIncomopatibles.add(color)}
	method sacarColorIncompatible(color){coloresIncomopatibles.remove(color)}
	method velocidadRequerida(){}
	method puedeSatisfacerUnPedido(auto){}
}
