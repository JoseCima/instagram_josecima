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
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _labels(),
            _historias(),
            Divider(
              color: Colors.grey,
              height: 0,
              thickness: 0.5,
            ),
            _posts(),
          ],
        ),
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
      child: SizedBox(child: Image.asset('assets/img/logo-instagram.png'),
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

Widget _posts(){
  return Container(
    width: MediaQuery.of(context).size.width,
    
    height: 400,

    child: ListView.builder(
      itemCount: 50,
      itemBuilder: (context, i){
        return _crearPost();
      }
    ),
  );
}

Widget _crearPost(){

  return Container(
    child: Column(
      children: <Widget>[
        Container(
          child: Row(
            children: <Widget>[
              Container(
         
         child: Container(
           padding: EdgeInsets.only(
             top: 12,
             left: 18,
             bottom: 12,
             right: 12
           ),
           child: ClipRRect(
             borderRadius: BorderRadius.circular(50),
             child: Image(
               image: NetworkImage('https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/1121.jpg') ,
               height: 45,
               width: 45,
               fit: BoxFit.cover,
               
             ),
           ),
         ),
       ),
              Text('Memo', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
              Expanded(child: SizedBox()),
              IconButton(onPressed: (){}, icon: Icon(Icons.more_horiz), iconSize: 30,),
              
            
            ],
          ),
        ),
        FadeInImage(placeholder: AssetImage('assets/img/loading.gif'), image: NetworkImage('http://placeimg.com/640/480/nightlife')),
        Container(
          padding: EdgeInsets.only(top: 5, left: 7, right: 7, bottom: 1),
          child: 

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: <Widget>[
                    IconButton(onPressed: (){}, icon: Image(image: AssetImage('assets/img/heart.png'), width: 30)),
                    IconButton(onPressed: (){}, icon: Image(image: AssetImage('assets/img/comment.png'), width: 30)),
                    IconButton(onPressed: (){}, icon: Image(image: AssetImage('assets/img/send.png'), width: 30))
                ],
              ),
              IconButton(onPressed: (){}, icon: Image(image: AssetImage('assets/img/save_o.png'), width: 30)),
            ],
          )
          
        )
        ,Container(
          padding: EdgeInsets.only(left: 17, right: 17, bottom: 10),
          color: Colors.white,
          child: Row(
            children: <Widget>[
              Text('Likes By Memo, Alex 118, others')
            ],
          ),
        ),
        Container(
          width: double.infinity,
          padding: EdgeInsets.only(left: 17, right: 17, bottom: 10),
          child: Column(
            children: <Widget>[
              RichText(
                
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Memo',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15
                      )
                    ),
                    TextSpan(
                      text: ' Occaecati volutatem accusantium et quos odit doloribus. Consequatur impedit culpa sit repellendus iure qui. Nobis sit aliquid qui ad. Id sapiente velit reprehenderit molestiae rerum iusto. Nihil est eum.',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15
                      )
                    )
                  ]
                )
                )
              , Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Text('Junio 02', style: TextStyle(color: Colors.grey, fontSize: 18)),

                
              )
            ],
          ),
        )
      
      ],
    ),
  );
}

}



