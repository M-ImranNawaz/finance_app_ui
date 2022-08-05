import 'package:finance_app/constants.dart';
import 'package:finance_app/views/widgets/button_widget.dart';
import 'package:finance_app/views/widgets/my_scaffold_widget.dart';
import 'package:flutter/material.dart';

import 'views.dart';

class UserPage extends StatelessWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyScaffoldWidget(widgets: [
      CircleAvatar(
          backgroundColor: kPColor,
          radius: 50,
          child: Image.asset(
            'assets/logo.png',
            width: 70,
          )),
      buildInputWidgets(context),
    ]);
  }

  Column buildInputWidgets(BuildContext context) {
    return Column(
      children: [
        const TextFieldWidget(),
        const SizedBox(
          height: 15,
        ),
        const PasswordFieldWidget(),
        const SizedBox(
          height: 15,
        ),
        ButtonWidget(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
            title: 'Login'),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              child: Text(
                'Signup',
                style: TextStyle(color: Colors.blueGrey.shade400),
              ),
            ),
            InkWell(
              child: Text(
                'Forgot Password?',
                style: TextStyle(color: Colors.blueGrey.shade400),
              ),
            ),
          ],
        )
      ],
    );
  }
}
