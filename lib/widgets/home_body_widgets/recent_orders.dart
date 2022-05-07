import 'package:delivery_restaurants/constant/helpers.dart';
import 'package:flutter/material.dart';

class RecentOrders extends StatelessWidget{
  const RecentOrders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getHeight(context)/7,
      padding: const EdgeInsets.all(7),
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: cusWhite,
          borderRadius: BorderRadius.circular(12),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              spreadRadius: 1,
              offset:Offset (-1,1),
              blurRadius: 5,
            )
          ]
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    "Recent Orders",
                    style: TextStyle(
                        fontSize: getWidth(context)/25,
                        color: cusBlack,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Text(
                  "view All",
                  style: TextStyle(
                      fontSize: getWidth(context)/41,
                      color: cusOrange
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SizedBox(
              height: getHeight(context)/12,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context,index){
                    return Container(
                      height: getHeight(context)/12,
                      width: getWidth(context)/1.7,
                      padding: const EdgeInsets.all(2),
                      margin: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: cusWhite,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black12,
                              spreadRadius: 1,
                              offset:Offset (-1,1),
                              blurRadius: 5,
                            )
                          ]
                      ),
                      child: Row(
                        children: [
                          Container(
                              height: getHeight(context),
                              width: getWidth(context)/7,
                              margin: const EdgeInsets.all(5),
                              child: ClipRRect(
                                  borderRadius:BorderRadius.circular(12),
                                  child: Image.asset("images/burger.jpg",fit: BoxFit.cover,))
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment:CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Tortilla Wrap",
                                  style: TextStyle(
                                      fontSize: getWidth(context)/35,
                                      color: cusBlack
                                  ),
                                ),
                                Text(
                                  "AED 20",
                                  style: TextStyle(
                                      fontSize: getWidth(context)/41,
                                      color: cusOrange
                                  ),
                                ),
                                Text(
                                  "Delivered in 30 min",
                                  style: TextStyle(
                                      fontSize: getWidth(context)/41,
                                      color: cusBlack
                                  ),
                                ),

                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  }
              ),
            ),
          )
        ],
      ),
    );
  }
}