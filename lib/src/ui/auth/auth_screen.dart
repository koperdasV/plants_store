import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plants_store/core/blocs/auth_bloc/auth_bloc.dart';
import 'package:plants_store/core/blocs/auth_bloc/auth_event.dart';
import 'package:plants_store/core/blocs/auth_bloc/auth_state.dart';
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
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is Authenticated) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: ((context) => const MainScreenWidget()),
              ),
            );
            BlocProvider.of<AuthBloc>(context).add(SendUserDataToDB());
          }
          if (state is AuthError) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(state.error)));
          }
        },
        child: BlocBuilder<AuthBloc, AuthState>(
          builder: (context, state) {
            if (state is Loading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            return Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const LogoWidget(),
                    const TextFieldWidget(),
                    const SizedBox(height: 20),
                    ButtonWidget(
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
                    const SizedBox(height: 50),
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
                          onPressed: () {
                            _authenticateWithGoogle(context);
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  void _authenticateWithGoogle(context) {
    BlocProvider.of<AuthBloc>(context).add(GoogleSignInRequested());
  }
}
