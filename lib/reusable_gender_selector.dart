import 'package:flutter/material.dart';
import 'constants.dart';

class ReusableGenderSelector extends StatelessWidget {
  const ReusableGenderSelector(
      {@required this.iconSelection, @required this.genderText});
  final IconData iconSelection;
  final String genderText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconSelection,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          genderText,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
