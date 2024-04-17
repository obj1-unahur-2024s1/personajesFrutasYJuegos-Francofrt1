import src.juegos.*
import src.frutas.*

object martin {
	var energia = 80
	var cantidadActividades = 0
	var tieneHambre = false
	var enLaDespensa = agua

	method cantidadActividades() = cantidadActividades
	method tieneHambre() = tieneHambre
	method enLaDespensa() = enLaDespensa
	method estaFeliz() = energia > 80 || (cantidadActividades >= 2 && !tieneHambre)
	method energia() = energia

	method comprar(unaFruta) {
	  enLaDespensa = unaFruta
	}

	method alimantarse() {
	  energia += enLaDespensa.energia()
	  tieneHambre = !enLaDespensa.calmaElHambre()
	  enLaDespensa = agua
	}

	method hacerDeporte(unDeporte) {
	  energia = 0.max(energia + unDeporte.energia())
	  cantidadActividades = cantidadActividades + 1
	}

	method dormir() {
	  energia = energia * 1.5
	  enLaDespensa.efectoCambioDia()
	}
}
