import 'dart:async';
import 'package:architecture/config/image/images.dart';
import 'package:architecture/features/post/presentation/ui/post_page.dart';
import 'package:architecture/routes/app_router.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget{

  @override
  _SplashPageState createState() =>_SplashPageState();

}
class _SplashPageState extends State<SplashPage>{
  Timer? _timer;


  @override
  void initState() {
    super.initState();

  }
  @override
  void dispose() {
    super.dispose();
    _timer!.cancel();
  }
  @override
  Widget build(BuildContext context) {

    _timer= Timer(const Duration(seconds: 3),()=>  context.router.replace(PostRoute()));
    return Scaffold(
        body:SafeArea(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration:const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(Images.background),
                fit: BoxFit.fill,
              ),
            ),
          ),
        )

    );
  }

}
