import 'package:flowltter/ui/navigation/navigation_bar_web.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'contact_model.dart';
import 'package:provider/provider.dart';

class ContactPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var model = Provider.of<ContactModel>(context, listen: false);
    model.fetchContactInfo();
    return Column(children: [
      NavigationBarWeb(),
      _buildBody()
    ],);

  }

  Widget _buildBody(){
    return Consumer<ContactModel>(
      builder: (context, contact, child) {
        if (contact.contact == null){
          return CircularProgressIndicator(
              valueColor:
              AlwaysStoppedAnimation<Color>(
                  Colors.white));
        }
        return Text("contacts: ${contact.contact.phone}");
      },
    );
  }

}