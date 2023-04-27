import 'package:flutter/material.dart';
import 'package:sport2/ui/widgets/app_bar.dart';
import 'package:sport2/ui/widgets/side_bar.dart';

class SportsmanPage extends StatefulWidget {
  const SportsmanPage({Key? key}) : super(key: key);

  @override
  State<SportsmanPage> createState() => _SportsmanPageState();
}

class _SportsmanPageState extends State<SportsmanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Expanded(flex: 13, child: Padding(
            padding: EdgeInsets.all(15.0),
            child: SideBar(selected: 0),
          )),
          Expanded(
            flex: 50,
            child: Column(

            ),
          ),
          Expanded(
            flex: 37,
            child: Column(),
          )
        ],
      )),
    );
  }
}
