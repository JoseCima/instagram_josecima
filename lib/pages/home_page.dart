import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:instagram_josecima/providers/stories_provider.dart';
import 'package:instagram_josecima/models/stories_model.dart';

class HomePage extends StatefulWidget {
  

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  StoriesProvider storiesProvider = new StoriesProvider();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color(0xFFF9F9F9),
      appBar: _appBar(),
      body: Column(
        children: <Widget>[
          _labels(),
          _historias(),
        ],
      ),
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
    title: Container(
      margin: EdgeInsets.only(top: 10),
      child: SizedBox(child: Image.asset('assets/img/logo_instagram.jpg'),
      height: 40,),
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
  return Container(
    margin: EdgeInsets.only(top: 5, left: 15, right: 15),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Stories',
        style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        
        Row(
          children: [
            Icon(Icons.arrow_right),
            Text('Watch All',
             style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
          ],
        ),
      ],
    ),
  );
}

Widget _historias(){
  return Container(
    height: 105,
    width: double.infinity,
    margin: EdgeInsets.only(top: 10, left: 5),
    child: ListView(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      children: storiesProvider.getStories().map((storie){
        return _crearHistoria(storie);
      }).toList(),
    ),
  );
}

 Widget _crearHistoria(Storie storie){
   return Column(
     children: <Widget>[
       Container(
         margin: EdgeInsets.symmetric(horizontal: 8, ),
         decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), border: Border.all(
           width: 3,
           color: Color(0xFF8E44AD)
         )),
         child: Container(
           padding: EdgeInsets.all(2),
           child: ClipRRect(
             borderRadius: BorderRadius.circular(50),
             child: Image(
               image: NetworkImage(storie.foto) ,
               height: 65,
               width: 65,
               fit: BoxFit.cover,
               
             ),
           ),
         ),
       ),
       SizedBox(height: 6),
       Text(storie.nombre, style: TextStyle(fontSize: 13),),
       
     ],
   );
}
}



