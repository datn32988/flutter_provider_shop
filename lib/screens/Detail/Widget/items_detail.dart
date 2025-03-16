import 'package:flutter/material.dart';
import 'package:shop/model/Product.dart';

class ItemsDetail extends StatelessWidget {
  final Product product;

  const ItemsDetail({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          product.title,
          style: const TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 25,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '\$${product.price}',
                  style: const TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 25,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      width: 55,
                      height: 25,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color(0xffff660e)),
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.star,
                            size: 14,
                            color: Colors.white,
                          ),
                          const SizedBox(
                            width: 3,
                          ),
                          Text(
                            product.rate.toString(),
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      product.review,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                  ],
                )
              ],
            ),
            const Spacer(),
            Text.rich(TextSpan(children: [
              const TextSpan(
                text: 'Seller: ',
                style: TextStyle(fontSize: 15),
              ),
              TextSpan(
                text: product.seller,
                style: const TextStyle(fontSize: 15,
                fontWeight: FontWeight.bold),
              ),
            ]))
          ],
        ),
      ],
    );
  }
}
