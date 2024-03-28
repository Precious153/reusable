import 'package:flutter/material.dart';
import 'package:reusable/texting/app_reusable.dart';
import 'package:reusable/texting/size_config.dart';


class Texting extends StatefulWidget {
  const Texting({super.key});

  @override
  State<Texting> createState() => _TextingState();
}

class _TextingState extends State<Texting> {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AppText(
                inputText: 'success',
                weight:FontWeight.w400,
                color: Colors.black,
                size: 20,),
              SizedBox(height: getProportionateScreenHeight(20),),
              const AppText(
                inputText: 'failed',
                weight:FontWeight.w600,
                color: Colors.red,
                size: 14,),
            ],
          )),
    );

  }
}
