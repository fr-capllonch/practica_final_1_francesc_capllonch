import 'user.dart';
import 'patinet.dart';
import 'cotxe.dart';

void main(){

  // no se perque no se afageix l'usuari nou
  User fran = new User.nou( id: "312a", nomComplet: "Fran", correu: "f@gmail.com");

  var flota = [Patinet(id: "1", bateriaPercentatge: 22, enUs: true, preuPerMinut: 0.4, velMax: 25),
               Patinet(id: "2", bateriaPercentatge: 9, enUs: false, preuPerMinut: 0.11, velMax: 30),
               Patinet(id: "3", bateriaPercentatge: 99, enUs: false, preuPerMinut: 0.9, velMax: 40),
               Cotxe(id: "4", bateriaPercentatge: 55, enUs: false, preuPerMinut: 1.2, p: 5, llicencia: true),
               Cotxe(id: "5", bateriaPercentatge: 60, enUs: true, preuPerMinut: 1, p: 2, llicencia: false)];

  
  
}