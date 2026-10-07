// EJercicio 1 : Pepita basica 
/*
object pepita {
    var energia = 100
    var ubicacion = buenosAires

    method energiaParaVolar(kilometros) = kilometros + 10

    method volar(kilometros) {
        energia -= self.energiaParaVolar(kilometros)
    }
    method comer(gramos) {
        energia += 4 * gramos
    }

    method energia() {
        return energia
    } 
    
    method distanciaA(lugar) = (ubicacion.kilometro() - lugar.kilometro()).abs()

    method irA (lugar) {
       self.volar(self.distanciaA(lugar))
        ubicacion = lugar
    }
    method puedeIr(lugar) = energia >= self.energiaParaVolar(self.distanciaA(lugar))
 
}
object buenosAires {
    method kilometro() = 0
}
object rosario {
    method kilometro() = 287
}
object cordoba {
    method kilometro() = 400
}
*/
/*
    ¿Qué objeto se debe encargar del cálculo de la distancia entre dos lugares?
    
    en mi caso, lo hago con el metodo distanciaA(lugar). 

    ¿Cómo hago para no repetir en distintos métodos de pepita la cuenta de la energía que necesita para moverse una cantidad de kilómetros?

    Lo que hago, es realizar la cuenta en un solo metodo, en mi caso es energiaParaVolar(kilometros), que me calcula la energia que va utilizar 
    para moverse esa cantidad de kilometros.

*/

// Ejercicio 2: Tom y Jerry 


object tom { 
    var energia = 100

    method energia () {
        return energia }

    method comer (raton) {
        energia += 12 + raton.peso()
    }

    method velocidad () = 5 + energia/10

    method correr(segundos){
        energia -= 0.5 * self.velocidad() * segundos 
    }
    method energiaQueGastaCorriendo(unaDistancia) = 0.5 * unaDistancia

    method energiaQueGanaComiendo(unRaton) = 12 + unRaton.peso()

    method meConvieneComerRatonA(unRaton,unaDistancia) = self.energiaQueGanaComiendo(unRaton) > self.energiaQueGastaCorriendo(unaDistancia)
  
    
}

object raton {
    const peso = 50
    method peso() = peso 
      
}


