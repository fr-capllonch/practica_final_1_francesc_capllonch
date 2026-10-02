import 'vehicle.dart';
import 'user.dart';


class Cotxe extends Vehicle{

  late int places;
  late bool requereixLlicenia;

Cotxe({required String id, 
  required int bateriaPercentatge, 
  required bool enUs, 
  required double preuPerMinut, 
  required int p,
  required bool llicencia }){

    this.id = id;
    this.bateriaPercentatge = bateriaPercentatge;
    this.enUs = enUs;
    this.preuPerMinut = preuPerMinut;
    places = p;
    requereixLlicenia = llicencia;
    

  }

  @override
  double calcularCostReserva(int min, [User? user]) {

    double cost = (min * preuPerMinut)+2.0;

    return cost;

  }
}