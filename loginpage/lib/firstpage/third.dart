import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:loginpage/firstpage/second.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({ Key? key }) : super(key: key);

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              _Page1(),
              SizedBox(height: 15,),
              _Page2(),
              SizedBox(height: 25,),
              _Page3(context),
              // _Page4(),

            ],
          ),
        )
      ),
    );
  }
}

Widget _Page1() {
  return Stack(
    children: [
      Container(
      height: 400,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('https://images.unsplash.com/photo-1522708323590-d24dbb6b0267?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8YXBhcnRtZW50fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60'),
          fit: BoxFit.cover,
      ),
      ),
    ),

    Positioned(
      top: 20,
      left: 20,
      child: Container(
      height: 40,
      width: 130,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(children: [Align(alignment: Alignment.center,
          child: Text('\$4.688', style: TextStyle(fontSize: 23, decoration: TextDecoration.none,
                  fontWeight: FontWeight.bold, color: Colors.black)),
        ),
              Padding(
                 padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                 child: Text('/month', style: TextStyle( color: Colors.black.withOpacity(0.1), fontSize: 13, decoration: TextDecoration.none),
                 )),
        ]
                 ),
      ),
      ),),

      Positioned(
      bottom: 20,
      left: 20,
      child: Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('https://images.unsplash.com/photo-1522708323590-d24dbb6b0267?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8YXBhcnRtZW50fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60'),
          fit: BoxFit.cover,
      ),
      ),
    ),),

    Positioned(
      bottom: 20,
      left: 100,
      child: Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('https://images.unsplash.com/photo-1560448204-e02f11c3d0e2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8YXBhcnRtZW50fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60'),
          fit: BoxFit.cover,
      ),
      ),
    ),),

    Positioned(
      bottom: 20,
      left: 200,
      child: Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('https://images.unsplash.com/photo-1622866306950-81d17097d458?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGFwYXJ0bWVudHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=600&q=60'),
          fit: BoxFit.cover,
      ),
      ),
    ),),

    Positioned(
      bottom: 20,
      left: 280,
      child: Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('https://images.unsplash.com/photo-1512918728675-ed5a9ecdebfd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGFwYXJ0bWVudHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=600&q=60'),
          fit: BoxFit.cover,
      ),
      ),
    ),),

    Positioned(
      bottom: 20,
      left: 360,
      child: Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('https://images.unsplash.com/photo-1484154218962-a197022b5858?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fGFwYXJ0bWVudHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=600&q=60'),
          fit: BoxFit.cover,
      ),
      ),
    ),),

    
    ]
  );
  }

  Widget _Page2() {
    return Column(
      children: [
        Row(
        children: [
          
        ]
        ),
        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.location_on, size: 13),
            SizedBox(width: 7,),
            Text('775 Rolling Green Road', style: TextStyle(fontSize: 13)
            ),
              Expanded(child: SizedBox(width: 50,)),
              Icon(Icons.star, size: 12,),
               SizedBox(width: 15,),
                       Text('4.9', style: TextStyle( color: Colors.black, fontSize: 12, decoration: TextDecoration.none),
                    
                       ),
                    ],),
            
                    SizedBox(height: 15,),
                    Row(
              
            
                      children: [
                        Text('\$4.688', style: TextStyle(fontSize: 23, decoration: TextDecoration.none,
              fontWeight: FontWeight.bold, color: Colors.black),
              ),
                  
                       Padding(
               padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
               child: Text('/month', style: TextStyle( color: Colors.black.withOpacity(0.2), fontSize: 13, decoration: TextDecoration.none),
                      
               ),
                       ),
                    ],),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Icon(Icons.bed_sharp),
                            Text('5 beds', style: TextStyle(fontSize: 13, decoration: TextDecoration.none,
                       color: Colors.black),
              ),
                          ]
                        ),

                        Column(
                          children: [
                            Icon(Icons.bathtub),
                            Text('2 baths', style: TextStyle( color: Colors.black, fontSize: 13, decoration: TextDecoration.none),
                      ),
                          ],
                        ),
                      
                      Text('3,457 sq ft', style: TextStyle( color: Colors.black, fontSize: 13, decoration: TextDecoration.none),
                      
               ),
                
                    ],),
      ],
    );
  }

  Widget _Page3(context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(0),
        color: Colors.black,
      ),
        child: Align(alignment: Alignment.center,
          child: TextButton(
            child: Text('Rent Now', style: TextStyle(color: Colors.white, fontSize: 15),
          ),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => SplashPage()));
          },
        
          )
        )
        );
        }