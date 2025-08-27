import 'package:flutter/material.dart';
import 'package:roll_dice_app/styled_text.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colors1, this.colors2,{super.key});

  final Color colors1;
  final Color colors2;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: startAlignment,
          end: endAlignment,
          colors: [colors1,colors2],
        ),
      ),
      child: Center(child: StyledText('Hello Word')),
    );
  }
}

// class GradientContainer extends StatelessWidget {
//   const GradientContainer( {super.key, required this.colors});

//   final List<Color> colors;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
          
//           begin: startAlignment,
//           end: endAlignment, 
//           colors: colors,
//         ),
//       ),
//       child: Center(child: StyledText('Hello Word')),
//     );
//   }
// }
