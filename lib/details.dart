import 'dart:collection';

import 'package:flutter/material.dart';

import 'main.dart';

class DetailPage extends StatelessWidget{
  MiObjeto index;
  HashMap<int, MiObjeto> lista;
  int v;
  DetailPage(this.index, this. lista, this.v);


  @override
  Widget build(BuildContext context) {
    String n, c, l;
    bool b, s;
    n = index.name;
    c = index.category;
    l = index.location;
    b = index.isOut;
    s = index.isSelect;

    editar(index.isOut);
    b = index.isOut;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
          title: Text('Details Page'),
      ),
      body: Center(
        child:Text('Nombre: $n\n'
            +'Localidad: $c\n'
            +'Categoría: $l\n',
            style: TextStyle(color: Colors.black, fontSize: 25),
        )


          ,
        ),



    );
  }

  static bool editar(bool d){

    if(d==true)
      return false;
    else
      return true;

  }
}