import 'package:flutter/material.dart';

class NotifierPage extends StatelessWidget {

  NotifierPage({Key? key}) : super(key: key);
  ValueNotifier<int> count = ValueNotifier<int>(0);
  ValueNotifier<bool> toogle = ValueNotifier<bool>(true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          ValueListenableBuilder(
            valueListenable: toogle, builder: (context, value, child) =>TextFormField(
            obscureText: toogle.value,
            decoration: InputDecoration(suffixIcon: InkWell(
                onTap: (){
                  toogle.value = !toogle.value;
                },
                child:  Icon(toogle.value?Icons.visibility_off_outlined: Icons.visibility))),
          ),),
          Center(child: ValueListenableBuilder(
            valueListenable: count,
            builder: (context, value, child) => Text(count.value.toString()),)),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        count.value++;
      }, child: Text('Add'),),
    );
  }
}
