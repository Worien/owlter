
import 'package:flutter/material.dart';

class HomeHeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: Stack(children: [
        Positioned(child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("FWL Studio", style: Theme.of(context).textTheme.subtitle1,),
            Padding(
              padding:  EdgeInsets.only(top: 30.0),
              child: Text("We are a small team of enthusiasts \nspecialized on design and develop \nFlutter apps for Android, IOS, and Web", style: Theme.of(context).textTheme.subtitle2,),
            ),
            Padding(
              padding:  EdgeInsets.only(top: 30.0),
              child: Container(
                width: 120,
                height: 40,
                child: ElevatedButton( child: Text("Hire", style: Theme.of(context).textTheme.button,),
                  onPressed: (){},
                ),
              ),
            ),
          ],
        ), left: 120, top: 30,),

      ],),
    );
  }

}