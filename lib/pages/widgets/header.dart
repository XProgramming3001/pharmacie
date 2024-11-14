import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';



class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(0, size.height);
    
    final firstControlPoint = Offset(size.width / 4, size.height);
    final firstEndPoint = Offset(size.width / 2.25, size.height - 40.0);
    
    final secondControlPoint = Offset(size.width / 4 * 3, size.height - 80.0);
    final secondEndPoint = Offset(size.width, size.height - 30.0);
    
    path.quadraticBezierTo(
      firstControlPoint.dx, firstControlPoint.dy,
      firstEndPoint.dx, firstEndPoint.dy,
    );
    path.quadraticBezierTo(
      secondControlPoint.dx, secondControlPoint.dy,
      secondEndPoint.dx, secondEndPoint.dy,
    );
    
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false; // La forme ne change pas, donc pas besoin de recréer le clip
  }
}


class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MultiplePointedEdgeClipper(), 
      child: Container(
      height: 130,      
      color: Color.fromARGB(255, 5, 20, 8),
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top + 25,
        left: 25,
        right: 25
      ),
      
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,  
        
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text('Welcome to the',
            style: TextStyle(
              color: Colors.white,
              fontFamily: "Poppins" , 
              fontSize: 16
              ),
            
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
          Container(
            margin: EdgeInsets.only(bottom: 40),  
            child: CircleAvatar(
            backgroundImage: AssetImage('assets/images/logo.png'),  
           radius: 20, 
              ),
          )
          
        ]
        ),
    ),
    );
  }
}
