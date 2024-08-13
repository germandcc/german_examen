import 'package:flutter/material.dart';

class CambioMonedasScreen extends StatefulWidget {
  @override
  _CambioMonedasScreenState createState() => _CambioMonedasScreenState();
}

class _CambioMonedasScreenState extends State<CambioMonedasScreen> {
  String? monedaOrigen;
  String? monedaDestino;
  double cantidad = 0.0;
  double resultado = 0.0;

  final Map<String, double> tasasCambio = {
    'USD': 1.0,
    'EUR': 0.85,
    'JPY': 110.0,
    'GBP': 0.75,
  };

  void convertirMoneda() {
    if (monedaOrigen != null && monedaDestino != null && cantidad > 0) {
      double tasaOrigen = tasasCambio[monedaOrigen] ?? 1.0;
      double tasaDestino = tasasCambio[monedaDestino] ?? 1.0;
      setState(() {
        resultado = (cantidad / tasaOrigen) * tasaDestino;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cambio de Monedas'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            DropdownButton<String>(
              hint: Text('Selecciona la moneda de origen'),
              value: monedaOrigen,
              items: tasasCambio.keys.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (newValue) {
                setState(() {
                  monedaOrigen = newValue;
                });
              },
            ),
            DropdownButton<String>(
              hint: Text('Selecciona la moneda de destino'),
              value: monedaDestino,
              items: tasasCambio.keys.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (newValue) {
                setState(() {
                  monedaDestino = newValue;
                });
              },
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Cantidad',
              ),
              onChanged: (value) {
                setState(() {
                  cantidad = double.tryParse(value) ?? 0.0;
                });
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: convertirMoneda,
              child: Text('Convertir'),
            ),
            SizedBox(height: 20),
            Text(
              'Resultado: $resultado',
              style: TextStyle(fontSize: 24.0),
            ),
          ],
        ),
      ),
    );
  }
}
