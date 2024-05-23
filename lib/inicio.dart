import 'package:flutter/material.dart';
import 'package:mapas/mapa1.dart';
import 'package:mapas/mapa2.dart';
import 'package:mapas/mapa3.dart';

class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  State<Inicio> createState() => _HomePageState();
}

class _HomePageState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MENU PRINCIPAL MAPAS"),
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Icon(
              Icons.add_location_alt,
              size: 120.0,
              color: Colors.greenAccent,
            ),
            Text(
              "Aplicação Principal",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.blueGrey, fontSize: 25.0),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                ElevatedButton(
                  child: const Text("Mapa Normal"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Mapa1(),
                      ),
                    );
                  },
                ),

                ElevatedButton(
                  child: const Text("Mapa Deserto"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Mapa2(),
                      ),
                    );
                  },
                ),
                ElevatedButton(
                  child: const Text("Mapa Em Branco"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Mapa3(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
