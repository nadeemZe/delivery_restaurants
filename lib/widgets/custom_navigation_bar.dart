import 'package:delivery_restaurants/constant/helpers.dart';
import 'package:flutter/material.dart';

class CustomNavigationBar extends StatelessWidget{
  final bool value;
  const CustomNavigationBar({Key? key,required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.only(top:10, bottom:10,),
      decoration:const BoxDecoration(
        color: cusOrange,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight:Radius.circular(20) )
      ),
      child:value? Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children:const [
          NavIcon(text: "Order", icon: Icons.local_drink),
          NavIcon(text: "Cart", icon: Icons.shopping_cart),
          NavIcon(text: "Saved", icon: Icons.favorite),
          NavIcon(text: "Notification", icon: Icons.notifications),

        ],
      ):null,
    );
  }
}

class NavIcon extends StatelessWidget{
  final String text;
  final IconData icon;
  const NavIcon({Key? key,required this.text,required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon,color: cusWhite,size: getWidth(context)/23,),
        const SizedBox(height: 5,),
        Text(
          text,
          style: TextStyle(
              fontSize: getWidth(context)/37,
              color: cusWhite
          ),
        ),
      ],
    );
  }
}


