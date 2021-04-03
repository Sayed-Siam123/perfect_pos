import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:perfect_pos/Controllers/LicenceKeyController.dart';
import 'package:perfect_pos/UI/pos_terminal.dart';

class LicenceKey extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: Colors.blueGrey,
          body: GetBuilder<LicencekeyController>(
            init: LicencekeyController(),
            builder: (controller) => LayoutBuilder(
              builder: (context, constraints) => Center(
                child: Container(
                  height: constraints.maxHeight*0.5,
                  width: constraints.maxWidth,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Perfect POS",style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600
                      ),),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: const EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(5)),
                            ),
                            height: 55,
                            width: constraints.maxWidth,
                            child: TextField(
                              autofocus: false,
                              decoration: InputDecoration(
                                hintText: "Type your code here",
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

                          // ignore: deprecated_member_use
                          RaisedButton(
                            onPressed: (){
                              print("OK!");
                              Get.to(PosTerminal());
                            },
                            child: Text("Activate"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
    );
  }
}
