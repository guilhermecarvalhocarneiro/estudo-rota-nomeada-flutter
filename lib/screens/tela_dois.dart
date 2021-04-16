import 'package:flutter/material.dart';
import 'package:rota_nomeada/model/usuario.dart';

class TelaDois extends StatelessWidget {
  final Usuario usuario;
  static const routeName = "/telaDois";

  const TelaDois({Key key, this.usuario}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Center(child: Text("Tela Dois ${usuario?.nome}")),
            RaisedButton(
              onPressed: () {},
              child: Text("Voltar para a tela inicial"),
            )
          ],
        ),
      ),
    );
  }
}
