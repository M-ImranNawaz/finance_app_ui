import 'package:finance_app/constants.dart';
import 'package:finance_app/views/views.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final HomeController c = Get.put(HomeController());
  final list = [
    {
      "leading": Icons.arrow_upward,
      "title": "Send",
      "subtitle": 'Sending Payments to Clients',
      "trailing": "\$150"
    },
    {
      "leading": Icons.arrow_downward,
      "title": "Recieve",
      "subtitle": 'Recieving Salery from company',
      "trailing": "\$250"
    },
    {
      "leading": Icons.attach_money_outlined,
      "title": "Loan",
      "subtitle": 'Loan for the Car',
      "trailing": "\$400"
    },
  ];
  @override
  Widget build(BuildContext context) {
    // final width = MediaQuery.of(context).size.width;
    // print(width);
    // if (width > 640) {
    //   Scaffold.of(context).openDrawer();
    // }
    //FocusManager.instance.primaryFocus?.unfocus();
    return MyScaffoldWidget(
        isHomePage: true,
        myBotNavBar: Container(
          padding: const EdgeInsets.symmetric(vertical: 8),
          decoration: const BoxDecoration(
            color: Colors.transparent,
          ),
          child: Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width / 5,
                child: IconButton(
                    onPressed: () {}, icon: const Icon(Icons.home_outlined)),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 5,
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.account_balance_wallet_outlined)),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                width: MediaQuery.of(context).size.width / 5,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: kPColor,
                    minimumSize: const Size(20, 40),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  onPressed: () {},
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 5,
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.attach_money_outlined)),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 5,
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.account_circle_outlined)),
              ),
            ],
          ),
        ),
        widgets: [
          const MyProfileCard(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  Text(
                    'Overview ',
                    style: TextStyle(
                        fontSize: 22,
                        color: kPColor,
                        fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.notifications_active_outlined,
                  ),
                ],
              ),
              const Text('Sept 13, 2020',
                  style:
                      TextStyle(color: kPColor, fontWeight: FontWeight.w600)),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: list.length,
                itemBuilder: (context, index) {
                  return MyListTileWidget(
                      leading: list[index]['leading'] as IconData,
                      title: list[index]['title'].toString(),
                      subtitle: list[index]['subtitle'].toString(),
                      trailing: list[index]['trailing'].toString());
                }),
          ),
          // const MyListTileWidget(
          //   leading: Icons.arrow_upward,
          //   title: 'Send',
          //   subtitle: 'Sending Payments to Clients',
          //   trailing: '\$150',
          // ),
          // const MyListTileWidget(
          //   leading: Icons.arrow_downward,
          //   title: 'Recieve',
          //   subtitle: 'Recieving Salery from company',
          //   trailing: '\$250',
          // ),
          // const MyListTileWidget(
          //   leading: Icons.attach_money_outlined,
          //   title: 'Loan',
          //   subtitle: 'Loan for the Car',
          //   trailing: '\$400',
          // ),
        ]);
  }

  BoxShadow buildBoxShadow() {
    return const BoxShadow(
      blurRadius: 15,
      color: Color.fromARGB(255, 200, 218, 226),
      spreadRadius: 0,
      offset: Offset(0.0, 20.0),
    );
  }
}
