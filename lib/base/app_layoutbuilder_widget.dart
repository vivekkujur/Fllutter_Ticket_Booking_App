import 'package:flutter/cupertino.dart';

class AppLayoutbuilderWidget extends StatelessWidget {
  const AppLayoutbuilderWidget({super.key, required this.randomDivider});

  final int randomDivider;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Flex(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        direction: Axis.horizontal,
        children: List.generate(
            (constraints.constrainWidth() / randomDivider).floor(),
            (index) => const SizedBox(
                  width: 3,
                  height: 2,
                  child: DecoratedBox(
                      decoration: BoxDecoration(color: CupertinoColors.white)),
                )),
      );
    });
  }
}
