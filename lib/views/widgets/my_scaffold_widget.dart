import 'package:flutter/material.dart';

import '../../constants.dart';

class MyScaffoldWidget extends StatelessWidget {
  MyScaffoldWidget(
      {Key? key,
      required this.widgets,
      this.myBotNavBar,
      this.isHomePage = false})
      : super(key: key);
  final List<Widget> widgets;
  final Widget? myBotNavBar;
  bool isHomePage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: myBotNavBar,
      drawer: Drawer(
        child: ListView(
          children: const [
            UserAccountsDrawerHeader(
                accountName: Text('Imran Khan'),
                accountEmail: Text('imrankhan@gmail.com'))
          ],
        ),
      ),
      backgroundColor: kBgColor,
      body: SafeArea(
        child: LayoutBuilder(
          builder: ((context, constraints) {
            if (constraints.maxWidth < 600 || myBotNavBar.toString().isEmpty) {
              Scaffold.of(context).closeDrawer();
              return Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: widgets,
                ),
              );
            } else {
              print(myBotNavBar);
              return Row(
                children: [
                  isHomePage
                      ? SizedBox(
                          height: double.infinity,
                          width: constraints.maxWidth > 800 ? 300 : 200,
                          child: Drawer(
                            child: ListView(
                              children: const [
                                UserAccountsDrawerHeader(
                                    accountName: Text('Imran Khan'),
                                    accountEmail: Text('imrankhan@gmail.com'))
                              ],
                            ),
                          ),
                        )
                      : const SizedBox.shrink(),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: widgets,
                      ),
                    ),
                  )
                ],
              );
            }
          }),
        ),
      ),
    );
  }
}
