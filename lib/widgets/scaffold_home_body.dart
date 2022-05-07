import 'package:delivery_restaurants/constant/helpers.dart';
import 'package:delivery_restaurants/controllers/hide_bottom_nav_controller.dart';
import 'package:delivery_restaurants/widgets/home_body_widgets/new_restaurants.dart';
import 'package:delivery_restaurants/widgets/home_body_widgets/recent_orders.dart';
import 'package:flutter/material.dart';
import 'custom_navigation_bar.dart';
import 'home_body_widgets/trending_food.dart';

class ScaffoldHomeBody extends StatefulWidget{
  const ScaffoldHomeBody({Key? key}) : super(key: key);

  @override
  State<ScaffoldHomeBody> createState() => _ScaffoldHomeBodyState();
}

class _ScaffoldHomeBodyState extends State<ScaffoldHomeBody> {

  final TextEditingController _controller =TextEditingController();
  final HideNavbar hiding = HideNavbar();
  double value =0;

  @override
  void dispose(){
    super.dispose;
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
          return Stack(
              children:[
              AnimatedPositioned(
                right: value==1?-getWidth(context)/2:0,
                curve: Curves.easeOut,
                duration:const Duration(milliseconds: 500),
                child: Transform.scale(
                  alignment: Alignment.center,
                  scale:value==0?1:0.8,
                  child: Container(
                    height: getHeight(context),
                    width: getWidth(context),
                    padding: const EdgeInsets.only(left:25,right: 25,top: 25),
                    decoration: BoxDecoration(
                      borderRadius: value==1?BorderRadius.circular(25):null,
                      color: cusWhite,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.orangeAccent.shade100,
                          spreadRadius: 7
                        )
                      ]
                    ),
                    child: Scaffold(
                      appBar:  AppBar(
                        backgroundColor: cusWhite,
                        elevation: 0,
                        leading: IconButton(
                          onPressed: (){
                            setState(() {
                              value==0
                                  ?value=1
                                  :value=0;
                            });
                          },
                          icon: Icon(Icons.menu,color: cusOrange,size: getWidth(context)/15,),
                        ),
                        leadingWidth: 20,
                        title: Row(
                          children: [
                            CircleAvatar(
                              radius: getWidth(context)/20,
                              backgroundImage:const AssetImage('images/person.jpg'),
                            ),
                            const SizedBox(width: 3,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Home",
                                  style: TextStyle(
                                      fontSize: getWidth(context)/30,
                                      color: cusOrange
                                  ),
                                ),
                                Text(
                                  "Almeena tower - bolonindg ...",
                                  style: TextStyle(
                                      fontSize: getWidth(context)/37,
                                      color: cusBlack
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        bottom: PreferredSize(
                          preferredSize:const Size.fromHeight(51) ,
                          child:Row(
                            children: [
                              Container(
                                height: getHeight(context)/17,
                                width: getWidth(context)/1.5,
                                margin:const EdgeInsets.only(left: 5,right: 2),
                                padding: const EdgeInsets.all(5),
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
                                child: TextField(
                                  controller: _controller,
                                  cursorColor: cusOrange,
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Restaurant Name, Culsine or dish",
                                      hintStyle: TextStyle(color: cusGrey,fontSize:getWidth(context)/35 ),
                                      suffixIcon : Container(
                                        color: cusOrange,
                                        child: IconButton(
                                          padding: EdgeInsets.zero,
                                          onPressed: null,
                                          icon: Icon(Icons.search,color: cusWhite,size: getWidth(context)/25,),
                                        ),
                                      )
                                  ),
                                ),
                              ),
                              Container(
                                height: getHeight(context)/17,
                                width: getWidth(context)/7,
                                margin:const EdgeInsets.only(left: 7,right: 3),
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
                                child: IconButton(
                                  onPressed: null,
                                  icon: Icon(Icons.filter_alt,color: cusOrange,size: getWidth(context)/15,),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      body: SingleChildScrollView(
                        controller: hiding.controller,
                        child: Column(
                          children: [
                            Container(
                              height: getHeight(context)/5,
                              margin: const EdgeInsets.only(top: 15,bottom: 15),
                              child: ListView.builder(
                                  padding: const EdgeInsets.all(5),
                                  itemCount: 3,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context,i){
                                    return Container(
                                      width: getWidth(context)/1.5,
                                      margin: const EdgeInsets.only(right: 5),
                                      child: ClipRRect(
                                          borderRadius:BorderRadius.circular(12),
                                          child: Image.asset("images/burger.jpg",fit: BoxFit.cover,))
                                    );
                                  }
                              ),
                            ),
                            const RecentOrders(),
                            const TrendingFood(),
                            const NewRestaurants(),
                          ],
                        ),
                      ),

                      bottomNavigationBar: ValueListenableBuilder(
                          valueListenable: hiding.visible,
                        builder: (context, bool value, child) {
                          return SizedBox(
                                height: getHeight(context)/12,
                                child:  CustomNavigationBar(value:value)
                          );
                        }
                      ),
                    ),
                  ),
                ),
              ),
              ]
            );
  }
}