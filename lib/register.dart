import 'package:flutter/material.dart';
import 'sign up.dart';
import 'login.dart';
import 'foregot password.dart';
class register extends StatefulWidget {
  const register({super.key});

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(12),
              height: MediaQuery.of(context).size.height*0.35,
            width: MediaQuery.of(context).size.width,
            child:Center(
            child: Text('Register',
              style: TextStyle(
               fontSize: 40,
                color: Colors.lightGreen.withOpacity(0.9),
                fontWeight:FontWeight.w800,
            ),
            ),
            ),
            ),
            SizedBox(
              height: 60,



            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder:(context)=>Signup()));
              },
              child: Container(
                width: MediaQuery.of(context).size.width*0.4,
                height:MediaQuery.of(context).size.height*0.05,
                padding: EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 12,
                ),
                decoration:BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xff689f38),
                      Color(0xff558b2f),
                    ],
                    begin:Alignment.centerLeft,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20)),

                ),
                child:Center(
                  child:  Text('Sign up ',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                    letterSpacing: 1.25,
                  ),
                ),
                ),
              ),
            ),
            SizedBox(
              height: 10,

            ),
            GestureDetector(
              onTap: (){Navigator.push(context,
                  MaterialPageRoute(builder:(context)=>Login()));},
              child: Container(
                width: MediaQuery.of(context).size.width*0.4,
                height:MediaQuery.of(context).size.height*0.05,
                padding: EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 12,
                ),
                decoration:BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xff689f38),
                      Color(0xff558b2f),
                    ],
                    begin:Alignment.centerLeft,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20)),

                ),
                child:Center(child:  Text('Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                    letterSpacing: 1.25,
                  ),
                ),),
              ),
            ),
            SizedBox(
              height: 10,

            ),
            GestureDetector(
              onTap: (){Navigator.push(context,
                  MaterialPageRoute(builder:(context)=>foregotpass()));
                },
              child: Container(
                width: MediaQuery.of(context).size.width*0.4,
                height:MediaQuery.of(context).size.height*0.05,
                padding: EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 12,
                ),
                decoration:BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xff689f38),
                      Color(0xff558b2f),
                    ],
                    begin:Alignment.centerLeft,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20)),

                ),
                child:Center(
                  child:  Text('Forgot password',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                    letterSpacing: 1,
                  ),
                ),),
              ),
            ),





          ],
        ),
      ),
    );
  }
}

