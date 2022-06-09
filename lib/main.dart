import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(
    MyApp()
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        //To prevent edge clashing
        body: SafeArea(

            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              //To have multiple children in a column
              children:<Widget>[
                CircleAvatar(
                  radius:50,
                  backgroundImage:AssetImage(
                    'images/Ayaan.jpg'
                  ),
                ),
                Text("Mohamed Ayaan",
                style:TextStyle(fontSize:40,color:Colors.white,fontWeight: FontWeight.bold,fontFamily:'Pacifico', ),),

                new InkWell(
                    child: new Text("Web Developer ",
                      style:TextStyle(fontSize:25,letterSpacing:2.5,color:Colors.teal.shade100,fontWeight: FontWeight.bold,fontFamily:'Source Sans Pro', ),),
                    onTap: () => launch('https://portfolio-delta-sand.vercel.app/')
                ),
                Card(
                  color:Colors.white,
                  margin:EdgeInsets.symmetric(vertical:10,horizontal:20),
                  child:Padding(
                    padding:EdgeInsets.all(10),
                    child:Row(
                    children:<Widget>[
                      Icon(Icons.phone,
                        color:Colors.teal.shade900,
                      ),
                      SizedBox(width:10,),

                      Text("+91 8861467274",style:TextStyle(
                        color:Colors.teal.shade900,
                        fontFamily:"Source Sans Pro",
                        fontSize:20,
                      ),),
                    ],
                  ),
                ),
                ),
                Card(
                  color:Colors.white,
                  margin:EdgeInsets.symmetric(vertical:20,horizontal:20),
                  child:Padding(
                    padding:EdgeInsets.all(10),
                  child:Row(
                    children:<Widget>[
                      Icon(Icons.email,
                        color:Colors.teal.shade900,
                      ),
                      SizedBox(width:10,),

                      Text("ayaan35813@gmail.com",style:TextStyle(
                        color:Colors.teal.shade900,
                        fontFamily:"Source Sans Pro",
                        fontSize:20,
                      ),),
                    ],
                  ),
                ),),
              Container(
                child:Row(
                  mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                  children:<Widget>[
                  new InkWell(
                  child: new Text('Github',style:TextStyle(color:Colors.white,
                  fontFamily:"Source Sans Pro",
                  fontSize:20,fontWeight: FontWeight.bold)),
                  onTap: () => launch('https://github.com/Mohamed-Ayaan358')
              ),
                  new InkWell(
                    child: new Text('Linkedin',style:TextStyle(color:Colors.white,
                      fontFamily:"Source Sans Pro",
                      fontSize:20,fontWeight: FontWeight.bold)),
                    onTap: () => launch('https://www.linkedin.com/in/mohamed-ayaan-1750311b8/')
                ),],),),

              ],
            ),
          ),
        ),
      );
  }
}





//Base parts
//class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.teal,
//         body: SafeArea(
//             child:Column(
//               children:<Widget>[
//                 Container(width:100.0,height:100.0,color:Colors.blue,
//                   child:Text("Container"),),
//               ],
//             ),
//           ),
//         ),
//       );
//   }
// }