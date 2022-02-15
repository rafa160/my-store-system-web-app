import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_store_system_app/styles/style.dart';

class MyAppbar extends StatefulWidget implements PreferredSizeWidget{
  const MyAppbar({Key? key}) : super(key: key);

  @override
  _MyAppbarState createState() => _MyAppbarState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => throw UnimplementedError();
}

class _MyAppbarState extends State<MyAppbar> {
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      foregroundColor: estelColor,
      elevation: 0,
      backgroundColor: estelColor,
      actions: [
        Center(
          child: GestureDetector(
              onTap: (){},
              child: const FaIcon(FontAwesomeIcons.lightbulb, color: Colors.white, size: 22,)),
        ),
        const SizedBox(
          width: 20,
        ),
        Center(
          child: GestureDetector(
            onTap: (){},
              child: const FaIcon(FontAwesomeIcons.arrowAltCircleRight, color: Colors.red, size: 22,)),
        ),
        const SizedBox(
          width: 20,
        ),
      ],
    );
  }
}
