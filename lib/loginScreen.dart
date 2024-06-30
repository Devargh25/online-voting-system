import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mylogin extends StatefulWidget {
  const Mylogin({super.key});

  @override
  State<Mylogin> createState() => _MyloginState();
}

class _MyloginState extends State<Mylogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(image: DecorationImage(
        image: AssetImage('images/bg1.jpg'), fit: BoxFit.cover
      )),

      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 90,top: 160),
              child:
              Container(
                child: Text('Welcome back',
                  style:
                  TextStyle(color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold, fontFamily: 'font3' ),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 300, right: 35, left: 35),
              child: Center(
                child: Container(
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          hintText: 'Email',
                          border: OutlineInputBorder (
                            borderRadius: BorderRadius.circular(10)
                          )
                        ) ,
                      ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      fillColor: Colors.grey.shade100,
                      filled: true,
                      hintText: 'Password',
                      border: OutlineInputBorder (
                          borderRadius: BorderRadius.circular(10)
                      )
                  ) ,
                ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Sign in', style: TextStyle
                            (
                            fontSize: 20, fontWeight: FontWeight.bold
                          ),
                          ),
                         CircleAvatar(
                           radius: 30,
                           backgroundColor: Color(0xffFFC470),
                           child: IconButton(
                             onPressed: () {},
                             icon:Icon(Icons.arrow_forward) ,

                           ),
                         )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(onPressed: (){
                            Navigator.pushNamed(context, 'register');
                          }, child: Text('Sign Up', style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 18
                          ),)),
                          TextButton(onPressed: (){}, child: Text('Forget Password', style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 18
                          ),))
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),

    );
  }
}
