import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:shopapp_ytube/model/cart_model.dart';
import '../components/grocery_item_tile.dart';
import 'cartpage.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return CartPage();
            },
          ),
        ),
        backgroundColor: Colors.black,
        child: Icon(Icons.shopping_bag),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 40,
            ),

            //good morning....
            const Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Text("Good morning!.."),
            ),
            const SizedBox(
              height: 4,
            ),

            //lets order fresh items for u.....
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Text(
                "Let's Order Fresh Items for you..",
                style: GoogleFonts.notoSerif(
                  fontSize: 33,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 24,
            ),

            //divider....
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 24.0,
              ),
              child: Divider(),
            ),
            const SizedBox(
              height: 24,
            ),

            //fresh items + grid
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Text(
                "Fresh Items",
                style: TextStyle(fontSize: 16),
              ),
            ),

            Expanded(
              child: Consumer<CartModel>(
                builder: (context, value, child) {
                  return GridView.builder(
                    itemCount: value.ShopItems.length,
                    padding: const EdgeInsets.all(18.0),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1 / 1.1,
                    ),
                    itemBuilder: (context, index) => GroceryItemTile(
                      itemName: value.ShopItems[index][0],
                      itemPrice: value.ShopItems[index][1],
                      imagePath: value.ShopItems[index][2],
                      Color: value.ShopItems[index][3],
                      onPressed: () {
                        Provider.of<CartModel>(context, listen: false)
                            .addItemToCart(index);
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
