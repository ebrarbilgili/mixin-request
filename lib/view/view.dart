import 'package:flutter/material.dart';
import 'package:mixin_service/model/model.dart';
import 'package:mixin_service/service/service.dart';

class View extends StatelessWidget with Service {
  View({Key? key}) : super(key: key);

  List<Model> list = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar'),
      ),
      body: FutureBuilder<List<Model>>(
        future: getModel(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }

          list = snapshot.data;

          return ListView.builder(
            itemCount: list.length,
            itemBuilder: (BuildContext context, int index) {
              final data = list[index];
              return Card(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(data.images!.last.toString()),
                  ),
                  title: Text(data.brand!),
                  subtitle: Text(data.category!),
                  trailing: Text('\$${data.currentPrice}'),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
