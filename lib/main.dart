import 'package:flutter/material.dart';
import 'package:rodriguez/registro_usuarios.dart';
import 'package:rodriguez/envios_paquetes.dart';
import 'package:rodriguez/registro_trabajador.dart';
import 'package:rodriguez/tarjeta_bancaria.dart';

void main() => runApp(const MiAplicacionCentral());

class MiAplicacionCentral extends StatelessWidget {
  const MiAplicacionCentral({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Agencia Aduanal',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      // A widget which will be started on application startup
      home: const MiPaginaInicial(titulo: 'Agencia Aduanal'),
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
            title: const Text('Agencia Aduanal'),
            backgroundColor: const Color(0xff045340),
            elevation: 8,
            bottom: TabBar(
              indicatorColor: Colors.amberAccent,
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(0), // Creates border
                  color: const Color(0xffffffff)),
              tabs: [
                Tab(
                  icon: Image.network(
                      'https://cdn-icons-png.flaticon.com/512/3126/3126647.png'),
                ),
                Tab(
                  icon: Image.asset('assets/caja.png'),
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
                    "Registro de Usuarios",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  FormularioUsuarios(),
                ],
              ),
              ListView(
                children: const [
                  Text(
                    "Envios de Paquetes",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  FormularioPaquetes(),
                ],
              ),
              ListView(
                children: const [
                  Text(
                    "Registro del trabajador",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  FormularioTrabajador(),
                ],
              ),
              ListView(
                children: const [
                  Text(
                    "Tarjeta bancaria",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  FormularioTarjeta(),
                ],
              ),
            ],
          ),
        ));
  }
}
