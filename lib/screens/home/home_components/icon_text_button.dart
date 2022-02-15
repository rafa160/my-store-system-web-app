import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class IconTextButton extends StatelessWidget {

  final VoidCallback onTap;
  final Color color;
  final Color containerColor;
  final String text;
  final IconData icon;

  const IconTextButton({Key? key, required this.onTap, required this.color, required this.text, required this.icon, required this.containerColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 35,
        width: 200,
        decoration: BoxDecoration(
          color: containerColor,
            borderRadius: BorderRadius.circular(4.0),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              width: 10,
            ),
            Flexible(
              child: FaIcon(
                icon,
                color: color,
                size: 14,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Flexible(
              child: Center(
                child: Text(text, style: GoogleFonts.nunito(
                  color: color,
                  fontSize: 12
                ),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
