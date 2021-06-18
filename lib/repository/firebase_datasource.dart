import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flowltter/models/article.dart';
import 'package:flowltter/models/contacts.dart';

abstract class FirebaseDatasource {
  Future<List<Article>> getArtices();
  Future<List<Contact>> getContacts();
}

class FirebaseDatasourceImpl extends FirebaseDatasource {

  @override
  Future<List<Article>> getArtices() async {
    var query = FirebaseFirestore.instance.collection('articles');

    var docs = await query.get().catchError((error) {
      print("FirebaseDatasourceImpl error getArtices $error");
    });
    var articles = ArticleFactory.fromDocuments(docs.docs);
    return articles;
  }

  @override
  Future<List<Contact>> getContacts() async {
    var query = FirebaseFirestore.instance.collection('contacts');

    var docs = await query.get().catchError((error) {
      print("FirebaseDatasourceImpl error getArtices $error");
    });
    var contacts = ContactFactory.fromDocuments(docs.docs);
    return contacts;
  }

}
