import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';


class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {

  void _onIconButtonPressed() {
    
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: ClipPath(
          clipper: WaveClipperOne(),
          child: Container(
            height: 200,
            width: double.infinity, 
            color: Colors.red,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                backgroundImage: AssetImage('assets/images/logo.png'), 
                radius: 30,   
              ),
              SizedBox(height: 1),
              
             
              Text('xp programming',
              style: TextStyle(
                color: Colors.white,
                fontFamily: "Poppins" ,
                fontSize: 14

                ),
            
            ),  

              ],
            ),
          ),
        ),
      ),
    );
  }
}