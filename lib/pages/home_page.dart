import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class HomePage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color(0xFFF9F9F9),
      appBar: _appBar(),
      body: _labels(),
    );
  }

  PreferredSizeWidget _appBar() {
  return AppBar(
    bottom: PreferredSize(
      preferredSize: Size.fromHeight(0.5),
      child: Container(
        color: Colors.black38,
        height: 0.75,
      )
      ,
      ),
    elevation: 0,
    centerTitle: true,
    backgroundColor: Color(0xFFF9F9F9),
    title: Text('Instagram Clone - JoseCima', style: TextStyle(color: Colors.black87),
    ),
    leading: IconButton(
      onPressed: (){},
      icon: Icon(Feather.camera), color: Colors.black,
      iconSize: 30,
    ),
    actions: <Widget>[
      IconButton(onPressed: (){}, icon: Icon(Feather.tv), color: Colors.black, iconSize: 28),
      IconButton(onPressed: (){}, icon: Icon(Feather.send), color: Colors.black, iconSize: 28)
    ],
  ); 
}

Widget _labels(){
  return Text('Home');
}



}



