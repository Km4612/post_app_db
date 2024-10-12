import 'package:flutter/material.dart';
import 'signup_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('สมัครสมาชิกใหม่'),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Text('ข้อมูลสมาชิกใหม่'),
      ),
    );
  }
}
