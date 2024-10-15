import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:t_store/components/my_button.dart';
import 'package:t_store/components/my_cart_tile.dart';
import 'package:t_store/models/restaurant.dart';
import 'package:t_store/pages/payment_page.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
        builder: (context, restaurant, child){
      // cart
      final userCart = restaurant.cart;

      return Scaffold(
        appBar: AppBar(
          title: Text("Cart"),
          backgroundColor: Colors.transparent,
          foregroundColor: Theme.of(context).colorScheme.inversePrimary,
            actions: [
              IconButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text(
                          'Are you sure you want to clear the cart?'),
                      actions: [
                        // Cancel button
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text("Cancel"),
                        ),

                        // Yes button
                        TextButton(
                          onPressed: () {
                            // Add your clear cart logic here
                          Navigator.pop(context);
                          restaurant.clearCart();// Closes the dialog
                         },
                          child: const Text("Yes"),
                        ),
                      ],
                    ),
                  );
                },
                icon: const Icon(Icons.delete),
              ),
            ],
        ),
        body: Column(
          children: [

            // list of cart
            Expanded(
              child: Column(
                children: [
                  userCart.isEmpty?
                      const Expanded(
                          child: Center(
                              child: const Text("Cart is empty.."
                              ),
                          ),
                      )
                  : Expanded(
                      child:ListView.builder(
                        itemCount: userCart.length,
                        itemBuilder: (context, index) {
                          // get individual cart item
                          final cartItem = userCart[index];
              
                          // return ListTile(
                          //   title: Text(cartItem.food.name),
                          // );
                          return MyCartTile(cartItem: cartItem);
                        }
                        ),
                      ),
                ],
              ),
            ),

            // button to pay
            MyButton(onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PaymentPage(),
                )),

                text: "Go to checkout"),

            const SizedBox(height: 25,),
          ],
        ),
      );
    }
    );
  }
}
