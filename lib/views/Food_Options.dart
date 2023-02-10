import 'package:first_app/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FoodChoice extends StatefulWidget {
  const FoodChoice ({Key? key}) : super(key: key);

  @override
  State<FoodChoice> createState() => _FoodChoiceState();
}

class _FoodChoiceState extends State<FoodChoice> {
  final List<String> entries = [];
  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(

          leading: IconButton(
            icon: Icon(Icons.arrow_back),
                onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Home(username: '',)));
        },
          ),
          title: TextField(
              controller: textController,
              //keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                hintText: 'Enter food items',
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,

                ),
              ),


          ),
          actions: [
            IconButton(icon: Icon(Icons.list_alt),
            padding: EdgeInsets.only(right: 20),
            onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Home(username: '',)));
            }, )
          ],
        ),
        body: ListView.builder(
          itemCount: entries.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: EdgeInsets.symmetric(vertical: 5,horizontal: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.4),
                    spreadRadius: 3,
                    blurRadius: 1,
                  )
                ],
              ),
              child: ListTile(
                contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                leading: Icon(Icons.local_grocery_store,color: Colors.orange,),
                title: Text('${entries[index]}'),
                onLongPress: (){
                  setState(() {
                    entries.removeAt(index);
                  });
                },
                trailing: IconButton(icon:Icon(Icons.delete),color: Colors.red.shade800 ,onPressed: (){
                  setState(() {
                    entries.removeAt(index);
                  });
                },),
              ),
            );
          },


        ),

          floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.save),
              onPressed: (){
                setState(() {
                  entries.add(textController.text);
                  textController.clear();
                });
            }
        ),
      ),
    );
  }
}
