// USUARIO
class Usuario {
	const property contactos = #{}
    	method tieneContacto(unUsuario) = contactos.contains(unUsuario)
	method agregarContacto(unUsuario){
		self.contactos().add(unUsuario)
	}
}
// Definir acá los objetos y clases para modelar el contenido de la red social
class Contenido{
	const property usuarioQueLaCrea = new Usuario()
	const property fechaDePublicacion
	var property tipo // publica, privada o enListaNegra
}
class Publicacion inherits Contenido{
}
class Historia inherits Contenido{
	const property fechaActual = new Date()
	var diferenciaEntreFechas = fechaActual - fechaDePublicacion
	method esVisible(tipo){
		if(diferenciaEntreFechas == 0 || diferenciaEntreFechas == 1 ){
			tipo.esVisible(unContacto, fechaActual)
		}
	}
}
object publica{
	method esVisible(unContacto, unaFecha) = true
}
class Privada{
	const usuario = new Usuario()
	method esVisible(unContacto, unaFecha) = usuario.tieneContacto(unContacto)
}
class ConListaNegra inherits Privada{
	var property usuariosParaListaNegra = []
	override method esVisible(unContacto, unaFecha) = !(usuariosParaListaNegra.contains(unContacto)) && super(unContacto, unaFecha)
}
// Completar acá los métodos para crear el contenido en base a tu modelo
object creacionDeContenido {
	method crearPublicacionPublica(usuarioQueLaCrea, fechaDePublicacion) {
		return "CAMBIAME"
	}
	method crearPublicacionPrivada(usuarioQueLaCrea, fechaDePublicacion) {
		return "CAMBIAME"
	}
	method crearHistoriaPublica(usuarioQueLaCrea, fechaDePublicacion) {
		
		return "CAMBIAME"
	}
	method crearHistoriaPrivada(usuarioQueLaCrea, fechaDePublicacion) {
		return "CAMBIAME"
	}
	method crearPublicacionConListaNegra(usuarioQueLaCrea, fechaDePublicacion, usuariosParaListaNegra) {
		return "CAMBIAME"
	}
	method crearHistoriaConListaNegra(usuarioQueLaCrea, fechaDePublicacion, usuariosParaListaNegra) {
		return "CAMBIAME"
	}
}