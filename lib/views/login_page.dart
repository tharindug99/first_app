import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController UserNameController = TextEditingController();       ////Create new objects
  TextEditingController PasswordController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(                                             //////APPBAR
        title: const Text('Login Page'),

          leading: const Icon(Icons.account_box_rounded,
                       size: 30,)
        ,
      ),
      body:SingleChildScrollView(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,


          children: [

            Container(
              padding: const EdgeInsets.only( bottom: 10),
              child: Image.asset('assets/1.png'),
            ),

            Container(
                padding: const EdgeInsets.symmetric(vertical: 20),


                child: const Center(
                  child: Text('Join Now!!!', style: TextStyle(color: Colors.orange,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,),),)


            ),

            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Container(
                    child: TextFormField(
                      controller: UserNameController,
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: ('Enter your Username'),
                        //hintText: 'Username',
                      ),
                    ),

                  ),

                  Container(
                    padding: const EdgeInsets.only(top:20),
                    child: TextFormField(
                      controller: PasswordController,
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: ('Enter your Password'),
                        //hintText: 'Password',
                      ),
                      obscureText: true,
                      maxLength: 15,
                    ),

                  ),

                ],
              ),

            ),

                                                            ////////////////////////// Login Button......................

            Container(
              width:250,
              height: 80,
              padding: const EdgeInsets.only(top: 20),





              child: ElevatedButton(
                onPressed:(){
                  LoginButtonClicked();        //////Login Button pressed function
                  /////Reroute to new pages
                },
                child: const Text('Login', style: TextStyle (color: Colors.white,
                  fontSize: 20,
                ),),
              ),
            )
          ],
        ),

      ) ,
    );


  }
  void LoginButtonClicked(){
    print('Login button clicked');
    if (UserNameController.text == 'user' && PasswordController.text == '1234')
    {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Home(username: UserNameController.text,) ));
      print('Login Success');

    }
    else
    {
      print('Login Fail') ;
      showAlertDialog(context);
    }
  }

  showAlertDialog(BuildContext context)
  {
    Widget okbutton = ElevatedButton(onPressed:(){
    Navigator.pop(context);
    },
      child: const Text(
          'OK'
      ));

    AlertDialog alertDialog = AlertDialog(
      title: const Text('Error'),
      content: const Text('Wrong username or Password'),
      actions: [
          okbutton
      ],
    );

    showDialog(context: context,
    builder : (BuildContext context ){
      return alertDialog;
     }
    );
  }
}



