import 'package:flutter/material.dart';
import 'utilities.dart';


const String heroAddTodo = 'add-todo-hero';
class AddTodoPopupCard extends StatefulWidget {
  @override
  _AddTodoPopupCardState createState() => _AddTodoPopupCardState();
}

class _AddTodoPopupCardState extends State<AddTodoPopupCard> {
  String? dropdownValue = 'One';
  int slidervalue =0;
  RangeValues currentValues = RangeValues(0, 100);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Hero(
          tag: heroAddTodo,
          child: Material(
            color: mainColor.withOpacity(0.9),
            elevation: 2,
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.filter_list_rounded),
                        SizedBox(width: 10,),
                        Text("Filter Jobs", style: TextStyle(fontSize: 20),),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Job Category", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                        SizedBox(width: 10,),
                        DropdownButton<String>(
                          value: dropdownValue,
                          icon: const Icon(Icons.arrow_downward),
                          iconSize: 14,
                          elevation: 10,
                          style: const TextStyle(color: Colors.black26),
                          underline: Container(
                            height: 2,
                            color: Colors.transparent,
                          ),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownValue = newValue;
                            });
                          },
                          items: <String>['One', 'Two', 'Free', 'Four']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Job Type", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                        SizedBox(width: 10,),
                        DropdownButton<String>(
                          value: dropdownValue,
                          icon: const Icon(Icons.arrow_downward),
                          iconSize: 14,
                          elevation: 10,
                          style: const TextStyle(color: Colors.black26),
                          underline: Container(
                            height: 2,
                            color: Colors.transparent,
                          ),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownValue = newValue;
                            });
                          },
                          items: <String>['One', 'Two', 'Free', 'Four']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Job Location", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                        SizedBox(width: 10,),
                        DropdownButton<String>(
                          value: dropdownValue,
                          icon: const Icon(Icons.arrow_downward),
                          iconSize: 14,
                          elevation: 10,
                          style: const TextStyle(color: Colors.black26),
                          underline: Container(
                            height: 2,
                            color: Colors.transparent,
                          ),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownValue = newValue;
                            });
                          },
                          items: <String>['One', 'Two', 'Free', 'Four']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Experience", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                        SizedBox(width: 10,),
                        DropdownButton<String>(
                          value: dropdownValue,
                          icon: const Icon(Icons.arrow_downward),
                          iconSize: 14,
                          elevation: 10,
                          style: const TextStyle(color: Colors.black26),
                          underline: Container(
                            height: 2,
                            color: Colors.transparent,
                          ),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownValue = newValue;
                            });
                          },
                          items: <String>['One', 'Two', 'Free', 'Four']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Posted Within", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                        SizedBox(width: 10,),
                        DropdownButton<String>(
                          value: dropdownValue,
                          icon: const Icon(Icons.arrow_downward),
                          iconSize: 14,
                          elevation: 10,
                          style: const TextStyle(color: Colors.black26),
                          underline: Container(
                            height: 2,
                            color: Colors.transparent,
                          ),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownValue = newValue;
                            });
                          },
                          items: <String>['One', 'Two', 'Free', 'Four']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                    Text("Price Range ${currentValues.start.toInt()} to ${currentValues.end.toInt()}", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,),),
                    SizedBox(height: 10,),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        thumbColor: Color(0xFFFF0067),
                        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
                        activeTrackColor: Colors.white,
                        overlayShape: RoundSliderOverlayShape(overlayRadius: 24),
                        overlayColor: Color(0x29FF0067),
                        inactiveTrackColor: Color(0xFF8D8E98),
                      ),
                      child: RangeSlider(
                        values: currentValues,
                        labels: RangeLabels(
                          currentValues.start.round().toString(),
                          currentValues.end.round().toString(),
                        ),
                        onChanged: (RangeValues values){
                          setState(() {
                            currentValues = values;
                          });
                        },
                        min: 0,
                        max: 250,
                      ),
                    ),
                    FlatButton(
                      onPressed: () {Navigator.pop(context);},
                      child: const Text('Filter'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}