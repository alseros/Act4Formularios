import 'package:flutter/material.dart';

class FormularioPaquetes extends StatefulWidget {
  const FormularioPaquetes({super.key});

  @override
  MiFormProductos2 createState() {
    return MiFormProductos2();
  }
}

class MiFormProductos2 extends State<FormularioPaquetes> {
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
                hintText: "Ingrese el peso del paquete",
                labelText: "Peso",
                prefixIcon: Icon(
                  Icons.monitor_weight,
                  color: Color(0xff2f1913),
                )),
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, escriba el peso';
              } else if (!RegExp(r'[0-9]+[,.]{0,1}[0-9]*').hasMatch(value)) {
                return "Por favor introduce un peso valido";
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
                hintText: "Ingrese el medio de transporte",
                labelText: "Medio de transporte",
                prefixIcon: Icon(
                  Icons.airplanemode_active,
                  color: Color(0xff2f1913),
                )),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, ingrese correctamente su medio de transporte.';
              } else if (!RegExp(r"[a-zA-Z ]+|\s").hasMatch(value)) {
                return "Por favor, introduce un medio de transporte valido";
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
                hintText:
                    "Ingrese las dimensiones del paquete (3cm x 10cm x 2 cm)",
                labelText: "Dimensiones",
                prefixIcon: Icon(
                  Icons.check_box_outline_blank_rounded,
                  color: Color(0xff2f1913),
                )),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, ingrese las dimensiones del paquete.';
              } else if (!RegExp(r"[a-zA-Z ]+|\s").hasMatch(value)) {
                return "Por favor, introduce unas dimensiones del paquete validas";
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
                hintText: "Ingrese si su paquete es fragil o no es fragil",
                labelText: "Fragil",
                prefixIcon: Icon(
                  Icons.wine_bar,
                  color: Color(0xff2f1913),
                )),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, ingrese si su paquete es fragil o no es fragil.';
              } else if (!RegExp(r"[a-zA-Z ]+|\s").hasMatch(value)) {
                return "Por favor, introduce si su paquete es fragil o no es fragil";
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
                hintText: "Ingrese el precio del envio (100 + ?)",
                labelText: "Precio de envio",
                prefixIcon: Icon(
                  Icons.model_training,
                  color: Color(0xff2f1913),
                )),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, ingrese el precio de envio.';
              } else if (!RegExp(r'[0-9]+[,.]{0,1}[0-9]*').hasMatch(value)) {
                return "Por favor, ingrese un precio de envio valido.";
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
                hintText: "Ingrese el ID del Usuario",
                labelText: "ID usuario",
                prefixIcon: Icon(
                  Icons.perm_identity,
                  color: Color(0xff2f1913),
                )),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, ingrese correctamente el ID usuario';
              } else if (!RegExp(r'[0-9]+[,.]{0,1}[0-9]*').hasMatch(value)) {
                return "Por favor, introduce un ID usuario valido";
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
                hintText: "Ingrese el ID del paquete",
                labelText: "ID paquete",
                prefixIcon: Icon(
                  Icons.perm_identity,
                  color: Color(0xff2f1913),
                )),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, ingrese correctamente el ID paquete';
              } else if (!RegExp(r'[0-9]+[,.]{0,1}[0-9]*').hasMatch(value)) {
                return "Por favor, introduce un ID paquete valido";
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
                hintText: "Ingrese el ID del transporte",
                labelText: "ID transporte",
                prefixIcon: Icon(
                  Icons.perm_identity,
                  color: Color(0xff2f1913),
                )),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, ingrese correctamente el ID transporte';
              } else if (!RegExp(r'[0-9]+[,.]{0,1}[0-9]*').hasMatch(value)) {
                return "Por favor, introduce un ID transporte valido";
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
                  backgroundColor: const Color(0xff045340)),
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
