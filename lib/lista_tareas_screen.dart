import 'package:flutter/material.dart';

class ListaTareasScreen extends StatefulWidget {
  @override
  _ListaTareasScreenState createState() => _ListaTareasScreenState();
}

class _ListaTareasScreenState extends State<ListaTareasScreen> {
  final List<String> tareas = [];
  final TextEditingController controladorTarea = TextEditingController();

  void agregarTarea(String tarea) {
    setState(() {
      tareas.add(tarea);
    });
    controladorTarea.clear();
  }

  void eliminarTarea(int index) {
    setState(() {
      tareas.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Tareas'),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: controladorTarea,
              decoration: InputDecoration(
                labelText: 'Agregar Tarea',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              if (controladorTarea.text.isNotEmpty) {
                agregarTarea(controladorTarea.text);
              }
            },
            child: Text('Agregar'),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: tareas.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(tareas[index]),
                  trailing: IconButton(
                    icon: Icon(Icons.delete, color: Colors.red),
                    onPressed: () {
                      eliminarTarea(index);
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
