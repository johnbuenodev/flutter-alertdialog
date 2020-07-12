import 'package:flutter/material.dart';
import 'dart:io';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'alerts',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  final _paddingbuttonStart = Padding(
    padding: EdgeInsets.fromLTRB(15.0, 0, 0, 0),
  );
  final _paddingButton = Padding(padding: EdgeInsets.only(left: 20.0));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Alerts",
        ),
        actions: <Widget>[
          FlatButton(
            //wiget button exit app
            onPressed: () {
              _AlertCloseApp(context);
            },
            child: Icon(
              //TextInfo exit
              Icons.exit_to_app,
              color: Colors.red,
              size: 35.0,
            ),
          ),
        ],
        backgroundColor: Colors.green,
      ),
      body: Container(
    child: ListView(
        children:<Widget>[
          Center(
          child: Padding(
            padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                //ListView(
                  //children: <Widget>[
                Center(
                 child: Column(
                 children:<Widget>[

                    Text("Exemplos de Alert!"),
                    Padding(padding: EdgeInsets.only(top:20.0)),
                    Text("Nome IOt:"),
                    SizedBox(),
                    Text("Identificação unica:"),
                    SizedBox(width:30.0,),
                    Text("Programação:"),
                    SizedBox(width: 30.0,),
                    Text("Setor Destino:"),
                    SizedBox(width: 30.0,),
                //  ],
              //  ),
                ],
                ),
                ),
             ],
            ),
          ),
        ),
      ],
      ),
      ),
      floatingActionButton:
          //_MenuFooter(context),
          Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _paddingbuttonStart,
          FloatingActionButton(
              onPressed: () {
                _AlertText(context);
              },
              backgroundColor: Colors.green,
              tooltip: "Textinfo",
              child: Icon(Icons.text_fields)),
          _paddingButton,
          FloatingActionButton(
            onPressed: () {


            },
            backgroundColor: Colors.blueAccent,
            tooltip: "ImageInfo",
            child: Icon(Icons.image),
          ),
          _paddingButton,
          FloatingActionButton(
            onPressed: () {
              _alertIcon(context);
            },
            backgroundColor: Colors.deepOrange,
            tooltip: "IconInfo",
            child: Icon(Icons.insert_emoticon),
          ),
          _paddingButton,
          FloatingActionButton(
              onPressed: () {
                _alertForm(context);
              },
              backgroundColor: Colors.red,
              tooltip: "FormInfo",
              child: Icon(Icons.format_align_left)),
        ],
      ),
      );
    //);
  }
}

/*
Widget _MenuFooter(BuildContext context) {
  final _paddingbuttonStart = Padding(
    padding: EdgeInsets.fromLTRB(15.0, 0, 0, 0),);
  final _paddingButton = Padding(padding: EdgeInsets.only(left: 20.0));
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _paddingbuttonStart,
          FloatingActionButton(
              onPressed: () {},
              backgroundColor: Colors.green,
              tooltip: "Textinfo",
              child: Icon(Icons.add_circle)
          ),
          _paddingButton,
          FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.blueAccent,
            tooltip: "ImageInfo",
            child: Icon(Icons.list),
          ),
          _paddingButton,
          FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.deepOrange,
            tooltip: "IconInfo",
            child: Icon(Icons.edit),
          ),
          _paddingButton,
          FloatingActionButton(
              onPressed: () {},
              backgroundColor: Colors.red,
              tooltip: "FormInfo",
              child: Icon(Icons.delete)
          ),
        ],
      );
    },
  );
}
*/

Widget _AlertCloseApp(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Container(
        child: AlertDialog(
          title: Text("Deseja Sair?"),
          actions: <Widget>[
            FlatButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Não"),
            ),
            FlatButton(
              onPressed: () => exit(0),
              child: Text("Sim"),
            ),
          ],
        ),
      );
    },
  );
}

Widget _AlertText(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Container(
        child: AlertDialog(
          title: Text(
            "Nova Atualização do sistema! versão 2.0.1",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          content: Text(
            "Deseja atualizar?",
            style: TextStyle(color: Colors.white),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text(
                "Não",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            FlatButton(
              child: Text(
                "Sim",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
          elevation: 24.0,
          backgroundColor: Colors.green,
          //shape: CircleBorder(),
        ),
      );
    },
  );
}

Widget _alertIcon(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Container(
        child: AlertDialog(
          title: Row(
            children: <Widget>[
              Icon(
                Icons.insert_emoticon,
                size: 50.0,
                color: Colors.deepOrange,
              ),
              Text("Alert com Icon",style: TextStyle(color: Colors.black54),),
            ],
          ),
          actions: <Widget>[
            FlatButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                "Fechar",
                textAlign: TextAlign.right,
              ),
            ),
          ],
        ),
      );
    },
  );
}

Widget _alertForm(BuildContext context){
  showDialog(
    context: context,
    builder: (BuildContext context){
     return Container(
       child: AlertDialog(
         title: Row(
           children: <Widget>[
             Icon(
                 Icons.device_hub,
                 size:50.0,
                 color: Colors.teal,
             ),
             Text(
               "CADASTRAR IOT",
               style: TextStyle(
               color: Colors.indigo,
             ),
             ),
           ],
         ),
         content: ListView(
           children: <Widget>[
           Form(
             child: Column(
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Nome:",
                    labelStyle: TextStyle(color: Colors.indigo),
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Identificação unica:",
                    labelStyle: TextStyle(color: Colors.indigo),
                  )
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Programação:",
                    labelStyle: TextStyle(color: Colors.indigo),
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText:  "Setor Destino:",
                    labelStyle: TextStyle(
                      color: Colors.indigo,
                    ),
                  ),
                ),
              ],
            ),
         ),
         ],
         ),
         actions: <Widget>[
           FlatButton(
               onPressed: (){
                 Navigator.of(context).pop();
               },
               child: Text(
                "Não",
                style: TextStyle(
                  color: Colors.black54,
                ),
               ),
           ),
           FlatButton(onPressed: (){

           },
           child: Text(
             "Sim",
             style: TextStyle(
               color: Colors.black54,
             ),
           ),
           ),
         ],
       ),
     );
    }
  );
}