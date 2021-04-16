import 'package:flutter/material.dart';

class TelaUm extends StatelessWidget {
  static const routeName = "/telaUm";

  const TelaUm({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Center(child: Text(" Tela Um")),
            RaisedButton(
              onPressed: () {},
              child: Text("Ir para segunda tela"),
            )
          ],
        ),
      ),
    );
  }
}
