import 'package:flutter/material.dart';
import 'package:flutter_app/base/res/styles/app_styles.dart';

class SearchTabs extends StatelessWidget {
  const SearchTabs({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var selectLeft = true;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: AppStyles.tabUnselected),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          AppTabs(
            tabtext: 'All Tickets',
            tabBorder: false,
          ),
          AppTabs(
            tabtext: 'Hotel',
            tabBorder: true,
            tabColor: true,
          )
        ],
      ),
    );
  }
}

class AppTabs extends StatelessWidget {
  const AppTabs(
      {super.key,
      this.tabtext = "",
      this.tabBorder = false,
      this.tabColor = false});

  final String tabtext;
  final bool tabBorder;
  final bool tabColor;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: tabColor== false? Colors.white:Colors.transparent,
            borderRadius: tabBorder == false
                ? const BorderRadius.horizontal(left: Radius.circular(50))
                : const BorderRadius.horizontal(right: Radius.circular(50))),
        child: Text(tabtext),
      ),
    );
  }
}
