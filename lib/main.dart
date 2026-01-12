import 'package:flutter/material.dart';
import 'card.dart';
import 'stfulcard.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Login()
      ),
    );
  }
}


class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(35),
        width: 400,
        height: 600,
        decoration: BoxDecoration(
          color: Colors.white,
          
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10,
              offset: Offset(0, 4)
            )
          ]
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10
                  )
                ]
              ),
              child: Icon(Icons.login,
            size: 40,),
            ),

            SizedBox(height: 24,),

            Text("Welcome Back", style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),),
            Text("Make sure to sign in before accessing through our app!!", style: 
            TextStyle(
              
              fontSize: 15,
              
            ),
            textAlign: TextAlign.center,),

            SizedBox(height: 24),

            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none
                
                ),
                
                filled: true,
                fillColor: Colors.grey.shade200,
                hintText: "Email",
                prefixIcon: Icon(Icons.email),

              ),
            ),

            SizedBox(height: 15,),

            TextField(
              obscureText: true,
              decoration: InputDecoration(
                
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none
                ),
                
                filled: true,
                fillColor: Colors.grey.shade100,
                hintText: "Password",
                
                prefixIcon: Icon(Icons.lock)
              ),
            ),
            SizedBox(height: 15,),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                onPressed: () {},
                child: const Text(
                  "Forget Password?",
                  style: TextStyle(fontSize: 12, color: Colors.black),
                  

                ),
              ),
              ],
            ),
            SizedBox(height: 15,),

            SizedBox(
              width: 400,
              height: 40,
              child: 
              ElevatedButton(onPressed: (){
                Navigator.push(context, 
                MaterialPageRoute(builder: (context) => LoveCard()));
              },
            

            style: ElevatedButton.styleFrom(
              
              backgroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(10),
                side: BorderSide.none
              ),
              elevation: 10,
              shadowColor: Colors.black
              
            ),
             child:
            Text("Lets Get Started!!", style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,

            ),))
              ,
            ),

            SizedBox(
              height: 30,
            ),

            Text("Or Sign In with",
            textAlign: TextAlign.right, 
            style: TextStyle(
              fontSize: 12
            ),),

            SizedBox(
              height: 30,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                
                Image.network(
                  'https://cdn-teams-slug.flaticon.com/google.jpg',
                  width: 35,
                  height: 35,
                ),
                Image.network(
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b8/2021_Facebook_icon.svg/960px-2021_Facebook_icon.svg.png',
                  width: 25,
                  height: 25,
                ),
                Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7fj1vqat9XLO4cFwOG1uFqLXYDcISiYil2w&s',
                  width: 25,
                  height: 25,
                ),

              ],
            )
            

            
            
          ],
        ),
      ),
    );
  }
}
