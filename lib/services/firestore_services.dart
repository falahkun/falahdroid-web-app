part of 'services.dart';


class FirestoreServices {
  static Firestore _firestore;

  static Future<Map<bool, String>> createPortfolio({List<String> urlImages, String title, String description, List<String> tags}) async {
    try {
      int _rand = Random().nextInt(99999);
      String _id = "falahkun-portfolio-$_rand";
      _firestore.collection("portfolio").document(_id).setData({
        "title":title ?? "No Title",
        "images":urlImages ?? [],
        "description":description ?? "No Description",
        "tags":tags ?? [],
        "created_at":DateTime.now().toString()
      });
      return {true: "Create data successfully"};
    }catch(e) {
      print(e.message);
      return {false: e.message};
    }
  }

  static Future<Map<bool, String>> viewed() async {
    try {
      int _rand = Random().nextInt(99999);
      String _id = "falahkun-views-$_rand";
      _firestore.collection("views").document(_id).setData({
        "time":DateTime.now().toString()
      });
      return {true: "Create data successfully"};
    }catch(e) {
      print(e.message);
      return {false: e.message};
    }
  }

  static Stream<QuerySnapshot> get _portfolio => _firestore.collection("portfolio").snapshots();

//  static Future<Map<bool, String>> contac
}