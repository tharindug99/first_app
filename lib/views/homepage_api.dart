import 'package:first_app/services/remote_services.dart';
import 'package:flutter/material.dart';
import '../models/post.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Post>? posts;
  var isLoaded = false;       // Keep in track whether API response has loaded or not.....

  @override
  void initState(){  // this is called when the class is initialized or called for the first time
    super.initState();//  this is the material super constructor for init state to link your instance initState to the global initState context
    //initState() is a method of class State and it is considered as an important lifecycle method in Flutter.
    // initState() is called only Once and we use it for one time initializations.
    //Example :
    // To initialize data that depends on the specific BuildContext.
    // To initialize data that needs to executed before build().
    // Subscribe to Streams.
    getData();
    //fetch data from API
  }

  void getData() async //fetch and wait for response
  {
    posts = await RemoteServices().getPosts();
    if (posts != null){
      setState(() {
        isLoaded = true;
      });
    }

  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Welcome Home')),
      ),

      body: Visibility(

        visible: isLoaded,
        child: ListView.builder
          (itemCount: posts?.length  ,itemBuilder: (context, index){

          return Container(

            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            padding: EdgeInsets.symmetric(vertical: 25, horizontal: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 1,
                  spreadRadius: 3,
                  color: Colors.black.withOpacity(0.2)
                )
              ]
            ),


            child: Text(posts ! [index].name,style: TextStyle(
              fontSize: 25,
            ),),
          );
        }),
        replacement: const Center(child: CircularProgressIndicator()
          ,),
      ),
    );
  }
}
