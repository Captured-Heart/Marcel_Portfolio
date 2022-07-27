import 'package:flutter/material.dart';
import 'package:my_portfolio/Desktop/Screens/LeftDiv/left_details_components.dart';

class LeftDivDetails extends StatelessWidget {
  const LeftDivDetails({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.15,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // ignore: prefer_const_literals_to_create_immutables
        children: const[
          LeftDivDetailsComponents(
            leading: 'Age: ',
            trailing: '24',
          ),
          // LeftDivDetailsComponents(
          //   leading: 'Email: ',
          //   trailing: 'knkpozi@gmail.com',
          // ),
          // LeftDivDetailsComponents(
          //   leading: 'Country: ',
          //   trailing: 'Enugu, Nigeria',
          // ),
          // LeftDivDetailsComponents(
          //   leading: 'Address: ',
          //   trailing: ' University of Nigeria, Nsukka',
          // ),
          // LeftDivDetailsComponents(
          //   leading: 'FreeLance: ',
          //   trailing: 'Available',
          //   textColor: Colors.green,
          // ),
          ListTile(dense: true, leading: Text('About'), trailing: Text('hdshjdshj'),),
          ListTile(leading: Text('About'), trailing: Text(' University of Nigeria, Nsukka'),),

        ],
      ),
    );
  }
}