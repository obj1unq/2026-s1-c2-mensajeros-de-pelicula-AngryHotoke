object paquete {
  var property paquetePagado = null
  var property destino = null
  var property mensajero = null
  
  method asignarMensajeroADestino() {
	destino.mensajero(mensajero)
  }
  method paquetePuedeSerEntregadoEnDestino(){
	self.validarPagoDelPaquete()
	return destino.mensajeroHabilitadoParaEntrega()
  }
  method validarPagoDelPaquete() {
	if (not self.estaPagoElPaquete()){
		self.error("El paquete no esta pagado.")
	}
  }
  method estaPagoElPaquete() {
	return self.paquetePagado()
  }
}
object puenteDeBrooklyn {
  var property mensajero = null

  method mensajeroHabilitadoParaEntrega(){
    self.validarEntrega()
	return mensajero.peso() <= 1000
  }
  method validarEntrega() {
    if (not self.esPesoPermitido()){
      self.error("Exceso de peso permitido.")
    }
  }
  method esPesoPermitido() {
    return mensajero.peso() > 1000
  }
  
}
object laMatrix {
  var property mensajero = null

  method mensajeroHabilitadoParaEntrega(){
	return mensajero.puedeHacerLlamadas()
  }
}
object jeanGray {
  const property peso = 65
  const property puedeHacerLlamadas = true
}
object neo {
  const property peso = 0
  var property puedeHacerLlamadas = null
}
object saraConnor {
  var peso = null
  var property vehiculo = null
  const property puedeHacerLlamadas = false

  method peso() {
	return peso + vehiculo.peso()
  }
  method peso(_peso) {
	peso = _peso
  }
}
object moto {
	const peso = 100

  method peso() {
	return peso
  }
}
object camion {
  const  peso = 500
  var property cantidadAcoplados = null

  method peso() {
	return peso + cantidadAcoplados * 500
  }
}
