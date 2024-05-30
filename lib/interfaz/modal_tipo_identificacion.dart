import 'package:flutter/material.dart';

String v_tipoi_identificacion = 'cedula';

ModalTipoIdentificacion(BuildContext context) {
  return showModalBottomSheet(
      context: context,
      builder: (context) {
        return Scaffold(
          appBar: AppBar(
            title: Text("tipos de identificacion"),
          ),
          body: ListView.builder(
              itemCount: tipos_de_identificacion.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(tipos_de_identificacion[index]["nombre"]),
                  trailing: Icon(Icons.arrow_circle_right_outlined),
                  onTap: () {
                    v_tipoi_identificacion = tipos_de_identificacion[index]['nombre'];
                    Navigator.pop(context);
                    print(v_tipoi_identificacion);
                  },
                );
              }),
        );
      });
}

// !////////////////////////////////////////////////

List<Map<String, dynamic>> tipos_de_identificacion = [
  {"id": 1, 'nombre': "cedula de ciudadania",  'abrebiacion': "CC"},
  {"id": 2, 'nombre': "tarjeta de identidad",  'abrebiacion': "TI"},
  {"id": 3, 'nombre': "cedula de extranjeria", 'abrebiacion': "CE"},
  {"id": 4, 'nombre': "pasaporte",             'abrebiacion': "PA"},
];
