import 'package:flutter/material.dart';

class MyServicesGrid extends StatelessWidget {
  const MyServicesGrid({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Icon(
          Icons.wifi,
          size: 70,
          color: Colors.orange[300],
        ),
        Text(
          'Web Development',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text('Blog, E-commerce')
      ]),
    );
  }
}
