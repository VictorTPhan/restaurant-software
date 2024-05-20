import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../loginPage.dart';

class DeleteAccount extends StatefulWidget {
  const DeleteAccount({super.key});

  @override
  State<DeleteAccount> createState() => _DeleteAccountState();
}

class _DeleteAccountState extends State<DeleteAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Delete Account')),
      body: Center(
        child: Column(
          children: <Widget>[
            Text("To delete your account, tap the button below."),
            ElevatedButton(
              onPressed: () {
                FirebaseAuth.instance.currentUser!.delete().then((value) {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()), // Replace with your login screen
                        (route) => false,
                  );
                });
              },
              child: Text("Delete My Account")
            )
          ],
        ),
      ),
    );
  }
}
