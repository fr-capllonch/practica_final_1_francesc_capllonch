import 'saldoInsuficientException.dart';

class User {
  //atributs privats
  late String _id, _nomComplet, correu;
  late double _saldo;
  late bool esVIP;

//no se si els this son realment necessaris
  User.nou( {required String id, required nomComplet, required correu}){
    _id = id;
    _nomComplet = nomComplet;
    this.correu = correu;
    _saldo = 0.0;
    esVIP = false;
  }


  User({required String id, required nomComplet, required correu, required double saldo, this.esVIP = false}){
    _id = id;
    _nomComplet = nomComplet;
    this.correu = correu;
  }

  double get getSaldo{

    return _saldo;
  }

  String get getId{

    return _id;
  }

  double recarregarSaldo(double quantitat){
    if(quantitat < 0){
      throw SaldoInsuficientException("La quantitat no pot ser negativa");
    }
    _saldo = _saldo + quantitat;

    return _saldo;
    
  }

}