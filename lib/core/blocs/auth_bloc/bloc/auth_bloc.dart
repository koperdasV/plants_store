import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plants_store/core/blocs/auth_bloc/bloc/auth_event.dart';
import 'package:plants_store/core/blocs/auth_bloc/bloc/auth_state.dart';
import 'package:plants_store/core/blocs/auth_bloc/bloc/repository/auth/auth_repository.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository authRepository;
  final auth = FirebaseAuth.instance;

  AuthBloc({
    required this.authRepository,
  }) : super(UnAuthenticated()) {
    on<GoogleSignInRequested>(_googleSignIn);
    on<SignOutRequested>(_signOut);
  }
  // When User Presses the Google Login Button, we will send the GoogleSignInRequest Event to the AuthBloc to handle it and emit the Authenticated State if the user is authenticated
  Future<void> _googleSignIn(
      GoogleSignInRequested event, Emitter<AuthState> emit) async {
    emit(Loading());
    try {
      await authRepository.googleSignIn();
      emit(Authenticated());
    } catch (e) {
      //emit();
      emit(UnAuthenticated());
    }
  }

  // When User Presses the SignOut Button, we will send the SignOutRequested Event to the AuthBloc to handle it and emit the UnAuthenticated State
  Future<void> _signOut(SignOutRequested event, Emitter<AuthState> emit) async {
    emit(Loading());
    await authRepository.signOut();
    emit(UnAuthenticated());
  }
}
