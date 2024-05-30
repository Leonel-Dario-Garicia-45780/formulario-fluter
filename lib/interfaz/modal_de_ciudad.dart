import 'package:flutter/material.dart';

String v_tipoi_identificacion = '';

ModalTipoCiudad(BuildContext context) {
  return showModalBottomSheet(
      context: context,
      builder: (context) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Ciudad"),
          ),
          body: ListView.builder(
              itemCount: tipos_de_ciudad.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(tipos_de_ciudad[index]["ciudad"]),
                  trailing: Icon(Icons.arrow_circle_right_outlined),
                  onTap: () {
                    v_tipoi_identificacion = tipos_de_ciudad[index]['ciudad'];
                    Navigator.pop(context);
                    print(v_tipoi_identificacion);
                  },
                );
              }),
        );
      });
}

// !////////////////////////////////////////////////

List<Map<String, dynamic>> tipos_de_ciudad = [
  {"id": 1, 'ciudad': "Acacías"},
  {"id": 2, 'ciudad': "Apartadó"},
  {"id": 3, 'ciudad': "Arauca" },
  {"id": 4, 'ciudad':"Armenia"},
  {"id": 5, 'ciudad':"Barrancabermeja"},
  {"id": 6, 'ciudad':"Barranquilla"},
  {"id": 7, 'ciudad':"Bello"},
  {"id": 8, 'ciudad':"Bogotá"},
  {"id": 9, 'ciudad':"Bucaramanga"},
  {"id":10, 'ciudad':"Buenaventura"},
  {"id":11, 'ciudad':"Cali"},
  {"id":12, 'ciudad':"Cartagena"},
  {"id":13, 'ciudad':"Cartago"},
  {"id":14, 'ciudad':"Cúcuta"},
  {"id":15, 'ciudad':"Chía"},
  {"id":16, 'ciudad':"Dosquebradas"},
  {"id":17, 'ciudad':"Duitama"},
  {"id":18, 'ciudad':"Envigado"},
  {"id":19, 'ciudad':"Facatativá"},
  {"id":20, 'ciudad':"Florencia"},
  {"id":21, 'ciudad':"Floridablanca"},
  {"id":22, 'ciudad':"Fusagasugá"},
  {"id":23, 'ciudad':"Girardot"},
  {"id":24, 'ciudad':"Girón"},
  {"id":25, 'ciudad':"Ibagué"},
  {"id":26, 'ciudad':"Ipiales"},
  {"id":27, 'ciudad':"Itagüí"},
  {"id":28, 'ciudad':"Jamundí"},
  {"id":29, 'ciudad':"Manizales"},
  {"id":30, 'ciudad':"Maicao"},
  {"id":31, 'ciudad':"Medellín"},
  {"id":32, 'ciudad':"Montería"},
  {"id":33, 'ciudad':"Neiva"},
  {"id":34, 'ciudad':"Palmira"},
  {"id":35, 'ciudad':"Pasto"},
  {"id":36, 'ciudad':"Pereira"},
  {"id":37, 'ciudad':"Piedecuesta"},
  {"id":38, 'ciudad':"Popayán"},
  {"id":39, 'ciudad':"Quibdó"},
  {"id":40, 'ciudad':"Riohacha"},
  {"id":41, 'ciudad':"Rionegro"},
  {"id":42, 'ciudad':"Santa Marta"},
  {"id":43, 'ciudad':"Sincelejo"},
  {"id":44, 'ciudad':"Soacha"},
  {"id":45, 'ciudad':"Sogamoso"},
  {"id":46, 'ciudad':"Soledad"},
  {"id":47, 'ciudad':"Tuluá"},
  {"id":48, 'ciudad':"Tumaco"},
  {"id":49, 'ciudad':"Tunja"},
  {"id":50, 'ciudad':"Valledupar"},
  {"id":51, 'ciudad':"Villavicencio"},
  {"id":52, 'ciudad':"Yopal"},
  {"id":53, 'ciudad':"Zipaquirá"},
];
