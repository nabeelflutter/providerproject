import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/favourit_provider.dart';
class NextFavouritPage extends StatelessWidget {
  const NextFavouritPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Column(
        children: [
          Expanded(child: Consumer<FavouritProvider>(
            builder: (context, value, child) =>
                ListView.builder(
                  itemCount: value.isSelected.length,
                  itemBuilder: (context, index) =>
                    InkWell(
                      onTap: () {
                        if (value.isSelected.contains(index)) {
                          value.removeItemIndex(index);
                        }
                        else {
                          value.addItemIndex(index);
                        }
                      },
                      child: ListTile(
                        title: Text(value.isSelected[index].toString()),
                        trailing: value.isSelected.contains(index) ? Icon(
                            Icons.favorite) : Icon(Icons.favorite_border),
                      ),
                    ),),),),
        ],
      ),
    );
  }
}