import 'dart:async';
import 'package:getwidget/getwidget.dart';
import 'package:apartment_app/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'login_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return initScreen(context);
  }


  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = Duration(seconds: 5);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => WelcomeScreen()
    )
    );
  }

  initScreen(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Padding(padding: EdgeInsets.only(top: 20.0)),

            GFLoader(
              type: GFLoaderType.custom,
                loaderIconTwo   : Image(image: NetworkImage('https://genericappt.000webhostapp.com/ARGUS-02.png'),
                height: 60.0,
              ),
            ),
            Container(


        // child: Image(image: NetworkImage('https://genericappt.000webhostapp.com/ARGUS-02.png'),),
      ),

            Padding(padding: EdgeInsets.only(top: 20.0)),
            CircularProgressIndicator(
              backgroundColor: Colors.white,
              strokeWidth: 4,
            )
          ],
        ),
      ),
    );
  }
}
