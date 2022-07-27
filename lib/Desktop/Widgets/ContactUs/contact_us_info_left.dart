import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/Desktop/Widgets/contact_me_textfield.dart';
import 'package:my_portfolio/Utils/url_launcher.dart';

import '../../../../Utils/dialogs.dart';
import '../../../../Utils/send_email.dart';

class ContactUsInfoLeft extends StatefulWidget {
  const ContactUsInfoLeft({
    Key? key,
    required this.size,
    // required this.scale,
  }) : super(key: key);

  final Size size;
  // final double scale;

  @override
  State<ContactUsInfoLeft> createState() => _ContactUsInfoLeftState();
}

class _ContactUsInfoLeftState extends State<ContactUsInfoLeft> {
  final Emails emails = Emails();
final UrlLauncher urlLauncher = UrlLauncher();
  final Dialogs dialogs = Dialogs();

  bool loading = false;
  static final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 6,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius:  BorderRadius.all(Radius.circular(10)),
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 30,
            ),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFieldOptions(
                    title: 'Your Full Name ',
                    textEditingController: emails.nameController,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: TextFieldOptions(
                          title: 'Your Email  ',
                          textEditingController: emails.emailController,
                        ),
                      ),
                      SizedBox(
                        width: widget.size.width * 0.2,
                        child: TextFieldOptions(
                          title: 'Title of Message',
                          textEditingController: emails.titleController,
                        ),
                      ),
                    ],
                  ),
                  TextFieldOptions(
                    title: 'Your Message',
                    textEditingController: emails.messageController,
                    maxlines: 3,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        loading = true;
                      });
                      final form = _formKey.currentState;

                      //! TRY ANOTHER WAY TO VALIDATE(try$catch method)
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
                        setState(() {
                          loading = false;
                        });
                       
                      }

                      // urlLauncher.launchSocialMediaUrls(
                      //   context,
                      //   url: Uri.parse(
                      //     'mailto:knkpozi@gmail.com?subject=${emails.titleController.text}&body=${emails.messageController.text}%20plugin',
                      //   ),
                      // );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        // height: size.height * 0.05,
                        alignment: Alignment.center,
                        // width: size.width * 0.12,
                        margin:
                            EdgeInsets.only(right: widget.size.width * 0.25),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.orange[400],
                        ),
                        child: !loading
                            ? const AutoSizeText(
                                'SEND MESSAGE',
                                textAlign: TextAlign.center,
                                style:  TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                ),
                                maxLines: 1,
                              )
                            : const CircularProgressIndicator(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
