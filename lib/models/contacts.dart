import 'package:cloud_firestore/cloud_firestore.dart';

class ContactsFields {
  static final String phone = "phone";
  static final String email = "email";
  static final String address = "address";
}

class Contact {
  String phone;
  String email;
  String address;

  Map<String, dynamic> toJson() => {
    ContactsFields.phone: phone,
    ContactsFields.email: email,
    ContactsFields.address: address
  };

  Contact.fromMap(Map<String, dynamic> map, {DocumentReference reference})
      : phone = map[ContactsFields.phone],
        email = map[ContactsFields.email],
        address = map[ContactsFields.address];
}

class ContactFactory {
  static List<Contact> fromDocuments(List<DocumentSnapshot> docs) {
    return docs.map((snapshot) {
      return Contact.fromMap(snapshot.data(),
          reference: snapshot.reference);
    }).toList();
  }

}