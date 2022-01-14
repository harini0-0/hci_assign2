import 'landingPage.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'hero_dialogue_route.dart';
import 'pop_up_card.dart';
import 'package:flutter/widgets.dart';
import 'secondPage.dart';
import 'utilities.dart';


//-----MAIN METHOD-----
void main() {
  runApp(
      MaterialApp(
          debugShowCheckedModeBanner: false,
          home:  SplashPage()
      )
  );
}

//-----PAGES-----

class DisplayPage extends StatelessWidget {

  MountModel mount;
  DisplayPage(this.mount);


  @override
  Widget build (BuildContext context){
    var selectedItem = mount;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
          children: <Widget>[
            Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                  child:  Stack(
                      children: <Widget>[
                        Container(
                            padding: EdgeInsets.all(30),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(selectedItem.path),
                                    fit: BoxFit.cover
                                )
                            )
                        ),
                        Positioned.fill(
                            child: Container(
                                padding: EdgeInsets.all(30),
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        colors: [
                                          Colors.transparent,
                                          Colors.black.withOpacity(0.7)
                                        ],
                                        begin: Alignment.center, end: Alignment.bottomCenter
                                    )
                                )
                            )
                        ),
                        Positioned(
                            bottom:30, left:30, right:0,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(selectedItem.name,
                                      style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold)
                                  ),
                                  Text(selectedItem.location,
                                      style: TextStyle(color: Colors.white, fontSize: 20)
                                  ),
                                ]
                            )
                        ),
                        AppBar(
                            elevation:0,
                            backgroundColor: Colors.transparent,
                            iconTheme: IconThemeData(color: Colors.white),
                            title: Center(
                                child: Icon(Icons.terrain, color: Colors.white, size: 40)
                            ),
                            actions: [
                              Container(
                                margin: EdgeInsets.only(right: 10),
                                child: Icon(Icons.pending, color: Colors.white, size: 30),
                              ),
                            ]
                        )
                      ]
                  ),
                )
            ),
            Expanded(
              child: Column(
                  children: <Widget>[
                    DetailsRatingBar(),
                    Expanded(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(left:20, right:20, bottom:20),
                              child: Text('Job Description',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold
                                  )
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left:20, right:20, bottom:20),
                              child: Text('About ${selectedItem.description}', style: TextStyle(fontSize: 12)),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left:20, right:20, bottom:20),
                              child: Text('Required Knowledge, skills and Abilities',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold
                                  )
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left:20, right:20, bottom:20),
                              child: Text('System Software Development, Mobile Application in iOS/Android/Tizen or other platform',
                                  style: TextStyle(fontSize: 12)),
                            ),
                          ]
                      ),
                    ),
                    DetailsBottomActions(),
                  ]
              ),
            ),
          ]
      ),
    );
  }
}

class DetailsBottomActions extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left:20, right:20, bottom:20),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Material(
                borderRadius: BorderRadius.circular(15),
                color: mainColor,
                child: InkWell(
                    highlightColor: Colors.white.withOpacity(0.2),
                    splashColor: Colors.white.withOpacity(0.2),
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Padding(
                      padding: EdgeInsets.all(21),
                      child: Text("Apply Now", textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
                    )
                )
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
                border: Border.all(color: mainColor, width: 2)
            ),
            child: Icon(Icons.turned_in_not, color: mainColor, size: 25),
          )
        ],
      ),
    );
  }
}

class DetailsRatingBar extends StatelessWidget {

  var sampleRatingData = {
    'Company': 'Fargo',
    'Salary' : '\$4000',
    'Location' : 'Greece'
  };

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(
          sampleRatingData.entries.length,
              (index) => Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.withOpacity(0.2),
                  width: 2
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Text(sampleRatingData.entries.elementAt(index).key,
                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)
                ),
                Text(sampleRatingData.entries.elementAt(index).value,
                    style: TextStyle(
                        color: mainColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 15
                    )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// splash page
class SplashPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => MountsApp()));
    });

    return Container(
        color: mainColor,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Icon(Icons.terrain, color: Colors.white, size: 90),
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                    margin: EdgeInsets.only(bottom: 80),
                    child: CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.white)
                    )
                )
            )
          ],
        )
    );
  }
}

// landing page

//-----WIDGETS-----

class AppHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 30, top: 30, right: 30),
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            // alignment: Alignment.bottomLeft,
            padding: EdgeInsets.all(40),
            // margin: EdgeInsets.all(10),
            // width: 150,
            decoration: BoxDecoration(
              // backgroundBlendMode: BlendMode.softLight,
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: AssetImage('images/about.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: 80,
            width: 400,
            decoration: BoxDecoration(
              color:mainColor.withOpacity(0.5),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          Text("Get Your Dream Job", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20)),
        ],
      ),
      // child: Row(
      //   children: [
      //     ClipOval(
      //       child: Image.network(
      //           'https://avatars.githubusercontent.com/u/5081804?v=4',
      //           width: 50,
      //           height: 50,
      //           fit: BoxFit.cover
      //       ),
      //     ),
      //     SizedBox(width: 20),
      //     Column(
      //         crossAxisAlignment: CrossAxisAlignment.start,
      //         children: [
      //           Text('Hello, Roman',
      //               style: TextStyle(
      //                   color: Colors.black,
      //                   fontWeight: FontWeight.bold
      //               )
      //           ),
      //           Text('Good Morning',
      //               style: TextStyle(
      //                   color: mainColor,
      //                   fontSize: 12
      //               )
      //           )
      //         ]
      //     )
      //   ],
      // )
    );
  }
}

class AppSearch extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Find the most exciting Jobs',
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 25
                )
            ),
            SizedBox(height: 20),

            // rest of the code omitted for brevity
            Row(
              children: [
                Expanded(
                  child: Container(
                      height: 50,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Row(children: [
                        Icon(Icons.search, color: Colors.grey),
                        SizedBox(width: 10),
                        Text('Job Title or Keyword', style: TextStyle(color: Colors.grey))
                      ]
                      )
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(HeroDialogRoute(builder: (context) {
                      return AddTodoPopupCard();
                    },));
                  },
                  child: Hero(
                    tag: heroAddTodo,
                    child: Container(
                        margin: EdgeInsets.only(left: 10),
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: mainColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(Icons.tune, color: Colors.white)
                    ),
                  ),
                )
              ],
            )
          ],
        )
    );
  }
}

class AppMountListView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 150,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: mountItems.length,
            itemBuilder: (context, index) {
              MountModel currentMount = mountItems[index];

              return GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => SecondPage(cat2: cat2[mountItems[index].name],))
                    );
                  },
                  child: Container(
                      alignment: Alignment.bottomLeft,
                      padding: EdgeInsets.all(20),
                      margin: EdgeInsets.all(10),
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: mainColor.withOpacity(0.5)),
                          image: DecorationImage(
                              image: AssetImage(currentMount.path),
                              fit: BoxFit.fill
                          )
                      ),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(currentMount.name,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold
                                )
                            ),

                          ]
                      )
                  )
              );
            }
        )
    );
  }
}

class AppCategoryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          children: [
            Container(
                padding: EdgeInsets.all(15),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Browse Top Views',
                          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)
                      ),
                      Text('See More',
                          style: TextStyle(color: mainColor,fontSize: 12, fontWeight: FontWeight.bold
                          )
                      ),
                    ]
                )
            ),
            Container(
                height: 100,
                margin: EdgeInsets.only(left: 10),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categories.length,
                    itemBuilder: (context, index) {

                      CategoryModel currentCategory = categories[index];

                      return Container(
                          width: 100,
                          margin: EdgeInsets.only(top: 10, right: 10),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.withOpacity(0.2), width: 2),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(currentCategory.icon,width: 30,height: 30,),
                                Text(currentCategory.category,
                                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold), textAlign: TextAlign.center),
                              ]
                          )
                      );
                    }

                )
            ),
          ],
        )
    );
  }
}

class AppBottomBar extends StatefulWidget {
  @override
  AppBottomBarState createState() => AppBottomBarState();
}

class AppBottomBarState extends State<AppBottomBar> {

  List<AppBottomBarItem> barItems = [
    AppBottomBarItem(icon: Icons.home, label: 'Home', isSelected: true),
    AppBottomBarItem(icon: Icons.explore, label: 'Explore', isSelected: false),
    AppBottomBarItem(icon: Icons.turned_in_not, label: 'Tag', isSelected: false),
    AppBottomBarItem(icon: Icons.person_outline,label: 'Profile', isSelected: false)
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 20),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 10,
                  offset: Offset.zero
              )
            ]
        ),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:
            List.generate(barItems.length, (index) {
              AppBottomBarItem currentBarItem = barItems[index];

              Widget barItemWidget;

              if (currentBarItem.isSelected) {
                barItemWidget = Container(
                    padding: EdgeInsets.only(left: 15, top: 5, bottom: 5, right: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: mainColor
                    ),
                    child: Row(
                        children: [
                          Icon(currentBarItem.icon, color: Colors.white),
                          SizedBox(width: 5),
                          Text(currentBarItem.label, style: TextStyle(color: Colors.white))
                        ]
                    )
                );
              }
              else {
                barItemWidget = IconButton(
                    icon: Icon(currentBarItem.icon, color: Colors.grey),
                    onPressed: () {
                      setState(() {
                        barItems.forEach((AppBottomBarItem item) {
                          item.isSelected = item == currentBarItem;
                        });
                      });
                    }
                );
              }

              return barItemWidget;
            }
            )
        )
    );
  }
}