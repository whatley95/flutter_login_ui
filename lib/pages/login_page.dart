import 'package:flutter/material.dart';
import 'package:flutter_login_ui/pages/profile_page.dart';
import 'package:flutter_login_ui/pages/widgets/header_widget.dart';

import 'common/theme_helper.dart';

class LoginPage extends StatefulWidget{
  const LoginPage({Key? key}):super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{

  double _headerHeight = 250;
  Key _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: _headerHeight,
              child: HeaderWidget(_headerHeight,true,Icons.android_rounded),
            ),
            SafeArea(
              child: Container(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: Column(
                  children: [
                    Text(
                      'Hello There',
                      style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 30.0),
                    Form(key: _formKey,
                      child: Column(
                        children: [
                          TextField(
                            decoration: ThemeHelper().textInputDecoration('User Name','Enter your user name'),
                          ),
                          SizedBox(height: 30.0),
                          TextField(
                            obscureText: true,
                            decoration: ThemeHelper().textInputDecoration('Password','Enter your password'),
                          ),
                          SizedBox(height: 15.0),
                          Container(
                            child: Text('Forgot Your Password'),
                          ),
                          Container(
                            decoration: ThemeHelper().buttonBoxDecoration(context),
                            child: ElevatedButton(
                              style: ThemeHelper().buttonStyle(),
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                                child: Text('Sign In'),
                              ),
                              onPressed: (){
                                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ProfilePage()));
                              },
                            ),
                          ),
                          Container(
                            child: Text('Create New Accout'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  
}