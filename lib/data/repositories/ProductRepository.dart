import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:pawrentingreborn/features/authentication/model/UserModel.dart';
import 'package:pawrentingreborn/features/home/models/productModel.dart';

class ProductRepo extends GetxController {
  static ProductRepo get instance => Get.find();

  final _db = FirebaseFirestore.instance;

  createProduct(ProductModel product) {
    print('create product');
    _db.collection('Products').add(product.toJson());
  }

  Future<List<ProductModel>> getProducts() async {
    final snapshot = await _db.collection('Products').get();
    // print("Fetched ${snapshot.docs.length} products"); // Debugging
    return snapshot.docs.map((e) {
      // print("Product Data: ${e.data()}"); // Debugging
      return ProductModel.fromSnapshot(e);
    }).toList();
  }

  Future<void> updateProduct(ProductModel product) async {
    try {
      await _db.collection('Products').where('id', isEqualTo: product.id).get().then((snapshot) {
        for (DocumentSnapshot ds in snapshot.docs) {
          ds.reference.update(product.toJson());
        }
      });
      print('Product updated successfully');
    } catch (e) {
      print('Error updating product: $e');
    }
  }
}
