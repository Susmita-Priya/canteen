import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:canteen1/screen/notification.dart';
import 'package:canteen1/screen/search.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  Widget singleProducts() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      height: 230,
      //color: Colors.grey,
      width: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        //olor: Colors.blue,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              flex: 2,
              child: Image.asset(
                'assets/dash4.jpg',
                fit: BoxFit.cover,
              )),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Package',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '200TK',
                    style: TextStyle(
                      color: Colors.grey,
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    height: 10,
                    child: Row(
                      children: [
                        Icon(Icons.star, size: 20, color: Colors.yellow),
                        Icon(Icons.star, size: 20, color: Colors.yellow),
                        Icon(Icons.star, size: 20, color: Colors.yellow),
                        Icon(Icons.star, size: 20, color: Colors.grey),
                        Icon(Icons.star, size: 20, color: Colors.grey),
                      ],
                    ),
                    // child: Icon(Icons.star),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget singleProducts2() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      height: 230,
      //color: Colors.grey,
      width: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        //olor: Colors.blue,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              flex: 2,
              child: Image.asset(
                'assets/home1.jpg',
                fit: BoxFit.cover,
              )),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Burger',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '200TK',
                    style: TextStyle(
                      color: Colors.grey,
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    height: 10,
                    child: Row(
                      children: [
                        Icon(Icons.star, size: 20, color: Colors.yellow),
                        Icon(Icons.star, size: 20, color: Colors.yellow),
                        Icon(Icons.star, size: 20, color: Colors.yellow),
                        Icon(Icons.star, size: 20, color: Colors.grey),
                        Icon(Icons.star, size: 20, color: Colors.grey),
                      ],
                    ),
                    // child: Icon(Icons.star),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget singleProducts3() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      height: 230,
      //color: Colors.grey,
      width: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        //olor: Colors.blue,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              flex: 2,
              child: Image.asset(
                'assets/home3.jpg',
                fit: BoxFit.cover,
              )),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Parata',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '100TK',
                    style: TextStyle(
                      color: Colors.grey,
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    height: 10,
                    child: Row(
                      children: [
                        Icon(Icons.star, size: 20, color: Colors.yellow),
                        Icon(Icons.star, size: 20, color: Colors.yellow),
                        Icon(Icons.star, size: 20, color: Colors.yellow),
                        Icon(Icons.star, size: 20, color: Colors.grey),
                        Icon(Icons.star, size: 20, color: Colors.grey),
                      ],
                    ),
                    // child: Icon(Icons.star),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(//userProvider: userProvider
          ),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Home',
          style: TextStyle(fontSize: 22.0, color: Colors.black),
        ),
        backgroundColor: Colors.orange,
        actions: [
          CircleAvatar(
            radius: 20.0,
            backgroundColor: Colors.orange,
            // child: IconButton(
            //icon: Icon(
            child: Icon(
              Icons.search,
              size: 27.0,
              color: Colors.black,
            ),
            // onPressed: () {
            //   Navigator.of(context).push(
            //     MaterialPageRoute(
            //       builder: (context) => Search(
            //         search: productProvider.getAllSearchProductList,
            //       ),
            //     ),
            //   );
            // },
          ),
          // ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.0),
            child: GestureDetector(
              // onTap: () {
              //   Navigator.of(context).push(
              //       MaterialPageRoute(builder: (context) => ReviewCart()));
              // },
              child: CircleAvatar(
                child: Icon(
                  Icons.shopping_cart,
                  size: 22.0,
                  color: Colors.black,
                ),
                radius: 20.0,
                backgroundColor: Colors.orange,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.0),
            child: GestureDetector(
              // onTap: () {
              //   Navigator.of(context).push(
              //       MaterialPageRoute(builder: (context) => ReviewCart()));
              // },
              child: CircleAvatar(
                child: Icon(
                  Icons.notifications,
                  size: 22.0,
                  color: Colors.black,
                ),
                radius: 20.0,
                backgroundColor: Colors.orange,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
        child: ListView(
          children: [
            Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.20,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/home2.jpg'),
                    ),
                    //borderRadius: BorderRadius.circular(10.0),
                    //color: Colors.red,
                  ),
                ),

                //1st row
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Breakfast',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                            fontSize: 18.0),
                      ),
                      GestureDetector(
                        // onTap: () {
                        //   Navigator.of(context).push(MaterialPageRoute(
                        //       builder: (context) => Search(
                        //             search: productProvider.getHerbsProductList,
                        //           )));
                        // },
                        child: Text(
                          'view all',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      singleProducts(),
                      singleProducts(),
                      singleProducts(),
                      singleProducts(),
                      singleProducts(),
                    ],
                  ),
                ),
                //2nd row
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Lunch',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                            fontSize: 18.0),
                      ),
                      GestureDetector(
                        // onTap: () {
                        //   Navigator.of(context).push(MaterialPageRoute(
                        //       builder: (context) => Search(
                        //             search: productProvider.getHerbsProductList,
                        //           )));
                        // },
                        child: Text(
                          'view all',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      singleProducts2(),
                      singleProducts2(),
                      singleProducts2(),
                      singleProducts2(),
                      singleProducts2(),
                    ],
                  ),
                ),
                //3rd row
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Dinner',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                            fontSize: 18.0),
                      ),
                      GestureDetector(
                        // onTap: () {
                        //   Navigator.of(context).push(MaterialPageRoute(
                        //       builder: (context) => Search(
                        //             search: productProvider.getHerbsProductList,
                        //           )));
                        // },
                        child: Text(
                          'view all',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      singleProducts3(),
                      singleProducts3(),
                      singleProducts3(),
                      singleProducts3(),
                      singleProducts3(),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
