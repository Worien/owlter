import 'package:flowltter/models/contacts.dart';
import 'package:flowltter/repository/firebase_datasource.dart';
import 'package:flutter/cupertino.dart';

class ContactModel extends ChangeNotifier {

  FirebaseDatasource _firebaseDatasource;

  ContactModel(){
    _firebaseDatasource = FirebaseDatasourceImpl();
  }

  Contact _contact;

  Contact get contact => _contact;

  set contact(
      Contact val) {
    _contact = val;
    notifyListeners();
  }

  void fetchContactInfo() async {
    var contacts = await _firebaseDatasource.getContacts();
    contact = contacts[0];
  }
  
  
}