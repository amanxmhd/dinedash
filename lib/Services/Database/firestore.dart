import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  // Get collection of orders
  final CollectionReference orders = FirebaseFirestore.instance.collection('orders');

  // Save order to db
  Future<void> saveOrderDatabase(String receipt) async {
    try {
      await orders.add({
        'date': DateTime.now(),
        'order': receipt,
        // Add more fields as necessary
      });
      print("Order saved successfully");
    } catch (e) {
      print("Failed to save order: ${e.toString()}");
      throw Exception('Failed to save order: ${e.toString()}');
    }
  }
}
