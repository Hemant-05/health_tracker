import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:health_tracker/App/Common/widgets/custom_elevated_button.dart';
import 'package:health_tracker/App/Common/widgets/back_button.dart';
import 'package:health_tracker/App/Features/Authentication/Screens/sign_up_screen.dart';
import 'package:health_tracker/App/Features/Authentication/Widgets/welcome_greet.dart';
import 'package:health_tracker/App/Features/Authentication/Widgets/forget_pass_button.dart';
import 'package:health_tracker/App/Features/Authentication/Widgets/other_login_optoins.dart';
import 'package:health_tracker/App/Features/Home/screens/home_tab_bar.dart';
import 'package:health_tracker/App/Utils/Constants/MyColors.dart';
import 'package:health_tracker/App/Utils/Constants/MySizes.dart';
import 'package:health_tracker/App/Utils/Constants/TextStrings.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  FocusNode emailFocusNode = FocusNode();

  FocusNode passwordFocusNode = FocusNode();
  bool showPass = false;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    emailFocusNode.dispose();
    passwordFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.primary,
        title: Text(
          TextStrings.login,
          style: Theme.of(context)
              .textTheme
              .headlineMedium!
              .copyWith(color: MyColors.white),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: MyColors.white),
        leading: backButton(context),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(MySizes.defaultSpace),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: MySizes.defaultSpace,
                ),
                const WelcomeGreet(),
                const SizedBox(height: MySizes.spaceBtwSections * 2),
                TextFormField(
                  controller: emailController,
                  obscureText: false,
                  focusNode: emailFocusNode,
                  decoration: const InputDecoration(
                    hintText: "user@gmail.com",
                    suffixIcon: Icon(Icons.mail_outline_rounded),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter your mail";
                    }
                    String emailPattern =
                        r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$";
                    RegExp regex = RegExp(emailPattern);

                    if (!regex.hasMatch(value)) {
                      return 'Please enter a valid email address';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: MySizes.spaceBtwInputFields),
                TextFormField(
                  controller: passwordController,
                  focusNode: passwordFocusNode,
                  obscureText: showPass,
                  decoration: InputDecoration(
                    hintText: "password",
                    suffixIcon: Visibility(
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            showPass = !showPass;
                          });
                        },
                        icon: Icon(
                          showPass
                              ? Icons.remove_red_eye_outlined
                              : Icons.remove_red_eye,
                          size: 24,
                        ),
                      ),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }
                    if (value.length < 6) {
                      return ' Password must be atleast 6 characters long';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 10),
                forget_pass_button(context),
                const SizedBox(height: MySizes.spaceBtwSections),
                Container(
                  alignment: Alignment.center,
                  child: CustomElevatedButton(
                    fun: () async {
                      String message = '';
                      if (_formKey.currentState!.validate()) {
                        try {
                          await FirebaseAuth.instance
                              .signInWithEmailAndPassword(
                            email: emailController.text.trim(),
                            password: passwordController.text.trim(),
                          );
                          passwordController.clear();
                          emailController.clear();
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomeTabBar()),
                            (route) => false, // Remove all previous routes
                          );
                        } on FirebaseAuthException catch (e) {
                          if (e.code == 'INVALID_LOGIN_CREDENTIALS') {
                            message = 'Invalid Login Credentials';
                          } else {
                            message = e.code;
                          }
                          Fluttertoast.showToast(
                            msg: message,
                            toastLength: Toast.LENGTH_LONG,
                            gravity: ToastGravity.SNACKBAR,
                            backgroundColor: Colors.black54,
                            textColor: Colors.white,
                            fontSize: 14.0,
                          );
                        }
                      }
                    },
                    text: TextStrings.login,
                  ),
                ),
                const SizedBox(height: MySizes.spaceBtwSections),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    TextStrings.orSignUpWith,
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge!
                        .copyWith(color: MyColors.black),
                  ),
                ),
                const SizedBox(height: MySizes.spaceBtwItems),
                const OtherLoginOptoins(),
                const SizedBox(height: MySizes.spaceBtwItems),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      TextStrings.doNotHaveAnAccount,
                      style: Theme.of(context).textTheme.labelLarge!,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpScreen()));
                      },
                      child: Text(
                        TextStrings.signUp,
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .copyWith(color: MyColors.primary),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
