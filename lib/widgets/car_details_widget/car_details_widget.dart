// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CarDetailsWidget extends StatelessWidget {
  const CarDetailsWidget(
      {super.key,
      required this.name,
      required this.image,
      required this.price});
  final String name;
  final String image;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: Colors.black87),
        borderRadius: BorderRadius.all(Radius.circular(14)),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.maxFinite,
            height: 140,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(14)),
                border: Border.all(width: 1, color: Colors.black87),
                image: DecorationImage(
                    fit: BoxFit.cover, image: NetworkImage(image))),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                Row(
                  children: const [
                    Text(
                      "Condition : ",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 15),
                    ),
                    Text("Good"),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Price : ",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      price.toString(),
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      " / day",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 10),
                    ),
                  ],
                ),
                SizedBox(height: 5)
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 18, right: 18, top: 1, bottom: 1),
            child: Container(
              width: double.infinity,
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.all(Radius.circular(16))),
              child: const Center(
                child: Text(
                  "Book Now",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
