import 'package:flutter/material.dart';
import 'package:shop/model/Product.dart';
import 'package:shop/screens/Home/Widget/category.dart';
import 'package:shop/screens/Home/Widget/home_app_bar.dart';
import 'package:shop/screens/Home/Widget/image_slider.dart';
import 'package:shop/screens/Home/Widget/product.dart';
import 'package:shop/screens/Home/Widget/search_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentSlider = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 35,
              ),
              const CustomAppBar(),
              const SizedBox(
                height: 20,
              ),
              const MSearchBar(),
              const SizedBox(
                height: 20,
              ),
              ImageSlider(
                currentSlide: currentSlider,
                onChange: (value) {
                  setState(
                    () {
                      currentSlider = value;
                    },
                  );
                },
              ),
              const SizedBox(
                height: 20,
              ),
              const Categories(),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Dành cho bạn ',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w800),
                  ),
                  Spacer(),
                  Text(
                    'Tất cả sản phẩm ',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
                  ),
                  SizedBox(
                    width: 10,
                  )
                ],
              ),
              GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.78,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return ProductCard(
                    product: products[index],
                  );
                },

              )
            ],
          ),
        ),
      ),
    );
  }
}
