import 'package:flutter/material.dart';
import 'package:website_1/pages/containers/container1.dart';
import 'package:website_1/pages/containers/container2.dart';

import '../utils/constants.dart';
import '../widgets/navbar.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
 _HomeState createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [NavBar(),
            Container1(),Container2()
          ],
        ),

      ),
    );
  }
}


