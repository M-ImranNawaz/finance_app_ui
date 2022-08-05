import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PasswordFieldWidget extends StatefulWidget {
  const PasswordFieldWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<PasswordFieldWidget> createState() => _PasswordFieldWidgetState();
}

class _PasswordFieldWidgetState extends State<PasswordFieldWidget> {
  bool obsecureText = true;

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
                offset: Offset(0.0, 20.0),
              )
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 10),
              child: const Text(
                'Password',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ),
            TextFormField(
              obscureText: obsecureText,
              decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.lock),
                  border: InputBorder.none,
                  hintText: '12345',
                  suffixIcon: InkWell(
                    onTap: () {
                      obsecureText = !obsecureText;
                      setState(() {});
                    },
                    child: Icon(obsecureText
                        ? FontAwesomeIcons.eye
                        : FontAwesomeIcons.eyeSlash),
                        
                  )
                  //contentPadding: EdgeInsets.symmetric(vertical: 10),
                  //labelText: 'Email Address',
                  ),
            ),
          ],
        ));
  }
}
