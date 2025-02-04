import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:health_tracker/App/Features/Home/screens/home_tab_bar.dart';
import 'package:health_tracker/App/Utils/Constants/ImageStrings.dart';
import 'package:health_tracker/App/Utils/Constants/MyColors.dart';

class OtherLoginOptoins extends StatelessWidget {
  const OtherLoginOptoins({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Facebook Login Icon Button
        IconButton(
          onPressed: () {},
          icon: Image.asset(
            ImageStrings.facebookIcon,
            width: 30,
          ),
        ),
        const SizedBox(width: 12),
        // Google Login Icon Button
        IconButton(
          onPressed: () async {
            try {
              // Check if the user is already signed in
              if (FirebaseAuth.instance.currentUser != null) {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeTabBar()),
                );
                return; // If user is already logged in, navigate to home
              }

              // Show loading dialog while signing in
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
              );

              final GoogleSignInAccount? googleUser =
                  await GoogleSignIn().signIn();
              if (googleUser == null) {
                Navigator.of(context).pop();
                return;
              }

              // Get authentication credentials
              final GoogleSignInAuthentication googleAuth =
                  await googleUser.authentication;
              final credential = GoogleAuthProvider.credential(
                accessToken: googleAuth.accessToken,
                idToken: googleAuth.idToken,
              );

              await FirebaseAuth.instance.signInWithCredential(credential);

              Navigator.of(context).pop();

              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const HomeTabBar()),
                (route) => false, // Remove all previous routes
              );
            } on FirebaseAuthException catch (e) {
              // Show error message with Firebase exception
              Navigator.of(context).pop(); // Close the loading dialog
              Fluttertoast.showToast(
                msg: e.message ?? 'An error occurred during sign-in.',
                toastLength: Toast.LENGTH_LONG,
                gravity: ToastGravity.SNACKBAR,
                backgroundColor: MyColors.primary,
                textColor: Colors.white,
                fontSize: 18,
              );
            } catch (e) {
              // General error handling
              Navigator.of(context).pop(); // Close the loading dialog
              Fluttertoast.showToast(
                msg: 'An unexpected error occurred.',
                toastLength: Toast.LENGTH_LONG,
                gravity: ToastGravity.SNACKBAR,
                backgroundColor: MyColors.primary,
                textColor: Colors.white,
                fontSize: 18,
              );
            }
          },
          icon: Image.asset(
            ImageStrings.googleIcon,
            width: 30,
          ),
        ),
      ],
    );
  }
}
