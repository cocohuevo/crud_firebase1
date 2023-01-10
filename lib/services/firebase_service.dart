import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore db = FirebaseFirestore.instance;

Future<List> getUsers() async {
  List users = [];
  CollectionReference collectionReferenceUsers = db.collection('usuarios');
  QuerySnapshot queryUsers = await collectionReferenceUsers.get();
  queryUsers.docs.forEach((element) {
    final Map<String, dynamic> data = element.data() as Map<String, dynamic>;
    final user = {
      "name": element['name'],
      "uid": element.id,
    };
    users.add(user);
  });
  return users;
}

Future<void> addUsers(String name) async {
  await db.collection('usuarios').add({"name": name});
}

Future<void> updateUsers(String uid, String newName) async {
  await db.collection('usuarios').doc(uid).set({"name": newName});
}

Future<void> deleteUsers(String uid) async {
  await db.collection('usuarios').doc(uid).delete();
}
