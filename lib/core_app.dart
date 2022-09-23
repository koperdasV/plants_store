import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plants_store/core/blocs/auth_bloc/auth_bloc.dart';
import 'package:plants_store/core/repository/auth/auth_repository.dart';
import 'package:plants_store/navigation/main_navigation.dart';
import 'package:plants_store/resources/styles.dart';
import 'package:plants_store/src/ui/auth/auth_screen.dart';
import 'package:plants_store/src/ui/main/main_screen_widget.dart';

class CoreApp extends StatelessWidget {
  static final mainNavigation = MainNavigation();

  const CoreApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => AuthRepository(),
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => AuthBloc(
              authRepository: RepositoryProvider.of<AuthRepository>(context),
            ),
          ),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: buildThemeData(),
          home: StreamBuilder<User?>(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, snapshot) {
              // If the snapshot has user data, then they're already signed in. So Navigating to the MainScreenWidget
              if (snapshot.hasData) {
                return const MainScreenWidget();
              }
              // Otherwise, they're not signed in. Show the sign in page.
              return const AuthScreen();
            },
          ),
          routes: mainNavigation.routes,
          initialRoute: '/',
        ),
      ),
    );
  }
}
