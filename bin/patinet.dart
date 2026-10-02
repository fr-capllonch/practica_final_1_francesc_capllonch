import 'vehicle.dart';
import 'user.dart';

class Patinet extends Vehicle{

  
  late int velocitatMaxima;


  Patinet({required String id, 
  required int bateriaPercentatge, 
  required bool enUs, 
  required double preuPerMinut, 
  required int velMax }){

    this.id = id;
    this.bateriaPercentatge = bateriaPercentatge;
    this.enUs = enUs;
    this.preuPerMinut = preuPerMinut;
    velocitatMaxima = velMax;

  }
  
  @override
  
  
  double calcularCostReserva(int min, [User? user]) {
    
    //no es troba la funcio esVIP
    
      if(user?.esVIP == true){  
        return (min * preuPerMinut)*0.9; 
      }

    

    return (min * preuPerMinut);
  }
}