import 'package:flutter/material.dart';
import 'utilities.dart';
import 'main.dart';

class MountsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                    Icons.terrain,
                    color: mainColor,
                    size: 40
                ),
                // Text("Get Your Dream Job", style: TextStyle(color: Colors.black45))
              ],
            ),
            actions: [
              SizedBox(width: 40, height: 40)
            ],
            iconTheme: IconThemeData(color: mainColor)
        ),
        drawer: Drawer(
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(30),
                    color: mainColor,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        SizedBox(height: 30,),
                        GestureDetector(
                          child: Text("Home", style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.w600, fontStyle: FontStyle.italic),),
                          onTap: (){},
                        ),
                        Divider(color: Colors.white,height: 12,),
                        SizedBox(height: 30,),
                        GestureDetector(
                          child: Text("Find a Job", style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.w600, fontStyle: FontStyle.italic),),
                          onTap: (){},
                        ),
                        Divider(color: Colors.white,height: 12,),
                        SizedBox(height: 30,),
                        GestureDetector(
                          child: Text("Recruiters", style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.w600, fontStyle: FontStyle.italic),),
                          onTap: (){},
                        ),
                        Divider(color: Colors.white,height: 12,),
                        SizedBox(height: 30,),
                        GestureDetector(
                          child: Text("Blog", style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.w600, fontStyle: FontStyle.italic),),
                          onTap: (){},
                        ),
                        Divider(color: Colors.white,height: 12,),
                        SizedBox(height: 30,),
                        GestureDetector(
                          child: Text("Services", style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.w600, fontStyle: FontStyle.italic),),
                          onTap: (){},
                        ),
                        Divider(color: Colors.white,height: 12,),
                        SizedBox(height: 30,),
                        GestureDetector(
                          child: Text("Languages", style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.w600, fontStyle: FontStyle.italic),),
                          onTap: (){},
                        ),
                        Divider(color: Colors.white,height: 12,),
                      ],
                    ),
                  ),
                ),
                Container(
                    padding: EdgeInsets.all(30),
                    color: mainColor,
                    alignment: Alignment.bottomLeft,
                    child: Icon(Icons.terrain, color: Colors.white, size: 80)
                ),
              ],
            )
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppHeader(),
            AppSearch(),
            AppCategoryList(),
            Container(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              child: Text("Featured Categories", style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            Expanded(
                child: AppMountListView()
            ),
            AppBottomBar()
          ],
        )
    );
  }
}