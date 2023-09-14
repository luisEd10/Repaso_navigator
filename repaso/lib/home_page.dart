import 'package:flutter/material.dart';
import 'package:repaso/second_page.dart';
import 'package:repaso/third_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var dialogController = TextEditingController();
  String strPage3 = "";
  String strPage2 = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Tarea 1'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("Bienvenidos", style: TextStyle(fontSize: 48, fontFamily: 'Pacifico'),),
            Image.asset("assets/image/dart_side.png"),
            Text("Seleccione la accion a realizar:", style: TextStyle(fontWeight: FontWeight.w900, fontSize: 16),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(onPressed: () {
                    _showResult();
                  },
                  child: Text("Pagina 2", style: TextStyle(color: Colors.white),),
                  color: Colors.blue,
                ), 
                MaterialButton(
                  onPressed: () async{
                    strPage3 = await Navigator.of(context).push(MaterialPageRoute(builder: (context) => ThirdPage()));
                    setState(() {
                      
                    });
                  },
                  child: Text("Pagina 3", style: TextStyle(color: Colors.white)),
                  color: Colors.blue,
                )
              ],
            ),
            Text("Pg.2 => ${strPage2}"),
            Text("Pg.3 => ${strPage3}"),
          ],
        )
      );
  }

  void _showResult() {
    showDialog(context: context, builder: (context){
      return AlertDialog(
        title: Text('Ingrese datos'),
        content: TextField(
          controller: dialogController,
          decoration: InputDecoration(hintText: "Text Field in Dialog"),
        ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              MaterialButton(onPressed: () {

                },
                child: Text("Cancelar"),
              ),
              MaterialButton(onPressed: () async{
                  strPage2 = await Navigator.of(context).push(MaterialPageRoute(builder: (context) => SecondPage(datoStr: dialogController.text)));
                  setState(() {
                    
                  });
                },
                child: Text("Aceptar"),
              )
            ],
          )
        ],
      );
    });
  }
}