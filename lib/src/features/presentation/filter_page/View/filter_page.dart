import 'package:deliveryfood/src/colors/colors.dart';
import 'package:deliveryfood/src/features/presentation/commons_widgets/headers_text.dart';
import 'package:deliveryfood/src/features/presentation/filter_page/View/customsWidgets/list_tile_checked.dart';

import 'package:flutter/material.dart';

// custon
import 'package:deliveryfood/src/features/presentation/filter_page/View/customsWidgets/cuisines_filters.dart';

class FilterPage extends StatefulWidget {
  @override
  _FilterPageState createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  //esto se va a llenar automaticamente SORT BY
  bool topRated = false;
  bool nearMe = false;
  bool costHightoLow = false;
  bool costLowtoHight = false;
  bool mostPopular = false;

//Filter
  bool openNow = false;
  bool creditCards = false;
  bool alcoholServed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(
                    top: 15.0,
                    bottom: 15.0,
                    left: 15.0,
                  ),
                  child: headerText(
                      texto: 'CUISINES',
                      color: gris,
                      fontWeight: FontWeight.w500,
                      fontSize: 17.0),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 15.0,
                  ),
                  child: CuisinesFilter(),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(
                    top: 15.0,
                    bottom: 5.0,
                    left: 15.0,
                  ),
                  child: headerText(
                      texto: 'SORT BY',
                      color: gris,
                      fontWeight: FontWeight.w500,
                      fontSize: 17.0),
                ),
                _sortByContainer(),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(
                    top: 15.0,
                    bottom: 5.0,
                    left: 15.0,
                  ),
                  child: headerText(
                      texto: 'FILTER',
                      color: gris,
                      fontWeight: FontWeight.w500,
                      fontSize: 17.0),
                ),
                _filterContaier(),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(
                    top: 15.0,
                    bottom: 5.0,
                    left: 15.0,
                  ),
                  child: headerText(
                      texto: 'PRICE',
                      color: gris,
                      fontWeight: FontWeight.w500,
                      fontSize: 17.0),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _sortByContainer() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.0,
      ),
      child: Column(
        children: [
          ListTileChecked(
            texto: 'Top Rated',
            isActive: topRated,
            func: () {
              setState(() => topRated = !topRated);
            },
          ),
          ListTileChecked(
            texto: 'Nearest Me',
            isActive: nearMe,
            func: () {
              setState(() => nearMe = !nearMe);
            },
          ),
          ListTileChecked(
            texto: 'Cost High to Low',
            isActive: costHightoLow,
            func: () {
              setState(() => costHightoLow = !costHightoLow);
            },
          ),
          ListTileChecked(
            texto: 'Cost Low to Hight',
            isActive: costLowtoHight,
            func: () {
              setState(() => costLowtoHight = !costLowtoHight);
            },
          ),
          ListTileChecked(
            texto: 'Most Popular',
            isActive: mostPopular,
            func: () {
              setState(() => mostPopular = !mostPopular);
            },
          ),
        ],
      ),
    );
  }

  Widget _filterContaier() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.0,
      ),
      child: Column(
        children: [
          ListTileChecked(
            texto: 'Open Now',
            isActive: openNow,
            func: () {
              setState(() => openNow = !openNow);
            },
          ),
          ListTileChecked(
            texto: 'Credit Cards',
            isActive: creditCards,
            func: () {
              setState(() => creditCards = !creditCards);
            },
          ),
          ListTileChecked(
            texto: 'Alcohol Served',
            isActive: alcoholServed,
            func: () {
              setState(() => alcoholServed = !alcoholServed);
            },
          ),
        ],
      ),
    );
  }
}

Widget _appBar(BuildContext context) {
  return AppBar(
    elevation: 0.5,
    backgroundColor: Colors.white,
    title: Center(
      child: headerText(
        texto: 'Filters',
        fontWeight: FontWeight.w600,
      ),
    ),
    leading: Container(
      padding: EdgeInsets.only(top: 20.0, left: 7.0),
      child: headerText(
        texto: 'Reset',
        fontWeight: FontWeight.w500,
        fontSize: 17.0,
      ),
    ),
    actions: [
      GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          padding: EdgeInsets.only(top: 20.0, right: 10.0),
          child: headerText(
            texto: 'Done',
            color: orange,
            fontWeight: FontWeight.w500,
            fontSize: 17.0,
          ),
        ),
      ),
    ],
  );
}
