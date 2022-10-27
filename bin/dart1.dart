import 'dart:io';

import 'models/Auto.dart';
import 'models/Camioneta.dart';

List<Auto> autosCompacto = [];
List<Auto> autosLujo = [];
List<Auto> vagonetas = [];
List<Camioneta> camionetas = [];

void main(List<String> arguments) {
  menu();
}

void menu() {
  print("Menu Principal\n");
  print("1.Automoviles Compactos");
  print("2.Automoviles de Lujo");
  print("3.Vagonetas");
  print("4.Camionetas");
  print("5.Salir");
  print("Elegir una opción:");

  var opcion = int.parse(stdin.readLineSync().toString());

  if (opcion == 5) {
    print("La sesión ha concluido");
    return;
  } else if (opcion >= 1 && opcion < 5) {
    submenu(opcion);
  } else {
    print("Elegir una opción válida (1-5)");
    print("");
    menu();
  }
}

void submenu(int tipo) {
  while (true) {
    print("Sub Menu\n");
    print("1.Registrar");
    print("2.Listar");
    print("3.Salir");
    print("Elegir una opción:");

    var opcion = int.parse(stdin.readLineSync().toString());
    switch (opcion) {
      case 1:
        registrar(tipo);
        break;
      case 2:
        listar(tipo);
        break;
      case 3:
        menu();
        return;
      default:
        print("Elegir una opción válida (1-3)");
        break;
    }
  }
}

void registrar(int tipo) {
  print("Serie de motor: ");
  String serieMotor = stdin.readLineSync().toString();
  print("Marca: ");
  String marca = stdin.readLineSync().toString();
  print("Año: ");
  int ano = int.parse(stdin.readLineSync().toString());
  print("Precio: ");
  double precio = double.parse(stdin.readLineSync().toString());
  late int pasajeros;
  late int carga;
  late int ejes;

  if (tipo < 4) {
    print("Pasajeros: ");
    pasajeros = int.parse(stdin.readLineSync().toString());
  } else {
    print("carga: ");
    carga = int.parse(stdin.readLineSync().toString());
    print("Ejes: ");
    ejes = int.parse(stdin.readLineSync().toString());
  }

  switch (tipo) {
    case 1:
      Auto newAutoCompacto = Auto(serieMotor, marca, ano, precio, pasajeros);
      autosCompacto.add(newAutoCompacto);
      break;
    case 2:
      Auto newAutoLujo = Auto(serieMotor, marca, ano, precio, pasajeros);
      autosLujo.add(newAutoLujo);
      break;
    case 3:
      Auto newVagoneta = Auto(serieMotor, marca, ano, precio, pasajeros);
      vagonetas.add(newVagoneta);
      break;
    case 4:
      Camioneta newCamioneta =
          Camioneta(serieMotor, marca, ano, precio, carga, ejes);
      camionetas.add(newCamioneta);
      break;
  }
}

void listar(int tipo) {
  switch (tipo) {
    case 1:
      for (int i = 0; i < autosCompacto.length; i++) {
        print("${i + 1}: ${autosCompacto[i]}");
      }
      break;
    case 2:
      for (int i = 0; i < autosLujo.length; i++) {
        print("${i + 1}: ${autosLujo[i]}");
      }
      break;
    case 3:
      for (int i = 0; i < vagonetas.length; i++) {
        print("${i + 1}: ${vagonetas[i]}");
      }
      break;
    case 4:
      for (int i = 0; i < camionetas.length; i++) {
        print("${i + 1}: ${camionetas[i]}");
      }
      break;
  }
}
