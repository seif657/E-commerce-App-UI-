import 'package:flutter/material.dart';

class detailscard extends StatefulWidget {
  final data;
  const detailscard({super.key, this.data});

  @override
  State<detailscard> createState() => _detailscardState();
}

class _detailscardState extends State<detailscard> {
  @override
  Widget build(BuildContext context) {
    // Get screen size
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue[500],
        iconSize: screenSize.width * 0.08, // Responsive icon size
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.black,
        selectedFontSize: screenSize.width * 0.045, // Responsive font size
        unselectedFontSize: screenSize.width * 0.04,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined), label: "Shopping"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outlined), label: "Person"),
        ],
      ),
      endDrawer: const Drawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(size: screenSize.width * 0.06),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Ecommerce ",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: screenSize.width * 0.05),
            ),
            Text(
              "Details",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: screenSize.width * 0.05,
                  color: Colors.orange),
            ),
          ],
        ),
        backgroundColor: Colors.grey[200],
      ),
      body: ListView(
        children: [
          Image.asset(widget.data["photo"]),
          Center(
              child: Text(widget.data["name"],
                  style: TextStyle(
                      fontSize: screenSize.width * 0.07,
                      fontWeight: FontWeight.bold))),
          SizedBox(height: screenSize.height * 0.01),
          Center(
              child: Text(widget.data["type"],
                  style: TextStyle(
                      fontSize: screenSize.width * 0.045, color: Colors.grey))),
          SizedBox(height: screenSize.height * 0.01),
          Center(
              child: Text(widget.data["price"],
                  style: TextStyle(
                      fontSize: screenSize.width * 0.06,
                      color: Colors.orange,
                      fontWeight: FontWeight.bold))),
          SizedBox(height: screenSize.height * 0.03),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Color:  ",
                style: TextStyle(fontSize: screenSize.width * 0.05),
              ),
              Container(
                height: screenSize.width * 0.08,
                width: screenSize.width * 0.08,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.grey,
                ),
              ),
              Text(
                " grey",
                style: TextStyle(fontSize: screenSize.width * 0.05),
              ),
              SizedBox(width: screenSize.width * 0.05),
              Container(
                height: screenSize.width * 0.08,
                width: screenSize.width * 0.08,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.black,
                ),
              ),
              Text(
                " black",
                style: TextStyle(fontSize: screenSize.width * 0.05),
              ),
            ],
          ),
          SizedBox(height: screenSize.height * 0.07),
          Container(
            height: screenSize.height * 0.08,
            margin: EdgeInsets.symmetric(
                horizontal: screenSize.width * 0.25,
                vertical: screenSize.height * 0.06),
            child: MaterialButton(
                textColor: Colors.white,
                color: Colors.black,
                child: Text(
                  "Add To Cart",
                  style: TextStyle(fontSize: screenSize.width * 0.04),
                ),
                onPressed: () {}),
          ),
        ],
      ),
    );
  }
}
