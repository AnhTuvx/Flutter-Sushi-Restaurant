import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_restaurant_flutter/compoments/button.dart';
import 'package:sushi_restaurant_flutter/compoments/food_tittle.dart';
import 'package:sushi_restaurant_flutter/models/food.dart';
import 'package:sushi_restaurant_flutter/theme/color.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  //food menu
  List foodMenu = [
    Food(
        name: "salmon sushi",
        price: "30",
        imagePath: "lib/images/820582.png",
        rating: "4.9"),
    //salmon sushi
    Food(
        name: "salmon sushi",
        price: "30",
        imagePath: "lib/images/820582.png",
        rating: "4.9"),
    Food(
        name: "salmon sushi",
        price: "30",
        imagePath: "lib/images/820582.png",
        rating: "4.9"),
    Food(
        name: "salmon sushi",
        price: "30",
        imagePath: "lib/images/820582.png",
        rating: "4.9"),
    Food(
        name: "salmon sushi",
        price: "30",
        imagePath: "lib/images/820582.png",
        rating: "4.9"),
    Food(
        name: "salmon sushi",
        price: "30",
        imagePath: "lib/images/820582.png",
        rating: "4.9"),
    Food(
        name: "salmon sushi",
        price: "30",
        imagePath: "lib/images/820582.png",
        rating: "4.9"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 8,
        leading: Icon(
          Icons.menu,
          color: Colors.grey[900],
        ),
        title: Text(
          "Tokyo",
          style: TextStyle(
            color: Colors.grey[900],
          ),
        ),
      ),
      body: Column(
        children: [
          // banner
          Container(
            decoration: BoxDecoration(
                color: primaryColor, borderRadius: BorderRadius.circular(20)),
            margin: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
            padding: EdgeInsets.all(25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Get 32% Promo",
                      style: GoogleFonts.dmSerifDisplay(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    MyButton(text: "Redeem", onTap: () {}),
                  ],
                ),
                Image.asset(
                  "lib/images/food_16145708.png",
                  height: 100,
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(20)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(20)),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(20)),
                hintText: "Seach here....",
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              "Food Menu",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey[800],
                fontSize: 18,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: foodMenu.length,
              itemBuilder: (context, index) => FoodTittle(
                food: foodMenu[index],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          //popularFood
          Container(
            decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(25)),
            margin: EdgeInsets.only(left: 10, right: 25, bottom: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //image
                Image.asset(
                  "lib/images/820582.png",
                  height: 60,
                ),

                Column(
                  children: [
                    Text(
                      "Salmon",
                      style: GoogleFonts.dmSerifDisplay(
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text("\$21.00"),
                  ],
                ),
                Icon(
                  Icons.favorite_outline,
                  color: Colors.grey,
                  size: 28,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
