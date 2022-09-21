import 'package:flutter/material.dart';
import 'package:plantapp/app/core/ui/theme/theme_colors.dart';
import 'package:plantapp/app/core/ui/widgets/button_widget.dart';
import 'package:plantapp/app/core/ui/widgets/textfield_widget.dart';
import 'package:plantapp/app/features/login/widgets/logo_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 24),
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const LogoWidget(),
              const Text(
                'Entrar',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              const TextfieldWidget(hintText: 'E-mail'),
              const SizedBox(
                height: 16,
              ),
              const TextfieldWidget(hintText: 'Senha'),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Esqueceu sua senha?',
                  ),
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              ButtonWidget(
                backgroundColor: ThemeColors.primary,
                title: 'Entrar',
                color: Colors.white,
                radius: 10,
                onPressed: () {},
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Ou',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              ButtonWidget(
                backgroundColor: Colors.grey.shade100,
                title: 'Google',
                color: Colors.redAccent,
                radius: 10,
                onPressed: () {},
              ),
              const SizedBox(
                height: 16,
              ),
              ButtonWidget(
                backgroundColor: Colors.blue.shade800,
                title: 'Facebook',
                color: Colors.white,
                radius: 10,
                onPressed: () {},
              ),
              const SizedBox(
                height: 32,
              ),
              Row(
                children: [
                  const Text('Não possui uma conta?'),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Criar conta.'),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
