// ignore_for_file: prefer_const_constructors

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/Utils/url_launcher.dart';

class ContactUsInfoLeft extends StatelessWidget {
  ContactUsInfoLeft({
    Key? key,
    required this.size,
    required this.scale,
  }) : super(key: key);

  final Size size;
  final double scale;
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController titleController = TextEditingController();
  final TextEditingController messageController = TextEditingController();
 final UrlLauncher urlLauncher = UrlLauncher();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 6,
      child: AnimatedScale(
        duration: Duration(milliseconds: 1200),
        scale: scale,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 30,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFieldOptions(
                    title: 'Your Full Name (Required)',
                    textEditingController: nameController,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: TextFieldOptions(
                          title: 'Your Email  (Required)',
                          textEditingController: emailController,
                        ),
                      ),
                      SizedBox(
                        width: size.width * 0.2,
                        child: TextFieldOptions(
                          title: 'Title of Message',
                          textEditingController: titleController,
                        ),
                      ),
                    ],
                  ),
                  TextFieldOptions(
                    title: 'Your Message',
                    textEditingController: messageController,
                    maxlines: 3,
                  ),
                  InkWell(
                    onTap: () {
                      urlLauncher.launchSocialMediaUrls(
                        context,
                        url: Uri.parse(
                          'mailto:knkpozi@gmail.com?subject=${titleController.text}&body=${messageController.text}%20plugin',
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        // height: size.height * 0.05,
                        alignment: Alignment.center,
                        // width: size.width * 0.12,
                        margin: EdgeInsets.only(right: size.width * 0.25),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.orange[400],
                        ),
                        child: AutoSizeText(
                          'SEND MESSAGE',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                          ),
                          maxLines: 1,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TextFieldOptions extends StatelessWidget {
  const TextFieldOptions({
    Key? key,
    required this.title,
    this.maxlines,
    this.textEditingController,
  }) : super(key: key);
  final String title;
  final int? maxlines;
  final TextEditingController? textEditingController;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AutoSizeText(
            title,
            style: TextStyle(
              fontSize: 17,
            ),
            maxLines: 1,
          ),
          SizedBox(height: 5),
          TextFormField(
            maxLines: maxlines,
            // minLines: 1,
            // expands: true,
            controller: textEditingController,
            decoration: InputDecoration(
              fillColor: Color(0xffE5E5E5),
              filled: true,
              disabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
            ),
          )
        ],
      ),
    );
  }
}
