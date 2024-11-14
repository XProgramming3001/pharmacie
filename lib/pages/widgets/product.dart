import 'package:flutter/material.dart';

class ProductSection extends StatelessWidget {
  const ProductSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      height: 100,
      
      child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Container(
                height: 60,
                width: 60,
                
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue,
                  
                ),
                child: const Icon(
                  Icons.baby_changing_station_rounded,
                  color: Colors.white, 
                  size: 50,
                
                ),
                 
              ),
              Text(
                "section",
                style: const TextStyle(
                  color: Colors.black,
                  fontFamily: 'Poppins',
                  fontSize: 12 
                ),
                ) 
            ],
          ),
           Column(
            children: [
              Container(
                height: 60,
                width: 60,
                
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 12, 209, 55),
                  
                ),
                child: const Icon(
                  Icons.assist_walker, 
                  color: Colors.white, 
                  size: 50,
                
                ),
                 
              ),
              Text(
                "section",
                style: const TextStyle(
                  color: Colors.black,
                  fontFamily: 'Poppins',
                  fontSize: 12 
                ),
                ) 
            ],
          ), Column(
            children: [
              Container(
                height: 60,
                width: 60,
                
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(255, 243, 110, 33),
                  
                ),
                child: const Icon(
                  Icons.battery_0_bar, 
                  color: Colors.white, 
                  size: 50,
                
                ),
                 
              ),
              Text(
                "section",
                style: const TextStyle(
                  color: Colors.black, 
                  fontFamily: 'Poppins',
                  fontSize: 12 
                ),
                ) 
            ],
          ),

        ],
      ),
      
    );
  }
}