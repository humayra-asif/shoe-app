import 'package:flutter/material.dart';

class detailview extends StatefulWidget {
  const detailview({super.key});

  @override
  State<detailview> createState() => _detailviewState();
}

class _detailviewState extends State<detailview> {
  int quantity = 1;

  void _increment() {
    setState(() {
      quantity++;
    });
  }

  void _decrement() {
    setState(() {
      if (quantity > 1) quantity--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(
        title: Text('Shoe Shop'),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Search functionality
            },
          ),
        ],
      ),
      body:SingleChildScrollView(scrollDirection: Axis.vertical,
      child:  Column(
        children: [
Image(image: NetworkImage('https://media.istockphoto.com/id/1350560575/photo/pair-of-blue-running-sneakers-on-white-background-isolated.jpg?s=612x612&w=0&k=20&c=A3w_a9q3Gz-tWkQL6K00xu7UHdN5LLZefzPDp-wNkSU=',),),
SizedBox(height: 5,),
Padding(
  padding: const EdgeInsets.all(12),
  child: Row(
  children: [
    Text('Axel Arigata',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,),),
    
  Spacer(),
  
    Container(
      
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(15),
          
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              onPressed: _decrement,
              icon: Icon(Icons.remove, color: Colors.black),
            ),
            Text(
              '$quantity',
              style: TextStyle(fontSize: 15, color: Colors.black),
            ),
            IconButton(
              onPressed: _increment,
              icon: Icon(Icons.add, color: Colors.black),
            ),
          ],
        ),
      ),
  
    
  ],
  
  ),

  
),

 SizedBox(height: 5,),
  Padding(
    padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
    child: Row(
      children: [
        Text('Clean 90 Triple Sneaker',),
        Spacer(),
        Text('Availible In Stock',style: TextStyle(fontWeight: FontWeight.bold),)
      ],
    ),
  ),
SizedBox(height: 0,),
Padding(
  padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
  child: Row(
    children: [
      Icon(Icons.star,color: const Color.fromARGB(172, 231, 142, 40),size: 21,),
      Icon(Icons.star,color: const Color.fromARGB(172, 231, 142, 40),size: 21),
      Icon(Icons.star,color: const Color.fromARGB(172, 231, 142, 40),size: 21,),
      Icon(Icons.star,color: const Color.fromARGB(172, 231, 142, 40),size: 21,),
      Icon(Icons.star,color: const Color.fromARGB(172, 231, 142, 40),size: 21,),
Text('(270 Review)')
    ],
  ),
),

Padding(
  padding: const EdgeInsets.all(12),
  child: Row(children: [
    Text('Size',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),

  ],),
),

Padding(
  padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
  child: Row(
    children: [
      CircleAvatar( radius: 22, child: Text('39',style:TextStyle(color: Colors.black) ,),     backgroundColor: const Color.fromARGB(255, 222, 222, 222),),
      SizedBox(width: 15),
      CircleAvatar( radius: 22,  child: Text('39.5',style:TextStyle(color: Colors.black) ,),     backgroundColor: const Color.fromARGB(255, 222, 222, 222),),
            SizedBox(width: 15),
    

  CircleAvatar( radius: 22,  child: Text('40',style:TextStyle(color: Colors.black) ,),     backgroundColor: const Color.fromARGB(255, 222, 222, 222),),
        SizedBox(width: 15,),

  CircleAvatar(   radius: 22,  child: Text('40.5',style:TextStyle(color: Colors.black) ,),     backgroundColor: const Color.fromARGB(255, 222, 222, 222),),
   SizedBox(width: 15,),
   CircleAvatar(radius: 22,  child: Text('41',style:TextStyle(color: Colors.white) ,),     backgroundColor: Colors.black,),
   SizedBox(width: 5,),
Icon(Icons.arrow_forward_ios_outlined,size: 20,),
//SizedBox(width: 15,),




Container(
  padding: EdgeInsets.all(16.0), 
  decoration: BoxDecoration(
    color: const Color.fromARGB(255, 235, 235, 235), 
    borderRadius: BorderRadius.circular(20), 
  
  ),
  child: Column(
    children: [
      CircleAvatar(
        radius: 20,
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      SizedBox(height: 10),
      CircleAvatar(
        radius: 20,
        backgroundColor: Colors.black,
      ),
      SizedBox(height: 10),
      CircleAvatar(
        child: Icon(Icons.check),
        radius: 20,
        backgroundColor: Colors.blueGrey,
      ),
      SizedBox(height: 10),
      CircleAvatar(
        radius: 20,
        backgroundColor: Colors.blue,
      ),
    ],
  ),
)
  ],
  ),
),

Padding(
  padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
  child: 
    Row(
      children: [
        Text('Description',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
      ],
    ),
),
Padding(
  padding: const EdgeInsets.all(12),
  child: 
    Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent eu mauris at sem facilisis cursus. Nullam eros nulla, rhoncus nec suscipit at, bibendum ac metus. Vivamus sodales at turpis in sodales. Fusce auctor a justo vel mattis. Nunc fringilla ipsum sed arcu iaculis tempor. Quisque pulvinar purus lacus, quis viverra tellus convallis ac. Nulla molestie egestas odio, dignissim sagittis turpis pellentesque at. Morbi aliquet auctor elit, vitae imperdiet eros',style: TextStyle(fontSize: 10),),
),


Padding(
  padding: const EdgeInsets.all(12),
  child:
   Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Column(
        children: [
          Text('Total Price',style: TextStyle(fontSize: 10),),
          Text('&245.00',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),)
        ],
      ),
      
      ElevatedButton(
  style: ElevatedButton.styleFrom(
    backgroundColor: Colors.black, 
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15), 
    minimumSize: Size(200, 50),
  ),
  onPressed: () {},
  child: Row(
    mainAxisSize: MainAxisSize.min, 
    children: [
      Icon(Icons.shopping_cart, color: Colors.white), 
      SizedBox(width: 8), 
      Text(
        'Add to cart',
        style: TextStyle(color: Colors.white),
      ),
    ],
  ),
)

    ],
    
  ),
)




         ],
      ),

    ));
  }
}