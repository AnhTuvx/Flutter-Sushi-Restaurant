import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_restaurant_flutter/models/food.dart';

class FoodTittle extends StatelessWidget {
  final Food food;
  final void Function()? onTap;
  const FoodTittle({super.key, required this.food, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(25),
        ),
        margin: EdgeInsets.only(left: 25),
        padding: EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //image
            Image.asset(
              food.imagePath,
              height: 150,
            ),
            //text
            Text(
              food.name,
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 25,
              ),
            ),
            SizedBox(
              width: 160,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$" + food.price,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.grey[800]),
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow[500],
                  ),
                  Text(food.rating),
                ],
              ),
            )
            //price+rating
          ],
        ),
      ),
    );
  }
}
