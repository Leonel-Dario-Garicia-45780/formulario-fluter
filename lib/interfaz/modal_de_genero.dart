import 'package:flutter/material.dart';

String v_tipoi_identificacion = '';

ModalTipoGenero(BuildContext context) {
  return showModalBottomSheet(
      context: context,
      builder: (context) {
        return Scaffold(
          appBar: AppBar(
            title: Text("genero"),
          ),
          body: ListView.builder(
              itemCount: tipos_de_genero.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(tipos_de_genero[index]["genero"]),
                  trailing: Icon(Icons.arrow_circle_right_outlined),
                  onTap: () {
                    v_tipoi_identificacion = tipos_de_genero[index]['genero'];
                    Navigator.pop(context);
                    print(v_tipoi_identificacion);
                  },
                );
              }),
        );
      });
}

// !////////////////////////////////////////////////

List<Map<String, dynamic>> tipos_de_genero = [
  {"id": 1, 'genero': "Masculino"},
  {"id": 2, 'genero': "Femenino"},
/*   {"id": 3, 'genero': "Marika"}, */
];
