import 'package:flutter/material.dart';


class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: 
      Container(
        color: Colors.white,
        width: 600,
        height: 400,
        child: 
        Card(
          
          color: Colors.white,
        elevation: 10,
        shape: RoundedRectangleBorder(
          
          borderRadius: BorderRadiusGeometry.circular(30)
        ),

        child: Padding(padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 600,
              height: 200,
              decoration: BoxDecoration(
                
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  color: Colors.black
                )
              ),
                child: Icon(
              Icons.access_alarm,
              size: 200,
            ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Jam Tidur",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 40
            ),)
              ],
            ),
            SizedBox(height: 18,),

            

            Divider(),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Rp. 9.99",
                style: TextStyle(
                  fontSize: 20
                ),),

                IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart))
              ],
            )
            
            
          ],

        ),
        
        ),
      ),
      )
      
    );
  }
}