import 'package:flutter/material.dart';

import '../../constants.dart';
import '../views.dart';

class MyProfileCard extends StatelessWidget {
  const MyProfileCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 5, bottom: 20, right: 5, left: 5),
      margin: const EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          boxShadow: [buildBoxShadow()]),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DrawerButtonWidget(),
              const MenuButtonWidget(),
            ],
          ),
          const CircleAvatar(
            backgroundImage: AssetImage('assets/unnamed.webp'),
            radius: 40,
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            'Mohammad Imran',
            style: TextStyle(
                color: kPColor, fontSize: 20, fontWeight: FontWeight.w600),
          ),
          const Text('Flutter Developer'),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildMoneyData("8900", "Income"),
              Container(
                color: kPColor,
                height: 20,
                width: .3,
              ),
              buildMoneyData("5500", "Expenses"),
              Container(
                color: kPColor,
                height: 20,
                width: .3,
              ),
              buildMoneyData("890", "Loan"),
            ],
          )
        ],
      ),
    );
  }

  BoxShadow buildBoxShadow() {
    return const BoxShadow(
      blurRadius: 12,
      color: Color.fromARGB(255, 200, 218, 226),
      spreadRadius: 0,
      offset: Offset(0.0, 15.0),
    );
  }

  Column buildMoneyData(String data, String title) {
    return Column(
      children: [
        Text(
          '\$$data',
          style: const TextStyle(fontWeight: FontWeight.w500, color: kPColor),
        ),
        Text(title),
      ],
    );
  }
}
