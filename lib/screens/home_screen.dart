import 'package:flutter/material.dart';

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
        title: const Text('หน้าแรก'),
        backgroundColor: Colors.amber,
      ),
      body: _body(),
    );
  }

  //เมธอดสำหรับเปิดหน้าล็อกอิน
  void _openLogin() {
    Navigator.of(context).pushNamed('../login'); // นำทางไปยังหน้าล็อกอิน
  }

  // เมธอดสำหรับเปิดหน้าสมัครสมาชิก
  void _openRegister() {
    Navigator.of(context).pushNamed('../registerscreen');
  }

  // เมธอดสำหรับเปิดหน้ารายการ
  void _openProduct() {
    Navigator.of(context).pushNamed('../productScreen');
  }

  void _openAboutus() {
    Navigator.of(context).pushNamed('../aboutusscreen');
  }

  //เมธอดสำหรับแสดงหนาจอเมนู
  Widget _body() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
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
                icon: Icon(Icons.info),
                label: Text('เกี่ยวกับเรา'),
              )),
          // เพิ่มปุ่มสำหรับเปิดหน้าล็อกอิน
          SizedBox(
            width: 250,
            child: ElevatedButton.icon(
              onPressed: _openLogin,
              icon: Icon(Icons.login),
              label: Text('ล็อกอิน'),
            ),
          ),
        ],
      ),
    );
  }
}
