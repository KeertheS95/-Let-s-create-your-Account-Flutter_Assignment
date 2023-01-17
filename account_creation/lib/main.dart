import 'package:flutter/material.dart';
import 'package:account_creation/homepage.dart';

void main() => runApp(AccountCreator());

class AccountCreator extends StatelessWidget {
  const AccountCreator({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}