
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:website_1/utils/colors.dart';
import 'package:website_1/utils/styles.dart';





class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  _NavBarState  createState() {
    return _NavBarState();
  }
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: mobileNavbar(),
      desktop: desktopNavBar(),

    );
  }

  Widget mobileNavbar() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(Icons.menu),
          navLogo()
        ],
      ),
    );
  }
  Widget desktopNavBar(){
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical:10),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          navLogo(),
          Row(
            children: [
              navButton('Features'),
              navButton('about us'),
              navButton('Pricing'),
              navButton('Feedback'),

            ],
          ),
     SizedBox(
       height:45,
       child: ElevatedButton(
         style: borderedButtonStyle,
         onPressed: (){},
       child:  Text('Button',
         style: TextStyle(color:AppColors.primary),
       ),
       ),
)
        ],
      ),


    );
}
Widget navButton(String text){
  return TextButton(onPressed: (){}, child:Text(text,
  style:const TextStyle(
    color:Colors.black,
    fontSize:18
  ),));
  }
  Widget navLogo(){
    return Container(
      width: 110,
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/download.png'))
      ),

    );

  }

}




