import 'package:flutter/material.dart';
import 'utilities.dart';

class ItemPage extends StatefulWidget {
  List<ItemModel>? cat3;
  ItemPage({
    required this.cat3
});

  @override
  _ItemPageState createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 35, left: 10, right: 10),
        child: ListView.builder(
            itemCount: widget.cat3!.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                child: ListTile(
                  trailing: Text('${widget.cat3![index].rate}'),
                  title: Text('${widget.cat3![index].item}'),
                  leading: Container(
                      padding: EdgeInsets.all(10),
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15)
                      ),
                      child: Image(image: NetworkImage('${widget.cat3![index].path}'))),
                ),
              );
            }
        ),
      ),
    );
  }
}
