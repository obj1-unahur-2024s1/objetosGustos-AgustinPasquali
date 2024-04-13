import Productos.*
import material.*
import color.*


object rosa {
	method leGusta(producto){
		return producto.peso() <= 2000
	}
}

object estefania{
	method leGusta(producto){
		return producto.color().esFuerte()
	}
}

object luisa {
	method leGusta(producto){
		return producto.material().esBrillante()
	}
}

object juan {
	method leGusta(producto){		
		return(not(producto.color().esFuerte()) or producto.peso().between(1200,1800) )
	}
}
