import 'dart:core';

import 'package:flutter/material.dart';

class Product {
  final String title;
  final String description;
  final String image;
  final String review;
  final String seller;
  final double price;
  final List<Color> colors;
  final String category;
  final double rate;
  int quantity;

  Product(
      {required this.title,
      required this.description,
      required this.image,
      required this.review,
      required this.seller,
      required this.price,
      required this.colors,
      required this.category,
      required this.rate,
      required this.quantity});
}

final List<Product> products = [
  Product(
      title: 'Scandal',
      description:
          'Nước hoa hay dầu thơm (tiếng Anh: Perfume, tiếng Pháp: Parfum) là hỗn hợp chất tạo mùi của tinh dầu thơm hoặc các hợp chất tạo mùi thơm, chất hãm hương ',
      image: 'images/image1.jpg',
      review: '(320 Reviews)',
      seller: 'Nước hoa',
      price: 120,
      colors: [
        Colors.black,
        Colors.blue,
        Colors.orange
      ],
      category: 'Dior',
      rate: 4.8,
      quantity: 1),
  Product(
      title: 'Portray',
      description:
      'Nước hoa hay dầu thơm (tiếng Anh: Perfume, tiếng Pháp: Parfum) là hỗn hợp chất tạo mùi của tinh dầu thơm hoặc các hợp chất tạo mùi thơm, chất hãm hương ',
      image: 'images/image2.jpg',
      review: '(320 Reviews)',
      seller: 'Nước hoa',
      price: 160,
      colors: [
        Colors.black,
        Colors.brown,
        Colors.orange
      ],
      category: 'Dior',
      rate: 4.8,
      quantity: 1),
  Product(
      title: 'Thomas Kosmala',
      description:
      'Nước hoa hay dầu thơm (tiếng Anh: Perfume, tiếng Pháp: Parfum) là hỗn hợp chất tạo mùi của tinh dầu thơm hoặc các hợp chất tạo mùi thơm, chất hãm hương ',
      image: 'images/image3.webp',
      review: '(320 Reviews)',
      seller: 'Nước hoa',
      price: 160,
      colors: [
        Colors.white,
        Colors.blue,
        Colors.white38
      ],
      category: 'Dior',
      rate: 4.8,
      quantity: 1),
  Product(
      title: 'Valentilo',
      description:
      'Nước hoa hay dầu thơm (tiếng Anh: Perfume, tiếng Pháp: Parfum) là hỗn hợp chất tạo mùi của tinh dầu thơm hoặc các hợp chất tạo mùi thơm, chất hãm hương ',
      image: 'images/image4.jpg',
      review: '(320 Reviews)',
      seller: 'Nước hoa',
      price: 160,
      colors: [
        Colors.pink,
        Colors.white,
        Colors.orange
      ],
      category: 'Dior',
      rate: 4.8,
      quantity: 1),
  Product(
      title: 'utral male',
      description:
      'Nước hoa hay dầu thơm (tiếng Anh: Perfume, tiếng Pháp: Parfum) là hỗn hợp chất tạo mùi của tinh dầu thơm hoặc các hợp chất tạo mùi thơm, chất hãm hương ',
      image: 'images/image5.webp',
      review: '(320 Reviews)',
      seller: 'Nước hoa',
      price: 110,
      colors: [
        Colors.black,
        Colors.blue,
        Colors.orange
      ],
      category: 'Dior',
      rate: 4.8,
      quantity: 1),
  Product(
      title: 'Becret Venus',
      description:
      'Nước hoa hay dầu thơm (tiếng Anh: Perfume, tiếng Pháp: Parfum) là hỗn hợp chất tạo mùi của tinh dầu thơm hoặc các hợp chất tạo mùi thơm, chất hãm hương ',
      image: 'images/image6.jpg',
      review: '(320 Reviews)',
      seller: 'Nước hoa',
      price: 150,
      colors: [
        Colors.pink,
        Colors.pinkAccent,
        Colors.orange
      ],
      category: 'Dior',
      rate: 4.8,
      quantity: 1),
  Product(
      title: 'MaPut',
      description:
      'Nước hoa hay dầu thơm (tiếng Anh: Perfume, tiếng Pháp: Parfum) là hỗn hợp chất tạo mùi của tinh dầu thơm hoặc các hợp chất tạo mùi thơm, chất hãm hương ',
      image: 'images/image7.webp',
      review: '(320 Reviews)',
      seller: 'Nước hoa',
      price: 140,
      colors: [
        Colors.white38,
        Colors.yellow,
        Colors.orange
      ],
      category: 'Dior',
      rate: 4.8,
      quantity: 1),
  Product(
      title: 'Aqua Allecoria',
      description:
      'Nước hoa hay dầu thơm (tiếng Anh: Perfume, tiếng Pháp: Parfum) là hỗn hợp chất tạo mùi của tinh dầu thơm hoặc các hợp chất tạo mùi thơm, chất hãm hương ',
      image: 'images/image8.jpg',
      review: '(320 Reviews)',
      seller: 'Nước hoa',
      price: 160,
      colors: [
        Colors.black,
        Colors.blue,
        Colors.orange
      ],
      category: 'Dior',
      rate: 4.8,
      quantity: 1),
  Product(
      title: 'utral male',
      description:
      'Nước hoa hay dầu thơm (tiếng Anh: Perfume, tiếng Pháp: Parfum) là hỗn hợp chất tạo mùi của tinh dầu thơm hoặc các hợp chất tạo mùi thơm, chất hãm hương ',
      image: 'images/image9.webp',
      review: '(320 Reviews)',
      seller: 'Nước hoa',
      price: 110,
      colors: [
        Colors.black,
        Colors.blue,
        Colors.orange
      ],
      category: 'Dior',
      rate: 4.8,
      quantity: 1),
];
