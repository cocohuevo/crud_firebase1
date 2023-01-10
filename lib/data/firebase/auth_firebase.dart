import 'package:firebase_auth/firebase_auth.dart';

import '../../domain/repositories/auth_repository.dart';

class AuthFirebase implements AuthRepository {
  const AuthFirebase();

  @override
  Future<UserCredential> signInWithEmail(String email, String password) {
    return FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password);
  }
}
