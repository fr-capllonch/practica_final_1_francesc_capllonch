import 'vehicle.dart';
import 'user.dart';


class Cotxe extends Vehicle{

  late int places;
  late bool requereixLlicenia;

  @override
  double calcularCostReserva(int min, [User? user]) {

    double cost = (min * preuPerMinut)+2.0;

    return cost;

  }
}