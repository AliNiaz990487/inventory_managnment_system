import 'package:flutter/material.dart';
import 'package:inventory_managnment_system/sale_product.dart';

class ProductList extends StatelessWidget {
  const ProductList({super.key});
  final double gape = 8;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sale Product"),
        backgroundColor: const Color.fromARGB(255, 15, 108, 184),
        actions: const [
          IconButton(
              onPressed: null, icon: Icon(Icons.done, color: Colors.white))
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 224, 224, 224),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const ProductTile(product: 'Camera', price: '50\$', quantity: '1', supplier: 'Canon', description: 'DSLR', image: 'assets/Camera.png'),
              SizedBox(height: gape,),
              const ProductTile(product: 'Icon', price: 'null\$', quantity: '5', supplier: 'xy', description: 'abc', image: 'assets/delivery.png'),
            ],
          ),
        )),
    );
  }
}

class ProductTile extends StatelessWidget {
  const ProductTile({super.key, required this.product, required this.price, required this.quantity, required this.supplier, required this.description, required this.image});
  final String product, price, quantity, supplier, description, image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                children: [
                  Row(
                    children: [
                    const Text('Product: ', style: mainTextStyle),
                    Text(product),
                  ],),
                  Row(
                    children: [
                    const Text('Price: ', style: mainTextStyle),
                    Text(price),
                  ],),
                  Row(
                    children: [
                    const Text('Quantity: ', style: mainTextStyle),
                    Text(quantity),
                  ],),
                  Row(
                    children: [
                    const Text('Description: ', style: mainTextStyle),
                    Text(product),
                  ],),
                ],
              ),
            ),
            Expanded(
              child: Image(
                height: 90,
              image: AssetImage(image)) 
            )
          ],
        ),
        Container(
          width: double.infinity,
          height: 3,
          color: const Color.fromARGB(255, 136, 136, 136),
        )
      ],
    );
  }
}
