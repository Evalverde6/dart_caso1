import 'Vehiculo.dart';

class Auto extends Vehiculo {
  late int pasajeros;
  Auto(
      super.serieMotor, super.marca, super.ano, super.precio, this.pasajeros);
  @override
  String toString() {
    // ignore: prefer_interpolation_to_compose_strings
    return ("serie: " +
        serieMotor +
        " marca: " +
        marca +
        " año: " +
        ano.toString() +
        " precio: " +
        precio.toString() +
        " pasajeros: " +
        pasajeros.toString());
  }
}
