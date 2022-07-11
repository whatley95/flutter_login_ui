
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_login_ui/pages/login_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key, required this.title}) : super(key: key);



  final String title;

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  bool _isVisible = false;
  _SplashScreenState()
  {
    Timer(const Duration(milliseconds: 2000), () {
      setState((){
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => const LoginPage()), (route) => false);
      });
    });

    Timer(const Duration(milliseconds: 10),(){
      setState((){
        _isVisible = true;// showing fade effect and go to login page
      });
    });
  }

  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [Theme.of(context).accentColor,Theme.of(context).primaryColor],
        begin: const FractionalOffset(0, 0),
        end: const FractionalOffset(1.0, 0.0),
        stops: const [0.0,1.0],
        tileMode: TileMode.clamp
        ),
      ),
      child: AnimatedOpacity(
        opacity: _isVisible ? 1.0:0,
        duration: const Duration(milliseconds: 1200),
        child: Container(
          margin: const EdgeInsets.all(100),
          height: 140.0,
          width: 140.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                blurRadius: 2.0,
                offset: const Offset(5.0,3.0),
                spreadRadius: 5.0,
              )
            ]
          ),
          child: const Center(
            child: ClipOval(
              child: Icon(Icons.android_outlined,size: 128,),
            ),
          ),
        ),
      ),
    );
  }
}
