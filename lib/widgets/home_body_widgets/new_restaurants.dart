import 'package:delivery_restaurants/constant/helpers.dart';
import 'package:flutter/material.dart';

class NewRestaurants extends StatelessWidget{
  const NewRestaurants({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12.0,top: 7),
            child: Text(
              "New Restaurants",
              style: TextStyle(
                  fontSize: getWidth(context)/25,
                  color: cusBlack,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
          SizedBox(
            height: getHeight(context)/3,
            child: ListView.builder(
                itemCount: 3,
                padding: const EdgeInsets.all(5),
                scrollDirection:Axis.horizontal ,
                itemBuilder: (context,i){
                  return Stack(
                    children: [
                      Container(
                        height: getHeight(context)/5,
                        width: getWidth(context)/1.5,
                        margin:const EdgeInsets.only(right: 5),
                        child: ClipRRect(
                          borderRadius:BorderRadius.circular(12),
                          child: Image.asset("images/burger.jpg",fit: BoxFit.cover,),
                        ),
                      ),
                      Positioned(
                          top:5,
                          right:12,
                          child: Container(
                            height: getWidth(context)/15,
                            width: getWidth(context)/15,
                            decoration:BoxDecoration(
                                color: cusGrey,
                                borderRadius: BorderRadius.circular(7)
                            ),
                            child: IconButton(
                              onPressed: null,
                              padding: EdgeInsets.zero,
                              alignment:Alignment.center,
                              icon: Icon(Icons.favorite,color: cusWhite,size:getWidth(context)/25 ,),
                            ),
                          )
                      ),
                      Positioned(
                          bottom: 15,
                          left:15,
                          child: Container(
                            height: getHeight(context)/6,
                            width: getWidth(context)/1.7,
                            padding:const EdgeInsets.all( 5),
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
                            child: Column(
                              crossAxisAlignment:CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: 25,
                                      width:51 ,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          color: cusOrange,
                                          borderRadius: BorderRadius.circular(7)
                                      ),
                                      child: Text(
                                        "4.3 *",
                                        style: TextStyle(
                                          fontSize: getWidth(context)/35,
                                          color: cusWhite,
                                        ),
                                      ),
                                    ),
                                    Column(
                                      children:const [
                                        Icon(Icons.location_on_rounded,color: cusOrange,size: 15,),
                                        Text(
                                          "7.5 KM",
                                          style: TextStyle(
                                            fontSize: 10,
                                            color: cusBlack,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                const Text(
                                  "Mociani Let",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: cusBlack,
                                  ),
                                ),
                                const Text(
                                  "italian,pizza",
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.black38,
                                  ),
                                ),
                                const SizedBox(height: 5,),
                                Row(
                                  children: const[
                                    Icon(Icons.bookmark_border,color: cusOrange,size: 15,),
                                    Text(
                                      "No min Order",
                                      style: TextStyle(
                                        fontSize: 9,
                                        color: cusBlack,
                                      ),
                                    ),
                                    SizedBox(width: 25,),
                                    Icon(Icons.location_on_rounded,color: cusOrange,size: 15,),
                                    Text(
                                      "Live Tracking",
                                      style: TextStyle(
                                        fontSize: 9,
                                        color: cusBlack,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 5,),
                                Row(
                                  children: const[
                                    Icon(Icons.bookmark_border,color: cusOrange,size: 15,),
                                    Text(
                                      "30  min Order",
                                      style: TextStyle(
                                        fontSize: 9,
                                        color: cusBlack,
                                      ),
                                    ),
                                    SizedBox(width: 25,),
                                    Icon(Icons.location_on_rounded,color: cusOrange,size: 15,),
                                    Text(
                                      "free delivery",
                                      style: TextStyle(
                                        fontSize: 9,
                                        color: cusBlack,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                      )
                    ],
                  );
                }
            ),
          )
        ],
      ),
    );
  }
}