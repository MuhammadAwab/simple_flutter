import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:simple_form/termsAndConditions.dart';

import 'home.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.all(10),
                      child: Text("Name")
                  ),
                  Padding(
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        decoration: InputDecoration(
                          // border: InputBorder.none,
                            hintText: 'Enter your name'
                        ),
                      )
                  ),
                  Padding(
                      padding: EdgeInsets.all(10),
                      child: Text("Email")
                  ),
                  Padding(
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        decoration: InputDecoration(
                          // border: InputBorder.none,
                            hintText: 'Enter your email'
                        ),
                      )
                  ),
                ]
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                new RichText(
                text: new TextSpan(
                  text: 'Terms and Conditions',
                  style: new TextStyle(color: Colors.blue),
                  recognizer: new TapGestureRecognizer()
                    ..onTap = () { Navigator.push(
                      context,
                      MaterialPageRoute(builder: (BuildContext context) => TermsAndConditions()),
                    );
                    },
                )
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (BuildContext context) => Home()),
                    );
                  },
                  child: const Text('Sign Up', style: TextStyle(fontSize: 20)),
                ),

              ],
            ),
          ]),
    );
  }
}
