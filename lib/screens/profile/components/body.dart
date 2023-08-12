import 'package:ecommerce/constants.dart';
import 'package:ecommerce/screens/profile/components/profile_menu.dart';
import 'package:ecommerce/screens/profile/components/profile_pic.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfilePic(),
        SizedBox(height: 20,),
        ProfileMenu(
          icon: "assets/icons/User Icon.svg",
          text: "My Account",
          press: (){},
        ),
        ProfileMenu(
          icon: "assets/icons/Bell.svg",
          text: "Notifications",
          press: (){},
        ),
        ProfileMenu(
          icon: "assets/icons/Settings.svg",
          text: "Settings",
          press: (){},
        ),
        ProfileMenu(
          icon: "assets/icons/User Icon.svg",
          text: "Help Center",
          press: (){},
        ),
        ProfileMenu(
          icon: "assets/icons/Log out.svg",
          text: "Log Out",
          press: (){},
        ),

      ],
    );
  }
}




