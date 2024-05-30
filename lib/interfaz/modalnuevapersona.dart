import 'package:flutter/material.dart';
import 'package:flutter_formulario_/interfaz/modal_de_ciudad.dart';
import 'package:flutter_formulario_/interfaz/modal_de_genero.dart';
import 'package:flutter_formulario_/interfaz/modal_de_sangre.dart';
import 'package:flutter_formulario_/interfaz/modal_tipo_identificacion.dart';

final txtTipodeidentificacion = TextEditingController();
final txtIdentificacion = TextEditingController();
final txtNombres = TextEditingController();
final txtApellidos = TextEditingController();
final txtGenero = TextEditingController();
final txtDirection = TextEditingController();
final txtCiudad = TextEditingController();
final txtTelefono = TextEditingController();
final txtEmail = TextEditingController();
final txtTipodesangre = TextEditingController();

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
            /* child: Column( */
            child: ListView(
              children: [
                ListTile(
                  title: Text("cedula de ciudadania"),
                  subtitle: Text(""),
                  trailing: Icon(Icons.arrow_circle_right_outlined),
                  leading: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    ModalTipoIdentificacion(context);
                  },
                ),
/*                 TextFormField(
                  controller: txtTipodeidentificacion,
                  decoration: InputDecoration(
                      icon: Icon(Icons.key_sharp),
                      labelText: 'tipo identificacion',
                      hintText: "CC TI RegCiv.."),
                ), */
                TextFormField(
                  controller: txtIdentificacion,
                  decoration: InputDecoration(
                      icon: Icon(Icons.note),
                      labelText: 'Identificacion',
                      hintText: "CC TI RegCiv.."),
                ),
                TextFormField(
                  controller: txtNombres,
                  decoration: InputDecoration(
                      icon: Icon(Icons.person),
                      labelText: 'nombre',
                      hintText: "CC TI RegCiv.."),
                ),
                TextFormField(
                  controller: txtApellidos,
                  decoration: InputDecoration(
                      icon: Icon(Icons.add_reaction_rounded),
                      labelText: 'apellidos',
                      hintText: "ABCD"),
                ),
                ListTile(
                  title: Text("Genero"),
                  subtitle: Text(""),
                  trailing: Icon(Icons.arrow_circle_right_outlined),
                  leading: Icon(Icons.male),
                  onTap: () {
                    ModalTipoGenero(context);
                  },
                ),
/*                 TextFormField(
                  controller: txtGenero,
                  decoration: InputDecoration(
                      icon: Icon(Icons.male),
                      labelText: 'Genero',
                      hintText: "Masculino/Femenino"),
                ), */
                TextFormField(
                  controller: txtDirection,
                  decoration: InputDecoration(
                      icon: Icon(Icons.album_rounded),
                      labelText: 'Direccion',
                      hintText: "Av.. cll # barrio"),
                ),
                ListTile(
                  title: Text("Ciudad"),
                  subtitle: Text(""),
                  trailing: Icon(Icons.arrow_circle_right_outlined),
                  leading: Icon(Icons.location_city),
                  onTap: () {
                    ModalTipoCiudad(context);
                  },
                ),
/*                 TextFormField(
                  controller: txtCiudad,
                  decoration: InputDecoration(
                      icon: Icon(Icons.location_city),
                      labelText: 'Ciudad',
                      hintText: ""),
                ), */
                TextFormField(
                  controller: txtTelefono,
                  decoration: InputDecoration(
                      icon: Icon(Icons.ad_units_sharp),
                      labelText: 'Telefono',
                      hintText: "numero celular"),
                ),
                TextFormField(
                  controller: txtEmail,
                  decoration: InputDecoration(
                      icon: Icon(Icons.mail),
                      labelText: 'email',
                      hintText: "@gmail   @outluck"),
                ),
                ListTile(
                  title: Text("Tipo de sangre"),
                  subtitle: Text(""),
                  trailing: Icon(Icons.arrow_circle_right_outlined),
                  leading: Icon(Icons.bloodtype),
                  onTap: () {
                    ModalTipoSangre(context);
                  },
                ),
/*                 TextFormField(
                  controller: txtTipodesangre,
                  decoration: InputDecoration(
                      icon: Icon(Icons.bloodtype),
                      labelText: 'tipo de sangre',
                      hintText: "AB+ AB- A+ A- B+ B- O+ O-"),
                ), */
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.brown,
            foregroundColor: Colors.white,
            onPressed: () {
              if (txtNombres.text == "" || txtNombres.text == null) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("por favor completar el campo nombres"),
                  backgroundColor: Colors.orange[400],
                ));
              } else {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("se guardaron los datos correctamente"),
                  backgroundColor: Colors.green[400],
                ));
                Navigator.pop(context);
                txtNombres.clear();
              }
            },
            child: Icon(Icons.save),
          ),
        );
      });
}
