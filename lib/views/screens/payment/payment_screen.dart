import 'package:flutter/material.dart';
import 'package:grocery_app/views/screens/payment/services.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stripe Payment Gateway'),
      ),
      body: Center(
        child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.white)
          ),
          onPressed: () async{
            await SSLcommerzPaymentService.makePayment(context);
          },
          child: const Text("Pay Now"),
        ),
      ),
    );
  }
}