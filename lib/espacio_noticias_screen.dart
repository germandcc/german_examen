import 'package:flutter/material.dart';

class EspacioNoticiasScreen extends StatelessWidget {
  final List<Map<String, String>> noticias = [
    {
      'titulo': 'Nueva Biblioteca Inaugurada',
      'imagen': 'assets/biblioteca.jpg',
      'descripcion': 'La universidad ha inaugurado una nueva biblioteca con recursos digitales y físicos de última generación.'
    },
    {
      'titulo': 'Semana de la Ciencia y Tecnología',
      'imagen': 'assets/semana_ciencia.jpg',
      'descripcion': 'Eventos y talleres dedicados a la ciencia y tecnología, abiertos a todos los estudiantes.'
    },
    {
      'titulo': 'Campeonato Universitario de Fútbol',
      'imagen': 'assets/campeonato_futbol.jpg',
      'descripcion': 'Nuestro equipo de fútbol se ha clasificado para las finales del campeonato universitario.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Espacio de Noticias'),
      ),
      body: ListView.builder(
        itemCount: noticias.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(10.0),
            child: Column(
              children: <Widget>[
                Image.asset(noticias[index]['imagen'] ?? ''),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        noticias[index]['titulo'] ?? '',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        noticias[index]['descripcion'] ?? '',
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}