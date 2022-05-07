import 'package:delivery_restaurants/constant/helpers.dart';
import 'package:delivery_restaurants/widgets/scaffold_home_body.dart';
import 'package:delivery_restaurants/widgets/side_menu.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget{
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final TextEditingController _controller =TextEditingController();
  double value =0;

  @override
  void dispose(){
    super.dispose;
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      body: Stack(
        children: [
          Container(color: cusOrange,),
          const SideMenu(),
          const ScaffoldHomeBody(),
        ],
      ),
    );
  }
}