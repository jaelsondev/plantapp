import 'package:flutter/material.dart';
import 'package:plantapp/app/core/ui/theme/theme_colors.dart';
import 'package:plantapp/app/core/ui/widgets/button_widget.dart';
import 'package:plantapp/app/features/login/login_page.dart';
import 'package:plantapp/app/features/onboarding/widgets/dots_widget.dart';

const content = {
  0: 'The Swiss cheese plant, is a\nspecies of flowering plant native\nto tropical forests of sou.',
  1: 'species of flowering plant native\nto tropical forests of sou.',
  2: 'to tropical forests of sou.',
};
const titles = {
  0: 'Monstera in a pot',
  1: 'Plant',
  2: 'Tropical forests',
};

class OnboardingPage extends StatelessWidget {
  final ValueNotifier<int> _indexActive;

  OnboardingPage({Key? key})
      : _indexActive = ValueNotifier(0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/planta.png',
            ),
            ValueListenableBuilder<int>(
              valueListenable: _indexActive,
              builder: ((context, indexActive, child) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 24),
                  padding: const EdgeInsets.only(top: 18, bottom: 30),
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 10),
                      blurRadius: 30,
                      color: const Color(0xFF00875A).withOpacity(.07),
                    )
                  ]),
                  child: Column(
                    children: [
                      Text(
                        titles[_indexActive.value] ?? '',
                        style: const TextStyle(
                          fontSize: 24,
                          color: ThemeColors.textBlack,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 16,
                          bottom: 24,
                        ),
                        child: Text(
                          content[_indexActive.value] ?? '',
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 16,
                            color: ThemeColors.textBlack,
                            height: 1.3,
                          ),
                        ),
                      ),
                      DotsWidget(
                        dotsLength: 3,
                        indexActive: indexActive,
                        setIndexActive: (int index) =>
                            _indexActive.value = index,
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      ButtonWidget(
                        backgroundColor: ThemeColors.primary,
                        title: 'Próximo',
                        color: Colors.white,
                        radius: 10,
                        onPressed: () {
                          if (indexActive == 2) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const LoginPage(),
                              ),
                            );
                          } else {
                            _indexActive.value += 1;
                          }
                        },
                        width: 250,
                      ),
                    ],
                  ),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
