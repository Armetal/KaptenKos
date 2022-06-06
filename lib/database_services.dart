import 'package:cloud_firestore/cloud_firestore.dart';
import 'edit_profile.dart';

class DatabaseServices {
  static CollectionReference productCollection =
      FirebaseFirestore.instance.collection('products');

  static Future<DocumentSnapshot> getProduct(String id) async {
    return await productCollection.doc(id).get();
  }
}
