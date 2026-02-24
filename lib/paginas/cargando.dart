import 'package:flutter/material.dart';

class Pagina1 extends StatelessWidget {
  const Pagina1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Lavandería", style: TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
        backgroundColor: Colors.blue,
        leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.account_circle)
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Imagen presionable que navega a la página 2
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/segunda'),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  'https://images.unsplash.com/photo-1545173168-9f1947eebb7f?q=80&w=500', 
                  width: 250,
                  height: 250,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Cargando...",
              style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}