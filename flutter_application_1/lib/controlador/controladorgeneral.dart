import 'package:flutter_application_1/Clases/Productos.dart';
import 'package:get/get.dart';

class controladorgeneral extends GetxController {
  final _posicionPagina = 0.obs;
  final pro = <productos>[].obs;

  @override
  void onInit() {
    pro.add(productos(
        1,
        "Maletin Totoro", 
        "https://ghibli-merch.com/wp-content/uploads/2021/12/studio-ghibli-totoro-backpack-3-1000x1000.jpg",
        0, 
        120000));
    pro.add(productos(
        2,
        "Lampara Sin cara", 
        "https://img.buzzfeed.com/buzzfeed-static/static/2018-04/11/18/asset/buzzfeed-prod-web-08/sub-buzz-1743-1523486880-13.jpg",
        0, 
        60000));
    pro.add(productos(
        3,
        "Sudadera con capucha", 
        "https://img.joomcdn.net/0c02fef2bd8f5d03c1400e027fabf0a155e0d9fb_original.jpeg",
        0, 
        95000));
    pro.add(productos(
        4,
        "Collar princesa Mononoke", 
        "https://pm1.narvii.com/6249/b0dfe9bcd28a3ac33b87b2008c42c028025d272a_hq.jpg",
        0, 
        45000));
    pro.add(productos(
        5,
        "Caja de musica", 
        "https://http2.mlstatic.com/D_NQ_NP_973862-MCO43748124272_102020-O.webp",
        0, 
        270000));


    // TODO: implement onInit
    super.onInit();
  }

  void cambiarposicion(int x) {
    _posicionPagina.value = x;
  }

  int get posicionPagina => _posicionPagina.value;

  void cambiarCantidad(int posicion, int valor) {
    print(
      "posicion = " + posicion.toString() + " | valor = " + valor.toString());
    pro[posicion].cantidad = valor;  
  }

  int calcularTotal () {
      int total = 0;
      for (var i = 0; i < pro.length; i++) {
        total = total + pro[i].cantidad * pro[i].precio;

      }

    return total;
  }

  void limpiartodo() {
    for (var i = 0; i < pro.length; i++) {
      pro[i].cantidad = 0;
    }
    calcularTotal();

  }

}
