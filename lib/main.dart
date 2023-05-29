import 'package:flutter/material.dart';
import 'package:orozco/formulario1.dart';
import 'package:orozco/formulario2.dart';
import 'package:orozco/formulario3.dart';
import 'package:orozco/formulario4.dart';

void main() => runApp(const MiAplicacionCentral());

class MiAplicacionCentral extends StatelessWidget {
  const MiAplicacionCentral({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Centraal Camionera',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      // A widget which will be started on application startup
      home: const MiPaginaInicial(titulo: 'Central Camionera'),
    );
  }
}

class MiPaginaInicial extends StatelessWidget {
  final String titulo;
  const MiPaginaInicial({super.key, required this.titulo});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text('Central Camionera'),
            backgroundColor: const Color(0xffe0da86),
            elevation: 8,
            bottom: TabBar(
              indicatorColor: Colors.amberAccent,
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), // Creates border
                  color: const Color(0xffffffff)),
              tabs: [
                Tab(
                  icon: Image.network(
                      'https://cdn-icons-png.flaticon.com/512/3126/3126647.png'),
                ),
                Tab(
                  icon: Image.network(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e6/Bus-logo.svg/1024px-Bus-logo.svg.png'),
                ),
                Tab(
                  icon: Image.network(
                      'https://cdn-icons-png.flaticon.com/512/554/554744.png'),
                ),
                Tab(
                  icon: Image.network(
                      'https://images.vexels.com/media/users/3/207354/isolated/preview/cbda86a5ae04727aef1365df19ea330e-trazo-de-icono-de-boleto-de-viaje.png'),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              ListView(
                children: const [
                  Text(
                    "Formulario Cliente",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  MiFormulario1(),
                ],
              ),
              ListView(
                children: const [
                  Text(
                    "Formulario Camion",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  MiFormulario2(),
                ],
              ),
              ListView(
                children: const [
                  Text(
                    "Formulario Empleados",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  MiFormulario3(),
                ],
              ),
              ListView(
                children: const [
                  Text(
                    "Formulario boletos",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  MiFormulario4(),
                ],
              ),
            ],
          ),
        ));
  }
}
