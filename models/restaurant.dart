import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:t_store/models/food.dart';

import 'cart_item.dart';

class Restaurant extends ChangeNotifier{
  //list of food menu
  final List<Food> _menu = [
    // burgers
    Food(
        name: "Classic Cheeseburger",
        description: "A juicy beef patty with melted cheddar, lattuce, tomato,"
            "and a hint of onion and pickle",
        imagePath: "lib/image/burgers/1.png",
        price: 20.26,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: "Extra cheese", price: 1.29),
          Addon(name: "Bacon", price: 1.99),
          Addon(name: "Avocado", price: 2.99),
        ],
    ),

    Food(
      name: "Beef Cheeseburger",
      description: "A juicy beef patty with melted cheddar, lattuce, tomato,"
          "and a hint of onion and pickle",
      imagePath: "lib/image/burgers/2.png",
      price: 30.26,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 1.29),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),

    Food(
      name: "Chicken Cheeseburger",
      description: "A juicy beef patty with melted cheddar, lattuce, tomato,"
          "and a hint of onion and pickle",
      imagePath: "lib/image/burgers/3.png",
      price: 16.86,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 1.29),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),

    Food(
      name: "Special burger",
      description: "A juicy beef patty with melted cheddar, lattuce, tomato,"
          "and a hint of onion and pickle",
      imagePath: "lib/image/burgers/4.png",
      price: 27.50,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 1.29),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),

    Food(
      name: "Egg Cheeseburger",
      description: "A juicy beef patty with melted cheddar, lattuce, tomato,"
          "and a hint of onion and pickle",
      imagePath: "lib/image/burgers/5.png",
      price: 10.01,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 1.29),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),


    // dessert

    Food(
      name: "Lava Cake",
      description: "A juicy beef patty with melted cheddar, lattuce, tomato,"
          "and a hint of onion and pickle",
      imagePath: "lib/image/desserts/1.png",
      price: 7.02,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Raspberry Sauce", price: 1.29),
        Addon(name: "Cream Cheese Icing", price: 1.99),
        Addon(name: "Chocolate Sprinkles", price: 2.99),
      ],
    ),

    Food(
      name: "Strawberry Ice Cream ",
      description: "A juicy beef patty with melted cheddar, lattuce, tomato,"
          "and a hint of onion and pickle",
      imagePath: "lib/image/desserts/2.png",
      price: 9.32,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Raspberry Sauce", price: 1.29),
        Addon(name: "Cream Cheese Icing", price: 1.99),
        Addon(name: "Chocolate Sprinkles", price: 2.99),
      ],
    ),

    Food(
      name: "Vanilla Ice cream",
      description: "A juicy beef patty with melted cheddar, lattuce, tomato,"
          "and a hint of onion and pickle",
      imagePath: "lib/image/desserts/3.png",
      price: 3.11,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Raspberry Sauce", price: 1.29),
        Addon(name: "Cream Cheese Icing", price: 1.99),
        Addon(name: "Chocolate Sprinkles", price: 2.99),
      ],
    ),

    Food(
      name: "Chocolate Ice Cream",
      description: "A juicy beef patty with melted cheddar, lattuce, tomato,"
          "and a hint of onion and pickle",
      imagePath: "lib/image/desserts/4.png",
      price: 4.01,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Raspberry Sauce", price: 1.29),
        Addon(name: "Cream Cheese Icing", price: 1.99),
        Addon(name: "Chocolate Sprinkles", price: 2.99),
      ],
    ),

    Food(
      name: "Special Desert",
      description: "A juicy beef patty with melted cheddar, lattuce, tomato,"
          "and a hint of onion and pickle",
      imagePath: "lib/image/desserts/5.png",
      price: 12.40,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Raspberry Sauce", price: 1.29),
        Addon(name: "Cream Cheese Icing", price: 1.99),
        Addon(name: "Chocolate Sprinkles", price: 2.99),
      ],
    ),


    // Salad

    Food(
      name: "Classic salad",
      description: "A juicy beef patty with melted cheddar, lattuce, tomato,"
          "and a hint of onion and pickle",
      imagePath: "lib/image/salads/1.png",
      price: 3.02,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Feta Cheese", price: 1.29),
        Addon(name: "Kalamata Olives", price: 1.99),
        Addon(name: "Grilled Shrimp", price: 2.99),
      ],
    ),

    Food(
      name: "Greeky salad",
      description: "A juicy beef patty with melted cheddar, lattuce, tomato,"
          "and a hint of onion and pickle",
      imagePath: "lib/image/salads/2.png",
      price: 6.02,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Feta Cheese", price: 1.29),
        Addon(name: "Kalamata Olives", price: 1.99),
        Addon(name: "Grilled Shrimp", price: 2.99),
      ],
    ),

    Food(
      name: "Desi salad",
      description: "A juicy beef patty with melted cheddar, lattuce, tomato,"
          "and a hint of onion and pickle",
      imagePath: "lib/image/salads/3.png",
      price: 4.81,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Feta Cheese", price: 1.29),
        Addon(name: "Kalamata Olives", price: 1.99),
        Addon(name: "Grilled Shrimp", price: 2.99),
      ],
    ),

    Food(
      name: "Grilled salad",
      description: "A juicy beef patty with melted cheddar, lattuce, tomato,"
          "and a hint of onion and pickle",
      imagePath: "lib/image/salads/4.png",
      price: 2.75,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Feta Cheese", price: 1.29),
        Addon(name: "Kalamata Olives", price: 1.99),
        Addon(name: "Grilled Shrimp", price: 0.99),
      ],
    ),

    Food(
      name: "Turkish salad",
      description: "A juicy beef patty with melted cheddar, lattuce, tomato,"
          "and a hint of onion and pickle",
      imagePath: "lib/image/salads/5.png",
      price: 1.72,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Feta Cheese", price: 1.29),
        Addon(name: "Kalamata Olives", price: 1.99),
        Addon(name: "Grilled Shrimp", price: 2.99),
      ],
    ),


    // Sides

    Food(
      name: "Italian Pasta",
      description: "A juicy beef patty with melted cheddar, lattuce, tomato,"
          "and a hint of onion and pickle",
      imagePath: "lib/image/sides/1.png",
      price: 5.12,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Ranch Dip", price: 1.29),
        Addon(name: "Spicy Mayo", price: 1.99),
        Addon(name: "Parmesan Dust", price: 2.99),
      ],
    ),

    Food(
      name: "Nooduls",
      description: "A juicy beef patty with melted cheddar, lattuce, tomato,"
          "and a hint of onion and pickle",
      imagePath: "lib/image/sides/2.png",
      price: 2.19,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Ranch Dip", price: 1.29),
        Addon(name: "Spicy Mayo", price: 1.99),
        Addon(name: "Parmesan Dust", price: 2.99),
      ],
    ),

    Food(
      name: "Chicken Caomin",
      description: "A juicy beef patty with melted cheddar, lattuce, tomato,"
          "and a hint of onion and pickle",
      imagePath: "lib/image/sides/3.png",
      price: 7.10,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Ranch Dip", price: 1.29),
        Addon(name: "Spicy Mayo", price: 1.99),
        Addon(name: "Parmesan Dust", price: 2.99),
      ],
    ),

    Food(
      name: "Polato",
      description: "A juicy beef patty with melted cheddar, lattuce, tomato,"
          "and a hint of onion and pickle",
      imagePath: "lib/image/sides/4.png",
      price: 2.80,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Ranch Dip", price: 1.29),
        Addon(name: "Spicy Mayo", price: 1.99),
        Addon(name: "Parmesan Dust", price: 2.99),
      ],
    ),

    Food(
      name: "Grespy Ring",
      description: "A juicy beef patty with melted cheddar, lattuce, tomato,"
          "and a hint of onion and pickle",
      imagePath: "lib/image/sides/5.png",
      price: 3.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Ranch Dip", price: 1.29),
        Addon(name: "Spicy Mayo", price: 1.99),
        Addon(name: "Parmesan Dust", price: 2.99),
      ],
    ),


    // Drinks

    Food(
      name: "Lemon Juice",
      description: "A juicy beef patty with melted cheddar, lattuce, tomato,"
          "and a hint of onion and pickle",
      imagePath: "lib/image/drinks/1.png",
      price: 4.12,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Protein Powder", price: 1.29),
        Addon(name: "Almond Milk", price: 1.99),
        Addon(name: "Chia Seeds", price: 2.99),
      ],
    ),

    Food(
      name: "Orange Juice",
      description: "A juicy beef patty with melted cheddar, lattuce, tomato,"
          "and a hint of onion and pickle",
      imagePath: "lib/image/drinks/2.png",
      price: 3.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Protein Powder", price: 1.29),
        Addon(name: "Almond Milk", price: 1.99),
        Addon(name: "Chia Seeds", price: 2.99),
      ],
    ),

    Food(
      name: "Wisky",
      description: "A juicy beef patty with melted cheddar, lattuce, tomato,"
          "and a hint of onion and pickle",
      imagePath: "lib/image/drinks/3.png",
      price: 11.90,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Protein Powder", price: 1.29),
        Addon(name: "Almond Milk", price: 1.99),
        Addon(name: "Chia Seeds", price: 2.99),
      ],
    ),

    Food(
      name: "Flaviour Mixer",
      description: "A juicy beef patty with melted cheddar, lattuce, tomato,"
          "and a hint of onion and pickle",
      imagePath: "lib/image/drinks/4.png",
      price: 2.74,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Protein Powder", price: 1.29),
        Addon(name: "Almond Milk", price: 1.99),
        Addon(name: "Chia Seeds", price: 2.99),
      ],
    ),

    Food(
      name: "Coca Cola",
      description: "A juicy beef patty with melted cheddar, lattuce, tomato,"
          "and a hint of onion and pickle",
      imagePath: "lib/image/drinks/5.png",
      price: 2.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Protein Powder", price: 1.29),
        Addon(name: "Almond Milk", price: 1.99),
        Addon(name: "Chia Seeds", price: 2.99),
      ],
    ),

  ];




  // G E T T E R S

  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;




  // O P E R A T I O N S


  // user cart
  final List<CartItem> _cart = [];

  // add to cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      // if the cart item are the same
      bool isSameFood = item.food == food;

      // check if the list of selected addons are the same
      bool isSameAddons =
      ListEquality().equals(item.selectedAddons, selectedAddons);
      return isSameFood && isSameAddons;
    });

    // if item already exists, increase its quantity
    if (cartItem != null) {
      cartItem.quantity++;
    }

    // otherwise, add a new cart item to the cart
    else {
      _cart.add(
        CartItem(
            food: food,
            selectedAddons: selectedAddons
        ),
      );
    }
    notifyListeners();


    // remove from cart
    void removeFromCart(CartItem cartItem) {
      int carIndex = _cart.indexOf(cartItem);

      if (carIndex != -1) {
        if (_cart[carIndex].quantity>1){
          _cart[carIndex].quantity--;
        }else {
          _cart.removeAt(carIndex);
        }
      }
      notifyListeners();
    }

    // get total price of cart
    double getTotalPrice(){
      double total = 0.0;

      for (CartItem cartItem in _cart) {
        double itemTotal = cartItem.food.price;

        for (Addon addon in cartItem.selectedAddons){
          itemTotal += addon.price;
        }

        total += itemTotal * cartItem.quantity;
      }
      return total;
    }

    // get total number  fo items
    int  getTotalItemCount() {
      int totalItemCount = 0;

      for (CartItem cartItem in _cart) {
        totalItemCount += cartItem.quantity;
      }
      return totalItemCount;
    }

    // clear cart
    void clearCart() {
      _cart.clear();
      notifyListeners();
    }


  }

  // Get total number of items
  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

  // Clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  // Remove from cart
  void removeFromCart(CartItem cartItem) {
    int carIndex = _cart.indexOf(cartItem);

    if (carIndex != -1) {
      if (_cart[carIndex].quantity > 1) {
        _cart[carIndex].quantity--;
      } else {
        _cart.removeAt(carIndex);
      }
    }
    notifyListeners();
  }


  // generate aa receipt
  String displayCartRecipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here is your receipt.");
    receipt.writeln();

    // formate the data to include up to second only
    String formattedDate = DateFormat ("yyyy-MM-dd HH:mm:ss")
        .format(DateTime.now());

    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("---------");

    for (final cartItem in _cart) {
      receipt.writeln(
        "${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}"
      );
      if (cartItem.selectedAddons.isNotEmpty) {
        receipt
            .writeln("  Add-ons: ${_formatAddons(cartItem.selectedAddons)}");
      }
      receipt.writeln();
    }

    receipt.writeln("----------");
    receipt.writeln();
    receipt.writeln("Total Item: ${getTotalItemCount()}");
    receipt.writeln("Total Price: ${_formatPrice(getTotalPrice())}");

    return receipt.toString();

  }




  // format double value into money
  String _formatPrice(double price) {
    return "\$${price.toStringAsFixed(2)}";
  }

    // format list of addens into summary

  String _formatAddons(List<Addon> addons) {
    return addons
        .map((addon) => "${addon.name} (${_formatPrice(addon.price)})")
        .join(", ");
  }


  // get total price

  double getTotalPrice() {
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons){
        itemTotal += addon.price;
      }

      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

}













