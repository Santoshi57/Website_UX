import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:website_1/utils/constants.dart';

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
    return Column(
      children: [
        Container(
          height: w!/1.2,
          // width: w!/1.2,
          decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/images/1.png'), fit: BoxFit.scaleDown)
          ),
        ),
        const SizedBox(height: 20,),
        Text(' Hello World!! \nview my website',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: w!/ 10,
              fontWeight: FontWeight.bold,
              height: 1.2),
        ),
        const SizedBox(height: 10,),
        Text('Lets explore the world ',
          style: TextStyle(color: Colors.grey.shade600,fontSize: 16),
        ),
        //const SizedBox(height: 30,),
        SizedBox(
            height: 45,
            child: ElevatedButton.icon(
                style: ButtonStyle(
                    backgroundColor:MaterialStateProperty.all(
                        AppColors.primary)),

                onPressed: (){},
                icon: const Icon(Icons.arrow_drop_down),
                label: const Text('Try free Demo'))
        ),
        const SizedBox(height: 20,),
        Text('- web, ios and android',
          style: TextStyle(color: Colors.grey.shade600,fontSize: 16),
        ),
        const SizedBox(height: 30,)
      ],
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
              Positioned(
               top: -20,
                right: -20,
                child: Container(
                  height: 320,
                  width: 320,
                  decoration: const BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/images/dash.jpg'), fit: BoxFit.contain)
                  ),

                ),
              ),
              Positioned(left: 43, right: 43,
              bottom: 10, child: Container(
                  width: double.infinity,
                  height: 712,
                  decoration: const BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/images/dash.jpg'), fit: BoxFit.contain)
                  ),
                ),)
            ],
          )),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                companyLogo(" "),

              ],
            ),
          )
        ],
      ),


    );
  }
  Widget companyLogo(String image){
    return Container(
      width: 160,
      height: 40,
      decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/'), fit: BoxFit.contain)
      ),
    );
  }
}
