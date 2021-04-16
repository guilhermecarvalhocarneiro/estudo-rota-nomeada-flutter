import 'package:flutter/material.dart';
import 'package:rota_nomeada/model/usuario.dart';
import 'package:rota_nomeada/screens/tela_dois.dart';
import 'package:rota_nomeada/screens/tela_um.dart';
import 'package:rota_nomeada/utils/router_generator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Estudando rotas nomeadas',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Rotas nomeadas'),
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(
                  TelaUm.routeName,
                  arguments: 'Primeiro argumento tela um',
                );
              },
              child: Text("Tela Um"),
            ),
            RaisedButton(
              onPressed: () {
                final usuario = Usuario(id: 1, nome: "Guilherme", email: "email@email.com.br");

                Navigator.of(context).pushNamed(
                  TelaDois.routeName,
                  arguments: {
                    'primeiro_argumento': 'Primeiro argumento tela dois',
                    'segundo_argumento': 'segundo',
                    'usuario': usuario
                  },
                );
              },
              child: Text("Tela Dois"),
            )
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
