import Productos.*
import personas.*
import material.*
import color.*

object bolichito{
	var objetoEnVidriera
	var objetoEnMostrador
	// INDICADORES
	method ponerProductoEnVidriera(unProducto){
		objetoEnVidriera = unProducto
	}
	method ponerProductoEnMostrador(unProducto){
		objetoEnMostrador = unProducto
	}
	// CONSULTORES
	
	method esBrillant(){
		return objetoEnVidriera.material().esBrillante() and objetoEnMostrador.material().esBrillante()
		
	}
	method esMonocromatico(){ 
		return objetoEnVidriera.color() == objetoEnMostrador.color() 
	}
	method estaDesequilibrado(){
		return objetoEnMostrador.peso() > objetoEnVidriera.peso() 
	}
	method tieneAlgoDeColor(colorIndicado){
		return colorIndicado == objetoEnVidriera.color() or colorIndicado == objetoEnMostrador.color()
	}
	
	method puedeMejorar(){
		return self.estaDesequilibrado() or self.esMonocromatico()
	}
	
	method puedeOfrecerleAlgoA(persona){
		return persona.leGusta(objetoEnVidriera) or persona.leGusta(objetoEnMostrador)
	} 
	
}