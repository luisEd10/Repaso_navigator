import 'dart:math';

import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  final String datoStr;
  const SecondPage({super.key, required this.datoStr});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  int num = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Pagina 2'),
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color.fromARGB(255, 63, 160, 240),Colors.white]
            )
          ),
          width: 500,
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Genere numero random", style: TextStyle(fontSize: 30, color: Colors.purple, fontWeight: FontWeight.w900, fontFamily: 'SourceSans3'),),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text("$num", style: TextStyle(fontSize: 25, color: Colors.red, fontWeight:FontWeight.w900, fontFamily: 'SourceSans3' ),),
                ),
                MaterialButton(onPressed: () {
                      num = getRandomInt();
                      setState(() {
                        
                      });
                  },
                  child: Text("Generar"),
                  color: Colors.white,
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: MaterialButton(onPressed: () {
                      Navigator.of(context).pop("${widget.datoStr+num.toString()}");
                    },
                    child: Text("Guardar"),
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        )
      );
  }

  int getRandomInt() {
    final random = Random();
    return 1 + random.nextInt(200 + 300 + 1);
  }

}