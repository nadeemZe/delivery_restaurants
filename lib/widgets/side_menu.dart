import 'package:delivery_restaurants/constant/helpers.dart';
import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget{
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
          color: cusOrange,
          width: getWidth(context)/2.3,
          padding: const EdgeInsets.fromLTRB(7,51,7,35),
          child: Column(
            children: [
              DrawerHeader(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: getWidth(context)/10,
                      backgroundImage:const AssetImage('images/person.jpg'),
                    ),
                    const SizedBox(height: 12,),
                    Text(
                      "Ab0-Ibra Ze.",
                      style: TextStyle(
                        color: cusWhite,
                        fontSize: getWidth(context)/17,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  children: [
                    ListTile(
                      leading:const Icon(Icons.local_drink,color: cusWhite),
                      title:Text("Order",style: TextStyle(
                        color: cusWhite,
                        fontSize: getWidth(context)/25,
                      ),) ,
                    ),
                    ListTile(
                      leading:const Icon(Icons.history,color: cusWhite),
                      title:Text("History",style: TextStyle(
                        color: cusWhite,
                        fontSize: getWidth(context)/25,
                      ),) ,
                    ),
                    ListTile(
                      leading:const Icon(Icons.policy,color: cusWhite),
                      title:Text("Privacy",style: TextStyle(
                        color: cusWhite,
                        fontSize: getWidth(context)/25,
                      ),) ,
                    ),
                    ListTile(
                      leading: const Icon(Icons.logout,color: cusWhite ,),
                      title:Text("Logout",style: TextStyle(
                        color: cusWhite,
                        fontSize: getWidth(context)/25,
                      ),) ,
                    ),

                  ],
                ),
              ),
              Text(
                "Language",
                style: TextStyle(
                    color: cusWhite,
                    fontSize: getWidth(context)/25
                ),
              ),
              const Text(
                  "Eng",style: TextStyle(
                color: cusWhite,
                fontWeight: FontWeight.bold
              ),
              ),
              const SizedBox(height: 17,)
            ],
          ),
        )
    );
  }
}