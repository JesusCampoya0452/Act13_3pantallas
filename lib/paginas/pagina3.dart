import 'package:flutter/material.dart';

class Pagina3 extends StatelessWidget {
  const Pagina3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Lavanderia", style: TextStyle(color: Colors.white)),
        backgroundColor:Colors.blue,
        leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.account_circle)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Text(
              "Inicio Rapido",
              style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            // 3 Imágenes de productos
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildProductImage('https://images.unsplash.com/photo-1584622650111-993a426fbf0a?q=80&w=150'),
                _buildProductImage('https://images.unsplash.com/photo-1610557892470-55d9e80c0bce?q=80&w=150'),
                _buildProductImage('https://images.unsplash.com/photo-1563453392212-326f5e854473?q=80&w=150'),
              ],
            ),
            const SizedBox(height: 30),
            Image.network(
              'https://raw.githubusercontent.com/JesusCampoya0452/Imagenes-para-Flutter-6j-11-de-febrero-2026/refs/heads/main/lavado.png',
              width: 350,
              height: 200,
              fit: BoxFit.cover,
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                "Nuestra sucursal principal cuenta con máquinas de autoservicio y personal capacitado para ayudarte en todo momento.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/'),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue, foregroundColor: Colors.white),
              child: const Text("Volver a Página 1"),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  // Widget auxiliar para las miniaturas de productos
  Widget _buildProductImage(String url) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Image.network(url, width: 80, height: 80, fit: BoxFit.cover),
    );
  }
}