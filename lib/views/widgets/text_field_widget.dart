import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
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
                //offset: const Offset(0.0, 1.0),
                offset: Offset(
                    0.0, // Move to right 10  horizontally
                    //-15.0, // Move to bottom 10 Vertically
                    20.0),
              )
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 10),
              child: const Text(
                'Email Address',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.email_outlined),
                border: InputBorder.none,
                hintText: 'imran@example.com'
                //contentPadding: EdgeInsets.symmetric(vertical: 10),
                //labelText: 'Email Address',
              ),
            ),
          ],
        ));
  }
}
