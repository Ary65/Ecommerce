// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ecommerce/constants/globar_variables.dart';
import 'package:flutter/material.dart';
import 'package:pay/pay.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final void Function(Map<String, dynamic> result)? onPaymentResult;
  final List<PaymentItem>? paymentItems;
  final Color? color;
  const CustomButton({
    Key? key,
    required this.text,
    required this.onTap,
    this.color,
    this.onPaymentResult,
    this.paymentItems,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        primary: color == null ? GlobalVariables.secondaryColor : Colors.amber,
        minimumSize: const Size(double.infinity, 50),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: color == null ? Colors.white : Colors.black,
        ),
      ),
    );
  }
}
