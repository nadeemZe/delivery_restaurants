import 'package:delivery_restaurants/constant/helpers.dart';
import 'package:flutter/material.dart';

class TrendingFood extends StatelessWidget{
  const TrendingFood({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: getHeight(context)/5,
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
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Trending Food",
                style: TextStyle(
                    fontSize: getWidth(context)/25,
                    color: cusBlack,
                    fontWeight: FontWeight.bold
                ),
              ),
              GridView.builder(
                  scrollDirection:Axis.vertical,
                  shrinkWrap: true,
                  itemCount: 9,
                  gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 3,
                      mainAxisSpacing: 3,
                      childAspectRatio: 3/2
                  ),
                  itemBuilder: (context,index){
                    return Stack(
                        children:[
                          ClipRRect(
                            borderRadius:BorderRadius.circular(12),
                            child: SizedBox(
                              child: Image.asset("images/burger.jpg",fit: BoxFit.cover,),
                            ),
                          ),
                          Center(
                            child: Text(
                              "Burger",
                              style: TextStyle(
                                fontSize: getWidth(context)/35,
                                color: cusWhite,
                              ),
                            ),
                          )
                        ]
                    );
                  }
              )
            ],
          ),
        )
    );
  }
}