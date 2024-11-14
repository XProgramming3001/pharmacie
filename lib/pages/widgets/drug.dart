import 'package:flutter/material.dart';


class DrugSection extends StatefulWidget {
  const DrugSection({super.key});

  @override
  State<DrugSection> createState() => _DrugSectionState();
}

class _DrugSectionState extends State<DrugSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child:Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 100,
              
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(255, 243, 110, 33),
                  
                ),  
              child:  ClipRRect(
              borderRadius: BorderRadius.circular(20.0), // Rayon de courbure des bords
              child: Image.asset(
                'assets/images/im.png', // URL de votre image
                fit: BoxFit.cover, // Mode de redimensionnement de l'image
              ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Container(
              height: 100,   
              child:  ClipRRect(
              borderRadius: BorderRadius.circular(20.0), // Rayon de courbure des bords
              child: Image.asset(
                'assets/images/im.png', // URL de votre image
                fit: BoxFit.cover, // Mode de redimensionnement de l'image
              ),
              ),
            ),
            SizedBox( 
              width: 20,
            ),
            Container(
              height: 100,   
              child:  ClipRRect(
              borderRadius: BorderRadius.circular(20.0), // Rayon de courbure des bords
              child: Image.asset(
                'assets/images/im.png', // URL de votre image
                fit: BoxFit.cover, // Mode de redimensionnement de l'image
              ),
              ),
            ),
            const SizedBox(
              width: 20,
            )
           
          ],
        ),
        
      ),
    );
  }
}