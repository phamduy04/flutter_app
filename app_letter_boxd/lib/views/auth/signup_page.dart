import 'package:app_letter_boxd/resources/constants.dart';
import 'package:app_letter_boxd/resources/widgets/auth/auth_text_input.dart';
import 'package:app_letter_boxd/views/auth/login_page.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({ Key? key }) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
    TextEditingController userNameController=TextEditingController();
   TextEditingController passwordController=TextEditingController();
   TextEditingController emailController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: HexColor("#1F1D36"),
        body:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Expanded(
               flex: 2,
               child:Stack(
                 children: [
                   Container(
                      width: double.infinity, 
                       decoration:const  BoxDecoration( 
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(banner,))
                       )),
                  Padding(
                    padding: const EdgeInsets.only(top: 260),
                    child: Center(child: Image.asset(logo,fit: BoxFit.cover,)),
                  )    
                 ],
               )),     
              Expanded(
                flex: 3,
               child: SingleChildScrollView(
                 child: Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 66),
                   child: Column(
                     children: [
                       const SizedBox(height: 40,),
                       Center(
                         child: Text("Login",
                          style: txtBold(24, Colors.white),
                         ),
                       ),
                       Text("Please sign in to continue.",
                        style: txtRegular(13,Colors.white),
                       ),
                       const SizedBox(height: 28,),
                      AuthTextInput(controller: userNameController,
                       obscureText: false,
                        keyboardType: TextInputType.text,
                         hintText: 'Username',
                          imageUrl: iconUserName),
                      AuthTextInput(controller: emailController,
                       obscureText: false,
                        keyboardType: TextInputType.emailAddress, 
                        hintText: 'Email', 
                        imageUrl: iconEmail),
                      AuthTextInput(controller: passwordController, 
                      obscureText: true,
                       keyboardType: TextInputType.text,
                        hintText: 'Password',
                         imageUrl: iconLock),
                       const SizedBox(height: 7,),
                       Padding(
                         padding: const EdgeInsets.only(left: 130),
                         child: Text("Forgot Password?",
                          style: txtRegular(13,HexColor("#E9A6A6")),
                         ),
                       ),  
                       const SizedBox(height: 17,),   
                      ElevatedButton(
                          child: Text("Sign Up",
                            style: txtBold(14,HexColor("#1F1D36")),
                          ),
                          style: ElevatedButton.styleFrom(
                            onPrimary: Colors.white,
                            primary: HexColor("#E9A6A6"),
                            onSurface: Colors.grey,
                            elevation: 20,
                            minimumSize:const  Size(127,45),
                            shadowColor: Colors.teal,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          ),
                          onPressed:() {
                          },
                        ),
                        const SizedBox(height: 17,), 
                        Row(
                           children: [
                             Text("Already have an account? Go to the",
                               style: txtRegular(12,HexColor("#E9A6A6")
                             )),
                             TextButton(onPressed: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (_) =>const  LoginPage()));
                             }, child: Text(" Login Page.",
                              style: txtRegular(13, Colors.red),
                             )),
                             
                           ],
                        )  
                     ],
                   ),
                 ),
               ))  
          ],
        ),
    );
  }
}