import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../utils/colors.dart';


class Container2 extends StatefulWidget {
  const Container2({super.key});

  @override
  State<Container2> createState() => _Container2State();
}

class _Container2State extends State<Container2> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: mobileContainer2(),
      desktop: desktopContainer2(),

    );
  }
  Widget mobileContainer2(){
    return Container(
      height: 900,
      width: double.infinity,
      decoration: BoxDecoration(color: AppColors.primary),
      child: Column(
        children: [
          Expanded(child: Stack(
            children: [
              Positioned(left: 43, right: 43,
                bottom: 0,
                child: Container(
                  width: double.infinity,
                  height: 712,
                  decoration: const BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/images/1.png'), fit: BoxFit.contain)
                  ),
                ),)
            ],
          ))
        ],
      ),


    );
  }

  Widget desktopContainer2(){
    return Container(
      height: 900,
      width: double.infinity,
      decoration: BoxDecoration(color: AppColors.primary),
      child: Column(
        children: [
          Expanded(child: Stack(
            children: [
              Positioned(left: 43, right: 43,
              bottom: 10, child: Container(
                  width: double.infinity,
                  height: 712,
                  decoration: const BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/images/1.png'), fit: BoxFit.contain)
                  ),
                ),)
            ],
          ))
        ],
      ),


    );
  }
}
