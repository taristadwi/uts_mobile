import 'package:flutter/material.dart';
import 'package:uts_mobile/models/item.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
        image: 'assets/gula.jpg',
        name: 'Sugar',
        price: 5000,
        stock: 20,
        rating: 7),
    Item(
        name: 'Salt',
        price: 2000,
        image: 'assets/garam.jpg',
        stock: 10,
        rating: 8),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Belanja App'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ShoppingGrid(items: items),
          ),
          buildFooter(),
        ],
      ),
    );
  }

  Widget buildFooter() {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Nama: Abiyasa Putra Prasetya'),
            Text('NIM: 2141720203'),
          ],
        ),
      ),
    );
  }
}

class ShoppingGrid extends StatelessWidget {
  final List<Item> items;

  ShoppingGrid({required this.items});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Jumlah kolom dalam grid
        childAspectRatio: 0.7, // Perbandingan tinggi lebar setiap item
      ),
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        return InkWell(
          onTap: () {
            // Navigasi ke halaman ItemPage ketika item ditekan
            Navigator.pushNamed(context, '/item', arguments: item);
          },
          child: Card(
            child: Column(
              children: [
                Hero(
                  tag: item.name,
                  child: Image.asset(
                    item.image,
                    height: 100,
                    width: 100,
                  ),
                ),
                Text(item.name),
                Text('Price: ${item.price.toStringAsFixed(2)}'),
              ],
            ),
          ),
        );
      },
    );
  }
}
