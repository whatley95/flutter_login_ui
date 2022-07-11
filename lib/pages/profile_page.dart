import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget{

  @override
  State<StatefulWidget>createState(){
    return _ProfilePageState();
  }
}

class _ProfilePageState extends State<ProfilePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Page',
          style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
        ),
        elevation: 0.5,
        iconTheme: IconThemeData(color: Colors.white),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[Theme.of(context).primaryColor,Theme.of(context).colorScheme.secondary]//apply this only color changes
            )
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(top: 16,right: 16),
            child: Stack(
              children: <Widget>[
                Icon(Icons.notifications),
                Positioned(
                  right: 0,
                    child: Container(
                      padding: EdgeInsets.all(1),
                      decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(6)),
                      constraints: BoxConstraints(minWidth: 12,minHeight: 12),
                      child: Text('5',style: TextStyle(color: Colors.white,fontSize: 8),textAlign: TextAlign.center,),
                    ),
                )
              ],
            ),
          )
        ],
      ),
      drawer: Drawer(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.0,1.0],
              colors: [
                Theme.of(context).primaryColor.withOpacity(0.1),
                Theme.of(context).colorScheme.secondary.withOpacity(0.4),
              ]
            )
          ),
          child: ListView(
            children: [

            ],
          ),
        ),
      ),
    );
  }
}