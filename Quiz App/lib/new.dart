

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Myclass extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return  Container(
     
     alignment: Alignment.center,
     color: Colors.lightBlue,
    child: Text("The Loki device", style: TextStyle(color:Colors.white, fontSize: 40.0,fontFamily: 'Raleway' ,fontWeight: FontWeight.w700, decoration: TextDecoration.none),textDirection: TextDirection.ltr,),
    );
    }
}