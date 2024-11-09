import 'package:fassigmentshoe/detail.dart';
import 'package:flutter/material.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  var currentindex = 0;

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
              
            },
          ),
        ],
      ),

      
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical, 
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            SingleChildScrollView(
              scrollDirection: Axis.horizontal, 
              child: Row(
                children: [
                  buildBox(
                    rowText: '50% OFF',
                    secondLineText: 'On everything today',
                    imageUrl: 'assets/images/6.jpg',
                  ),
                  SizedBox(width: 10),
                  buildBox(
                    rowText: '70% OFF',
                    secondLineText: 'On everything today',
                    imageUrl: 'assets/images/7.jpg',
                  ),
                ],
              ),
            ),

            // Vertical content
            Padding(
              padding: EdgeInsets.only(left: 16, top: 16),
              child: Text(
                'New Arrivals',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(height: 10),

            
            SingleChildScrollView(
  scrollDirection: Axis.horizontal, 
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Padding(
        padding: const EdgeInsets.all(18.0),
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => detailview(), 
              ),
            );
          },
          child: Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  'https://media.istockphoto.com/id/1350560575/photo/pair-of-blue-running-sneakers-on-white-background-isolated.jpg?s=612x612&w=0&k=20&c=A3w_a9q3Gz-tWkQL6K00xu7UHdN5LLZefzPDp-wNkSU=',
                ),
                fit: BoxFit.cover,
              ),
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                'https://media.istockphoto.com/id/1034356920/photo/sky-blue-handbag-purse-and-beautiful-woman-hand-with-red-manicure-isolated-on-pink-background.jpg?s=612x612&w=0&k=20&c=Mwji6mHj7IrjFkbVrX3wbJQP_pYf4dPM8STIwfqOgp4=',
              ),
              fit: BoxFit.cover,
            ),
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    ],
  ),
),


            
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 44.0),
                  child: Column(
                    children: [
                      Text(
                        'Axel Arigato',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                      Text(
                        'Clean 90 Triple sneakers',
                        style: TextStyle(fontSize: 12),
                      ),
                      Text(
                        "&195.00",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 44.0),
                  child: Column(
                    children: [
                      Text(
                        'The Marc Jacobs',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                      Text(
                        'Travel Tote',
                        style: TextStyle(fontSize: 12),
                      ),
                      Text(
                        "&245.00",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),

            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    'Popular',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text('View All'),
                ),
              ],
            ),

            // Product listing
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 60,
                width: 500,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(color: Colors.grey, blurRadius: 1),
                  ],
                ),
                child: ListTile(
                  leading: Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Container(
                      height: 150,
                      width: 80,
                      color: Colors.amber,
                      child: Image(
                        image: AssetImage('assets/images/7.jpg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  title: Text(
                    ': MEF Couture',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  subtitle: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Rose Gold healed Sandals',
                            style: TextStyle(fontSize: 8),
                          ),
                          Text(
                            '&1,699.00',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Row(
                          children: [
                            Text('(4.8)'),
                            Icon(Icons.star, color: Colors.yellow, size: 15),
                            Icon(Icons.star, color: Colors.yellow, size: 15),
                            Icon(Icons.star, color: Colors.yellow, size: 15),
                            Icon(Icons.star, color: Colors.yellow, size: 15),
                            Icon(Icons.star, color: Colors.yellow, size: 15),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.green,
        currentIndex: currentindex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        onTap: (value) {
          setState(() {
            currentindex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: "Notifications"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),

      // Drawer
      drawer: Drawer(
        child: ListView(
          children: const [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.grey,
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://media.istockphoto.com/id/839688608/photo/mountain-fuji-and-lake-ashi-with-hakone-temple.jpg?s=1024x1024&w=is&k=20&c=AEck4txTH_Svf_upMuVggk38dYgxZ3KoQSNShodxIV0=",
                ),
              ),
              accountName: Text("humayraasif"),
              accountEmail: Text('humayra@gmail.com'),
            ),
            ListTile(title: Text('Home')),
            ListTile(title: Text('About')),
            ListTile(title: Text('Contact')),
            ListTile(title: Text('Profile')),
          ],
        ),
      ),
    );
  }

  // Box widget function
  Widget buildBox({
    required String rowText,
    required String secondLineText,
    required String imageUrl, // Required image URL
  }) {
    return Container(
      width: 300,
      margin: EdgeInsets.all(16.0),
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imageUrl), 
          fit: BoxFit.cover,
        ),
        color: Colors.grey,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Text(
                  rowText,
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(width: 10),
            ],
          ),
          SizedBox(height: 20),
          Text(
            secondLineText,
            style: TextStyle(fontSize: 17, color: Colors.white),
          ),
          SizedBox(height: 10),
          Text(
            'with code FNREACTION',
            style: TextStyle(fontSize: 11, color: Colors.white),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            child: Text('Click Me'),
          ),
        ],
      ),
    );
  }
}
