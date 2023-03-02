import 'package:flutter/material.dart';
import 'package:stylify/models/navigation_model.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({Key? key}) : super(key: key);

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int page = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Center(
          child: CircleAvatar(
            radius: 18,
            backgroundColor: Colors.black,
            child: Icon(
              Icons.menu,
              color: Colors.white,
              size: 18,
            ),
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: const CircleAvatar(
              radius: 18,
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage('assets/images/v1.png'),
            ),
          ),
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: kBottomNavigationBarHeight,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(
            NavigationModel.navigations.length,
            (index) {
              bool selected = index == page;

              return AnimatedContainer(
                duration: const Duration(milliseconds: 500),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Image.asset(
                        NavigationModel.navigations[index].icon,
                        color: Colors.black,
                        height: 22,
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
