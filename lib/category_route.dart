import 'package:flutter/material.dart';
import 'package:unit_converter/category.dart';

final _rowHeight = 100.0;
final _borderRadius = BorderRadius.circular(_rowHeight / 2);
const _categoryIcon = Icons.cake;

class CategoryRoute extends StatelessWidget {
  const CategoryRoute();

  static const _categoryNames = <String>[
    'Length',
    'Area',
    'Volume',
    'Mass',
    'Time',
    'Digital Storage',
    'Energy',
    'Currency',
  ];

  static const _baseColors = <Color>[
    Colors.teal,
    Colors.orange,
    Colors.pinkAccent,
    Colors.blueAccent,
    Colors.yellow,
    Colors.greenAccent,
    Colors.purpleAccent,
    Colors.red,
  ];

  @override
  Widget build(BuildContext context) {
    final listView = ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: _categoryNames.length,
      itemBuilder: (BuildContext context, int index) {
        return Material(
          color: Colors.transparent,
          child: Container(
            height: _rowHeight,
            child: InkWell(
              borderRadius: _borderRadius,
              highlightColor: _baseColors[index],
              splashColor: _baseColors[index],
              onTap: () {
                print('I was tapped!');
              },
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Icon(
                        _categoryIcon,
                        size: 60.0,
                      ),
                    ),
                    Center(
                      child: Text(
                        _categoryNames[index],
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );

    final appBar = AppBar(
      title: Text(
        'Unit Converter',
        style: TextStyle(fontSize: 24.0, color: Colors.black),
      ),
      backgroundColor: Colors.green[100],
      centerTitle: true,
    );

    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: appBar,
      body: listView,
    );
  }
}
