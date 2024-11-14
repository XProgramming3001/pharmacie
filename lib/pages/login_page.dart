import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pharmacie/pages/home.dart';
import 'package:pharmacie/pages/register_page.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
     final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

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
         child: Padding(
          padding: EdgeInsets.only(top: 50, left: 10, right: 10),   
          child: Form(
            key: _formKey,
            child: Column(
              children: [
              Container(
              margin: EdgeInsets.only(top: 0, bottom: 50),  
              alignment: Alignment.center, 
              child: SvgPicture.asset(
                  "assets/images/img_login.svg", 
                  height: 150,  
                  width: 100, 
                  )
            ), 
              
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.green, 
                    width: 1
                  )  
                ),
                child:  TextFormField(
                controller: _emailController,
                style: const TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 14
                 ),
                decoration: const InputDecoration(
                  labelText: 'Email',
                  labelStyle: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,    
                  color: Colors.green
                ),
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder( 
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  borderSide: BorderSide(
                    color: Colors.green,
                    style: BorderStyle.solid
                  )
                    
                    
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  borderSide: BorderSide(
                    color: Colors.green,
                    style: BorderStyle.solid
                  )
                    
                  ),
                  hoverColor: Colors.green,
                  prefixIconColor: Colors.green, 
                  fillColor: Colors.green, 
                   
                  focusColor: Colors.green
                
                ),              
                validator: (value) {
                  if (value!.isEmpty)
                  {
                    return 'false';
                  } 
                },
              ),
              ),

              
             const  SizedBox(
                height: 30,
              ), 
              // password

              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.green, 
                    width: 1
                  )  
                ),
                child:  TextFormField(
                controller: _passwordController, 
                style: const TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 14
                 ),
                decoration: const InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,   
                  color: Colors.green
                ),
                  prefixIcon: Icon(Icons.key),
                  suffixIcon: Icon(Icons.remove_red_eye),
                  border: OutlineInputBorder( 
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  borderSide: BorderSide(
                    color: Colors.green,
                    style: BorderStyle.solid
                  )    
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  borderSide: BorderSide(
                    color: Colors.green,
                    style: BorderStyle.solid
                  )
                    
                  ),
                  hoverColor: Colors.green,
                  prefixIconColor: Colors.green, 
                  suffixIconColor: Colors.green, 
                  fillColor: Colors.green, 
                  
                  focusColor: Colors.green
                
                ),              
                validator: (value) {
                  if (value!.isEmpty)
                  {
                    return 'false';
                  } 
                },
                obscureText: true, 
              ),
              ),

              const SizedBox(
                height: 30,
              ), 

            // button 
              Container(
                width: double.infinity,
                height: 60,
               
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Home()));   
                  },  
                 
                  // style: ButtonStyle(
                  //   backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 7, 41, 8))  
                  // ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                       
                    ),
                    backgroundColor: Color.fromARGB(255, 6, 32, 7)
                  ),
                   child: const  Text('Connect',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20 
                  )
                  ),
                  
                ),
              ),
              const SizedBox(
                height: 20,
              ), 

              TextButton(
                onPressed: (){
                Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const Register())); 
                }, 
                child: const Text('Sign Up',
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
         ),
      ),
    );
  }
}

 