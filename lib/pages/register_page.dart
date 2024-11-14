import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pharmacie/pages/login_page.dart';


class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
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
              margin: EdgeInsets.only(top: 0, bottom: 20), 
              alignment: Alignment.center, 
              child: SvgPicture.asset(
                  "assets/images/img_register.svg",  
                  height: 100,  
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
                controller: _usernameController,
                style: const TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 14
                 ),
                decoration: const InputDecoration(
                  labelText: 'username',
                  labelStyle: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,    
                  color: Colors.green
                ),
                  prefixIcon: Icon(Icons.verified_user), 
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
                   child: const  Text('Register',
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
                MaterialPageRoute(builder: (context) => const Login()));  
                }, 
                child: const Text('Sign In',
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