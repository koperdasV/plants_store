import 'package:flutter/material.dart';
import 'package:plants_store/resources/colors.dart';
import 'package:plants_store/screen/main_screen_widget.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    Key? key,
    required this.size,
    this.child,
  }) : super(key: key);
  
  final Widget? child;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: SizedBox(
        width: size.width,
        height: 45,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(AppColor.kPrimaryColor),
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
          child: child,
        ),
      ),
    );
  }
}