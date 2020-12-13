import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _backgorundColor(),
          _imageBackground(),
          _welcomeUser()
        ],
      )
    );
  }

  Widget _backgorundColor() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(6, 5, 5, 1),
    );
  }

  Widget _imageBackground() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage('assets/gymback.jpg'),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _welcomeUser() {
    return SafeArea(
      child: Column(
        children: [
          Expanded(child: Container()),
          _card(),
          SizedBox(height: 20.0,),
          _lastCard(),
          SizedBox(height: 20.0,),
        ],
      )
    );
  }

  Widget _lastCard(){

    final estilo = TextStyle(fontSize: 20.0,color: Colors.white, fontWeight: FontWeight.bold);

    return ClipRRect(
      borderRadius: BorderRadius.circular(25.0),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),
        color: Color.fromRGBO(52, 52, 52, 1),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Tu ultimo ejercicio', style: estilo,),
                  Text('Press de banca', style: estilo,),
                ],
              ),
            ),
            Icon(Icons.play_arrow, color: Colors.white,)
          ],
        )
      ),
    );
  }

  Widget _card() {

    final estilo = TextStyle(fontSize: 40.0,color: Colors.white, fontWeight: FontWeight.bold);

    return ClipRRect(
      borderRadius: BorderRadius.circular(25.0),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 30.0),
        color: Colors.red,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Hola, Tony!', style: estilo,),
            Text('Bienvenido!', style: estilo,),
            SizedBox(height: 5.0,),
            Row(
              children: [
                Icon(Icons.supervised_user_circle, color: Colors.white, size: 40.0,),
                Expanded(child: Container()),
                ClipRRect(
                  borderRadius: BorderRadius.circular(5.0),
                  child: Container(
                    height: 50.0,
                    width: 50.0,
                    color: Colors.white,
                    child: Icon(Icons.arrow_forward,),
                  ),
                )
              ],
            )
          ],
        )
      ),
    );
  }

}

