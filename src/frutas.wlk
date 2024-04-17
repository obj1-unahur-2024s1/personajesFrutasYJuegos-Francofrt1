object manzana {
	var estado = verde

	method energia() = estado.energia()

	method madurar() {
		estado = roja
  	}
	method cambiarEstado(nuevoEstado) {
		estado = nuevoEstado
	}
	method calmaElHambre() = true

	method efectoCambioDia() {
	  self.cambiarEstado(amarilla)
	}
}

object roja {
  method energia() = 14
}
object amarilla {
  method energia() = 5
}
object verde {
  method energia() = 7
}

object mandarina {
  var peso = 60
  method energia() = 2 * peso / 10
  method peso() = peso
  method peso(gramos) {
	peso = gramos
  }
  method calmaElHambre() = true
  method efectoCambioDia() {
	self.peso(peso * 0.9)
  }
}

object banana {
  method energia() = 5
  method calmaElHambre() = true
  method efectoCambioDia() {}
}

object agua {
  method energia() = 0
  method calmaElHambre() = false
  method efectoCambioDia() {}
}