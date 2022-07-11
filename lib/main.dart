import 'package:flutter/material.dart';
import 'package:flutter_login_ui/pages/splash_screen.dart';
import 'package:hexcolor/hexcolor.dart';

void main() {
  runApp(LoginUiApp());
}

class LoginUiApp extends StatelessWidget {
  //const LoginUiApp({Key? key}) : super(key: key);
  /*final Color _primaryColor = HexColor('#DC54FE');
  final Color _accentColor = HexColor('#8A02AE');*/
  final Color _primaryColor = HexColor('#079AF5');
  final Color _accentColor = HexColor('#84CAF5');
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Login UI',
      theme: ThemeData(
        primaryColor: _primaryColor,
        accentColor: _accentColor,
        scaffoldBackgroundColor: Colors.grey.shade100,
        primarySwatch: Colors.grey,
      ),
      home: const SplashScreen(title: 'Flutter Login UI'),
    );
  }
}
