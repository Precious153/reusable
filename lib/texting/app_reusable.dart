import 'package:flutter/material.dart';
import 'package:reusable/texting/size_config.dart';
//
// class AppText extends StatelessWidget {
//   const AppText({super.key, required this.inputText, required this.color, required this.weight, required this.size, required this.align});
//
//   final String inputText;
//   final  Color color;
//   final FontWeight weight;
//   final double size;
//   final TextAlign align;
//   @override
//   Widget build(BuildContext context) {
//     return  Text(
//       inputText,
//       textAlign: align,
//       style: TextStyle(
//         fontWeight: weight,
//         fontSize: size,
//         color: color,
//
//       ),
//     );
//   }
// }
//
//
// class AppTextField extends StatefulWidget {
//   const AppTextField({super.key});
//
//   @override
//   State<AppTextField> createState() => _AppTextFieldState();
// }
//
// class _AppTextFieldState extends State<AppTextField> {
//   @override
//   Widget build(BuildContext context) {
//     return  TextFormField(
//     cursorColor: Colors.black,
//       decoration: InputDecoration(
//
//       ),
//     );
//   }
// }

class AppText extends StatefulWidget {
  const AppText(
      {super.key,
      required this.inputText,
      required this.size,
      required this.weight,
      required this.color,
       this.align});

  final String inputText;
  final double size;
  final FontWeight weight;
  final Color color;
  final TextAlign? align;

  @override
  State<AppText> createState() => _AppTextState();
}

class _AppTextState extends State<AppText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.inputText,
      textAlign: widget.align,
      style: TextStyle(
        fontSize:getProportionateScreenWidth(widget.size),
        fontWeight: widget.weight,
        color: widget.color,
      ),
    );
  }
}
