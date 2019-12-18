import 'package:berasku/products.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

final CollectionReference myCollection =
    Firestore.instance.collection('products');

class FireStoreService {
  Future<Products> addProductToDB(String productName, productWeight,
      productQuality, productStock, productPrice, productDescription) async {
    final TransactionHandler createTransaction = (Transaction tx) async {
      final DocumentSnapshot ds = await tx.get(myCollection.document());

      final Products products = new Products(productName, productWeight,
          productQuality, productStock, productPrice, productDescription);
      final Map<String, dynamic> data = products.toMap();
      await tx.set(ds.reference, data);
      return data;
    };

    return Firestore.instance.runTransaction(createTransaction).then((mapData) {
      return Products.fromMap(mapData);
    }).catchError((error) {
      print('error: $error');
      return null;
    });
  }

  Stream<QuerySnapshot> getTaskList({int offset, int limit}) {
    Stream<QuerySnapshot> snapshots = myCollection.snapshots();

    if (offset != null) {
      snapshots = snapshots.skip(offset);
    }
    if (limit != null) {
      snapshots = snapshots.take(limit);
    }
    return snapshots;
  }
}
