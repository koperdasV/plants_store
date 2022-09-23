import 'package:flutter/material.dart';
import 'package:plants_store/src/ui/auth/sign_up_screen.dart';
import 'package:plants_store/src/ui/main/main_screen_widget.dart';

import '../../../widgets/rounded_btn_widget.dart';
import 'components/button_widget.dart';
import 'components/logo_widget.dart';
import 'components/text_button_widget.dart';
import 'components/text_field_widget.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const LogoWidget(),
          const TextFieldWidget(
            keyboardType: TextInputType.phone,
            hintText: 'Введіть Ваш номер телефону',
          ),
          const SizedBox(height: 20),
          const TextFieldWidget(
            keyboardType: TextInputType.text,
            hintText: 'Введіть Ваш пароль',
            obscureText: true,
          ),
          const SizedBox(height: 26),
          ButtonWidget(
            size: size,
            child: const Text('Увійти'),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: ((context) => const MainScreenWidget()),
                ),
              );
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButtonWidget(
                text: 'Зареєструватись',
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => const SignUpScreen()),
                    ),
                  );
                },
              ),
              const TextButtonWidget(
                text: 'Забули пароль?',
              ),
            ],
          ),
          const SizedBox(height: 60),
          const Text(
            'Увійти через',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RoundedButtonWidget(
                image: 'images/facebook.png',
                onPressed: () {},
              ),
              RoundedButtonWidget(
                image: 'images/google.png',
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
