import 'package:final_project/model/pizza_model.dart';
import 'package:final_project/widget/my_button.dart';
import 'package:flutter/material.dart';
class ItemScreen extends StatefulWidget {
  final int index;

  const ItemScreen({super.key,required this.index});

  @override
  State<ItemScreen> createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ItemScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 50),
        child: Column(
          children: [
            Text(PizzaModel.pizza[widget.index].title,style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600), ),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("\$",style: TextStyle(color: Color(0xffFE5150),fontSize: 17,fontWeight: FontWeight.w500),),
                Text("  ${PizzaModel.pizza[widget.index].price}",style: TextStyle(fontSize: 19,fontWeight: FontWeight.w500), ),
              ],
            ),
            SizedBox(height: 30),
            Container(
              width: 272,
              height: 268,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(PizzaModel.pizza[widget.index].image),
                  fit: BoxFit.cover,
                ),
              ),
            ),            SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: (){
                    setState(() {
                      if( PizzaModel.pizza[widget.index].quantity>1){
                        PizzaModel.pizza[widget.index].quantity--;
                      }
                    });
                  },
                  child: Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: Color(0xffFE5150)
                      ),
                      child: Icon(Icons.remove,color: Colors.white)
                  ),
                ),
                SizedBox(width: 10,),
                Text("${PizzaModel.pizza[widget.index].quantity}"),
                SizedBox(width: 10,),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      PizzaModel.pizza[widget.index].quantity++;
                    });
                  },
                  child: Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        color: Color(0xffFE5150)
                    ),
                    child: Icon(Icons.add,color: Colors.white)
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Text("\$${PizzaModel.pizza[widget.index].price*PizzaModel.pizza[widget.index].quantity}",style: TextStyle(color: Color(0xff828282),fontWeight: FontWeight.w400,fontSize: 15),),
            SizedBox(height: 70,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("⭐ ${PizzaModel.pizza[widget.index].rating}",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
                Text("🔥 ${PizzaModel.pizza[widget.index].calory} Calories",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
                Text("⏱️ ${PizzaModel.pizza[widget.index].Time}",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),

              ],
            ),
            Spacer(),
            myButton("ADD TO CART",onPressed: () {}),



          ],
        ),
      ),),
    );
  }
}
