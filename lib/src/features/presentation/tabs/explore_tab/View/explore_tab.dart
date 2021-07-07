import 'package:deliveryfood/src/colors/colors.dart';
import 'package:deliveryfood/src/features/presentation/commons_widgets/headers_text.dart';
import 'package:deliveryfood/src/features/presentation/commons_widgets/popular_cards.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class ExploreTab extends StatelessWidget {
  const ExploreTab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: CustomScrollView(
      slivers: [
        SliverList(
          delegate: SliverChildListDelegate(
            [
              _topbar(context),
              _discoverNewPlaces(context),
              _sliderCards(context),
              _headers(context, 'Popular this week', "Show all"),
              popularesCard(
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1512621776951-a57141f2eefd?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8Zm9vZHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60'),
                  title: "Andy & Cindy's Diner",
                  subtitle: "87 Botsford Circle Apt",
                  review: "4.8",
                  ratings: "(233 ratings)",
                  buttonText: 'Delivery',
                  hasActionButton: true),
              popularesCard(
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1512621776951-a57141f2eefd?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8Zm9vZHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60'),
                  title: "Andy & Cindy's Diner",
                  subtitle: "87 Botsford Circle Apt",
                  review: "4.8",
                  ratings: "(233 ratings)",
                  buttonText: 'Delivery',
                  hasActionButton: true),
              popularesCard(
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1512621776951-a57141f2eefd?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8Zm9vZHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60'),
                  title: "Andy & Cindy's Diner",
                  subtitle: "87 Botsford Circle Apt",
                  review: "4.8",
                  ratings: "(233 ratings)",
                  buttonText: 'Delivery',
                  hasActionButton: true),
              SizedBox(height: 10.0),
              _headers(context, 'Collections', "Show all"),
              _sliderCollection(),
            ],
          ),
        )
      ],
    ));
  }
}

Widget _topbar(BuildContext context) {
  return Row(
    children: [
      GestureDetector(
        onTap: () => Navigator.pushNamed(context, 'search'),
        child: Container(
          width: 320,
          margin: EdgeInsets.only(left: 16.0),
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
              border: Border.all(
                color: Color.fromRGBO(234, 236, 239, 1.0),
              ),
              borderRadius: BorderRadius.circular(20.0)),
          child: Row(
            children: [
              Icon(
                Icons.search,
                size: 20.0,
                color: gris,
              ),
              Container(
                margin: EdgeInsets.only(left: 5.0),
                child: Text(
                  'Search',
                  style: TextStyle(color: gris, fontSize: 17.0),
                ),
              )
            ],
          ),
        ),
      ),
      Container(
        width: 45.0,
        height: 45.0,
        margin: EdgeInsets.only(left: 10),
        decoration: BoxDecoration(
          color: Color.fromRGBO(209, 209, 214, 1.0),
          borderRadius: BorderRadius.circular(30),
        ),
        child: IconButton(
          icon: Icon(
            Icons.filter_list,
            size: 30,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pushNamed(context, 'filter');
          },
        ),
      ),
    ],
  );
}

Widget _discoverNewPlaces(BuildContext context) {
  return Container(
      padding: EdgeInsets.only(left: 10.0),
      margin: EdgeInsets.symmetric(vertical: 20.0),
      alignment: Alignment.centerLeft,
      child: headerText(
        texto: 'Discover new places',
        color: Colors.black,
        fontSize: 30.0,
      ));
}

Widget _sliderCards(BuildContext context) {
  return Container(
    height: 350.0,
    child: Swiper(
      itemCount: 4,
      layout: SwiperLayout.DEFAULT,
      itemBuilder: (BuildContext context, int index) {
        return ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return _tarjeta(context);
          },
        );
      },
    ),
  );
}

//Discovery new places carrusel
Widget _tarjeta(BuildContext context) {
  return Container(
    margin: EdgeInsets.all(5.0),
    child: Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image(
              width: 210.0,
              height: 250.0,
              fit: BoxFit.cover,
              image: NetworkImage(
                  'https://images.unsplash.com/photo-1482049016688-2d3e1b311543?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vZHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 10.0),
              child: Text(
                "Andy & Cindy's Diner",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 17.0,
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "87 Botsford Circle Apt",
                style: TextStyle(
                  color: gris,
                  fontWeight: FontWeight.w500,
                  fontSize: 13.0,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.star,
                  color: amarillo,
                  size: 16,
                ),
                Text(
                  "4.8",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 13.0),
                ),
                Text(
                  "(233 ratings)",
                  style: TextStyle(
                    color: gris,
                    fontWeight: FontWeight.w500,
                    fontSize: 13.0,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  width: 80.0,
                  height: 18.0,
                  child: RaisedButton(
                    elevation: 0.5,
                    shape: StadiumBorder(),
                    color: orange,
                    textColor: Colors.white,
                    onPressed: () {},
                    child: Text(
                      'Delivery',
                      style: TextStyle(fontSize: 11.0),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ],
    ),
  );
}

Widget _headers(BuildContext context, String textHeader, String textAction) {
  return Row(
    children: [
      Container(
        margin: EdgeInsets.only(left: 5.0),
        alignment: Alignment.centerLeft,
        child: headerText(
          texto: textHeader,
          fontSize: 20.0,
        ),
      ),
      Spacer(),
      GestureDetector(
        child: Row(
          children: [
            Text(
              textAction,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 15.0,
              ),
            ),
            Icon(Icons.play_arrow),
          ],
        ),
      ),
    ],
  );
}

Widget _sliderCollection() {
  return Container(
    height: 180.0,
    child: Swiper(
      itemCount: 4,
      layout: SwiperLayout.DEFAULT,
      itemBuilder: (BuildContext context, int index) {
        return ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return _tarjetaCollections(context);
          },
        );
      },
    ),
  );
}

Widget _tarjetaCollections(BuildContext context) {
  return Container(
    margin: EdgeInsets.all(10.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image(
              width: 300.0,
              height: 150.0,
              fit: BoxFit.cover,
              image: NetworkImage(
                  'https://images.unsplash.com/photo-1484980972926-edee96e0960d?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjR8fGZvb2R8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')),
        ),
      ],
    ),
  );
}
