import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class FilterPage extends StatefulWidget {
  @override
  _FilterPageState createState() => _FilterPageState();
}
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text('Filtrar por...'),
      ),
      body: Center(
        child: Text('Filtrar por...'),
      ),
    );
  }


class _FilterPageState extends State<FilterPage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text('Filtrar por...'),

      ),
      body: Scaffold(
          body: _createSelect(),),);
  }
  void showToast(String m) => Fluttertoast.showToast(
    msg: m,
  );

  ListView _createSelect(){


    return ListView.builder(

      itemCount: 5,
      itemBuilder: (context, index) {
          return CreateObject(index);

      },
    );
  }

  Widget CreateObject(int index) {
    if (index == 0) {
      return ListTile(
        leading: Icon(
          Icons.search_rounded,
        ),

        title: Text(
            "UBICACION"
        ),

        onTap: () {
          showToast("Aqui se FILTRARIAN los objetos POR UBICACION");
          Navigator.of(context).pop();
        },
      );
    }

    if (index == 1) {
      return ListTile(
        leading: Icon(
          Icons.search_rounded,
        ),

        title: Text(
            "CATEGORIA"
        ),

        onTap: () {
          showToast("Aqui se FILTRARIAN los objetos POR CATEGORIA");
          Navigator.of(context).pop();
        },
      );
    }

    if (index == 2) {
      return ListTile(
        leading: Icon(
          Icons.search_rounded,
        ),

        title: Text(
            "USADOS RECIENTEMENTE"
        ),

        onTap: () {
          showToast("Aqui se FILTRARIAN los objetos POR USO RECIENTE");
          Navigator.of(context).pop();
        },
      );
    }

    if (index == 3) {
      return ListTile(
        leading: Icon(
          Icons.search_rounded,
        ),

        title: Text(
            "FECHA DE REGISTRO"
        ),

        onTap: () {
          showToast("Aqui se FILTRARIAN los objetos POR FECHA DE REGISTRO");
          Navigator.of(context).pop();
        },
      );
    }

    if (index == 4) {
      return ListTile(
        leading: Icon(
          Icons.search_rounded,
        ),

        title: Text(
            "FAVORITOS"
        ),

        onTap: () {
          showToast("Aqui se FILTRARIAN los objetos FAVORITOS");
          Navigator.of(context).pop();
        },
      );
    }
  }
}


