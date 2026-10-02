import 'vehicle.dart';

class Cotxe extends Vehicle{

  late int places;
  late bool requereixLlicenia;

  @override
  double calcularCostReserva(int min) {

    double cost = (min * preuPerMin)+2.0;

    return cost;

  }
}