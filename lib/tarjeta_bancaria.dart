import 'package:flutter/material.dart';

class FormularioTarjeta extends StatefulWidget {
  const FormularioTarjeta({super.key});

  @override
  MiFormProductos4 createState() {
    return MiFormProductos4();
  }
}

class MiFormProductos4 extends State<FormularioTarjeta> {
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
                hintText: "Ingrese el numero de la tarjeta",
                labelText: "Numero de la tarjeta",
                prefixIcon: Icon(
                  Icons.credit_card,
                  color: Color(0xff2f1913),
                )),
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, escriba el numero de la tarjeta';
              } else if (!RegExp(r'[0-9]+[,.]{0,1}[0-9]*').hasMatch(value)) {
                return "Por favor introduce un numero de la tarjeta valido";
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
                hintText: "Ingrese el mes de vencimiento (12)",
                labelText: "Mes de vencimiento",
                prefixIcon: Icon(
                  Icons.credit_card,
                  color: Color(0xff2f1913),
                )),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, ingrese correctamente el mes de vencimiento';
              } else if (!RegExp(r'[0-9]+[,.]{0,1}[0-9]*').hasMatch(value)) {
                return "Por favor, introduce un mes de vencimiento valido";
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
                hintText: "Ingrese el año de vencimiento (2024)",
                labelText: "Año de vencimiento",
                prefixIcon: Icon(
                  Icons.credit_card,
                  color: Color(0xff2f1913),
                )),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, ingrese el año de vencimiento';
              } else if (!RegExp(r'[0-9]+[,.]{0,1}[0-9]*').hasMatch(value)) {
                return "Por favor, introduce un año de vencimiento valido";
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
                hintText: "Ingrese el titular de la tarjeta",
                labelText: "Titular de la tarjeta",
                prefixIcon: Icon(
                  Icons.account_box,
                  color: Color(0xff2f1913),
                )),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, ingrese el titular de la tarjeta';
              } else if (!RegExp(r"[a-zA-Z ]+|\s").hasMatch(value)) {
                return "Por favor, introduce un titular de la tarjeta valido";
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
                hintText: "Ingrese el cvv",
                labelText: "CVV",
                prefixIcon: Icon(
                  Icons.credit_card,
                  color: Color(0xff2f1913),
                )),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, ingrese el cvv.';
              } else if (!RegExp(r'[0-9]+[,.]{0,1}[0-9]*').hasMatch(value)) {
                return "Por favor, introduce un cvv valido";
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
                hintText: "Ingrese si es Debito o credito",
                labelText: "Debito o credito",
                prefixIcon: Icon(
                  Icons.credit_card,
                  color: Color(0xff2f1913),
                )),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, ingrese si es debito o credito';
              } else if (!RegExp(r"[a-zA-Z ]+|\s").hasMatch(value)) {
                return "Por favor, introduce si es debito o credito valido";
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
