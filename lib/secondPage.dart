import 'package:flutter/material.dart';
import 'itemPage.dart';
import 'utilities.dart';

class SecondPage extends StatefulWidget {
  List<SecondCategoryModel>? cat2;
  SecondPage({required this.cat2});

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 35, left: 10, right: 10),
        child: ListView.builder(
            itemCount: widget.cat2!.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: (){
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => ItemPage(cat3: cat3[widget.cat2![index].category],))
                  );
                },
                child: ListTile(
                  title: Text('${widget.cat2![index].category}'),
                  leading: Container(
                      padding: EdgeInsets.all(10),
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15)
                      ),
                      child: Image(image: NetworkImage('${widget.cat2![index].path}'))),
                ),
              );
            }
        ),
      ),
    );
  }
}
