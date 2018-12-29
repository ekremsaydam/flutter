import 'package:flutter/material.dart';

class CustomerAdd extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => CustomerAddState();
}

class CustomerAddState extends State {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(25.0),
      child: Form(
        key: formKey,
        child: Column(
          children: <Widget>[
            firstNameField(),
            lastNameField(),
            emailField(),
            passwordField(),
            submitButton(),
          ],
        ),
      ),
    );
  }

  Widget firstNameField() {
    return TextFormField(
      decoration: InputDecoration(labelText: "First Name", hintText: "Zeki"),
      validator: (String value) {
        if (value.length < 2) {
          return "İsim en az 2 karakter olmalıdır.";
        }
      },
    );
  }

  Widget lastNameField() {
    return TextFormField(
      decoration: InputDecoration(labelText: "Last Name", hintText: "KOŞAR"),
    );
  }

  Widget emailField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration:
          InputDecoration(labelText: "Email", hintText: "mail@mail.com"),
    );
  }

  Widget passwordField() {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(labelText: "Password", hintText: "password"),
    );
  }

  Widget submitButton() {
    return RaisedButton(
      child: Text("Kaydet"),
      onPressed: () {
        formKey.currentState.validate();
      },
    );
  }
}
