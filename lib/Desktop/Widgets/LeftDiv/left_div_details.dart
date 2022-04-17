import 'package:flutter/material.dart';
import 'package:my_portfolio/Desktop/Widgets/LeftDiv/left_details_components.dart';

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
          LeftDivDetailsComponents(
            leading: 'Email: ',
            trailing: 'knkpozi@gmail.com',
          ),
          LeftDivDetailsComponents(
            leading: 'Country: ',
            trailing: 'Enugu, Nigeria',
          ),
          LeftDivDetailsComponents(
            leading: 'Address: ',
            trailing: 'Roar Hub, University of Nigeria, Nsukka',
          ),
          LeftDivDetailsComponents(
            leading: 'FreeLance: ',
            trailing: 'Available',
            textColor: Colors.green,
          ),
        ],
      ),
    );
  }
}