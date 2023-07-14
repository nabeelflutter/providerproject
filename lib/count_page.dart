import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_toturials/provider/count_provider.dart';
class CountPage extends StatefulWidget {
   CountPage({Key? key}) : super(key: key);

  @override
  State<CountPage> createState() => _CountPageState();
}

class _CountPageState extends State<CountPage> {

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    final provider = Provider.of<CountProvider>(context,listen: false);
    Timer.periodic(Duration(seconds: 1), (timer) {
          provider.increment();
          print(provider.count);
    });
  }
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CountProvider>(context,listen: false);
    print('build');
    return Scaffold(
      appBar: AppBar(title: Text('Coutn App'),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(DateTime.now().toString()),
          Center(child: Consumer<CountProvider>(
            builder: (context, value, child) => Text(value.count.toString()),
          ),)
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
         provider.increment();

        },
        child: Icon(Icons.add),
      ),
    );
  }
}
