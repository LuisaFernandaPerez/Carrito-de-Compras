import 'package:flutter/material.dart';
import 'package:flutter_application_1/controlador/controladorgeneral.dart';
import 'package:get/get.dart';

class menu extends StatefulWidget {
  const menu({super.key});

  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {

  controladorgeneral Control = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Drawer(
        child: Column(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.lightBlue),
              child:UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage("https://www.institutoeducacionvial.com/wp-content/uploads/2021/04/silueta-mujer-300x300.png"),),
                  accountName: Text("Luisa Perez"), 
                  accountEmail: Text("flbernal@uninorte.edu.co")), 
            ),
            Divider(),
            Expanded(
                child: ListView(children: [
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Inicio"),
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.pop(context);
                  Control.cambiarposicion(0);
                },           
              ),
              ListTile(
                leading: Icon(Icons.monetization_on_outlined),
                title: Text("Comprar"),
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.pop(context);
                  Control.cambiarposicion(1);
                },           
              ),
              ListTile(
                leading: Icon(Icons.shopify),
                title: Text("Mis productos"),
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.pop(context);
                  Control.cambiarposicion(2);
                },           
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Acerca de"),
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.pop(context);
                  Control.cambiarposicion(3);
                },           
              ),
            ]))
          ],
        ),
      )
    );
  }
}