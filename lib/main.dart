import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<bool> _selected = List.generate(3, (_) => false);
  String dropDown = 'item1';
  List<String> items = ['item1', 'item2', 'item3'];
  GlobalKey globalKey = GlobalKey();
  bool isSwitched = false;
  double _value = 6;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          child: Visibility(visible: true, child: Icon(Icons.visibility))),

      //USE OF TOGGLE WIDGET
      // ToggleButtons(
      //     onPressed: (index) {
      //       setState(() {
      //         _selected[index] = !_selected[index];
      //       });
      //     },
      //     children: [
      //       Icon(Icons.alarm),
      //       Icon(Icons.alarm),
      //       Icon(Icons.alarm),
      //     ],
      //     isSelected: _selected),

      //USE OF CHIP WIDGET
      // Center(
      //     child: Chip(
      //         elevation: 50,
      //         label: Row(
      //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //           children: [
      //             Text('Abdul'),
      //             Icon(Icons.alarm),
      //           ],
      //         )))

      //USE OF SLIDER WIDGET
      // Slider(
      //   min: 1,
      //   max: 8,
      //   value: _value,
      //   onChanged: (value) {
      //     setState(() {
      //       _value = value;
      //     });
      //   },
      // ),

      //USE OF DROPDOWNBUTTON
      // Center(
      //   child: DropdownButton(
      //     items: items.map((String items) {
      //       return DropdownMenuItem(value: items, child: Text('item'));
      //     }).toList(),
      //     onChanged: (value) {
      //       setState(() {
      //         dropDown = value!;
      //       });
      //     },
      //   ),
      // ),

      // USE OF DATATABLE WIDGET
      // DataTable(columns: [
      //   DataColumn(label: Text('Name')),
      //   DataColumn(label: Text('Age')),
      //   DataColumn(label: Text('Fee')),
      //   DataColumn(label: Text('Id'))
      // ], rows: [
      //   DataRow(cells: [
      //     DataCell(Text('Abdul')),
      //     DataCell(Text('28')),
      //     DataCell(Text('10000')),
      //     DataCell(Text('1'))
      //   ]),
      //   DataRow(cells: [
      //     DataCell(Text('Abdul')),
      //     DataCell(Text('28')),
      //     DataCell(Text('10000')),
      //     DataCell(Text('1'))
      //   ])
      // ]),

      //FIRST ADD THE DEPENDENCY THEN IMPORT THE PACKAGE THEN USE THIS WIDGET
      // Center(
      //   child: Badge(
      //     child: Icon(Icons.alarm),
      //     badgeContent: Text('3'),
      //   ),
      // ),

      //LINEARPROGRESSINDICATOR
      // Center(
      //     child: LinearProgressIndicator(
      //   backgroundColor: Colors.amber,
      //   color: Colors.black,
      // )),

      //USE OF CIRCULARPROGRESSINDICATOR
      // Center(
      //     child: CircularProgressIndicator(
      //   backgroundColor: Colors.amber,
      //   color: Colors.black,
      // )),

      //USE OF SWITCH WIDGET
      // Center(
      //   child: Switch(
      //     value: isSwitched,
      //     onChanged: (value) {
      //       setState(() {
      //         isSwitched = value;
      //       });
      //     },
      //   ),
      // ),

      //USE OF DISMISSIBLE THIS IS DELETE WIDGET LEFT OR RIGHT SLIDE ALSO USE IN LIST
      // Dismissible(
      //     key: globalKey,
      //     child: Container(
      //       width: 300,
      //       height: 100,
      //       color: Colors.blue,
      //       child: Row(
      //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //           children: [Text('Abdul'), Icon(Icons.delete)]),
      //     )),

      //Use of GridTIle
      // GridTile(
      //   child: Center(child: Text('Abdul')),
      //   header: Text('Bahawalpur'),
      //   footer: Text('Pakistan'),
      // ),

      //USE OF DIVIDER WIDGET
      // Divider(
      //   color: Colors.amber,
      //   thickness: 5,
      //   indent: 50,
      //   endIndent: 50,

      // )
    );
  }
}

// USE OF VERTICALdIVIDER AND THIS IS NOT WORK IN COLUMN OUTSIDE THE CLOUMN USE IT
// VerticalDivider(
//               color: Colors.amber,
//               indent: 50,
//               endIndent: 50,
//               thickness: 5,
//             )
