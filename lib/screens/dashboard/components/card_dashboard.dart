import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_store_system_app/styles/style.dart';

class CardDashboard extends StatelessWidget {

  final Color? cardColor;
  final double width;
  final double height;
  final String text;
  final String value;
  final IconData? icon;

  const CardDashboard({Key? key, required this.cardColor, required this.width, required this.height, required this.text, required this.value, this.icon = FontAwesomeIcons.store}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      color: cardColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6.0),
      ),
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            color: cardColor,
            borderRadius: BorderRadius.circular(6)
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(text, style: cardDashboardTitle,),
                  Spacer(),
                ],
              ),
            ),
            Padding(
              padding:const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  FaIcon(icon, size: 40, color: Colors.white,),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(value , style: moneyTitle,)
                ],
              ),
            ),
            const Divider(),
          ],
        ),
      ),
    );
  }
}
