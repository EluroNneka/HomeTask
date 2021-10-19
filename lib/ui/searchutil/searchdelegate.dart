import 'package:drohometask/models/products.dart';
import 'package:flutter/material.dart';

class StoreSearchDelegate extends SearchDelegate {

  final List<ProductItem> item;

  StoreSearchDelegate(this.item);

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.close),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {
          close(context, null);
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    final list = query.isEmpty
        ? item
        : item
        .where((productItem) =>
        productItem.productName.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (context, index) => ListTile(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                list[index].productName,
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              Divider(),
            ],
          ),
          onTap: () {
            Navigator.of(context).pop();

          }),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {

    final list = query.isEmpty
        ? item
        : item
        .where((productItem) =>
        productItem.productName.toLowerCase().contains(query.toLowerCase()))
        .toList();
    return list == null || list.isEmpty
        ? Text('No result found')
        : ListView.builder(
      itemCount: list.length,
      itemBuilder: (context, index) => ListTile(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              list[index].productName,
              style: TextStyle(
                fontSize: 14,
              ),
            ),
            Divider(),
          ],
        ),
        onTap: () {
          showResults(context);
        },
      ),
    );
  }
}
