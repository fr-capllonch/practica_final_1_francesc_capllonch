import 'vehicle.dart';
import 'user.dart';

class Patinet extends Vehicle{

  late int velocitatMaxima;

  @override
  double calcularCostReserva(int min, [User? user]) {
    
    //no es troba la funcio esVIP
    
      if(user?.esVIP == true){  
        return (min * preuPerMinut)*0.9; 
      }

    

    return (min * preuPerMinut);
  }
}