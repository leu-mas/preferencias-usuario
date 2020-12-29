import 'package:flutter/material.dart';
import 'package:preferencias_usuarios_app/src/pages/home_page.dart';
import 'package:preferencias_usuarios_app/src/pages/setting_page.dart';

class MenuWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Container(),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/menu-img.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.pages, color: Colors.blue),
            title: Text('Home'),
            onTap: () {
              Navigator.pushReplacementNamed(context, HomePage.routeName);
            },
          ),
          ListTile(
            leading: Icon(Icons.web, color: Colors.blue),
            title: Text('Web'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.phone, color: Colors.blue),
            title: Text('Phone'),
            onTap: () {},
          ),
          ListTile(
              leading: Icon(Icons.settings, color: Colors.blue),
              title: Text('Settings'),
              onTap: () {
                //Navigator.pop(context);
                Navigator.pushReplacementNamed(context, SettingsPage.routeName);
              }),
        ],
      ),
    );
  }
}
