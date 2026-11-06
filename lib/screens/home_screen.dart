import 'package:final_project/model/pizza_model.dart';
import 'package:final_project/screens/item_screen.dart';
import 'package:final_project/widget/my_button.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
  
  const HomeScreen({super.key});


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu)),
        actions: [
          CircleAvatar(
            backgroundColor: Color(0xffFE5150),
            child: IconButton(onPressed: (){}, icon: Icon(Icons.search_outlined,color: Colors.white,)),)
          ,SizedBox(width: 15,)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           Text("Hi Alex",style: TextStyle(color: Color(0xffEB5757),fontSize: 18,fontWeight: FontWeight.w400),),
           Text("Find your Delicious Food",style: TextStyle(color: Color(0xff4F4F4F),fontSize: 21,fontWeight: FontWeight.w600),),
           SizedBox(height: 20,),
           Row(children: [
            Container(
              width: 44,
              height: 44,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xffFFFFFF)
              ),
              child: Image.asset("assets/images/Pizza.png"),
            ),
            SizedBox(width: 20,),
            Container(
              width: 44,
              height: 44,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Color(0xffFFFFFF)
              ),
              child: Image.asset("assets/images/Sushi.png"),
            ),
           ],),
           SizedBox(height: 100,),
           Text("Popular",style: TextStyle(color: Color(0xff4F4F4F),fontWeight: FontWeight.w700,fontSize: 21),),
           SizedBox(height: 30,),
           Expanded(
             child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount
              (crossAxisCount: 2,crossAxisSpacing: 20,mainAxisSpacing: 20,childAspectRatio: 0.7),
              itemCount: PizzaModel.pizza.length,
              itemBuilder: (context,index){

               return GestureDetector(
                 onTap: (){
                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context)=>ItemScreen(index: index,))
                   );
                 },
                 child: Container(
                  width: 162,
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xffFFFFFF)
                  ),
                   child: Center(child: Column(
                     children: [
                      Text(PizzaModel.pizza[index].title,style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500), ),
                      SizedBox(height: 5,),
                      Text("${PizzaModel.pizza[index].calory} Calories",style: TextStyle(color: Color(0xffFE5150),fontSize: 14,fontWeight: FontWeight.w500), ),
                      SizedBox(height: 5,),
                      Image.asset(PizzaModel.pizza[index].image,),
                      SizedBox(height: 5,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("\$",style: TextStyle(color: Color(0xffFE5150),fontSize: 17,fontWeight: FontWeight.w500),),
                          Text("  ${PizzaModel.pizza[index].price}",style: TextStyle(fontSize: 19,fontWeight: FontWeight.w500), ),
                        ],
                      ),
                 
                 
                              
                     ],
                   ),
                   ),
                 ),
               );
               }
              ),
           ),
           
           Center(child: myButton("ADD TO CART",onPressed: () {})),




          ],
        ),
      ),
    );
  }
}
