import flota.*

class Dependencia{
	var property flota = []
	const cantidadDeEmpleados = 0
	
	method agregarAFlota(rodado){flota.add(rodado)}
	method quitarDeFlota(rodado){flota.remove(rodado)}
	method pesoTotalFlota(){
		return
			flota.sum({flot => flot.peso()})
	}
	
	method estaBienEquipada(){
		return
			flota.size() >= 3 and flota.all({flot => flot.velocidad() >= 100})
	}
	
	method capacidadTotalEnColor(color){
		return
			flota.filter({flot => flot.color() == color}).sum({cap => cap.capacidad()}) 
			
	}
	
	method capacidadTotalDeLaFlota(){
		return
			flota.sum({cap => cap.capacidad()})
	}
	
	method colorDelRodadoMasRapido(){
		return 
			flota.max({vel => vel.velocidad()}).color()	
	}
	
	method capacidadFaltante(){
		return
			self.capacidadTotalDeLaFlota() - cantidadDeEmpleados
	}
	
	method esGrande(){
		return
			cantidadDeEmpleados >= 40 and flota.size() == 5
	}
}












