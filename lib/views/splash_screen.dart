import 'package:delivery_restaurants/constant/helpers.dart';
import 'package:delivery_restaurants/views/splash1.dart';
import 'package:delivery_restaurants/widgets/background_container.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget{
  const SplashScreen({Key? key}) : super(key: key);

  void moveNextScreen(context){
    Future.delayed(const Duration(seconds: 5)).then((value) =>
         navigatorScreen(context,const Splash1())
        );
  }

  @override
  Widget build(BuildContext context) {
    moveNextScreen(context);
    return Scaffold(
      body: InkWell(
        onTap: () {
          navigatorScreen(context, const Splash1());
        },
        child: BackgroundContainer(
            widget: SizedBox(
                height: getHeight(context)/2.3,
                width: getWidth(context),
                child: Image.asset('images/delivery.gif',fit: BoxFit.cover,)
            ),
        ),
      ),
    );
  }
}