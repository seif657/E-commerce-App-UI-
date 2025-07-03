import 'package:update_ecommerce_ui_app/details.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List categories = [
    {
      "iconphoto": Icons.computer,
      "iconname": "Laptop",
    },
    {
      "iconphoto": Icons.backpack,
      "iconname": "Backpack",
    },
    {
      "iconphoto": Icons.phone_android,
      "iconname": "Phone",
    },
    {
      "iconphoto": Icons.card_giftcard_sharp,
      "iconname": "Gift",
    },
    {
      "iconphoto": Icons.car_crash,
      "iconname": "Car",
    },
  ];

  List products = [
    {
      "photo": "images/LAASU-X512DA-hg-removebg-preview (1).png",
      "name": "Laptop1",
      "type": "LENOVO IDEAPAD",
      "price": "800\$",
    },
    {
      "photo": "images/9.png",
      "name": "Laptop2",
      "type": "DELL Pavilion",
      "price": "1200\$",
    },
    {
      "photo": "images/1698872092-61vqI0vw94L-removebg-preview.png",
      "name": "Laptop3",
      "type": "ASUS Rock",
      "price": "1500\$",
    },
    {
      "photo": "images/Untitled_design-removebg-preview.png",
      "name": "Laptop4",
      "type": "HP Stock",
      "price": "3000\$",
    },
  ];

  @override
  Widget build(BuildContext context) {
    // Get screen dimensions
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue[500],
        iconSize: 33,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.black,
        selectedFontSize: 16,
        unselectedFontSize: 13,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined), label: "Shopping"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outlined), label: "Person"),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(screenWidth * 0.05),
        child: ListView(
          children: [
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(right: screenWidth * 0.03),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search",
                        hintStyle: TextStyle(fontSize: screenWidth * 0.05),
                        fillColor: Colors.grey[300],
                        filled: true,
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.blue[300],
                          size: screenWidth * 0.07,
                        ),
                      ),
                    ),
                  ),
                ),
                Icon(
                  Icons.menu,
                  size: screenWidth * 0.08,
                  color: Colors.black,
                ),
              ],
            ),
            SizedBox(height: screenHeight * 0.03),
            Text(
              "Categories",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: screenWidth * 0.08,
              ),
            ),
            SizedBox(height: screenHeight * 0.02),
            // Categories Section
            Container(
              height: screenHeight * 0.2,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, i) {
                  return Container(
                    width: screenWidth * 0.2,
                    margin: EdgeInsets.only(right: screenWidth * 0.05),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.grey[300],
                          ),
                          padding: EdgeInsets.all(screenWidth * 0.04),
                          child: Icon(
                            categories[i]["iconphoto"],
                            size: screenWidth * 0.1,
                          ),
                        ),
                        SizedBox(height: screenHeight * 0.01),
                        Text(
                          categories[i]["iconname"],
                          style: TextStyle(
                            fontSize: screenWidth * 0.04,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[750],
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: screenHeight * 0.03),
            Text(
              "Best Selling:",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: screenWidth * 0.07,
              ),
            ),
            GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: screenWidth > 600 ? 3 : 2,
                mainAxisExtent: screenHeight * 0.4,
              ),
              itemCount: products.length,
              itemBuilder: (context, i) {
                return InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => detailscard(
                        data: products[i],
                      ),
                    ));
                  },
                  child: Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: screenWidth * 0.05 , bottom: screenWidth * 0.05 , left: screenWidth * 0.01),
                          width: double.infinity,
                          height: screenHeight * 0.25,
                          child: Image.asset(
                            products[i]["photo"],
                            fit: BoxFit.cover,
                          ),
                          color: Colors.grey[200],
                        ),
                        Center(
                          child: Text(
                            products[i]["name"],
                            style: TextStyle(
                              fontSize: screenWidth * 0.05,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            products[i]["type"],
                            style: TextStyle(
                              fontSize: screenWidth * 0.04,
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            products[i]["price"],
                            style: TextStyle(
                              fontSize: screenWidth * 0.04,
                              fontWeight: FontWeight.bold,
                              color: Colors.orange,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
