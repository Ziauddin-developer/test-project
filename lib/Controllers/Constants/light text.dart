import 'package:flutter/material.dart';
class Light_text extends StatelessWidget {
  String lighttext;

   Light_text({super.key,required this.lighttext});

  @override
  Widget build(BuildContext context) {
    return Text(lighttext,style: TextStyle(fontSize: 14,color: Color(0xff757A83)),);
  }
}
