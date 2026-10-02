
mixin GPSlocation {
  late double latitud;
  late double longitud;

  actualitzarUbicacio(double lat, double lng){
    latitud = lat;
    longitud = lng;
  }

  obtenirCoordenades(){
    var record =(latitud, longitud );
    return record;
  }
}