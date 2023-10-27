import 'package:flutter/material.dart';

import 'means_tshirt.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({Key? key}) : super(key: key);

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  List<String> tabItems = [ "Men's T-shirt",'Bags', 'Shoes', 'iPhone', 'Samsung'];
  Map<String, List<String>> tabData = {
    'Bags': ['Bag 1', 'Bag 2', 'Bag 3'],
    'Shoes': ['Shoe 1', 'Shoe 2', 'Shoe 3'],
    "Men's T-shirt": ['T-shirt 1', 'T-shirt 2', 'T-shirt 3'],
    'iPhone': ['iPhone X', 'iPhone 12', 'iPhone 13'],
    'Samsung': ['Samsung Galaxy S10', 'Samsung Galaxy S20', 'Samsung Galaxy S21'],
  };

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabItems.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 600,
      padding: const EdgeInsets.only(left: 19),
      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 9),
                child: Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Container(
                  height: 50,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(),
                  child: TabBar(
                    controller: _tabController,
                    isScrollable: true,
                    tabs: tabItems
                        .map((item) => _buildTabItem(item, Colors.black))
                        .toList(),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: tabItems.map((item) {
                if (item == "Men's T-shirt") {
                  return MensTshirtCards();
                } else {
                  return ListView.builder(
                    itemCount: tabData[item]?.length ?? 0,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(tabData[item]?[index] ?? ""),
                      );
                    },
                  );
                }
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }



  Widget _buildTabItem(String text, Color textColor, {Color? borderColor}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(color: borderColor ?? Colors.transparent),
        ),
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: textColor,
          fontSize: 16,
          fontFamily: 'Lato',
          fontWeight: FontWeight.w500,
          height: 0.09,
        ),
      ),
    );
  }
}

