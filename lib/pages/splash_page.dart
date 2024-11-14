import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:pharmacie/pages/entry_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override

  void initState() {
    // TODO: implement initState
    super.initState();

    Future.delayed(Duration(seconds: 3)).then((value) {
      Navigator.of(context).push(
          MaterialPageRoute(builder: (ctx) => const Entry_page()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white, 
      body:  SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Image(
            //   image: AssetImage('assets/images/logo.png'),
            //   width: 100,
            // ),
          Text(
              'Loading',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 24, 
                fontFamily: 'Poppins',
                
                color: Colors.green  
        
                ),
              ),

           SizedBox(
              height: 50,
            ),
            SpinKitSpinningLines(
              
              color: Colors.green, 
              size: 80.0,

              ) 
          ],
        ),
      ),
    );
  }
}
