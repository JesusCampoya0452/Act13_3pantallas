import 'package:flutter/material.dart';
import 'package:myapp/paginas/cargando.dart';
import 'package:myapp/paginas/nosotros.dart';
import 'package:myapp/paginas/inicio_rapido.dart';

void main() {
  runApp(const MiAppCampoya());
}

class MiAppCampoya extends StatelessWidget {
  const MiAppCampoya({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Navegación Campoya 6J',
      // Definimos la ruta inicial
      initialRoute: '/',
      // Mapa de rutas nombradas
      routes: {
        '/': (context) => const Pagina1(),
        '/segunda': (context) => const Pagina2(),
        '/tercera': (context) => const Pagina3(),
      },
    );
  }
}
