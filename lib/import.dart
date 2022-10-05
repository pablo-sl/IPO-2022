import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:keepitfinal/main.dart';

class ImportPage extends StatefulWidget {
  final HashMap<int, MiObjeto> lista;
  ImportPage(this.lista);

  @override
  _ImportPageState createState() => _ImportPageState(lista);
}
class _ImportPageState extends State<ImportPage> {
  final HashMap<int, MiObjeto> lista;
  HashMap<int, MiObjeto> listaselect = HashMap();
  _ImportPageState(this.lista);
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text('Guardar objetos...'),

      ),
      body: Scaffold(
          body: _createSelect(context, lista),
          bottomNavigationBar: ElevatedButton(
            onPressed: () {


              showToast("Aqui se meterían los objetos");
              Navigator.of(context).pop(lista);
            },
            child: Text('GUARDAR'),
          )






      ),




    );
  }
  void showToast(String m) => Fluttertoast.showToast(
    msg: m,
  );
  ListView _createSelect(BuildContext context, HashMap <int, MiObjeto> lista){


    return ListView.builder(

      itemCount: lista.length,
      itemBuilder: (context, index) {
        if(lista.values.elementAt(index).isOut==true)
          return CreateObject(lista.values.elementAt(index), index);
        else
          return SizedBox();
      },
    );
  }

  Widget CreateObject(MiObjeto x, int index) {
    String n, c, l;
    bool b, s;
    n = x.name;
    c = x.category;
    l = x.location;
    b = x.isOut;
    s = x.isSelect;
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.blueAccent,
        child: Icon(
          Icons.download_sharp,
          color: Colors.white,
        ),
      ),
      title: Text(
        x.name,
        style: TextStyle(
          fontWeight: FontWeight.w500,
        ),
      ),
      subtitle: Text(x.location),
      trailing: x.isSelect
          ? Icon(
        Icons.check_circle,
        color: Colors.blueAccent,
      )
          : Icon(
        Icons.check_circle_outline,
        color: Colors.grey,
      ),
      onTap: () {
        setState(() {
          lista.values.elementAt(index).isSelect = !lista.values.elementAt(index).isSelect;
          if (lista.values.elementAt(index).isSelect == true) {
            x.isSelect = true;
            //listaselect.putIfAbsent(index, () => MiObjeto(n,c,l,b,s));
          } else if (lista.values.elementAt(index).isSelect == false) {
            x.isSelect = false;
            //listaselect.remove(index);
          }
        });
      },
    );
  }
}
