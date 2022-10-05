import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget{
  @override
  final int objects, fuera, dentro;
  ProfilePage(this.objects, this.dentro, this.fuera);
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text('Profile Page'),
      ),
      body: Center(

        child: Container(

          color: Colors.blueAccent[100],
          padding: EdgeInsets.all(90),
          child:Text('Nombre: Nombre usuario\n'
                +'Correo: correo@usuario.com\n'
                +'Numero de objetos registrados: $objects\n'
            +'Numero de objetos fuera: x\n'
            +'Numero de objetos dentro: y\n',
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),

        ) ,
    ),
    );
  }
  }
  
