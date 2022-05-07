import 'package:flutter/material.dart';


const String background="images/background.jpg";
const Color cusOrange=Colors.orangeAccent;
const Color cusBlack=Colors.black;
const Color cusWhite=Colors.white;
const Color cusGrey=Colors.grey;

double getHeight(context){
  double h=MediaQuery.of(context).size.height;
  return  h ;
}

double getWidth(context){
  double w=MediaQuery.of(context).size.width;
  return  w ;
}

void navigatorScreen(BuildContext context, Widget widget) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => widget));
}
