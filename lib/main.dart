import 'package:flutter/material.dart';
import 'espacio_noticias_screen.dart'; // Importa la pantalla de noticias
import 'lista_tareas_screen.dart'; // Importa la pantalla de lista de tareas
import 'cambio_monedas_screen.dart'; // Importa la pantalla de cambio de monedas
import 'podcast_screen.dart'; // Importa la pantalla de podcast

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi Aplicación Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => MenuScreen(),
        '/noticias': (context) => EspacioNoticiasScreen(),
        '/tareas': (context) => ListaTareasScreen(),
        '/cambioMonedas': (context) => CambioMonedasScreen(),
        '/podcast': (context) => PodcastScreen(),
      },
    );
  }
}

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menú Principal'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Espacio de Noticias'),
            onTap: () {
              Navigator.pushNamed(context, '/noticias');
            },
          ),
          ListTile(
            title: Text('Lista de Tareas'),
            onTap: () {
              Navigator.pushNamed(context, '/tareas');
            },
          ),
          ListTile(
            title: Text('Cambio de Monedas'),
            onTap: () {
              Navigator.pushNamed(context, '/cambioMonedas');
            },
          ),
          ListTile(
            title: Text('Podcast'),
            onTap: () {
              Navigator.pushNamed(context, '/podcast');
            },
          ),
        ],
      ),
    );
  }
}

// Aquí puedes agregar los demás archivos si los sepa
