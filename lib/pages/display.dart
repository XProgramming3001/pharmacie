import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pharmacie/pages/entry_page.dart';

class Display extends StatefulWidget {
  const Display({super.key});

  @override
  State<Display> createState() => _DisplayState();
}

class _DisplayState extends State<Display> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,  
          crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Container(
            margin: EdgeInsets.only(top: 100), 
            alignment: Alignment.center, 
            child: SvgPicture.asset(
                "assets/images/display.svg",
                height: 200, 
                width: 200,
          )
          ),

          Container( 
          margin: const EdgeInsets.only(left: 20,),
          child: const Column( 
          crossAxisAlignment: CrossAxisAlignment.start, 
          
            children: [
              Text(
              'Find your',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 24, 
                fontFamily: 'starshine',
                color: Colors.green  
        
                ),
              ),
              Text(
              "Next Avendure", 
              textAlign: TextAlign.left, 
              style: TextStyle(
                fontSize: 24, 
                fontFamily: 'starshine',
                color: Colors.green 
        
                ),
              ),
              SizedBox(
                height: 10,
              ),
               Text(
              
              "je suis un programming \ndynamique et  fort programming \ndynamique et fort ", 
              textAlign: TextAlign.left, 
              style: TextStyle(
                fontSize: 14, 
                fontFamily: 'starshine', 
                color: Colors.black ,
                
        
                ),
              ),
            ],
          ),
          ),

          Container(
          margin:  const EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween, 
            
            children: [
          
              IconButton(
                onPressed: (){}, 

                icon: const Icon(Icons.arrow_back), 
                
                color: Colors.green,
                iconSize: 30, 
                style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll<Color>(Colors.green),
                elevation: MaterialStatePropertyAll(4),
                padding: MaterialStatePropertyAll(EdgeInsets.only(left:30, right: 30 ))
                ),
              ),

             ElevatedButton(
              onPressed: (){
                Navigator.of(context).push(
                MaterialPageRoute(
                builder: (context) => const Entry_page(),
    ),
  );
              }
              ,
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll<Color>(Colors.green),
                elevation: MaterialStatePropertyAll(4),
                padding: MaterialStatePropertyAll(EdgeInsets.only(left:30, right: 30 ))
                ), 
              child: const Text('Next'),
              )
            ],
          ),
        )
          
        ],
      )
          
         
    );
  }
}
