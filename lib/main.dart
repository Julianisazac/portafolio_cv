import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PortafolioScreen(),
    );
}
}

class PortafolioScreen extends StatelessWidget {
  const PortafolioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Mi Portafolio',
          style: TextStyle(
            fontSize: 24.0, // Tamaño de la fuente
            fontWeight: FontWeight.bold,
            color: Colors.blue, // Color del texto
          ),
        ),
      ),
      body: ListView(
        children: const [
          SectionCard(
            title: 'Datos Personales',
            content: [
              'Nombre: Julián Isaza Cuartas',
              'Correo: julianisazac@gmail.com',
              'Teléfono: 3122859264',
            ],
          ),
          SectionCard(
            title: 'Estudios',
            content: [
              'Título Universitario: Tecnólogo en Análisis y desarrollo de software',
              'Universidad: SENA',
              'Año de Graduación: 2024',
            ],
          ),
          SectionCard(
            title: 'Habilidades',
            content: [
              'Flutter',
              'Dart',
              'Desarrollo de Aplicaciones Móviles',
              'Javascript',
              'Java',
              'HTML',
              'Python',
              'Angular',
              'CSS',
              'C#'
            ],
          ),
        ],
      ),
    );
  }
}

class SectionCard extends StatelessWidget {
  final String title;
  final List<String> content;

  const SectionCard({super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: content
                  .map((item) => Text(
                        item,
                        style: const TextStyle(fontSize: 16.0),
                      ))
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
