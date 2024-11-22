import 'package:flutter/material.dart';
import 'package:keus_automation_task/presentation/utils/constants.dart';

//Usually I use AppMethods to declare custom widgets that needs to be accessed in the entire project like- showLoading,show snackbar etc.
class AppMethods {
  //To show cart snackBar- Customized for this specific content diplay-----
  static void showSnackBar(BuildContext ctx, double amount, bool isFromCart) {
    final scaffoldMessenger = ScaffoldMessenger.of(ctx);

    scaffoldMessenger.showSnackBar(SnackBar(
      margin: const EdgeInsets.fromLTRB(20, 20, 20, 30),
      backgroundColor: AppColors.primaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      behavior: SnackBarBehavior.floating,
      padding: const EdgeInsets.all(15),
      duration: const Duration(seconds: 4),
      content: GestureDetector(
        onTap: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              isFromCart ? 'Cart' : 'Pay',
              style: const TextStyle(fontSize: 18),
            ),
            Row(
              children: [
                const Text(
                  '24 min',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text(' ● '),
                    Text(
                      '\$${amount.toStringAsFixed(2)}',
                      textAlign: TextAlign.center,
                      style: const TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
