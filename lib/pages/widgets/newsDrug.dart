import 'package:flutter/material.dart';

class NewsDrugSection extends StatefulWidget {
  const NewsDrugSection({super.key});

  @override
  State<NewsDrugSection> createState() => _NewsDrugSectionState();
}

class _NewsDrugSectionState extends State<NewsDrugSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
     
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,  
        children: [
           Container(
              height: 40,     
              child:   CircleAvatar(
              backgroundImage: AssetImage('assets/images/logo.png'), 
              radius: 20, 
              )
            ),
            Column(
             mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Name bddhg",
                style: TextStyle(
                  fontFamily: 'Poppins'
                ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                     Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                     Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                     Icon(
                      Icons.star,
                      color: Colors.yellow,
                    )
                  ],
                )
              ],
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.0) 
              ),
              child: ElevatedButton(
          onPressed: (){}, 
          style: ElevatedButton.styleFrom(
           shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0),    
               ),
               backgroundColor: Colors.green
          ),
          
          
          child: Text('Elevated',
          style: TextStyle(
            fontFamily: 'Poppins' 
          ),
          
          )
          
          ) 
            )
         
        ],
      ),
    );
  }
}