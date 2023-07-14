import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/sliderprovider.dart';

class SliderExample extends StatelessWidget {
  const SliderExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Consumer<SliderProvider>(
            builder: (context, value, child) => Slider(
                min: 1,
                max: 3,
                value: value.val,
                onChanged: (val) {
                  value.setVal(val);
                }),
          ),
          Consumer<SliderProvider>(
              builder: (context, value, child) => Expanded(
                child: Container(
                  child: GridView.count(crossAxisCount: value.val.toInt(),
                  children: [
                    Text('A'),
                    Text('A'),
                    Text('A'),
                    Text('A'),
                    Text('A'),
                    Text('A'),
                    Text('A'),
                    Text('A'),
                    Text('A'),
                    Text('A'),
                    Text('A'),
                  ],
                  )
                ),
              ))
        ],
      ),
    );
  }
}
