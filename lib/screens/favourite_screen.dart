import 'package:bhagvat_geeta/controller/favourite_provider.dart';
import 'package:bhagvat_geeta/services/service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavouriteScreen extends StatelessWidget {
  static const routeName = '/favouriteScreen';
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider =
        Provider.of<FavouriteProvider>(context, listen: false).favouriteList;
    return SafeArea(
      child: Column(
        children: [
          AppBar(
            title: const Text('Favourite'),
          ),    
        ],
      ),
    );
  }
}
