import "package:flutter/material.dart";

enum selectedButton { plus, minus }

class RoundIconButton extends StatelessWidget {
  const RoundIconButton(
      {@required this.icon, @required this.onPressedFunctionality});
  final IconData icon;
  final Function onPressedFunctionality;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressedFunctionality,
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      child: Icon(icon),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
    );
  }
}
