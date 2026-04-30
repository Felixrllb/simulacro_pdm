class Animal {
  String nombre;
  String especie;
   int edad;

  Animal(this.nombre, this.especie, this.edad);

  void hacerSonido() {
    print("el animal hace un sonido");
  }

  void mostrarInfo() {
    print("Nombre: " + nombre + ", Especie: " + especie + ", Edad: " + edad.toString());
  }

  bool esAdulto() {
    if (edad >= 3) {
      return true;
    } else {
      return false;
    }
  }
}



class Perro extends Animal {
  
  Perro(String n, int e) : super(n, "Perro", e);

  @override
  void hacerSonido() {
    print("Guau!!!! Soy " + nombre);
  }

  void buscarPelota() {
    print(nombre + " est buscando la pelota");
  }
}

void main() {
  var animalito = Animal("Bola de Nieves", "Gato", 2);
  var miPerrito = Perro("Fido", 5);

  print("---* Datos del Animal *---");
  animalito.mostrarInfo();
  animalito.hacerSonido();
  print("Es adulto?: " + animalito.esAdulto().toString());

  print("\n--- Datos del Perro ---");
  miPerrito.mostrarInfo();
  miPerrito.hacerSonido();
  print("Es adulto?: " + miPerrito.esAdulto().toString());

  miPerrito.buscarPelota();
}








