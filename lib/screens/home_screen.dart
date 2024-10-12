import 'package:flutter/material.dart';
import 'product_screen.dart';
import 'profile_screen.dart';

class HomeScreeen extends StatefulWidget {
  const HomeScreeen({super.key});

  @override
  State<HomeScreeen> createState() => _HomeScreeenState();
}

class _HomeScreeenState extends State<HomeScreeen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('หน้าแรก'),
        backgroundColor: Colors.amber,
      ),
      body: _body(),
    );
  }

  //เมธอดสำหรับเปิดหน้าสมัครสมาชิก
  void _openRegister() {
    Navigator.of(context).pushNamed('/registerscreen');
  }

  //เมธอดสำหรับเปิดหน้ารายการ
  void _openProduct() {
    Navigator.of(context).pushNamed('/productScreen');
  }

  void _openAboutus() {
    Navigator.of(context).pushNamed('/aboutusscreen');
  }

  //เมธอดสำหรับแสดงหนาจอเมนู
  Widget _body() {
    return Center(
      child: Column(
        children: [
          SizedBox(
            width: 250,
            child: ElevatedButton.icon(
              onPressed: _openRegister,
              icon: Icon(Icons.people_outline),
              label: Text('สมัครสมาชิกใหม่'),
            ),
          ),
          SizedBox(
            width: 250,
            child: ElevatedButton.icon(
              onPressed: _openProduct,
              icon: Icon(Icons.list_rounded),
              label: Text('รายการสินค้า'),
            ),
          ),
          SizedBox(
              width: 250,
              child: ElevatedButton.icon(
                onPressed: _openAboutus,
                icon: Icon(Icons.list_rounded),
                label: Text('เกี่ยวกับฉัน'),
              ))
        ],
      ),
    );
  }
}
