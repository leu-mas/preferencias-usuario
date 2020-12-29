import 'package:flutter/material.dart';
import 'package:preferencias_usuarios_app/src/share_prefs/preferencias_usuario.dart';
import 'package:preferencias_usuarios_app/src/widgets/menu_widget.dart';

class HomePage extends StatelessWidget {
  static final String routeName = 'home';
  final prefs = new PreferenciasUsuario();

  @override
  Widget build(BuildContext context) {
    prefs.ultimaPagina = HomePage.routeName;
    return Scaffold(
      appBar: AppBar(
        title: Text('Preferencias de usuario'),
        backgroundColor:
            (prefs.colorSecundario) ? Colors.amberAccent : Colors.blue,
      ),
      drawer: MenuWidget(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Color secundario: ${prefs.colorSecundario} '),
          Divider(),
          Text('Género: ${prefs.genero} '),
          Divider(),
          Text('Nombre de usuario: ${prefs.nombreUsuario} '),
          Divider(),
        ],
      ),
    );
  }
}
