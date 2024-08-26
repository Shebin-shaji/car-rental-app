// ignore_for_file: prefer_const_constructors

import 'package:car_rental_app/dummy_db/dummy_db.dart';
import 'package:car_rental_app/widgets/car_details_widget/car_details_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade400,
      appBar: AppBar(
        title: const Text(
          "Rent Your Car",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 26),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 8,
              childAspectRatio: .75,
              crossAxisSpacing: 8,
            ),
            itemCount: DummyDb.carList.length,
            itemBuilder: (context, index) => CarDetailsWidget(
                  name: DummyDb.carList[index]['name'],
                  image: DummyDb.carList[index]['image'],
                  price: DummyDb.carList[index]['price'],
                )),
      ),
    );
  }
}
