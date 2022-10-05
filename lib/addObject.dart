import 'dart:collection';
import 'package:flutter/material.dart';
import 'main.dart';

class AddPage extends StatelessWidget{
  HashMap<int, MiObjeto> lista;
  AddPage(this.lista);
  @override
  Widget build(BuildContext context) {
    lista.putIfAbsent(9, () => MiObjeto("Objeto7", "Casa", "Salamanca", true, false, false));
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text('Add Object'),
      ),
      body: Center(
        child: Text('Add Object'),
      ),
    );
  }
}