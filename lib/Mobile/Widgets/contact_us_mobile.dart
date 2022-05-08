// ignore_for_file: prefer_const_constructors

import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:my_portfolio/Desktop/Widgets/ContactUs/contact_us_info_left.dart';
import 'package:my_portfolio/Desktop/Widgets/ContactUs/contact_us_info_right.dart';
import 'package:my_portfolio/Utils/url_launcher.dart';

import '../../Utils/dialogs.dart';
import '../../Utils/send_email.dart';

class ContactUsInfoFormMobile extends StatefulWidget {
  ContactUsInfoFormMobile({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  State<ContactUsInfoFormMobile> createState() =>
      _ContactUsInfoFormMobileState();
}

class _ContactUsInfoFormMobileState extends State<ContactUsInfoFormMobile> {
  final Emails emails = Emails();

  final Dialogs dialogs = Dialogs();
  bool loading = false;
  static final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      style: NeumorphicStyle(
        shape: NeumorphicShape.concave,
        // boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
        depth: 3,
        intensity: 0.6,
        surfaceIntensity: 0.15,
        lightSource: LightSource.topRight,
        // color: Colors.grey,
      ),
      child: Form(
        key: _formKey,
        child: Container(
          width: widget.size.width,
          color: Colors.white,
          child: Column(children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFieldOptions(
                  title: 'Your Full Name',
                  textEditingController: emails.nameController,
                ),
                TextFieldOptions(
                  title: 'Your Email',
                  textEditingController: emails.emailController,
                ),
                TextFieldOptions(
                  title: 'Title of Message',
                  textEditingController: emails.titleController,
                ),
                TextFieldOptions(
                  title: 'Your Message',
                  maxlines: 3,
                  textEditingController: emails.messageController,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      loading = true;
                    });
                    var form = _formKey.currentState;
                    if (form!.validate()) {
                      emails.sendEmail().whenComplete(() {
                        setState(() {
                          loading = false;
                        });
                        dialogs
                            .successDialog(
                          context: context,
                          titleText: 'SUCCESS',
                          contentText:
                              'You have successfully sent an email to Mr Nkpozi Marcel Kelechi',
                        )
                            .then((value) {
                          emails.nameController.clear();
                          emails.emailController.clear();
                          emails.titleController.clear();
                          emails.messageController.clear();
                        });
                      });
                    } else {
                      // setState(() {
                      //   loading = false;
                      // });
                      // dialogs.successDialog(
                      //     context: context,
                      //     titleText: 'ERROR',
                      //     contentText: 'Please fill up required fields');
                    }
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        alignment: Alignment.center,
                        width: widget.size.width * 0.35,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.orange[400],
                        ),
                        child: !loading
                            ? Text(
                                'SEND',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                ),
                              )
                            : CircularProgressIndicator(),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}

class ContactInfoDetailsMobile extends StatelessWidget {
  const ContactInfoDetailsMobile({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width * 0.9,
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: size.width * 0.046,
                backgroundColor: Colors.orange[500],
                child: Icon(
                  Icons.location_on_sharp,
                  size: size.width * 0.065,
                  color: Colors.black,
                ),
              ),
              SizedBox(width: 15),
              Expanded(
                child: Text(
                  'Roar Hub, University of Nigeria, Nsukka',
                  style: textStyle(context),
                ),
              )
            ],
          ),
          SizedBox(height: 15),
          ContactInfoDetails(
            size: size * 2.3,
            text: 'knkpozi@gmail.com',
            text2: 'kcmarcel96@gmail.com',
            icon: Icons.email_outlined,
          ),
          SizedBox(height: 15),
          ContactInfoDetails(
            size: size * 2.3,
            icon: Icons.phone,
            text2: '+2347051678158',
            text: '+2348052340065',
          )
        ],
      ),
    );
  }
}
