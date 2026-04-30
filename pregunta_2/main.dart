//pregunta 2


class CuentaBancaria {
  String titular;
  String numeroCuenta;
  double saldo;

  CuentaBancaria(this.titular, this.numeroCuenta, this.saldo);

  void depositar(double monto) {
    saldo = saldo + monto;
    print("Se deposito.... nuevo saldo es: " + saldo.toString());
  }

  void retirar(double monto) {
    if (saldo >= monto) {
      saldo = saldo - monto;
      print("Retiro de:  " + monto.toString() + ". Saldo ahora: " + saldo.toString());
    } else {
      print("Error: no tienes dinero suficiente " + monto.toString());
    }
  }

  void mostrarEstado() {
    print("Titular: " + titular);
    print("Cuenta: " + numeroCuenta);
    print("Saldo: " + saldo.toString());
  }
}

class CuentaEmpresarial extends CuentaBancaria {
  double limiteCredito;

  CuentaEmpresarial(String t, String n, double s, this.limiteCredito) : super(t, n, s);

  void solicitarCredito(double monto) {
    if (monto <= limiteCredito) {
      saldo = saldo + monto;
      print("Credito aprobado de " + monto.toString() + ".Saldo total: " + saldo.toString());
    } else {
      print("Credito rechazado... el monto " + monto.toString() + " pasaste el limite");
    }
  }
}

void main() {
  print("--- PRUEBA CUENTA NORMAL ---");
  var c1 = CuentaBancaria("Felix Ricky Llanos Bonifacio", "1001-A", 500.0);
  c1.depositar(200.0);
  c1.retirar(100.0); 
  c1.retirar(1000.0); 

  print("\n---** PRUEBA CUENTA EMPRESA **---");
  var c2 = CuentaEmpresarial("Empresa Felix", "9009-X", 1000.0, 5000.0);
  c2.mostrarEstado();
  c2.solicitarCredito(2000.0); 
  c2.solicitarCredito(6000.0); 
}