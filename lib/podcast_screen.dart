import 'package:flutter/material.dart';

class PodcastScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reproductor de Podcast'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // Imagen del podcast
            Container(
              height: 250.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                image: DecorationImage(
                  image: AssetImage('assets/podcast_cover.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 20.0),
            // Título del Podcast
            Text(
              'Nombre del Podcast',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10.0),
            // Subtítulo o descripción breve
            Text(
              'Descripción breve del episodio',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30.0),
            // Barra de progreso de reproducción
            Slider(
              value: 0.5,
              onChanged: (value) {},
              min: 0.0,
              max: 1.0,
              activeColor: Colors.blue,
              inactiveColor: Colors.grey,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('00:00'),
                Text('30:00'),
              ],
            ),
            SizedBox(height: 20.0),
            // Controles de reproducción
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.fast_rewind, size: 36.0),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.play_arrow, size: 50.0),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.fast_forward, size: 36.0),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
