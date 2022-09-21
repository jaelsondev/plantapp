import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 32, bottom: 32),
        child: Image.asset(
          'assets/images/logo.png',
          height: size.height * .15,
        ),
      ),
    );
  }
}
