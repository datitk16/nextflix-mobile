import 'package:flutter/material.dart';

import '../../../constants.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Column(
            children: [
              Text('Hi, Tustoz', style: kHeaderTitle),
              const SizedBox(height: 7),
              Text("See What's Next", style: kHeaderSubtitle),
            ],
          ),
          Image.asset('assets/images/avatar.png', scale: 4),
        ],
      ),
    );
  }
}
