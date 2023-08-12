import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
import '../../../enums.dart';
import '../../home/home_screen.dart';
import '../profile_screen.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    super.key, required this.selectedMenu,
  });
  final MenuState selectedMenu;
  @override
  Widget build(BuildContext context) {
    final Color inActiveIconColor = Color(0xFFB6B6B6);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight:Radius.circular(40),
          topLeft: Radius.circular(40),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
      ),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () => Navigator.pushNamed(context, HomeScreen.routeName),
              icon: SvgPicture.asset("assets/icons/Shop Icon.svg",
                color: MenuState.home == selectedMenu
                    ? kPrimaryColor : inActiveIconColor,
              ),
            ),
            IconButton(
              onPressed: (){},
              icon: SvgPicture.asset("assets/icons/Heart Icon.svg",
                color: MenuState.favourite == selectedMenu
                    ? kPrimaryColor : inActiveIconColor,
              ),
            ),
            IconButton(
              onPressed: (){},
              icon: SvgPicture.asset("assets/icons/Chat bubble Icon.svg",
                color: MenuState.message == selectedMenu
                    ? kPrimaryColor : inActiveIconColor,
              ),
            ),
            IconButton(
              onPressed: () => Navigator.pushNamed(context, ProfileScreen.routeName),
              icon: SvgPicture.asset("assets/icons/User Icon.svg",
                color: MenuState.profile == selectedMenu
                    ? kPrimaryColor : inActiveIconColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
