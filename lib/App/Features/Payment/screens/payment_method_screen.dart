import 'package:flutter/material.dart';
import 'package:health_tracker/App/Common/back_button.dart';
import 'package:health_tracker/App/Common/my_elevated_button.dart';
import 'package:health_tracker/App/Common/show_snackbar.dart';
import 'package:health_tracker/App/Features/Payment/screens/add_new_card_screen.dart';
import 'package:health_tracker/App/Features/Payment/screens/payment_screen.dart';
import 'package:health_tracker/App/Features/Payment/widgets/payment_option_tile.dart';
import 'package:health_tracker/App/Utils/Constants/MyColors.dart';
import 'package:health_tracker/App/Utils/Constants/MySizes.dart';
import 'package:health_tracker/App/Utils/Helpers/Helpers.dart';

class PaymentMethodScreen extends StatefulWidget {
  const PaymentMethodScreen({super.key});

  @override
  State<PaymentMethodScreen> createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen> {
  PaymentOptions? selected_option = null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.primary,
        elevation: 0,
        title: Text(
          'Payment Method',
          style: Theme.of(context)
              .textTheme
              .headlineMedium!
              .copyWith(color: MyColors.white),
        ),
        centerTitle: true,
        leading: backButton(context),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Credit & Debit Card',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          SizedBox(height: 8),
          PaymentOptionTile(
            fun: () {
              setState(() {
                selected_option = PaymentOptions.NewCard;
              });
            },
            icon: Icons.credit_card,
            title: 'Add New Card',
            isSelected: selected_option == PaymentOptions.NewCard,
          ),
          SizedBox(height: 8),
          PaymentOptionTile(
            fun: () {
              setState(() {
                selected_option = PaymentOptions.Hemant;
              });
            },
            icon: Icons.credit_card_rounded,
            title: 'Hemant sahu',
            isSelected: selected_option == PaymentOptions.Hemant,
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'More Payment Option',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          SizedBox(height: 8),
          PaymentOptionTile(
            fun: () {
              setState(() {
                selected_option = PaymentOptions.Appple_Pay;
              });
            },
            icon: Icons.apple,
            title: 'Apple Play',
            isSelected: selected_option == PaymentOptions.Appple_Pay,
          ),
          PaymentOptionTile(
            fun: () {
              setState(() {
                selected_option = PaymentOptions.Paypal;
              });
            },
            icon: Icons.paypal,
            title: 'Paypal',
            isSelected: selected_option == PaymentOptions.Paypal,
          ),
          PaymentOptionTile(
            fun: () {
              setState(() {
                selected_option = PaymentOptions.Google_Pay;
              });
            },
            icon: Icons.g_mobiledata_rounded,
            title: 'Google Pay',
            isSelected: selected_option == PaymentOptions.Google_Pay,
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(MySizes.md),
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: MyElevatedButton(
                  fun: () {
                    switch (selected_option) {
                      case null:
                        CustomSnackBar.showSnackBar(
                            context, 'Please select any Payment option....');
                        break;
                      case PaymentOptions.NewCard:
                        MyHelperFunctions.navigateToScreen(
                            context, const  AddNewCardScreen());
                        break;
                      case PaymentOptions.Hemant:
                        MyHelperFunctions.navigateToScreen(
                            context, const  PaymentScreen());
                        break;
                      case PaymentOptions.Appple_Pay:
                        CustomSnackBar.showSnackBar(
                            context, 'This Option is not available...');
                        break;
                      case PaymentOptions.Paypal:
                        CustomSnackBar.showSnackBar(
                            context, 'This Option is not available....');
                        break;
                      case PaymentOptions.Google_Pay:
                        CustomSnackBar.showSnackBar(
                            context, 'This Option is not available....');
                        break;
                    }
                  },
                  text: 'Next',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

enum PaymentOptions { NewCard, Hemant, Appple_Pay, Paypal, Google_Pay }
