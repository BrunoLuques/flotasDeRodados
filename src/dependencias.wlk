import flota.*


class Dependencia {
	var property autos = []
	var property empleados
	
	method agregarAFlota(rodado) {autos.add(rodado)}
	method quitarDeFlota(rodado) {autos.remove(rodado)}
	method pesoTotalFLota(){return autos.sum{auto => auto.peso()}}
	
	method estaBienEquipada(){
		return autos.size() >= 3 and autos.all{auto => auto.velocidadMaxima() >= 100}
	}
	method capacidadTotalEnColor(color){
		return autos.filter{auto => auto.color() == color}.sum{auto => auto.capacidad()}
	}
	method colorDelRodadoMasRapido(){
		return autos.max{auto => auto.velocidadMaxima()}.color()
	}
	method capacidadFaltante(){
		return empleados - self.capacidadTotal()
	}
	method capacidadTotal(){
		return autos.sum{auto => auto.capacidad()}
	}
	method esGrande(){
		return empleados >= 40 and autos.size() >= 5
	}
}









