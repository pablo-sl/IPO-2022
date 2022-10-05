import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:keepitfinal/export.dart';
import 'package:keepitfinal/details.dart';
import 'package:keepitfinal/filter.dart';
import 'package:keepitfinal/import.dart';
import 'package:keepitfinal/profile.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      /*theme: ThemeData(
        primarySwatch: Colors.blue,
      ),*/
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      themeMode: ThemeMode.light,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> _products = [];
  HashMap<int, MiObjeto> _lista = HashMap();
  int dentro = 5, fuera = 5;
  int contador = 0;
  @override
  void initState() {
    super.initState();
    contador++;
    dentro = 5;
    fuera = 5;
    _lista.putIfAbsent(contador, () => MiObjeto("Objeto"+ contador.toString(), "Casa", "Salamanca", true, false, false));
    contador++;
    _lista.putIfAbsent(contador, () => MiObjeto("Objeto"+ contador.toString(), "Casa", "Salamanca", false, false, false));
    contador++;
    _lista.putIfAbsent(contador, () => MiObjeto("Objeto"+ contador.toString(), "Casa", "Salamanca", true, false, false));
    contador++;
    _lista.putIfAbsent(contador, () => MiObjeto("Objeto"+ contador.toString(), "Casa", "Salamanca", false, false, false));
    contador++;
    _lista.putIfAbsent(contador, () => MiObjeto("Objeto"+ contador.toString(), "Casa", "Salamanca", true, false, false));
    contador++;
    _lista.putIfAbsent(contador, () => MiObjeto("Objeto"+ contador.toString(), "Casa", "Salamanca", false, false, false));
    contador++;
    _lista.putIfAbsent(contador, () => MiObjeto("Objeto"+ contador.toString(), "Casa", "Salamanca", true, false, false));
    contador++;
    _lista.putIfAbsent(contador, () => MiObjeto("Objeto"+ contador.toString(), "Casa", "Salamanca", false, false, false));
    contador++;
    _lista.putIfAbsent(contador, () => MiObjeto("Objeto"+ contador.toString(), "Casa", "Salamanca", true, false, false));
    contador++;
    _lista.putIfAbsent(contador, () => MiObjeto("Objeto"+ contador.toString(), "Casa", "Salamanca", false, false, false));

  }

  @override
  Widget build(BuildContext context) {

    fuera = 5;
    dentro= 5;
    return MaterialApp(
        home: Builder(

        builder: (context) => DefaultTabController(
            length: 2,
            child: Scaffold(
                appBar: AppBar(
                    backgroundColor: Colors.indigo,
                    leading: GestureDetector(
                      onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProfilePage(_lista.length, this.dentro, this.fuera)));

                },
                      //onTap: () => lista.putIfAbsent(7, () => MiObjeto("Objeto6", "Casa", "Salamanca", true)),

                      child: Icon(
                        Icons.person, // add custom icons also
                      ),
                    ),
                    actions: <Widget>[
                      Padding(
                          padding: EdgeInsets.only(right: 20.0),
                          child: GestureDetector(
                            onTap: () {
                              showToast("Aqui se vería como rejilla / lista");
                            },
                            child: Icon(
                              Icons.grid_on,
                              size: 26.0,
                            ),
                          )
                      ),
                      Padding(
                          padding: EdgeInsets.only(right: 20.0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(
                                      builder: (context) => FilterPage()));
                            },
                            child: Icon(
                              Icons.search,
                              size: 26.0,
                            ),
                          )
                      ),
                    ],
                    //title: Center(child:Text('Flutter Tabs Example')),
                    bottom: PreferredSize(
                        preferredSize: Size.fromHeight(50), // here the desired height
                        child: Container(
                          color: Colors.blueAccent,
                          child: TabBar(
                            indicatorColor: Colors.white,
                            labelStyle: TextStyle(fontSize: 20),
                            tabs: [
                              Tab(text: 'Guardado'),
                              Tab(text: 'Extraido'),
                            ],
                          ),
                        )
                    )
                ),
            body: Container(
              child: Container(
                child: TabBarView(

                children: [
                  _buildListViewSafe(context, _lista),
                  _buildListViewOut(context, _lista),
                ],
              ),)
            ),





                bottomNavigationBar: BottomAppBar(
                color: Colors.blueAccent,
                child: Container(

                  height: 60,
                  child: Row(

                    //mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        FlatButton(

                          padding: EdgeInsets.all(10.0),
                          onPressed: () {
                            setState(() {
                              contador++;
                              dentro++;
                              _lista.putIfAbsent(contador, () => MiObjeto("Objeto"+ contador.toString(), "Casa", "Salamanca", true, false, false));

                            });

                              showToast("Aqui se añadirían los objetos");

                          },
                          child: Column(
                            children: <Widget>[
                              Icon(Icons.add, color: Colors.white,),
                              Text('Añadir',
                              style: TextStyle(color: Colors.white)
                              )
                            ],
                          ),
                        ),
                        Container(color: Colors.white, width: 2,height: 30),
                        FlatButton(

                          padding: EdgeInsets.all(10.0),
                            onPressed: () {
                              setState(() {
                                Navigator.push(context,
                                    MaterialPageRoute(
                                        builder: (context) => ImportPage(_lista)));
                              });
                            },
                          child: Column(
                            children: <Widget>
                            [
                              Icon(Icons.file_download, color: Colors.white),

                              Text(
                                  'Guardar',
                                  style: TextStyle(color: Colors.white)
                              )
                            ],
                          ),
                        ),
                        Container(color: Colors.white, width: 2,height: 30),
                        FlatButton(

                          padding: EdgeInsets.all(10.0),
                          onPressed: () {
                            setState(() {
                            Navigator.push(context,
                                MaterialPageRoute(
                                    builder: (context) => ExportPage(_lista)));
                              });
                          },
                          child: Column(
                            children: <Widget>[

                              Icon(Icons.file_upload, color: Colors.white,),
                              Text('Extraer',
                                  style: TextStyle(color: Colors.white)
                        )
                            ],
                          ),
                        ),
                      ]
                  )
                  ,
                )
            )),
            ),
        ),
        );

  }

  ListView _buildListViewSafe(BuildContext context, HashMap<int, MiObjeto> lista) {

    return ListView.builder(

        itemCount: lista.length,
        itemBuilder: (context, index) {
          MiObjeto x = lista.values.elementAt(index);
      int key = lista.keys.elementAt(index);
      String value = lista.values.elementAt(index).name;
      if (lista.values.elementAt(index).isOut) {
          return CreateObject(x, key, lista);
        } else {
          return SizedBox();
        }
      },
    );
  }

  void showToast(String m) => Fluttertoast.showToast(
      msg: m,
  );
  ListView _buildListViewOut(BuildContext context, HashMap<int, MiObjeto> lista) {

    return ListView.builder(
      itemCount: lista.length,
      itemBuilder: (context, index) {
        MiObjeto x = lista.values.elementAt(index);
        int key = lista.keys.elementAt(index);
        String value = lista.values.elementAt(index).name;
        if (!lista.values.elementAt(index).isOut) {

          return CreateObject(x, key, lista);
        } else {
          return SizedBox();
        }
      },
    );
  }
  Widget CreateObject(MiObjeto x, int index, HashMap<int, MiObjeto> lista) {
    String n, c, l;
    bool b, s;
    n = x.name;
    c = x.category;
    l = x.location;
    b = x.isOut;
    s = x.isSelect;

    return ListTile(
      title: Text('$n'),
      leading: Icon(Icons.arrow_downward),
      onTap: () {

        Navigator.push(context,
            MaterialPageRoute(builder: (context) => DetailPage(lista.values.elementAt(index-1), lista, index)));
      },

      trailing: GestureDetector(
        onTap: () {
          setState(() {
            x.isFav = !x.isFav;
            if (x.isFav == true) {
              x.isFav = true;
              //listaselect.putIfAbsent(index, () => MiObjeto(n,c,l,b,s));
            } else if (x.isFav == false) {
              x.isFav = false;
              //listaselect.remove(index);
            }
          });
        },
        child: x.isFav
            ? Icon(
          Icons.favorite,
          color: Colors.indigo,
          size: 30,
        )
            : Icon(
          Icons.favorite_outline,
          color: Colors.grey,
          size: 30,
        ),
      )
    );
  }
}



bool cambio(bool d){

  if(d==true)
    return false;
  else
    return true;

}

class MiObjeto {
  String name;
  String category;
  String location;
  bool isOut;
  bool isSelect;
  bool isFav;

  MiObjeto(this.name, this.category, this.location, this.isOut, this.isSelect, this.isFav);
}

enum ViewType { grid, list }

