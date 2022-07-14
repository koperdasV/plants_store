import 'package:flutter/material.dart';
import 'package:plants_store/constants.dart';
import 'package:plants_store/screen/main_screen_widget.dart';

import '../../widgets/rounded_btn_widget.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('images/logo.png'),
                Padding(
                  padding: const EdgeInsets.only(left: 4, top: 5),
                  child: Text(
                    'PlantShop',
                    style: TextStyle(
                        color: AppColor.selectedItemColor,
                        fontSize: 48,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
            // Image.asset('images/primary_logo.png'),
            const SizedBox(height: 42),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextField(
                keyboardType: TextInputType.phone,
                style: const TextStyle(fontSize: 16),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromRGBO(33, 129, 0, 0.14),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  hintText: 'Введіть Ваш номер телефону',
                  hintStyle: const TextStyle(
                    color: Color.fromRGBO(33, 129, 0, 0.5),
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextField(
                obscureText: true,
                keyboardType: TextInputType.text,
                style: const TextStyle(fontSize: 16),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromRGBO(33, 129, 0, 0.14),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  hintText: 'Введіть Ваш пароль',
                  hintStyle: const TextStyle(
                    color: Color.fromRGBO(33, 129, 0, 0.5),
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 26),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: SizedBox(
                width: size.width,
                height: 45,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(AppColor.kPrimaryColor),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const MainScreenWidget())));
                  },
                  child: const Text('Увійти'),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Зареєструватись',
                    style: TextStyle(
                      color: AppColor.kPrimaryColor,
                      fontSize: 16,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Забули пароль?',
                    style: TextStyle(
                      color: AppColor.kPrimaryColor,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 59),
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
                const SizedBox(width: 24),
                RoundedButtonWidget(
                  image: 'images/google.png',
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
