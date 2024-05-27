// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_formulario_/interfaz/modalnuevapersona.dart';

class HomePrincipal extends StatefulWidget {
  const HomePrincipal({super.key});

  @override
  State<HomePrincipal> createState() => _HomePrincipalState();
}

class _HomePrincipalState extends State<HomePrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        foregroundColor: Colors.white,
        title: Text("registro persona"),
      ),
      body: ListView.builder(
        itemCount: personas.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
              title: Text(personas[index]["nombres"] +
                  " " +
                  personas[index]["apellidos"]),
              subtitle:
                  Text("Documento:\n" + personas[index]["identificacion"]),
              leading: Icon(Icons.arrow_forward_ios));
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.brown,
        foregroundColor: Colors.white,
        onPressed: () {
          MOdalNUevaPersona(context);
        },
        child: Icon(Icons.person_4_sharp),
      ),
    );
  }
}



List<Map<String, dynamic>> personas = [
  {
    'id': 1,
    'identificacion': '123456789',
    'tipo_identificacion': 'Cédula',
    'nombres': 'Juan',
    'apellidos': 'Pérez',
    'genero': 'Masculino',
    'direccion': 'Calle 123',
    'ciudad': 'Ciudad de Ejemplo',
    'telefono': '1234567890',
    'email': 'juan@example.com',
    'tipo_sangre': 'O+',
  },
  {
    'id': 2,
    'identificacion': '987654321',
    'tipo_identificacion': 'Cédula',
    'nombres': 'María',
    'apellidos': 'Gómez',
    'genero': 'Femenino',
    'direccion': 'Avenida Principal',
    'ciudad': 'Otra Ciudad',
    'telefono': '0987654321',
    'email': 'maria@example.com',
    'tipo_sangre': 'A-',
  },
  {
    'id': 3,
    'identificacion': '789456123',
    'tipo_identificacion': 'Pasaporte',
    'nombres': 'Carlos',
    'apellidos': 'Martínez',
    'genero': 'Masculino',
    'direccion': 'Calle Central',
    'ciudad': 'Ciudad Principal',
    'telefono': '741852963',
    'email': 'carlos@example.com',
    'tipo_sangre': 'AB+',
  },
  {
    'id': 4,
    'identificacion': '456789123',
    'tipo_identificacion': 'Cédula',
    'nombres': 'Laura',
    'apellidos': 'López',
    'genero': 'Femenino',
    'direccion': 'Avenida 456',
    'ciudad': 'Ciudad Grande',
    'telefono': '159357852',
    'email': 'laura@example.com',
    'tipo_sangre': 'B-',
  },
  {
    'id': 5,
    'identificacion': '369258147',
    'tipo_identificacion': 'Cédula',
    'nombres': 'Andrés',
    'apellidos': 'González',
    'genero': 'Masculino',
    'direccion': 'Carrera 789',
    'ciudad': 'Ciudad Pequeña',
    'telefono': '456123789',
    'email': 'andres@example.com',
    'tipo_sangre': 'A+',
  },
  {
    'id': 6,
    'identificacion': '258369147',
    'tipo_identificacion': 'Cédula',
    'nombres': 'Ana',
    'apellidos': 'Sánchez',
    'genero': 'Femenino',
    'direccion': 'Calle 456',
    'ciudad': 'Ciudad Mediana',
    'telefono': '321654987',
    'email': 'ana@example.com',
    'tipo_sangre': 'O-',
  },
  {
    'id': 7,
    'identificacion': '147258369',
    'tipo_identificacion': 'Pasaporte',
    'nombres': 'David',
    'apellidos': 'Hernández',
    'genero': 'Masculino',
    'direccion': 'Avenida 987',
    'ciudad': 'Otra Ciudad',
    'telefono': '654987321',
    'email': 'david@example.com',
    'tipo_sangre': 'AB-',
  },
  {
    'id': 8,
    'identificacion': '963852741',
    'tipo_identificacion': 'Cédula',
    'nombres': 'Sofía',
    'apellidos': 'Díaz',
    'genero': 'Femenino',
    'direccion': 'Calle 741',
    'ciudad': 'Ciudad Principal',
    'telefono': '987654321',
    'email': 'sofia@example.com',
    'tipo_sangre': 'A-',
  },
  {
    'id': 9,
    'identificacion': '789654123',
    'tipo_identificacion': 'Cédula',
    'nombres': 'José',
    'apellidos': 'Rodríguez',
    'genero': 'Masculino',
    'direccion': 'Carrera 852',
    'ciudad': 'Otra Ciudad',
    'telefono': '147852369',
    'email': 'jose@example.com',
    'tipo_sangre': 'O+',
  },
  {
    'id': 10,
    'identificacion': '456123789',
    'tipo_identificacion': 'Pasaporte',
    'nombres': 'Lucía',
    'apellidos': 'Fernández',
    'genero': 'Femenino',
    'direccion': 'Calle 369',
    'ciudad': 'Ciudad de Ejemplo',
    'telefono': '852963147',
    'email': 'lucia@example.com',
    'tipo_sangre': 'B+',
  },
];
