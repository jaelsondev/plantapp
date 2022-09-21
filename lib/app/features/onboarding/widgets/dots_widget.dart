import 'package:flutter/material.dart';

import 'package:plantapp/app/features/onboarding/widgets/dot_widget.dart';

class DotsWidget extends StatelessWidget {
  final int indexActive;
  final Function(int) setIndexActive;
  final int dotsLength;
  const DotsWidget({
    Key? key,
    required this.indexActive,
    required this.setIndexActive,
    required this.dotsLength,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      runAlignment: WrapAlignment.center,
      runSpacing: 8,
      spacing: 16,
      children: List.generate(
        dotsLength,
        (index) => DotWidget(
          isActive: indexActive == index,
          callback: () => setIndexActive(index),
        ),
      ),
    );
  }
}
