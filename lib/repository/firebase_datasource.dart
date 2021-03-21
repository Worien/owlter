import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flowltter/models/article.dart';

abstract class FirebaseDatasource {
  Future<List<Article>> getArtices();
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

}
