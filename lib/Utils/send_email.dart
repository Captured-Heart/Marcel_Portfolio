import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Emails {
  final TextEditingController nameController = TextEditingController();

  final TextEditingController emailController = TextEditingController();

  final TextEditingController titleController = TextEditingController();

  final TextEditingController messageController = TextEditingController();

  Future sendEmail() async {
    const serviceId = 'service_nszzfut';
    const templateId = 'template_w2qmsov';
    const userId = 'ZTbJWXylETg_rn5Dy';

    final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
    final response = await http.post(url,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(
          {
            'service_id': serviceId,
            'template_id': templateId,
            'user_id': userId,
            'template_params': {
              'from_name': nameController.text,
              'user_email': emailController.text,
              'from_title': titleController.text,
              'message': messageController.text
            }
          },
        ));
    print(response.body);
  }
}
