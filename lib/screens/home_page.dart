import 'package:flutter/material.dart';
import 'package:toku/components/category_item.dart';
import 'package:toku/screens/colors_page.dart';
import 'package:toku/screens/family_members_page.dart';
import 'package:toku/screens/numbers_page.dart';
import 'package:toku/screens/phrases_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEF6DB),
      appBar: AppBar(backgroundColor: Colors.grey, title: const Text('Toku')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Category('Numbers', Colors.deepOrange, () {
            Navigator.push(context,
                MaterialPageRoute(builder: (BuildContext context) {
              return const NumbersPage();
            }));
          }),
          Category('FamilyMembers', Colors.green, () {
            Navigator.push(context, MaterialPageRoute(builder: ((context) {
              return const FamilyMembersPage();
            })));
          }),
          Category('Colors', Colors.amber, () {
            Navigator.push(context, MaterialPageRoute(builder: ((context) {
              return const ColorsPage();
            })));
          }),
          Category('Phrases', Colors.blue, () {
            Navigator.push(context, MaterialPageRoute(builder: ((context) {
              return const PhrasesPage();
            })));
          }),
        ],
      ),
    );
  }
}
