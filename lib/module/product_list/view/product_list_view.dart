import 'package:flutter/material.dart';
import 'package:demo100/core.dart';
import '../controller/product_list_controller.dart';

class ProductListView extends StatefulWidget {
  const ProductListView({Key? key}) : super(key: key);

  Widget build(context, ProductListController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ProductList"),
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: ListTile(
                      /*
                      item_0
                      item_1
                      item_2
                      item_3
                      */
                      key: ValueKey("item_$index"),
                      title: const Text("Jessica Doe"),
                      subtitle: const Text("Programmer"),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<ProductListView> createState() => ProductListController();
}
