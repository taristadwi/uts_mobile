import 'package:flutter/material.dart';
import 'package:uts_mobile/models/item.dart';

class ItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(
        title: Text('Item Page'),
      ),
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Hero(
                  tag: itemArgs.name,
                  child: Image.asset(
                    itemArgs.image,
                    height: 200,
                    width: 100,
                  ),
                ),
                Text('Item Name: ${itemArgs.name}'),
                Text('Item Price: ${itemArgs.price.toStringAsFixed(2)}'),
                Text('Stock: ${itemArgs.stock}'),
                Text('Rating: ${itemArgs.rating.toString()}'),
              ],
            ),
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
