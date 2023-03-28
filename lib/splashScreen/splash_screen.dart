import 'dart:async';
import 'package:flutter/material.dart';
import 'package:foodpanda_sellers_app/global/global.dart';
import 'package:foodpanda_sellers_app/mainScreens/home_screen.dart';
import '../authentication/auth_screen.dart';


class MySplashScreen extends StatefulWidget {
  const MySplashScreen({Key? key}) : super(key: key);

  @override
  State<MySplashScreen> createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen>
{

  startTimer()
  {


    Timer(const Duration(seconds: 8),() async{
      // if seller is logged in already
      if(firebaseAuth.currentUser != null){

        Navigator.push(context, MaterialPageRoute(builder: (c)=> const HomeScreen()));

      }
      // if seller is logged is not logged in already
      else{
        Navigator.push(context, MaterialPageRoute(builder: (c)=> const AuthScreen()));

      }
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
                Image.asset("images/Raider.jpg"),

                const SizedBox(height: 10,),

                const Padding(
                  padding: EdgeInsets.all(18.0),
                  child: Text(
                    "Raider Eats",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 30,
                      fontFamily: "Signatra",
                      letterSpacing: 3,
                    ),
                  ),
                ),
              ],
            ),
          ),

        ),
    );
  }
}
