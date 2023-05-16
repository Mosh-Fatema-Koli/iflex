import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/favourite_contact_controller.dart';

class FavouriteContactView extends GetView<FavouriteContactController> {
  const FavouriteContactView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FavouriteContactView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'FavouriteContactView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
