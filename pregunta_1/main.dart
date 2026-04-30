class Animal {
    var nom;
    var esp;
    var edad;

    Animal(n, e, ed) {
        this.nomb = n;
        this.esp = e;
        this.edad = ed;
    }

    void sonido(){
        print("el animal hace un ruido");

    }
    void info (){
        print("nombre: $nomb, es un $esp de $edad años");

    }

}

class Perro extends Animal {
    Perro (n, ed){
        this.nomb = n;
        this.edad = ed;
    }
}

void main (){
    var a1 = Animal ("Boby", "Gato", 2);
    a1.info()
}








