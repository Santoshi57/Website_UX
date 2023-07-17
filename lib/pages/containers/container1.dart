import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../utils/colors.dart';
import '../../utils/constants.dart';

class Container1 extends StatefulWidget {
  const Container1({super.key});

  @override
  State<Container1> createState() => _Container1State();
}

class _Container1State extends State<Container1> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: desktopContainer1(),
      desktop: desktopContainer1(),

    );
  }
  Widget desktopContainer1(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: w!/10, vertical:  20),
      child: Row(
        children: [
          Expanded(
              child: Container(
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(' Hello World!! \nview my website',
               style: TextStyle(
                 fontSize: w!/20,
                 fontWeight: FontWeight.bold,
                 height: 1.2),
               ),
                SizedBox(height: 20,),
                Text('Lets explore the world ',
                style: TextStyle(color: Colors.grey.shade600,fontSize: 16),
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Container(
                      height: 45,
                      child: ElevatedButton.icon(
                        style: ButtonStyle(
                          backgroundColor:MaterialStateProperty.all(
                            AppColors.primary)),

                          onPressed: (){},
                          icon: Icon(Icons.arrow_drop_down),
                          label: Text('Try free Demo'))
                    ),
                    SizedBox(width: 20,),
                    Text('- web, ios and andriod',
                      style: TextStyle(color: Colors.grey.shade600,fontSize: 16),
                    )
                  ],
                )


              ],
            ),
          )),
          Expanded(child: Container(
            height: 530,
    decoration: const BoxDecoration(
    image: DecorationImage(image: AssetImage('assets/images/download.png'), fit: BoxFit.contain)
    ),
            ))
        ],
      ),

    );
  }
}
