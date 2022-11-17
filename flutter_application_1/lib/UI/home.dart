
import 'package:flutter/material.dart';
import 'package:flutter_application_1/UI/menu.dart';
import 'package:flutter_application_1/UI/pag1_inicio.dart';
import 'package:flutter_application_1/UI/pag2_comprar.dart';
import 'package:flutter_application_1/UI/pag3_misproductos.dart';
import 'package:flutter_application_1/UI/pag4_acercade.dart';
import 'package:flutter_application_1/controlador/controladorgeneral.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Reto 2',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),      
      home: const MyHomePage(title: 'Shopping Max'),    
      debugShowCheckedModeBanner: false,  
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

List paginas = [
  pag1_inicio(), 
  pag2_comprar(), 
  pag3_misproductos(), 
  pag4_acercade()
];

class _MyHomePageState extends State<MyHomePage> {

controladorgeneral Control=Get.find();

  @override
  Widget build(BuildContext context) {   
      return Scaffold(
      appBar: AppBar(        
        title: Text(widget.title),
      ),
      drawer: menu(),
      body: Obx(()=> paginas[Control.posicionPagina]),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
