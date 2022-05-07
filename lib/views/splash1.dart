import 'package:delivery_restaurants/constant/helpers.dart';
import 'package:delivery_restaurants/widgets/background_container.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class Splash1 extends StatefulWidget{
  const Splash1({Key? key}) : super(key: key);

  @override
  State<Splash1> createState() => _Splash1State();
}

class _Splash1State extends State<Splash1> {

  final TextEditingController _controller = TextEditingController();
  final TextEditingController _controller1 = TextEditingController();

  @override
  void dispose(){
    super.dispose;
    _controller.dispose();
    _controller1.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundContainer(
        widget: SizedBox(
          height: getHeight(context)/1.4,
          width: getWidth(context),
          child: Column(
            children: [
              ClipOval(
                child: SizedBox(
                  height: getHeight(context)/7,
                  width: getHeight(context)/7,
                    child: Image.asset('images/person.jpg',fit: BoxFit.cover,)
                ),
              ),
              const SizedBox(height: 7,),
              Text(
                "Deliver Food",
                style: TextStyle(
                  fontSize: getWidth(context)/17,
                  fontWeight: FontWeight.bold,
                  color: cusBlack,
                ),
              ),
              const SizedBox(height: 12,),
              Text(
                "Login",
                style: TextStyle(
                  fontSize: getWidth(context)/17,
                  fontWeight: FontWeight.bold,
                  color: cusOrange
                ),
              ),
              const SizedBox(height: 25,),
              Container(
                height: getHeight(context)/17,
                width: getWidth(context)/1.2,
                padding:const EdgeInsets.all(7),
                decoration: BoxDecoration(
                  color: cusWhite,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow:const [
                      BoxShadow(
                       color: Colors.black12,
                       spreadRadius: 1,
                       offset:Offset (-1,1),
                       blurRadius: 5,
                     )
                    ]
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: getWidth(context)/12,
                      child: TextField(
                        controller: _controller1,
                        cursorColor: cusOrange,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "+961",
                          hintStyle: TextStyle(color: cusOrange,fontSize:getWidth(context)/33 ),
                        ),
                      ),
                    ),
                   // const SizedBox(width: 5,),
                    const VerticalDivider(color: cusGrey,),
                   // const SizedBox(width: 3,),
                    SizedBox(
                      height: getHeight(context)/17,
                      width: getWidth(context)/2.5,
                      child: TextField(
                        controller: _controller,
                        cursorColor: cusOrange,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Enter Number here",
                          hintStyle: TextStyle(color: cusGrey,fontSize:getWidth(context)/35 ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25,),
              ElevatedButton(
                  onPressed: () {
                    navigatorScreen(context, const Home());
                  },
                  child: Text(
                    "Send OTP",
                    style: TextStyle(
                        fontSize: getWidth(context)/23,
                        fontWeight: FontWeight.bold,
                        color: cusWhite
                    ),
                  ),
                style: ButtonStyle(
                  backgroundColor:MaterialStateProperty.all(cusOrange),
                  minimumSize: MaterialStateProperty.all(Size(getWidth(context)/1.2,getHeight(context)/17)),
                ),
              ),
              const SizedBox(height: 20,),
              Text(
                "Or Login Using",
                style: TextStyle(
                    fontSize: getWidth(context)/30,
                    color: cusGrey,
                ),
              ),
              const SizedBox(height: 7,),
              SizedBox(
                width: getWidth(context)/1.3,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatar(
                      radius: getWidth(context)/20,
                      backgroundImage:const AssetImage('images/gmail.jpg'),
                      ),
                    CircleAvatar(
                      radius: getWidth(context)/20,
                      backgroundImage:const AssetImage('images/apple.jpg'),
                      ),
                    CircleAvatar(
                      radius: getWidth(context)/20,
                      backgroundImage:const AssetImage('images/facebook.jpg'),
                      ),
                  ],
                ),
              ),
              const SizedBox(height:20 ,),
              RichText(
                text: TextSpan(
                  text: "By Continuing I Agree To",
                  style: TextStyle(fontSize: getWidth(context)/41,color: Colors.black87),
                  children: [
                    TextSpan(
                      text: "Terms",
                      style: TextStyle(fontSize:getWidth(context)/41,color: cusOrange,decoration: TextDecoration.underline )
                    )
                  ]
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}