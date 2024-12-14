import 'package:flutter/material.dart';
import 'package:health_tracker/App/Common/my_elevated_button.dart';
import 'package:health_tracker/App/Features/Authentication/Screens/logIn_screen.dart';
import 'package:health_tracker/App/Features/Authentication/Widgets/my_text_form_field.dart';
import 'package:health_tracker/App/Features/Authentication/Widgets/authentication_app_bar.dart';
import 'package:health_tracker/App/Features/Authentication/Widgets/other_login_optoins.dart';
import 'package:health_tracker/App/Features/Authentication/Widgets/term_and_condition.dart';
import 'package:health_tracker/App/Features/Home/screens/home_screen.dart';
import 'package:health_tracker/App/Features/Home/screens/home_tab_bar.dart';
import 'package:health_tracker/App/Utils/Constants/MyColors.dart';
import 'package:health_tracker/App/Utils/Constants/MySizes.dart';
import 'package:health_tracker/App/Utils/Constants/TextStrings.dart';
import 'package:health_tracker/App/Utils/Helpers/Helpers.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController nameController = TextEditingController();
    TextEditingController passController = TextEditingController();
    TextEditingController numberController = TextEditingController();
    TextEditingController dobController = TextEditingController();
    return Scaffold(
      appBar: AuthenticationAppBar(context, TextStrings.createAccount),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(MySizes.defaultSpace),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(TextStrings.fullName,
                    style: Theme.of(context).textTheme.titleMedium),
                MyTextFormField(
                  controller: nameController,
                  label: TextStrings.exampleName,
                  icon: const Icon(Icons.mail_outline_rounded),
                  isObscure: false,
                ),
                const SizedBox(height: MySizes.spaceBtwInputFields),
                Text(TextStrings.password,
                    style: Theme.of(context).textTheme.titleMedium),
                MyTextFormField(
                  controller: passController,
                  label: TextStrings.examplePassword,
                  icon: const Icon(Icons.key),
                  isObscure: true,
                ),
                const SizedBox(height: MySizes.spaceBtwInputFields),
                Text(TextStrings.email,
                    style: Theme.of(context).textTheme.titleMedium),
                MyTextFormField(
                  controller: emailController,
                  label: TextStrings.exampleEmail,
                  icon: const Icon(Icons.mail_outline_rounded),
                  isObscure: false,
                ),
                const SizedBox(height: MySizes.spaceBtwInputFields),
                Text(TextStrings.mobileNumber,
                    style: Theme.of(context).textTheme.titleMedium),
                MyTextFormField(
                  controller: numberController,
                  label: TextStrings.exampleNumber,
                  icon: const Icon(Icons.mail_outline_rounded),
                  isObscure: false,
                ),
                const SizedBox(height: MySizes.spaceBtwInputFields),

                term_and_condition(context),
                Container(
                  alignment: Alignment.center,
                  child: MyElevatedButton(
                    fun: () {
                      MyHelperFunctions.navigateToScreenRemoveUntil(context,const HomeTabBar());
                    },
                    text: TextStrings.signUp,
                  ),
                ),
                const SizedBox(height: MySizes.spaceBtwItems),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    TextStrings.orSignUpWith,
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge!,
                  ),
                ),
                const SizedBox(
                  height: MySizes.spaceBtwItems,
                ),
                other_login_options(),
                const SizedBox(
                  height: MySizes.spaceBtwItems,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      TextStrings.alreadyHaveAnAccount,
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!,
                    ),
                    InkWell(
                      onTap: ()=> MyHelperFunctions.navigateToScreen(context,const LogInScreen()),
                      child: Text(
                        TextStrings.login,
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
