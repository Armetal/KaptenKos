import 'package:cloud_firestore/cloud_firestore.dart';
import 'edit_profile.dart';

class DatabaseServices {
  static CollectionReference profileCollection =
      FirebaseFirestore.instance.collection('profile');

  static Future<void> createOrUpdateProfile(String id,
      {required String nama, required String nomer_hp}) async {
    await profileCollection.doc(id).set({
      'nama': nama,
      'nomer_hp': nomer_hp,
    });
  }

  static Future<DocumentSnapshot> getProfile(String id) async {
    return await profileCollection.doc(id).get();
  }
}

class DatabaseServices2 {
  static CollectionReference contactCollection =
      FirebaseFirestore.instance.collection('contact');

  static Future<void> createOrUpdateContact(String id,
      {required String nama2, required String nomer_hp2}) async {
    await contactCollection.doc(id).set({
      'nama2': nama2,
      'nomer_hp2': nomer_hp2,
    });
  }

  static Future<DocumentSnapshot> getContact(String id) async {
    return await contactCollection.doc(id).get();
  }
}
