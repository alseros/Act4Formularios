import 'package:flutter/material.dart';

class MiFormulario1 extends StatefulWidget {
  const MiFormulario1({super.key});

  @override
  MiFormProductos createState() {
    return MiFormProductos();
  }
}

class MiFormProductos extends State<MiFormulario1> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            decoration: const InputDecoration(
                hintText: "Ingrese su ID",
                labelText: "ID",
                prefixIcon: Icon(
                  Icons.verified_user_outlined,
                  color: Color(0xff2f1913),
                )),
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, escriba el ID';
              } else if (!RegExp(r'[0-9]+[,.]{0,1}[0-9]*').hasMatch(value)) {
                return "Por favor introduce un ID valido";
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
                hintText: "Ingrese el nombre",
                labelText: "Nombre",
                prefixIcon: Icon(
                  Icons.supervised_user_circle,
                  color: Color(0xff2f1913),
                )),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, ingrese correctamente el nombre.';
              } else if (!RegExp(r"[a-zA-Z ]+|\s").hasMatch(value)) {
                return "Por favor, introduce un nombre valido";
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
                hintText: "Ingrese su Apellido",
                labelText: "Apellido",
                prefixIcon: Icon(
                  Icons.supervised_user_circle,
                  color: Color(0xff2f1913),
                )),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, ingrese el apellido';
              } else if (!RegExp(r"[a-zA-Z ]+|\s").hasMatch(value)) {
                return "Por favor, introduce un apellido valido";
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
                hintText: "Ingrese el correo",
                labelText: "Correo",
                prefixIcon: Icon(
                  Icons.email,
                  color: Color(0xff2f1913),
                )),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, ingrese correctamente el correo';
              } else if (!RegExp(r"[a-zA-Z ]+|\s").hasMatch(value)) {
                return "Por favor, introduce un correo valido";
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
                hintText: "Ingrese su numero de telefono",
                labelText: "Telefono",
                prefixIcon: Icon(
                  Icons.telegram,
                  color: Color(0xff2f1913),
                )),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, ingrese el telefono.';
              } else if (!RegExp(r'[0-9]+[,.]{0,1}[0-9]*').hasMatch(value)) {
                return "Por favor, introduce un telefono valido";
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
                hintText: "Ingrese su direccion",
                labelText: "Direccion",
                prefixIcon: Icon(
                  Icons.directions_car_filled_outlined,
                  color: Color(0xff2f1913),
                )),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, ingrese correctamente su direccion';
              } else if (!RegExp(r"[a-zA-Z ]+|\s").hasMatch(value)) {
                return "Por favor, introduce una direccion valida";
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
                hintText: "Ingrese su codigo postal",
                labelText: "Codigo Postal;",
                prefixIcon: Icon(
                  Icons.house,
                  color: Color(0xff2f1913),
                )),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, ingrese su codigo postal';
              } else if (!RegExp(r'[0-9]+[,.]{0,1}[0-9]*').hasMatch(value)) {
                return "Por favor introduce un codigo postal valido";
              }
              return null;
            },
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 135.0),
            child: ElevatedButton(
              onPressed: () {
                // Validate returns true if the form is valid, or false otherwise.
                if (_formKey.currentState!.validate()) {
                  showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: const Text('¡Formulario Enviado!'),
                      content: const Text(
                          'Tú información fue enviada correctamente.'),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'Aceptar'),
                          child: const Text('OK'),
                        ),
                      ],
                    ),
                  );
                }
              },
              style: TextButton.styleFrom(
                  foregroundColor: const Color(0xfff2f2f2),
                  backgroundColor: const Color(0xffc1b755)),
              child: const Text(
                "Enviar",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
