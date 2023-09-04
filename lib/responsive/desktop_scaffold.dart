import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_app/responsive/constant.dart';
import 'package:restaurant_app/widgets/current_order.dart';
import 'package:restaurant_app/widgets/welcome_user_search.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({super.key});

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  List catagory = [
    {"Icon": Icons.breakfast_dining, "name": "All Dessert"},
    {"Icon": CupertinoIcons.leaf_arrow_circlepath, "name": "Croissants"},
    {"Icon": Icons.coffee_maker, "name": "Coffee"},
    {"Icon": Icons.icecream_outlined, "name": "Ice Creams"},
    {"Icon": Icons.water, "name": "Signature"},
  ];
  int initialSelectedItem = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const WelcomeUserSearch(),
                  const SizedBox(
                    height: 10,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(
                        catagory.length,
                        (index) {
                          final data = catagory[index];
                          final isSelected = index == initialSelectedItem;
                          return SizedBox(
                            height: MediaQuery.of(context).size.height * 0.07,
                            width: MediaQuery.of(context).size.width * 0.35,
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  initialSelectedItem = index;
                                });
                              },
                              child: Card(
                                color:
                                    isSelected ? Colors.orange : Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(
                                        data["Icon"],
                                        size: 16,
                                      ),
                                      Text(data["name"])
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  if (initialSelectedItem == 0)
                    const Expanded(
                      child: Center(
                        child: Text("All Desserts"),
                      ),
                    ),
                  if (initialSelectedItem == 1)
                    const Expanded(
                      child: Constant(crossAxisCount: 3),
                    ),
                  if (initialSelectedItem == 2)
                    const Expanded(
                        child: Center(
                      child: Text("Coffee"),
                    )),
                  if (initialSelectedItem == 3)
                    const Expanded(
                        child: Center(
                      child: Text("Ice Creams"),
                    )),
                  if (initialSelectedItem == 4)
                    const Expanded(
                        child: Center(
                      child: Text("Signature"),
                    )),
                ],
              ),
            ),
          ),
        const  CurrentOrder()
        ],
      ),
    );
  }
}
