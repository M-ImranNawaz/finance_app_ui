import 'package:flutter/material.dart';

import '../../constants.dart';

class MyListTileWidget extends StatelessWidget {
  const MyListTileWidget({
    Key? key,
    required this.leading,
    required this.title,
    required this.subtitle,
    required this.trailing,
  }) : super(key: key);
  final IconData leading;
  final String title;
  final String subtitle;
  final String trailing;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      margin: const EdgeInsets.only(bottom: 8),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(25),
          ),
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Color.fromARGB(255, 200, 218, 226),
              spreadRadius: 0,
              offset: Offset(0.0, 20.0),
            ),
          ]),
      child: InkWell(
        onTap: () {
          print(title);
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 5),
                  height: 42,
                  width: 44,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: const BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  child: Icon(leading),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      subtitle,
                      style: const TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
            Text(
              trailing,
              style: const TextStyle(
                  fontSize: 15, color: kPColor, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
