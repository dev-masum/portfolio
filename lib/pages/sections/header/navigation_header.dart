import 'package:flutter/material.dart';
import 'package:portfolio/pages/sections/header/widgets/nav_item.dart';
import 'package:portfolio/utils/constants.dart';

class NavigationHeader extends StatelessWidget implements PreferredSizeWidget {
  final ScrollController scrollController;

  const NavigationHeader({
    Key? key,
    required this.scrollController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: null,
      automaticallyImplyLeading: false,
      title: Padding(
        padding: ScreenSize.isMobile(context)
            ? const EdgeInsets.only(left: 12.0)
            : const EdgeInsets.only(left: 48.0),
        child: Text(
          "Portfolio",
          style: Theme.of(context).textTheme.titleSmall,
        ),
      ),
      actions: [
        Visibility(
          visible: !ScreenSize.isMobile(context),
          child: NavItem(
            text: "Home",
            onTap: () => scrollController.animateTo(
              0.0,
              duration: const Duration(milliseconds: 500),
              curve: Curves.fastOutSlowIn,
            ),
            hoverColor: Colors.cyan,
          ),
        ),
        Visibility(
          visible: !ScreenSize.isMobile(context),
          child: NavItem(
            text: "Projects",
            onTap: () {},
            hoverColor: Colors.cyan,
          ),
        ),
        Visibility(
          visible: !ScreenSize.isMobile(context),
          child: NavItem(
            text: "Skills",
            onTap: () {},
            hoverColor: Colors.cyan,
          ),
        ),
        Visibility(
          visible: !ScreenSize.isMobile(context),
          child: NavItem(
            text: "About me",
            onTap: () {},
            hoverColor: Colors.cyan,
          ),
        ),
        Visibility(
          visible: ScreenSize.isMobile(context),
          child: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () => Scaffold.of(context).openEndDrawer(),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
