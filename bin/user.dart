
class User {
  //atributs privats
  late String _id, _nomComplet, correu;
  
  late double _saldo;
  
  late bool esVIP;

//no se si els this son realment necessaris
  User.nou( {required String id, required nomComplet, required correu}){
    id = this._id;
    nomComplet = this._nomComplet;
    correu = this.correu;
    this._saldo = 0.0;
    this.esVIP = false;
  }


  User({required String id, required nomComplet, required correu}){
    id = this._id;
    nomComplet = this._nomComplet;
    correu = this.correu;

    // no se que he de fer amb aquestes dues al constructor complet
    this._saldo;
    this.esVIP;
  }

  double get getSaldo{

    return this._saldo;
  }

  String get getId{

    return this._id;
  }

  double recarregarSaldo(double quantitat){
    if(quantitat < 0){
      ArgumentError("La quantitat no pot ser negativa");
    }
    _saldo = _saldo + quantitat;

    return _saldo;
    
  }

  bool get getVIP{
    return this.esVIP;  }

}