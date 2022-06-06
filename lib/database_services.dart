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

class DatabaseServices3 {
  static CollectionReference reviewCollection =
      FirebaseFirestore.instance.collection('kosan');

  static Future<void> createOrUpdateReview(String id,
      {required String review}) async {
    await reviewCollection.doc(id).set({
      'review': review,
    });
  }

  static Future<DocumentSnapshot> getReview(String id) async {
    return await reviewCollection.doc(id).get();
  }
}

class DatabaseServices4 {
  static CollectionReference kritikSaranCollection =
      FirebaseFirestore.instance.collection('kritik_saran');

  static Future<void> createOrUpdateKritikSaran(String id,
      {required String kritik_saran}) async {
    await kritikSaranCollection.doc(id).set({
      'kritik_saran': kritik_saran,
    });
  }

  static Future<DocumentSnapshot> getKritikSaran(String id) async {
    return await kritikSaranCollection.doc(id).get();
  }
}
