
mixin GPSlocation {
  late double latitud;
  late double longitud;

  void actualitzarUbicacio(double lat, double lng){
    latitud = lat;
    longitud = lng;
  }

  obtenirCoordenades(){
    var record =(latitud, longitud );
    return record;
  }
}