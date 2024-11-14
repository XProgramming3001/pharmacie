import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:bottom_bar/bottom_bar.dart';
import 'package:pharmacie/pages/register_page.dart';
import 'package:searchbar_animation/searchbar_animation.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Entry_page extends StatefulWidget {
  const Entry_page({super.key});

  @override
  State<Entry_page> createState() => _Entry_pageState();
}

class _Entry_pageState extends State<Entry_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity, 
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [ Color.fromARGB(255, 21, 82, 54), Color.fromARGB(255, 25, 56, 26)],
            begin: Alignment.bottomCenter
           
          ) 
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(30),    
              child: SvgPicture.asset(
                  "assets/images/img_entry.svg", 
                  height: 150,   
                  
                  ),
              ),
              Container(
                margin: EdgeInsets.only(left: 150), 
                child: const Text('Names Entreprise \nXProgramming',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 22,
                    color: Colors.white ,    

                  )
                ),
              ),
              const SizedBox( 
                height: 60,      
              ),
              Container(
                margin: EdgeInsets.all(10),
                width: double.infinity,
                height: 60,
               
                child: ElevatedButton(
                  onPressed: (){}, 
                 
                  // style: ButtonStyle(
                  //   backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 7, 41, 8))  
                  // ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                       
                    ),
                    backgroundColor: Color.fromARGB(255, 251, 251, 251)
                  ),
                   child: const  Text('join with facebook', 
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20 ,
                    color: Color.fromARGB(255, 6, 32, 7) 
                  )
                  ),
                  
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                width: double.infinity,
                height: 60,
               
                child: ElevatedButton(
                  onPressed: (){}, 
                 
                  // style: ButtonStyle(
                  //   backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 7, 41, 8))  
                  // ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                       
                    ),
                    backgroundColor: Color.fromARGB(255, 6, 32, 7)
                  ),
                   child: const  Text('Join with google',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20  
                  )
                  ),
                  
                ),
              ),
              TextButton(
                onPressed: (){
                Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const Register()));  
                }, 
                child: const Text('Sign up',  
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20, 
                    color: Colors.white 

                  )
                ),
                ) 
          ],
        ),
      ),
    );
  }
}



 // button 
              