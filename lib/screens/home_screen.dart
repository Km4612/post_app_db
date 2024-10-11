import 'package:flutter/material.dart';
import 'other_widgets.dart'; // นำเข้า other_widgets.dart

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products'),
      ),
      body: ListView(
        children: [
          ProductCard(
            productName: 'Product A',
            productPrice: 100.0,
            onTap: () {
              // จัดการเมื่อผู้ใช้กดที่การ์ด
              print('Product A tapped!');
            },
          ),
          ProductCard(
            productName: 'Product B',
            productPrice: 150.0,
            onTap: () {
              print('Product B tapped!');
            },
          ),
          // สามารถเพิ่มการ์ดสินค้าอื่น ๆ ได้ที่นี่
          LoadingIndicator(), // ใช้ LoadingIndicator
        ],
      ),
    );
  }
}
