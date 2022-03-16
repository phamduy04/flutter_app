import 'package:app_letter_boxd/resources/constants.dart';
import 'package:app_letter_boxd/views/auth/login_page.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: HexColor("#1F1D36"),
        body:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Expanded(
               flex: 3,
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
                    padding: const EdgeInsets.only(top: 290),
                    child: Center(child: Image.asset(logo,fit: BoxFit.cover,)),
                  )    
                 ],
               )),     
              Expanded(
                flex: 2,
               child: Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 66),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                     const SizedBox(height: 64,),
                     Text("Track films you've watched. Save those you want to see.Tell your friends what's good.",
                      style: txtBold(18, Colors.white),
                     ),
                      const SizedBox(height: 64,),
                    ElevatedButton(
                        child: Text("Get Started",
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
                         Navigator.push(context, MaterialPageRoute(builder: (_) =>const  LoginPage()));
                        },
                      )
                   ],
                 ),
               ))  
          ],
        ),
    );
  }
}