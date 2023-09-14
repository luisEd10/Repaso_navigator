import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  bool bandera_1 = false;
  bool bandera_2 = false;
  bool bandera_3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Pagina 3'),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MaterialButton(onPressed: () {
              bandera_1 = true;
                setState(() {
                  
                });
                Navigator.of(context).pop(":c");
              },
              child: Text(":c", style: TextStyle(color: bandera_1==true?Colors.white:Colors.black),),
              color: bandera_1==true?Colors.black:Colors.white,
            ),
            MaterialButton(onPressed: () {
              bandera_2 = true;
              setState(() {
                
              });
                
                Navigator.of(context).pop("^_^");
              },
              child: Text("^_^", style: TextStyle(color: bandera_2==true?Colors.white:Colors.black)),
              color: bandera_2==true?Colors.black:Colors.white,
            ),
            MaterialButton(onPressed: () {
              bandera_3 = true;
              setState(() {
                
              });
                
                Navigator.of(context).pop(":)");
              },
              child: Text(":)", style: TextStyle(color: bandera_3==true?Colors.white:Colors.black)),
              color: bandera_3==true?Colors.black:Colors.white,
            )
          ],
        )
      );
  }
}