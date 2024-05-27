import 'package:flutter/material.dart';

final txtTipodeidentificacion = TextEditingController();
final txtIdentificacion       = TextEditingController();
final txtNombres              = TextEditingController();
final txtApellidos            = TextEditingController();
final txtGenero               = TextEditingController();
final txtDirection            = TextEditingController();
final txtCiudad               = TextEditingController();
final txtTelefono             = TextEditingController();
final txtEmail                = TextEditingController();
final txtTipodesangre         = TextEditingController();

MOdalNUevaPersona(BuildContext context) {
  return showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.brown,
            foregroundColor: Colors.white,
            title: Text("nueva paersona"),
          ),
          body: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      icon: Icon(Icons.key_sharp),
                      labelText: 'tipo identificacion',
                      hintText: "CC TI RegCiv.."),
                ),
                TextFormField(
                  decoration: InputDecoration(
                      icon: Icon(Icons.note),
                      labelText: 'Identificacion',
                      hintText: "CC TI RegCiv.."),
                ),
                TextFormField(
                  decoration: InputDecoration(
                      icon: Icon(Icons.person),
                      labelText: 'nombre',
                      hintText: "CC TI RegCiv.."),
                ),
                TextFormField(
                  decoration: InputDecoration(
                      icon: Icon(Icons.add_reaction_rounded),
                      labelText: 'pellidos',
                      hintText: "ABCD"),
                ),
                TextFormField(
                  decoration: InputDecoration(
                      icon: Icon(Icons.male),
                      labelText: 'Genero',
                      hintText: "Masculino/Femenino"),
                ),
                TextFormField(
                  decoration: InputDecoration(
                      icon: Icon(Icons.album_rounded),
                      labelText: 'Direccion',
                      hintText: "Av.. cll # barrio"),
                ),
                TextFormField(
                  decoration: InputDecoration(
                      icon: Icon(Icons.location_city),
                      labelText: 'Ciudad',
                      hintText: ""),
                ),
                TextFormField(
                  decoration: InputDecoration(
                      icon: Icon(Icons.ad_units_sharp),
                      labelText: 'Telefono',
                      hintText: "numero celular"),
                ),
                TextFormField(
                  decoration: InputDecoration(
                      icon: Icon(Icons.mail),
                      labelText: 'email',
                      hintText: "@gmail   @outluck"),
                ),
                TextFormField(
                  decoration: InputDecoration(
                      icon: Icon(Icons.bloodtype),
                      labelText: 'tipo de sangre',
                      hintText: "AB+ AB- A+ A- B+ B- O+ O-"),
                ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.brown,
            foregroundColor: Colors.white,
            onPressed: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.save),
          ),
        );
      });
}
