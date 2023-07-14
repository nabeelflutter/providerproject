import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_toturials/provider/favourit_provider.dart';

import 'nextfavouritpage.dart';
class FavouritPage extends StatelessWidget {
  const FavouritPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => NextFavouritPage(),));
          }, icon: Icon(Icons.favorite))
        ],
      ),
      body: Column(
        children: [
          Expanded(child: Consumer<FavouritProvider>(builder: (context, value, child) =>  ListView.builder(itemBuilder: (context, index) => InkWell(
            onTap: (){
              if(value.isSelected.contains(index)){
                value.removeItemIndex(index);
              }
              else{
                value.addItemIndex(index);

              }
            },
            child: ListTile(
              leading:  value.isSelected.contains(index)?Icon(Icons.favorite): Icon(Icons.favorite_border),
            ),
          ),),),),
        ],
      ),
    );
  }
}
