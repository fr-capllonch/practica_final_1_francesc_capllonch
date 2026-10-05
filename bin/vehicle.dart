import 'gpsLocation.dart';
import 'user.dart';

abstract class Vehicle with GPSlocation{

  late String id;
  late int bateriaPercentatge;
  late bool enUs;
  late double preuPerMinut;

  String estatBateria(){
    String percentatge = switch (bateriaPercentatge){
      < 20 => "Critica",
      <= 20 => "Mitjana",
      >= 80 => "Alta", 
      > 100 => throw UnimplementedError("Bateria major de 100"),
      int() => throw UnimplementedError(),
    };

    return percentatge;
  }

  double calcularCostReserva(int min, [User? user]);

  @override
String toString() {
  return 'Vehicle(id: $id, batería: $bateriaPercentatge%, enUso: $enUs)';
}
}