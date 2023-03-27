import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreUtils {
  static FirebaseFirestore db = FirebaseFirestore.instance;

//create
  static Future<void> addDataToCollection(
      String collectionName, Map<String, dynamic> data) async {
    await db.collection(collectionName).add(data);
  }


  //  create or update
  static Future<void> setDataToCollection(
      String collectionName, String docId, Map<String, dynamic> data) async {
    await db.collection(collectionName).doc(docId).set(data);
  }


  //read
  static Future<DocumentSnapshot> getDataFromCollection(
      String collectionName, String docId) async {
    return await db.collection(collectionName).doc(docId).get();
  }

//read all
  static Future<QuerySnapshot> getAllDataFromCollection(
      String collectionName) async {
    return await db.collection(collectionName).get();
  }

//update
  static Future<void> updateDataToCollection(
      String collectionName, String docId, Map<String, dynamic> data) async {
    await db.collection(collectionName).doc(docId).update(data);
  }
  //delete
  static Future<void> deleteDataFromCollection(
      String collectionName, String docId) async {
    await db.collection(collectionName).doc(docId).delete();
  }
}
