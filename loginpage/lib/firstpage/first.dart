

import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({ Key? key }) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
          color: Color(0xFFcae0c3),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30, 15, 30, 0),
            child:  
            ListView(
              physics: BouncingScrollPhysics(),
              children: [Column(
              //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     Text('Discover', style: TextStyle(fontSize: 30, decoration: TextDecoration.none,
              fontWeight: FontWeight.bold, color: Colors.black),
              ),
              Expanded(child: SizedBox(width: 50,)),
              Icon(Icons.notifications),
               SizedBox(width: 15,),
              Icon(Icons.person),
                  ],),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 40,
                        width: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Center(child: Icon(Icons.search)),
                              SizedBox(width: 10),
                              Center(
                                child: Text('Search', style: TextStyle( color: Colors.black.withOpacity(0.1), fontSize: 15, decoration: TextDecoration.none),
                                ),
                              ),
                            ]
                          ),
                        )
                      ),
                       SizedBox(width: 10),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Icon(Icons.favorite_sharp),
                      ),
                    ]
                  ),
                  SizedBox(height: 35),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 30,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.green.shade300,
                        ),
                        child: Center(child: Text('House', style: TextStyle(fontSize: 15, decoration: TextDecoration.none,  color: Colors.black),)),
                      ),
                      Container(
                        height: 30,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.green.shade300,
                        ),
                        child: Center(child: Text('TownHouse', style: TextStyle(fontSize: 15, decoration: TextDecoration.none,  color: Colors.black))),
                      ),
                      Container(
                        height: 30,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.green.shade300,
                        ),
                        child: Center(child: Text('Pool', style: TextStyle(fontSize: 15, decoration: TextDecoration.none, color: Colors.black),))),
                    
                    ],),
                      SizedBox(height: 10,),
                      
                      
                    SizedBox(height: 10,),
                    
                    Stack(
                      fit: StackFit.loose,
                      
                      children: [
            
                       Container(
                        height: 200,
                        width:  MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage('https://media.istockphoto.com/photos/home-with-blue-siding-and-stone-faade-on-base-of-home-picture-id1272128530?k=20&m=1272128530&s=612x612&w=0&h=Hj8rZE5IWhiV3tCPr9hk7K7_jJ4iR1L_lBABCHqgQR8='))
                        ),
                      ),
                        Positioned(
                          right: 10,
                          top: 10,
                          child:
                         Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Icon(Icons.bookmarks_rounded),
                         ),
                        ),
            
                        Positioned(
                          right: 10,
                          bottom: 10,
                          child:
                         Container(
                        height: 20,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child:  Center(
                          child: Text('10 photos', style: TextStyle( color: Colors.black, fontSize: 10, decoration: TextDecoration.none),
                           ),
                        ),
                        ),
                        ), 
                        ]
                        ),
            
                    SizedBox(height: 25,),
                    Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
            
                      children: [
                        Text('7 Stonesilver Drive', style: TextStyle(fontSize: 13, decoration: TextDecoration.none,
              fontWeight: FontWeight.bold, color: Colors.black),
              ),
              Expanded(child: SizedBox(width: 50,)),
              Icon(Icons.star, size: 11,),
               SizedBox(width: 15,),
                       Text('4.9', style: TextStyle( color: Colors.black, fontSize: 11, decoration: TextDecoration.none),
                    
                       ),
                    ],),
            
                    SizedBox(height: 7,),
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
                    SizedBox(height: 7,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('5 beds', style: TextStyle(fontSize: 13, decoration: TextDecoration.none,
                       color: Colors.black),
              ),
                  
                      Text('2 baths', style: TextStyle( color: Colors.black, fontSize: 13, decoration: TextDecoration.none),
                      ),
                      Text('3,457 sq ft', style: TextStyle( color: Colors.black, fontSize: 13, decoration: TextDecoration.none),
                      
               ),
                
                    ],),
              
            
                    SizedBox(height: 35,),
                    
                Stack(
                      children: [
                        Container(
                height: 250,
                width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: NetworkImage('https://media.istockphoto.com/photos/large-american-detached-home-with-garden-and-blue-sky-picture-id155374658?k=20&m=155374658&s=612x612&w=0&h=y_4839Di4eF7rjS8zOIscIXZUOJIUD4NBFWUXat2hXw='),
                    fit: BoxFit.cover,
                  ),
                ),
                  ),
                    
            
                        Positioned(
                          right: 10,
                          top: 10,
                          child:
                         Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Icon(Icons.bookmarks_rounded),
                         ),
                        ),
            
                        Positioned(
                          right: 10,
                          bottom: 10,
                          child:
                         Container(
                        height: 20,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child:  Center(
                          child: Text('10 photos', style: TextStyle( color: Colors.black, fontSize: 10, decoration: TextDecoration.none),
                           ),
                        ),
                        ),
                        ),
                      ],
                      
                    ),
            
                    SizedBox(height: 15,),
                    Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
            
                      children: [
                        Text('7 Stonesilver Drive', style: TextStyle(fontSize: 13, decoration: TextDecoration.none,
              fontWeight: FontWeight.bold, color: Colors.black),
              ),
              Expanded(child: SizedBox(width: 50,)),
              Icon(Icons.star, size: 11,),
               SizedBox(width: 15,),
                       Text('4.9', style: TextStyle( color: Colors.black, fontSize: 11, decoration: TextDecoration.none),
                    
                       ),
                    ],),
            
                    SizedBox(height: 7,),
                    Row(
              
            
                      children: [
                        Text('\$4.688', style: TextStyle(fontSize: 23, decoration: TextDecoration.none,
              fontWeight: FontWeight.bold, color: Colors.black),
              ),
                  
                       Padding(
               padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
               child: Text('/month', style: TextStyle( color: Colors.black.withOpacity(0.1), fontSize: 13, decoration: TextDecoration.none),
                      
               ),
                       ),
                    ],),
                    SizedBox(height: 7,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('5 beds', style: TextStyle(fontSize: 13, decoration: TextDecoration.none,
                       color: Colors.black),
              ),
                  
                      Text('2 baths', style: TextStyle( color: Colors.black, fontSize: 13, decoration: TextDecoration.none),
                      ),
                      Text('3,457 sq ft', style: TextStyle( color: Colors.black, fontSize: 13, decoration: TextDecoration.none),
                      
               ),
                
                    ],),
               
              
              ]
                    ),
              ]
            ),
              
            ),
          
          ),
  
  
    );
  }
}