import "dart:async";

import "package:drivers_app/authentication/login_screen.dart";
import "package:drivers_app/authentication/signup_screen.dart";
import "package:drivers_app/mainScreens/main_screen.dart";
import "package:flutter/material.dart";

    class MySplashScreen extends StatefulWidget {
      const MySplashScreen({Key? key}) : super(key: key);

      @override
      State<MySplashScreen> createState() => _MySplashScreenState();
    }

    class _MySplashScreenState extends State<MySplashScreen>
    {

      startTimer()
      {
        Timer(const Duration(seconds: 3), () async {
          // send user to main screen
          Navigator.push(context, MaterialPageRoute(builder: (c)=> LoginScreen()));
        });
      }

      @override
  void initState() {
    // TODO: implement initState
    super.initState();

    startTimer();
  }

      @override
      Widget build(BuildContext context) {
        return Material(
          child: Container(
            color: Colors.black,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Image.asset("images/logo1.png"),

                  SizedBox(height: 10,),

                  const Text(
                    "Uber and inDriver Clone App",
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
            )
            
          ),
        );
      }
    }
