import 'package:cloud_firestore/cloud_firestore.dart';

class ArticleFiels {
  static final String text = "text";
  static final String title = "title";
  static final String creationDate = "creationDate";
}

class Article {
  String text;
  String title;
  DateTime creationDate;

  Map<String, dynamic> toJson() => {
        ArticleFiels.text: text,
        ArticleFiels.title: title,
        ArticleFiels.creationDate: Timestamp.fromDate(creationDate)
      };

  Article.fromMap(Map<String, dynamic> map, {DocumentReference reference})
      : text = map[ArticleFiels.text],
        title = map[ArticleFiels.title],
        creationDate = map[ArticleFiels.creationDate].toDate();
}

class ArticleFactory {
  static List<Article> fromDocuments(List<DocumentSnapshot> docs) {
    return docs.map((snapshot) {
      return Article.fromMap(snapshot.data(),
          reference: snapshot.reference);
    }).toList();
  }
}