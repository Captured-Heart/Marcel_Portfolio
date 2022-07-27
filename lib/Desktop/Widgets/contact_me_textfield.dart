
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class TextFieldOptions extends StatelessWidget {
  const TextFieldOptions({
    Key? key,
    required this.title,
    this.maxlines,
    this.textEditingController,
    // this.validator,
  }) : super(key: key);
  final String title;
  final int? maxlines;
  final TextEditingController? textEditingController;
  // String Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AutoSizeText(
            title,
            style: const TextStyle(
              fontSize: 17,
            ),
            maxLines: 1,
          ),
          const SizedBox(height: 5),
          TextFormField(
            maxLines: maxlines,
            validator: (text) {
              return text!.isEmpty ? 'The Field can not be empty' : null;
            },
            // minLines: 1,
            // expands: true,
            controller: textEditingController,
            decoration: const InputDecoration(
              fillColor:  Color(0xffE5E5E5),
              filled: true,
              disabledBorder:  OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
              focusedBorder:  OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
              enabledBorder:  OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
            ),
          )
        ],
      ),
    );
  }
}
