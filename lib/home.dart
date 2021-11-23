import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx_demo/counter.dart';
import 'package:get/get.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Counter counter = Get.put(Counter());

    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter GetX Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'O botão foi pressionado essa quantidade de vezes:',
            ),
            Obx(() => Text(
                  '${counter.value}',
                  style: Theme.of(context).textTheme.headline4,
                )),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: counter.increment,
        tooltip: 'Incrementar',
        child: Icon(Icons.add),
      ),
    );
  }
}
