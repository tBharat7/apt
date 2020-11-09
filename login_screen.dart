import 'package:flutter/material.dart';
import 'package:apartment_app/screens/home_screen.dart';

class LoginScreen extends StatefulWidget {
  static String id='login_screen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 0.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height/2.0,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [

                // Colors.lightBlueAccent,

                Colors.purple,// Colors.blueAccent,
                Colors.blue,

              ],
            ),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(100)
            )
        ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // child: Image(image: NetworkImage('https://genericappt.000webhostapp.com/ARGUS-02.png'),

                 Image(image: NetworkImage('https://genericappt.000webhostapp.com/ARGUS-02.png'),
                   height: 170.0,
                   width: 300.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                // child: Align(
                //   alignment: Alignment.bottomCenter,
                //
                //   child: Icon(Icons.person,
                //     size: 90,
                //     color: Colors.blueAccent,
                //   ),
                // ),

              ),

            ],
          ),
        ),
            ),
            // Hero(
            //   tag: 'logo',
            //   child: Container(
            //     height: 20.0,
            //
            //     // ),
            //   ),
            // ),

            SizedBox(
              height: 14.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Align(
                  alignment: Alignment.center,
                child: Text("Login in to sync with others",
                  style: TextStyle(
                    fontSize: 28.0,
                    color: Colors.black,
                  ),
                ),

                ),

              //

            ),


              Padding(
                padding: const EdgeInsets.all(14.0),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[200],
                    labelText: "Enter your email",
                    labelStyle: TextStyle(fontSize: 20.0, color: Colors.grey),                contentPadding:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.grey, width: 1.0),
                      // borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.lightBlueAccent, width: 2.0),
                      // borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    ),
                  ),
                ),
              ),
            // SizedBox(
            //   height: 8.0,
            // ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: TextField(
                onChanged: (value) {
                  //Do something with the user input.
                },
                obscureText: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[200],
                  labelText: "Enter your password.",
                  labelStyle: TextStyle(fontSize: 20.0, color: Colors.grey),

                  contentPadding:
                  EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  border: OutlineInputBorder(
                    // borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(color: Colors.grey, width: 1.0),
                    // borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                  focusedBorder: OutlineInputBorder(

                    borderSide:
                    BorderSide(color: Colors.lightBlueAccent, width: 2.0),
                    // borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                ),
              ),
            ),
            // SizedBox(
            //   height: 24.0,
            // ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30.0, 1.0, 14.0,1.0),
              child: Row(
                children: [

                  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Center(child: Text("Forgotten your login details?      ")),
                  ),
                  FlatButton(
                    onPressed: (){},
                    child: Text("   Forgot Password",
                      style: TextStyle(
                        color: Colors.blueAccent,
                      ),
                    ),


                  ),

                  ],

              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Material(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                elevation: 5.0,
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'home_screen');
                  },
                  minWidth: 200.0,
                  height: 42.0,
                  child: Text(
                    'Log In',
                  ),
                ),
              ),
            ),
            //
             Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(left: 30.0, right: 30.0, top: 20.0),
              alignment: Alignment.center,
              child: Row(
                children: <Widget>[
                  new Expanded(
                    child: new Container(
                      margin: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(border: Border.all(width: 0.25)),
                    ),
                  ),
                  Text(
                    "OR",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  new Expanded(
                    child: new Container(
                      margin: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(border: Border.all(width: 0.25)),
                    ),
                  ),
                ],
              ),
            ),
            // SizedBox(
            //   height: 14.0,
            //  ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Material(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                elevation: 6.0,
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'registration_screen');
                  },
                  minWidth: 200.0,
                  height: 42.0,
                  child: Text(
                    'Register',
                  ),
                ),
              ),
            ),
            // Row(
            //   children: [
            //
            //     Padding(
            //       padding: const EdgeInsets.only(left: 130.0),
            //       child: Center(child: Text("First time here?")),
            //     ),
            //     FlatButton(
            //       onPressed: (){},
            //       child: Text("Register here",
            //         style: TextStyle(
            //           color: Colors.blueAccent,
            //         ),
            //       ),
            //
            //
            //     ),
            //
            //   ],
            //
            // ),
            SizedBox(
              height: 48.0,
            ),

          ],
        ),
      ),
    );
  }
}