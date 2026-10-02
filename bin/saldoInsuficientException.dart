
class SaldoInsuficientException implements Exception{
    final String missatge;
    SaldoInsuficientException(this.missatge);

    @override
  String toString() => "SaldoInsuficientException: $missatge";
}