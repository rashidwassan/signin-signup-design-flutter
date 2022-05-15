import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '/constants/images.dart';
import '/screens/login.dart';

class SplashScreen extends StatefulWidget {
  static const String id = '/';
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void _navigateToNext() async {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).pushNamed(LoginScreen.id);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigateToNext();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ClipRRect(
                borderRadius: BorderRadius.circular(500),
                child: Image.asset(Images.logo))
            .p(32),
      ),
    );
  }
}
