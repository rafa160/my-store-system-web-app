import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_store_system_app/components/loading_indicator.dart';
import 'package:my_store_system_app/screens/login_screen/login_module.dart';
import 'package:my_store_system_app/styles/style.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 4)).then((_) {
      Get.offAll(() => LoginModule());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Spacer(),
          ColorLoader2(
            color1: Colors.amber,
            color2: Colors.black,
            color3: Colors.amberAccent,
          ),
          const Spacer(),
          Align(
            alignment: FractionalOffset.bottomCenter,
            child: Text('sponsored by Anduril Software', style: typeText,),),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
