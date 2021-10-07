import 'dart:convert';
import 'dart:math';

import 'package:clay/c_globals/utils/utils.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:crypto/crypto.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

class AuthHelper {
  AuthHelper();
  late var _signIn = null;
  late var _auth = null;

  dynamic get auth => _auth;
  set signIn(dynamic singIn) => _signIn = singIn;
  set auth(dynamic auth) => _auth = auth;

  Future<void> signInWithGoogle() async {
    try {
      final googleSignin = await _signIn?.signIn();

      if (googleSignin == null) {
        throw FirebaseAuthException(
            code: 'user-cancelled',
            message: ExceptionMessages.messages('user-cancelled'));
      }
      GoogleSignInAuthentication googleAuth =
          await googleSignin?.authentication;

      final googleAuthCredential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      final tmp = await _auth.signInWithCredential(googleAuthCredential);
      return;
    } catch (e) {
      throw e;
    }
  }

  // Future<UserCredential> signinWithEmail(String email, String pswd) async {
  //   try {
  //     UserCredential userCredential =
  //         await _auth.signInWithEmailAndPassword(email: email, password: pswd);
  //     return userCredential;
  //   } on FirebaseAuthException catch (e) {
  //     // if (e.code == 'user-not-found') {
  //     //   print('No user found for that email.');
  //     // } else if (e.code == 'wrong-password') {
  //     //   print('Wrong password provided for that user.');
  //     // }
  //     throw e;
  //   }
  // }
  //
  // Future<void> sendPasswordResetEmail({
  //   required String email,
  //   ActionCodeSettings? actionCodeSettings,
  // }) async {
  //   try {
  //     await _auth.sendPasswordResetEmail(
  //         email: email, actionCodeSettings: actionCodeSettings);
  //   } on FirebaseAuthException catch (e) {
  //     if (e.code == 'user-not-found') {
  //       print('No user found for that email.');
  //     }
  //     throw e;
  //   } catch (e) {
  //     print('==========' + e.toString());
  //   }
  // }
  //
  // Future<UserCredential> createWithEmail(String email, String pswd) async {
  //   try {
  //     UserCredential userCredential = await FirebaseAuth.instance
  //         .createUserWithEmailAndPassword(email: email, password: pswd);
  //     return userCredential;
  //   } on FirebaseAuthException catch (e) {
  //     if (e.code == 'weak-password') {
  //       print('The password provided is too weak.');
  //     } else if (e.code == 'email-already-in-use') {
  //       print('The account already exists for that email.');
  //     }
  //     throw e;
  //   } catch (e) {
  //     print(e);
  //     throw e;
  //   }
  // }
  //
  // //--------------------------
  // //애플 로그인 부분
  // //--------------------------
  // String generateNonce([int length = 32]) {
  //   final charset =
  //       '0123456789ABCDEFGHIJKLMNOPQRSTUVXYZabcdefghijklmnopqrstuvwxyz-._';
  //   final random = Random.secure();
  //   return List.generate(length, (_) => charset[random.nextInt(charset.length)])
  //       .join();
  // }
  //
  // /// Returns the sha256 hash of [input] in hex notation.
  // String sha256ofString(String input) {
  //   final bytes = utf8.encode(input);
  //   final digest = sha256.convert(bytes);
  //   return digest.toString();
  // }
  //
  // Future<UserCredential> signInWithApple() async {
  //   // To prevent replay attacks with the credential returned from Apple, we
  //   // include a nonce in the credential request. When signing in in with
  //   // Firebase, the nonce in the id token returned by Apple, is expected to
  //   // match the sha256 hash of `rawNonce`.
  //   final rawNonce = generateNonce();
  //   final nonce = sha256ofString(rawNonce);
  //
  //   // Request credential for the currently signed in Apple account.
  //   final appleCredential = await SignInWithApple.getAppleIDCredential(
  //     scopes: [
  //       AppleIDAuthorizationScopes.email,
  //       AppleIDAuthorizationScopes.fullName,
  //     ],
  //     nonce: nonce,
  //   );
  //
  //   // Create an `OAuthCredential` from the credential returned by Apple.
  //   final oauthCredential = OAuthProvider("apple.com").credential(
  //     idToken: appleCredential.identityToken,
  //     rawNonce: rawNonce,
  //   );
  //
  //   // Sign in the user with Firebase. If the nonce we generated earlier does
  //   // not match the nonce in `appleCredential.identityToken`, sign in will fail.
  //   return await FirebaseAuth.instance.signInWithCredential(oauthCredential);
  // }
  //
  // @override
  // void onInit() {
  //   super.onInit();
  // }
  //
  // @override
  // void onClose() {
  //   super.onClose();
  // }
}
