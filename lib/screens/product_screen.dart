import 'package:flutter/material.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  List images = [
    'https://i.pinimg.com/564x/7c/d4/19/7cd41995a1e74ba89f16c1c2414cdd02.jpg',
    'https://i.pinimg.com/enabled_lo/564x/e8/6f/d7/e86fd7d5c89b72ada65192e3b19b6bae.jpg',
    'https://i.pinimg.com/enabled_lo/564x/f2/e9/0d/f2e90db6ba26ce936421805a00f1b63c.jpg',
  ];
  List products = [
    'หมาๆ',
    'ดึ๋งๆ',
    'ลิป',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('รายการสินค้า'),
        backgroundColor: Colors.amber,
      ),
      body: GridView.builder(
          itemCount: images.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              childAspectRatio: 2 / 4),
          itemBuilder: (context, index) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(images[index]),
                  Text(
                    products[index],
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            );
          }),
    );
  }
}
