import 'package:flutter/material.dart';
import 'package:shop/Provider/cart_provider.dart';
import 'package:shop/screens/Cart/check_out.dart';
import 'package:shop/screens/nav_bar_screen.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    final provider = CartProvider.of(context);
    final finalList = provider.cart;
    productQuantity(IconData icon, int index) {
      return GestureDetector(
        onTap: () {
          setState(
            () {
              icon == Icons.add
                  ? provider.incrementQtn(index)
                  : provider.decrementQtn(index);
            },
          );
        },
        child: Icon(
          icon,
          size: 20,
        ),
      );
    }

    return Scaffold(
        bottomSheet: const CheckOutBox(),
        backgroundColor: const Color(0xffF5F5F5),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      style: IconButton.styleFrom(
                        backgroundColor: Colors.white,
                        padding: const EdgeInsets.all(15),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const BottomNavBar()));
                      },
                      iconSize: 20,
                      icon: const Icon(Icons.arrow_back_ios)),
                  const Text(
                    'My Cart',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  Container(),
                ],
              ),
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: finalList.length,
                    itemBuilder: (context, index) {
                      final cartItems = finalList[index];
                      return Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)),
                              padding: const EdgeInsets.all(20),
                              child: Row(
                                children: [
                                  Container(
                                    height: 110,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: const Color(0xffF5F5F5),
                                    ),
                                    padding: const EdgeInsets.all(5),
                                    child: Image.asset(cartItems.image),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        cartItems.title,
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        cartItems.category,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        '\$${cartItems.price}',
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            top: 35,
                            right: 35,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                IconButton(
                                  onPressed: () {
                                    finalList.removeAt(index);
                                    setState(() {});
                                  },
                                  icon: const Icon(
                                    Icons.delete,
                                    color: Colors.red,
                                    size: 22,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: const Color(0xffF5F5F5),
                                    border: Border.all(
                                        color: Colors.grey, width: 2),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Row(
                                    children: [
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      productQuantity(Icons.add, index),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        cartItems.quantity.toString(),
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      productQuantity(Icons.remove, index),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    }))
          ],
        ));
  }
}
