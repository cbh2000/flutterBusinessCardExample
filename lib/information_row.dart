import 'package:flutter/material.dart';

class InformationRowData {
  final IconData icon;
  final String text;
  final Function onTap;
  InformationRowData({this.icon, this.text, this.onTap});
}

class InformationRow extends StatelessWidget {
  final IconData icon;
  final String text;
  final Function onTap;

  const InformationRow({
    @required this.icon,
    @required this.text,
    this.onTap, // OPTIONAL
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.all(8.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Icon(icon),
            Container(width: 8), // Spacing
            Text(text),
          ],
        ),
      ),
    );
  }
}
