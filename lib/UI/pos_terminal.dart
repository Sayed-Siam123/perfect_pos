import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:perfect_pos/Controllers/PosTerminalController.dart';

class PosTerminal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<PosTerminalController>(
      init: PosTerminalController(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: Colors.blueGrey,
          body: LayoutBuilder(
            builder: (context, constraints) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 100, 0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 0, 50),
                          width: constraints.maxWidth*0.3,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          height: 55,
                          child: TextField(
                            autofocus: false,
                            decoration: InputDecoration(
                              hintText: "Search for product",
                              hintStyle: TextStyle(
                                color: Colors.grey.withOpacity(0.5),
                              ),
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              contentPadding: EdgeInsets.only(
                                  left: 15,
                                  bottom: 0,
                                  top: 15,
                                  right: 15),
                            ),
                            textAlign: TextAlign.start,
                            cursorColor: Colors.black,
                          ),
                        ),
                        Container(
                          width: constraints.maxWidth*0.7,
                          child: Table(
                            border: TableBorder.all(color: Colors.black26, width: 1, style: BorderStyle.solid),
                            children: [
                              TableRow(children: [
                                TableCell(child: Center(child: Text('ID'))),
                                TableCell(child: Center(child: Text('Product Name'))),
                                TableCell(child: Center(child: Text('Value'))),
                                TableCell(child: Center(child: Text('Quantity'))),
                                TableCell(child: Center(child: Text('Total Value'))),
                              ]),
                            ],
                          ),
                        ),

                        Container(
                          width: constraints.maxWidth*0.7,
                          child: Table(
                            border: TableBorder.all(color: Colors.black26, width: 1, style: BorderStyle.none),
                            children: [
                              TableRow(children: [
                                TableCell(child: Center(child: Text('1'))),
                                TableCell(child: Center(child: Text('Prod 1'))),
                                TableCell(child: Center(child: Text('100'))),
                                TableCell(child: Center(child: Text('1'))),
                                TableCell(child: Center(child: Text('100'))),
                              ]),

                              TableRow(children: [
                                TableCell(child: Center(child: Text('2'))),
                                TableCell(child: Center(child: Text('Prod 2'))),
                                TableCell(child: Center(child: Text('100'))),
                                TableCell(child: Center(child: Text('1'))),
                                TableCell(child: Center(child: Text('100'))),
                              ]),

                              TableRow(children: [
                                TableCell(child: Center(child: Text('3'))),
                                TableCell(child: Center(child: Text('Prod 3'))),
                                TableCell(child: Center(child: Text('100'))),
                                TableCell(child: Center(child: Text('1'))),
                                TableCell(child: Center(child: Text('100'))),
                              ]),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: constraints.maxHeight*0.5,
                    height: constraints.maxHeight,
                    color: Colors.amberAccent,
                  ),
                ],
              );
            },
          ),
        );
      },
    );
  }
}
