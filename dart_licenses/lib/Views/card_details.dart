import 'package:dart_licenses/Services/pub_dev_packages.dart';
import 'package:flutter/material.dart';

class CardDetailsPage extends StatelessWidget {
  final PubDevPackagesModel pubPackage;

  const CardDetailsPage({super.key, required this.pubPackage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          pubPackage.name.toString().toUpperCase(),
        ),
      ),
    );
  }
}
