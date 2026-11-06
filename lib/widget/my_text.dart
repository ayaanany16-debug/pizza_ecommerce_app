import 'package:flutter/cupertino.dart';

Widget myText (){
  return Column(
    children: [
      Text("Quick Delivery at ",style: TextStyle(color: Color(0xff4F4F4F),fontWeight: FontWeight.w600,fontSize:31),)
      ,Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("your",style: TextStyle(color: Color(0xff4F4F4F),fontWeight: FontWeight.w600,fontSize:31),),
          Text("Doorstep",style: TextStyle(color: Color(0xffFE5150),fontSize: 31,fontWeight: FontWeight.w600),)
        ],

      ),
    ],
  );
}