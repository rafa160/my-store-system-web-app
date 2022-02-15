import 'package:flutter/material.dart';
import 'package:my_store_system_app/styles/style.dart';

class CustomContainerButton extends StatelessWidget {

  final Widget widget;
  final VoidCallback onPressed;
  final Color color;

  const CustomContainerButton({Key? key, required this.widget, required this.onPressed, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10, left: 20, right: 20),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.07,
        width: MediaQuery.of(context).size.width,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 5,
              primary: color,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(4))),
            ),
            onPressed: onPressed,
            child: widget
        ),
      ),
    );
  }
}
