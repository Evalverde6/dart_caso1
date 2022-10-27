import 'Vehiculo.dart';

class Camioneta extends Vehiculo {
  late int carga;
  late int ejes;
  Camioneta(super.serieMotor, super.marca, super.ano, super.precio, this.carga,
      this.ejes);

  @override
  String toString() {
    
    return "serie: $serieMotor marca: $marca ano: $ano precio: $precio carga: $carga ejes: $ejes";
  }
      
}
