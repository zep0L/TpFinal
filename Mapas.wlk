import wollok.game.*
import PickleRick.*
import Config.*
import Enemigos.*
import Objetos.*
import intro.*
import Niveles.*


//----------------------------- Mapas --------------------------

class Suelo {
  method image()
  method position() = game.origin()
}
//////////////////////////////////////////////
object suelo inherits Suelo{
  override method image() = "fondoInicio.jpg"
}
object fondoRojo inherits Suelo{
  override method image() = "fondoRojo.jpg"
}
///////////////////////////////////////////////
//////////COSAS DE STAR WARS//////////
object fondoEspacio inherits Suelo{
  override method image() = "fondoEspacio.png"
}
object gonza {
  method image () = "gonza.png"
  var property position = game.at(3,-15)
  
  method desplazamiento(){
  	const y = (position.y()+1)
		position = game.at(position.x(),y)
		
	}
}