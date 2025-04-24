import 'package:flutter/material.dart';

import '../../../../app/app_colors.dart';

class AppBarIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  const AppBarIconButton({
    super.key, required this.icon, required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      style:ButtonStyle(
        backgroundColor:WidgetStatePropertyAll(AppColors.appBarIconColor),
      ) ,
      splashRadius: 20,
      splashColor:Colors.red ,
      onPressed: onPressed, icon:Icon(icon) ,);
  }
}