import 'package:flutter/material.dart';

import 'package:plantapp/app/core/ui/theme/theme_colors.dart';

class DotWidget extends StatelessWidget {
  final bool isActive;
  final VoidCallback? callback;

  const DotWidget({
    Key? key,
    required this.isActive,
    this.callback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callback,
      child: Container(
        width: 10,
        height: 10,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isActive ? ThemeColors.primary : ThemeColors.greyDark,
        ),
      ),
    );
  }
}
