import 'package:flutter/material.dart';

class Pagina2 extends StatelessWidget {
  const Pagina2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Lavanderia", style: TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
        backgroundColor: Colors.blue,
        leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.account_circle)
        ],
      ),
      body: SingleChildScrollView( // Para evitar errores de desbordamiento
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 20),
              const Text(
                "Nosotros",
                style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, '/tercera'),
                child: Image.network(
                  'https://images.unsplash.com/photo-1517677208171-0bc6725a3e60?q=80&w=500',
                  width: 300,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  "Somos una lavandería comprometida con el cuidado de tus prendas, utilizando la mejor tecnología y productos biodegradables para un acabado perfecto.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}