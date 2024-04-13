import material.*
import color.*

object remera {
	
	// INDICADOR
	
	// CONSULTOR
	method color()= rojo
	method material() = lino
	method peso() = 800
	
}

object pelota{
		
	// INDICADOR
	
	// CONSULTOR
	method color() = pardo
	method material() = cuero
	method peso() = 1300 
}

object biblioteca{
		
	// INDICADOR
	
	// CONSULTOR
	method color() = verde
	method material() = madera
	method peso() = 8000
}

object munieco{
	var peso
	
	method color() = celeste
	method material() = vidrio
	// INDICADOR
	method peso(unValor){
		peso= unValor
	}
}

object placa{
	var peso
	var color
		
	// INDICADOR
	method color(unColor){
		color = unColor
	}
	method peso(gramos){
		peso = gramos
	}
	// CONSULTOR
	method material() = cobre
	method peso() = peso
	method color() = color
}

object aritoCeleste{
	method material() = cobre
	method peso() = 180
}

object banquito{
	var color = naranja
	method material() = madera
	method peso() = 1700
	
	method seleccionarColorDelBanquito(unColor){
		color = unColor
	}
}
object cajita{
	var objetoInterior = aritoCeleste
	
	method reemplazarObjeto(unObjeto){
		objetoInterior = unObjeto
	} 
	
	
	method peso(){
		return 400 + objetoInterior.peso() 
	}
	method color() = rojo
	method material() = cobre
	
}