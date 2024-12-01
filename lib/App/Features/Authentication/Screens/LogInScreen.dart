import 'package:flutter/material.dart';
import 'package:health_tracker/App/Common/MyElevatedButton.dart';
import 'package:health_tracker/App/Common/back_button.dart';
import 'package:health_tracker/App/Features/Authentication/Screens/SignUpScreen.dart';
import 'package:health_tracker/App/Features/Authentication/Widgets/MyTextFormField.dart';
import 'package:health_tracker/App/Features/Authentication/Widgets/WelcomeGreet.dart';
import 'package:health_tracker/App/Features/Authentication/Widgets/forget_pass_button.dart';
import 'package:health_tracker/App/Features/Authentication/Widgets/other_login_optoins.dart';
import 'package:health_tracker/App/HomeScreen.dart';
import 'package:health_tracker/App/Utils/Constants/MyColors.dart';
import 'package:health_tracker/App/Utils/Constants/MySizes.dart';
import 'package:health_tracker/App/Utils/Constants/TextStrings.dart';
import 'package:health_tracker/App/Utils/Helpers/Helpers.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    TextEditingController emailController = TextEditingController();
    TextEditingController passController = TextEditingController();
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
                const SizedBox(height: MySizes.defaultSpace,),
                const WelcomeGreet(),
                const SizedBox(height: MySizes.spaceBtwSections * 2),
                Text(TextStrings.email,
                    style: Theme.of(context).textTheme.titleMedium),
                MyTextFormField(
                  controller: emailController,
                  label: TextStrings.exampleEmail,
                  icon: const Icon(Icons.mail_outline_rounded),
                  isObscure: false,
                ),
                const SizedBox(height: MySizes.spaceBtwInputFields),
                Text(TextStrings.password,
                    style: Theme.of(context).textTheme.titleMedium),
                MyTextFormField(
                  controller: passController,
                  label: TextStrings.password,
                  icon: const Icon(Icons.key),
                  isObscure: true,
                ),
                forget_pass_button(context),
                const SizedBox(height: MySizes.spaceBtwSections),
                Container(
                  alignment: Alignment.center,
                  child: MyElevatedButton(
                    fun: () {
                      String email = emailController.text.toString();
                      String pass = passController.text.toString();
                      /*if(_formKey.currentState!.validate()){
                        print("log in ");
                      }*/
                      MyHelperFunctions.navigateToScreenRemoveUntil(context, const HomeScreen());
                    },
                    text: TextStrings.login,
                  ),
                ),
                const SizedBox(height: MySizes.spaceBtwSections),
                Container(
                  alignment: Alignment.center,
                  child: Text(TextStrings.orSignUpWith,style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .copyWith(color: MyColors.black),),
                ),
                const SizedBox(height: MySizes.spaceBtwItems),

                other_login_options(),

                const SizedBox(height: MySizes.spaceBtwItems),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      TextStrings.doNotHaveAnAccount,
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!,
                    ),
                    InkWell(
                      onTap: ()=> MyHelperFunctions.navigateToScreen(context, SignUpScreen()),
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
