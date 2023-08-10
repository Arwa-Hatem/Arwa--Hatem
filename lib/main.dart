import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home:Scaffold(
        body:Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("images/background.jpg"),
            fit: BoxFit.cover  )
          ),
          child:Column(children: [
           Container(
        
            padding: EdgeInsets.only(top: 100,left: 100,bottom: 10) ,
            child: Image.asset("images/quizz.png", height: 500,),
           ),
           SizedBox(height: 2,),
            Container(
           
            child:Text("ITI Quiz app",style: TextStyle(
              
            color:Colors.yellow,
            height: -8,
            fontSize: 30,
            fontFamily: 'Pacifico',
             ),),),
            
             Container(
             
              child:const Text("We are creative enjoy our app",style: TextStyle(
              color: Colors.white,
              height: -6,
             fontSize: 28,
              fontFamily: 'DancingScript',
            
             ),),),
            SizedBox(height: 110,),
            Container( 
              alignment: Alignment.bottomCenter,
              child:ElevatedButton(onPressed: () {  },
              child: Text("Start",
              style: TextStyle(
                 color: Colors.white, ),),
                 
                 style: ElevatedButton.styleFrom(primary: Colors.green,
                 padding: EdgeInsets.symmetric(horizontal: 150),
                 
                 ),
                 ),
              )

            
            

          ])
        
        
        
        ,)
      )
    );
  }
}


