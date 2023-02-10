import 'package:first_app/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Home(username: '',)));
          },),
            title: const Text('Splash Screen',),
            actions: [
          IconButton(icon:const Icon(Icons.home) , onPressed:(){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Home(username: '')));
          },
          ),
        ],
      ),

      body: Container(
        child: SingleChildScrollView(
          child: Center(
            child: Column(

              children: [

                Container(
                  child: const Text('Welcome to the fantasy wallpaper gallery',
                    style: TextStyle(fontSize: 25),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                  alignment: Alignment.center,
              ),

                Container(
                  padding: const EdgeInsets.only( bottom: 10),
                  child: Image.asset('assets/Wallpapers/2.jpg'),
                ),

                Container(
                  padding: EdgeInsets.only( bottom: 10),
                  child: Image.asset('assets/Wallpapers/3.jpg'),
                ),

                Container(
                  padding: const EdgeInsets.only( bottom: 10),
                  child: Image.asset('assets/Wallpapers/MoonWaterfall.jpg'),
                ),

                Container(
                  padding: const EdgeInsets.only( bottom: 10),
                  child: Image.asset('assets/Wallpapers/2.jpg'),
                ),

                Container(
                  padding: EdgeInsets.only( bottom: 10),
                  child: Image.asset('assets/Wallpapers/3.jpg'),
                ),

                Container(
                  padding: EdgeInsets.only( bottom: 10),
                  child: Image.asset('assets/Wallpapers/MoonWaterfall.jpg'),
                ),

            ],
          ),
        ),
      ),
     ),
    )
    ;
  }
}
