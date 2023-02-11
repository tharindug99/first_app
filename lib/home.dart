
import 'package:first_app/views/homepage_api.dart';
import 'package:first_app/views/splashscreen.dart';
import 'package:flutter/material.dart';
import 'views/Food_Options.dart';
import 'views/login_page.dart';

import 'views/splashscreen.dart';

class Home extends StatefulWidget {
  final String username;
  const Home({Key? key, required this.username}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title:  Text('Home'),
        leading: Icon(Icons.home),

        actions: [
          IconButton(icon: Icon(Icons.image_outlined), onPressed:(){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SplashScreen() ));
    } ),

        ],
      ),
      body: Container(

        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 3),
        child: SingleChildScrollView(

          padding: EdgeInsets.symmetric(vertical: 15,horizontal: 5),
          ///Control padding of welcome user
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,

                children: [

                   Container(
                      height: MediaQuery.of(context).size.height,
                  //margin: EdgeInsets.symmetric(horizontal: 20, vertical: MediaQuery.of(context).size.height/3),
                    padding: EdgeInsets.symmetric(vertical: 35,horizontal: 5),
                    decoration: BoxDecoration(
                      color: Colors.indigo,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                        child: Column(

                          children:  [

                            Container(
                              child: const Text('Hello There User', style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                              ),
                            ),  // Hello There

                            Container(

                              padding: const EdgeInsets.only(top: 15),
                              child: Text('Welcome ${widget.username}', style: const TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                              ),
                            ),  //Welcome User

                            Container(        //Column with the rows of the app

                              width: MediaQuery.of(context).size.width,
                              
                              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                              child: Row(

                                children: [

                                  Container(
                                      margin: EdgeInsets.all(2.0),
                                      alignment: Alignment.center,
                                      width: MediaQuery.of(context).size.width/5,
                                      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                                      child: Text('Green Accent'),
                                      height: MediaQuery.of(context).size.height/10,
                                      decoration: BoxDecoration(
                                        color: Colors.greenAccent,
                                        borderRadius: BorderRadius.circular(5),
                                      )
                                  ),

                                  Container(
                                      margin: EdgeInsets.all(2.0),
                                      alignment: Alignment.center,
                                      width: MediaQuery.of(context).size.width/5,
                                      height: MediaQuery.of(context).size.height/10,
                                      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                                      child: Text('Light    Green   accent'),
                                      decoration: BoxDecoration(
                                        color: Colors.lightGreenAccent,
                                        borderRadius: BorderRadius.circular(5),
                                      )
                                  ),

                                  Container(
                                      margin: EdgeInsets.all(2.0),
                                      alignment: Alignment.center,
                                      width: MediaQuery.of(context).size.width/5,
                                      height: MediaQuery.of(context).size.height/10,
                                      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                                      child: Text('Light Green'),
                                      decoration: BoxDecoration(
                                        color: Colors.lightGreen,
                                        borderRadius: BorderRadius.circular(5),
                                      )
                                  ),

                                  Container(
                                      margin: EdgeInsets.all(2.0),
                                      width: MediaQuery.of(context).size.width/5,
                                      height: MediaQuery.of(context).size.height/10,
                                      alignment: Alignment.center,
                                      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                                      child: Text('Green'),
                                      decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.circular(5),
                                      )
                                  ),
                                ],

                              )
                              ,
                            ),  // row1

                            Container(
                              margin: EdgeInsets.only(top:450),

                              child: ElevatedButton(onPressed: () {
                                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> FoodChoice()));
                              }, child: Text('Lists'),
                                //padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),),
                            ),

                            ),
                            Container(

                              child: ElevatedButton(onPressed: () {
                                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> LoginPage()));
                              }, child: Text('Logout'),
                                //padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),),
                              ),

                            ),

                            Container(

                              child: ElevatedButton(onPressed: () {
                                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> HomePage()));
                              }, child: Text('API list'),
                                //padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),),
                              ),

                            )//button
                          ],
                        )
                    )
                ),



            ],
            ),
          ),


        ),
        )


    );
  }
}









