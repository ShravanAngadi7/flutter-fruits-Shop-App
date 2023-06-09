import 'package:flutter/material.dart';

class GroceryItemTile extends StatelessWidget {
  final String itemName;
  final String itemPrice;
  final String imagePath;
  final Color;
  void Function()? onPressed;

  GroceryItemTile({
    required this.itemName,
    required this.itemPrice,
    required this.imagePath,
    required this.Color,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        padding: const EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: Color,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //image
            Image.asset(
              imagePath,
              height: 64,
            ),

            //itemname
            Text(itemName),

            //price+ Button
            MaterialButton(
              onPressed: onPressed,
              color: Color[800],
              child: Text(
                "\$" + itemPrice,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
