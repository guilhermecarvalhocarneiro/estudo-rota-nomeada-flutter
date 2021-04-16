import 'package:flutter/material.dart';
import 'package:rota_nomeada/screens/tela_dois.dart';
import 'package:rota_nomeada/screens/tela_um.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    /// Recuperando os agumentos passados como parâmetro

    final args = RouteGenerator.getArgs(settings.arguments);

    switch (settings.name) {
      case TelaUm.routeName:
        return MaterialPageRoute(builder: (_) => TelaUm());
      case TelaDois.routeName:
        return MaterialPageRoute(
          builder: (_) => TelaDois(usuario: args["usuario"]),
        );
        return _errorRoute();
      default:
        // If there is no such named route in the switch statement, e.g. /third
        return _errorRoute();
    }
  }

  // Método para verificar qual o tipo de parâmetro passado no args
  static dynamic getArgs(dynamic args) {
    if (args is String) return args;
    if (args is Map<String, dynamic>) return args;
  }

  // Retornando a tela de erro caso nenhuma rota seja encontrada
  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
