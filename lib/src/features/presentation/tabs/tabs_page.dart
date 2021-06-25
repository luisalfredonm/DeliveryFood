import 'package:deliveryfood/src/colors/colors.dart';
import 'package:deliveryfood/src/features/presentation/commons_widgets/alert_dialog.dart';
import 'package:deliveryfood/src/features/presentation/commons_widgets/rounded_button.dart';
import 'package:deliveryfood/src/features/presentation/tabs/explore_tab/View/explore_tab.dart';
import 'package:deliveryfood/src/features/presentation/tabs/favorite_tab/favorite.dart';
import 'package:deliveryfood/src/features/presentation/tabs/my_order_tab/my_order_tab.dart';
import 'package:deliveryfood/src/features/presentation/tabs/profile_tab/profile_tab.dart';

import 'package:flutter/material.dart';

class TabsPage extends StatefulWidget {
  TabsPage({Key key}) : super(key: key);

  @override
  _TabsPageState createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration.zero,
      () {
        _pedirLocation(context);
      },
    );
  }

  List<Widget> _widgetOptions = [
    ExploreTab(),
    MyOrderTab(),
    FavouriteTab(),
    ProfileTab()
  ];

  int _selectedItemIndex = 0;

  void _cambiarWidget(int index) {
    setState(() {
      _selectedItemIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedItemIndex),
      bottomNavigationBar: _bottomNavigationBar(context),
    );
  }

  Widget _bottomNavigationBar(BuildContext context) {
    return BottomNavigationBar(
        iconSize: 30.0,
        selectedItemColor: orange,
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedItemIndex,
        onTap: _cambiarWidget,
        showUnselectedLabels: true,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            title: Text('Explore'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            title: Text('My Order'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            title: Text('Favorite'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_pin),
            title: Text('Profile'),
          )
        ]);
  }
}

Future _pedirLocation(BuildContext context) async {
  showAlertDialog(
      context,
      AssetImage('assets/location.png'),
      'Enable Your Location',
      'Please allow to use your location to show nearby restaurant on the map',
      roundedButton(
        color: orange,
        labelButton: 'Enable Location',
        func: () {},
      ));
}
