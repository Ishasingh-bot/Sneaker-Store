import 'package:flutter/material.dart';
import 'package:sneakershop/pages/homepage.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Image.asset('lib/images/nike-4-logo-png-transparent.png',height:240 ,),
              ),
              SizedBox(height: 40,),
        
              Text('Just Do It',
               style: TextStyle(
                fontWeight: FontWeight.bold,fontSize: 20
               ),
              ),
               SizedBox(height: 20,),
        
              Text('Brand new sneakers and custom kicks made with premium quality',
               style: TextStyle(color: Colors.grey,
                fontSize: 16
               ),
               textAlign: TextAlign.center,
              ),
              SizedBox(height: 30,),

              GestureDetector(
                 onTap: () => Navigator.push(context,
                 MaterialPageRoute(builder: (BuildContext context) => HomePage(),),
                 ),
                child: Container(decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10)
                ),
                 child: Padding(
                   padding: const EdgeInsets.all(25.0),
                   child: Center(child: Text('Shop Now',style: TextStyle(color: Colors.white,
                   fontWeight: FontWeight.bold,fontSize: 16
                   ),)),
                 ),
                ),
              )
            ]),
        ),
      ),
    );
  }
}