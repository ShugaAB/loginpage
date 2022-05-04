import 'package:flutter/material.dart';
import 'package:loginpage/loginpage/logpage.dart';
import 'package:lottie/lottie.dart';


class SplashPage extends StatefulWidget {
  const SplashPage({ Key? key }) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:
      
        Stack(
          children: [
            Container(
        color: Color(0xFFfbfcfa),
            ),

            Positioned(child: 
            Container(
              height: 140,
              width: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(20) ),
              color: Color(0xFFcae0c3),
              ),
            ),
            ),

            Positioned(
              top: 30,
              left: 55,
              right: 15,
              child: Text('Find exactly', style: TextStyle(fontSize: 45,  color: Colors.black, fontWeight: FontWeight.bold))),

              Positioned(
              top: 90,
              left: 120,
              right: 15,
              child: Text('what you are', style: TextStyle(fontSize: 45,  color: Colors.black, fontWeight: FontWeight.bold))),

              Positioned(
              top: 155,
              left: 55,
              right: 15,
              child: Text('looking for', style: TextStyle(fontSize: 45,  color: Colors.black, fontWeight: FontWeight.bold))),
             
              Positioned(
                top: 230,
                left: 270,
                //right: 0,
                child: Container(
              height: 40,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
              color: Color(0xFFcae0c3)),
            ),),
    
             Positioned(
                top: 275,
                right: 310,
                left: 0,
                child: Container(
              height: 2,
              width: 20,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
              color: Colors.black),
            ),),
    
            Positioned(
              top: 300,
              left: 10,
              right: 10,
              child: Lottie.network (
                'https://iconscout.com/lottie/house-5042966?utm_campaign=search&utm_medium=marketplace&utm_source=lottiefiles', 
                animate: true,
                ),
                    
              
            ),
    
            Positioned(
                bottom: 5,
                right: 400,
                //right: 0,
                child: Container(
              height: 40,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              color: Colors.grey.withOpacity(0.7)),
            ),
            ),
    
            Positioned(
              bottom: 38,
               // right: 350,
                left: 10,
              child: IconButton(
              onPressed: (){
              Navigator.push(context, MaterialPageRoute
              (builder: (context) => LogPage()));} ,
              icon: Icon(Icons.arrow_right_alt_sharp, color: Colors.black,  size: 90), ),),
          
          ]
      
      ),
      ),
    );
  }
}