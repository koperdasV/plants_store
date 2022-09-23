import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plants_store/core/blocs/auth_bloc/auth_bloc.dart';
import 'package:plants_store/core/blocs/auth_bloc/auth_event.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          context.read<AuthBloc>().add(SignOutRequested());
        },
        child: const Text('Вихід'),
      ),
    );
  }
}
