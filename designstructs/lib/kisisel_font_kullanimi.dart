import 'package:flutter/material.dart';

class KisiselFont extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text("Font Kullanımı",
          style: TextStyle(
            fontFamily: 'Raleway',
          ),
          ),
        ),
        Center(
          child: Text("Font Kullanımı",
            style: TextStyle(
              fontFamily: 'Regular',
            ),
          ),
        ),
      ],
    );
  }
}
