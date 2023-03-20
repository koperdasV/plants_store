// import 'package:flutter/material.dart';

// import 'components/button_widget.dart';
// import 'components/logo_widget.dart';
// import 'components/text_field_widget.dart';

// class SignUpScreen extends StatelessWidget {
//   const SignUpScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;

//     return Scaffold(
//       body: Column(
//         children: [
//           const SizedBox(height: 70),
//           const LogoWidget(),
//           const TextFieldWidget(
//             hintText: 'Прізвище',
//           ),
//           const TextFieldWidget(
//             hintText: "Ім'я",
//           ),
//           const TextFieldWidget(
//             keyboardType: TextInputType.phone,
//             hintText: 'Введіть Ваш номер телефону',
//           ),
//           const TextFieldWidget(
//             keyboardType: TextInputType.text,
//             hintText: 'Пароль',
//             obscureText: true,
//           ),
//           const TextFieldWidget(
//             keyboardType: TextInputType.text,
//             hintText: 'Повторіть пароль',
//             obscureText: true,
//           ),

//           const SizedBox(height: 26),
//           ButtonWidget(
//             size: size,
//             child: const Text('Зареєструватись'),
//             onPressed: () {},
//           ),
//           // Row(
//           //   mainAxisAlignment: MainAxisAlignment.center,
//           //   children: const [
//           //     TextButtonWidget(
//           //       text: 'Зареєструватись',
//           //     ),
//           //     TextButtonWidget(
//           //       text: 'Забули пароль?',
//           //     ),
//           //   ],
//           // ),
//           // const SizedBox(height: 60),
//           // const Text(
//           //   'Увійти через',
//           //   style: TextStyle(
//           //     fontSize: 16,
//           //     fontWeight: FontWeight.w500,
//           //   ),
//           // ),
//         ],
//       ),
//     );
//   }
// }
