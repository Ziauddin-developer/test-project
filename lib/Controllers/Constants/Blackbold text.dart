import 'package:flutter/material.dart';
class Black_bold_text extends StatelessWidget {
  String text;
   Black_bold_text({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500),);
  }
}
