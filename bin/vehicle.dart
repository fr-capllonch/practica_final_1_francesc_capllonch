import 'gpsLocation.dart';

abstract class Vehicle with GPSlocation{

  late String id;
  late int bateriaPercentatge;
  late bool enUs;
  late double preuPerMinut;

  String estatBateria(){
    String percentatge = switch (this.bateriaPercentatge){
      < 20 => "Critica",
      <= 20 => "Mitjana",
      >= 80 => "Alta", 
      int() => throw UnimplementedError(),
    };

    return percentatge;
  }

  double calcularCostReserva(int min);
}