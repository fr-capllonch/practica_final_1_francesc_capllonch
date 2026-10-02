import 'vehicle.dart';
import 'user.dart';

class Patinet extends Vehicle{

  late int velocitatMaxima;

  @override
  double calcularCostReserva(int min) {
    double cost;
    //no es troba la funcio esVIP
    if(User.esVIP == true){  
      return cost = ((min * preuPerMinut)/0.9); 
    }

    /* o fer:
    
    if(User.getVIP == true){  
      return cost = ((min * preuPerMinut)/0.9); 
    }

    */

    return cost = (min * PreuPerMinut);
  }
}