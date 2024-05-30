import 'package:flutter/material.dart';

String v_tipoi_identificacion = 'AB+';

ModalTipoSangre(BuildContext context) {
  return showModalBottomSheet(
      context: context,
      builder: (context) {
        return Scaffold(
          appBar: AppBar(
            title: Text("tipo de sangre"),
          ),
          body: ListView.builder(
              itemCount: tipos_de_sangre.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(tipos_de_sangre[index]["tipo"]),
                  trailing: Icon(Icons.arrow_circle_right_outlined),
                  onTap: () {
                    v_tipoi_identificacion = tipos_de_sangre[index]['tipo'];
                    Navigator.pop(context);
                    print(v_tipoi_identificacion);
                  },
                );
              }),
        );
      });
}

// !////////////////////////////////////////////////

List<Map<String, dynamic>> tipos_de_sangre = [
  {"id": 1, 'tipo': "AB+"},
  {"id": 2, 'tipo': "AB-"},
  {"id": 3, 'tipo': "A+"},
  {"id": 4, 'tipo': "A-"},
  {"id": 4, 'tipo': "B+"},
  {"id": 4, 'tipo': "B-"},
  {"id": 4, 'tipo': "O+"},
  {"id": 4, 'tipo': "O-"},
];
