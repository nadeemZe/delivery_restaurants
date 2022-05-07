import 'package:delivery_restaurants/constant/helpers.dart';
import 'package:flutter/material.dart';

class BackgroundContainer extends StatelessWidget{
  final Widget widget;
  const BackgroundContainer({Key? key,required this.widget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
        children:[
          Container(
            height: getHeight(context),
            width: getWidth(context),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(background),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height:getHeight(context),
            width: getWidth(context),
            decoration:const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      Colors.white70,
                      Colors.white,
                    ]
                )
            ),
          ),
          Positioned(
              bottom: 0,
              child:widget
          ),
        ]
    );
  }
}