import 'package:final_project/screens/login_screen.dart';
import 'package:final_project/widget/my_text.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xffF68989) ,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("assets/images/man.png"),
              Container(
                width: 344,
                height: 285,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                  child: Center(
                    child: Column(
                      children: [
                        myText(),
                        SizedBox(height: 15,),
                        Text("Home delivery and onlione reservation\n  system for retaurants and cafe ",style: TextStyle(color: Color(0xffBDBDBD),fontWeight: FontWeight.w700,fontSize:13),),
                        SizedBox(height: 15,),
                        ElevatedButton(

                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(25)),
                            backgroundColor: Color(0xffFE5150),

                          ),
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                          },
                          child: Text("Get Started",style: TextStyle(color: Color(0xffBDBDBD),fontWeight: FontWeight.w600,fontSize: 24,))
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
