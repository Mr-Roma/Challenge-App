import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:green_app/widgets/productpage/appbar.dart';
import 'package:green_app/widgets/productpage/product_card.dart';
import 'package:green_app/models/products_model.dart'; // Import your Product model

class ProductPage extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  void createProduct(String productName, String productDescription) {
    final newProduct = {
      'nameProduct': nameController.text,
      'description': productDescription,
      'status': false,
      'timestamp': DateTime.now().microsecondsSinceEpoch
    };
    FirebaseFirestore.instance.collection('productData').add(newProduct);
  }

  ProductPage({Key? key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey.shade300,
        appBar: AppBarProduct(),
        body: Column(
          children: [
            Expanded(
              child: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
                stream: FirebaseFirestore.instance
                    .collection('productData')
                    .orderBy('timestamp', descending: true)
                    .snapshots(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  }
                  if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
                    return const Center(child: Text('Tidak ada Data'));
                  }

                  return GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 5.0,
                      mainAxisSpacing: 5.0,
                    ),
                    itemCount: snapshot.data!.docs.length,
                    itemBuilder: (context, index) {
                      var document = snapshot.data!.docs[index];
                      return ProductCard(
                        product: Product(
                          productName: document.data()['nameProduct'],
                          photoUrl: 'assets/images/sayur.png',
                          isProcessed: document.data()['status'],
                        ),
                      );
                    },
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: FloatingActionButton(
                backgroundColor: Colors.grey.shade300,
                onPressed: () {
                  createProduct(
                      nameController.text, descriptionController.text);
                },
                child: const Icon(
                  Icons.add,
                  color: Color.fromRGBO(98, 193, 114, 5),
                  size: 50,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
