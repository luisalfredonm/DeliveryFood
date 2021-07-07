import 'package:deliveryfood/src/colors/colors.dart';
import 'package:deliveryfood/src/features/presentation/commons_widgets/headers_text.dart';
import 'package:flutter/material.dart';

Widget popularesCard(
    {BuildContext context,
    double margintop = 0.0,
    double marginRight = 0.0,
    double marginBottom = 0.0,
    double marginLeft = 5.0,
    ImageProvider<Object> image,
    String title,
    String subtitle,
    String review,
    String ratings,
    String buttonText = '',
    bool hasActionButton}) {
  return Column(
    children: [
      GestureDetector(
        onTap: () {},
        child: Container(
          margin: EdgeInsets.only(
            top: margintop,
            right: marginRight,
            bottom: marginBottom,
            left: marginLeft,
          ),
          padding: EdgeInsets.symmetric(vertical: 10.0),
          child: Container(
            margin: EdgeInsets.only(left: 10.0),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image(
                    width: 80.0,
                    height: 80.0,
                    fit: BoxFit.cover,
                    image: image,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 7.0),
                        child: headerText(texto: title, fontSize: 17.0),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(bottom: 5.0),
                        child: Text(
                          subtitle,
                          style: TextStyle(
                              color: gris,
                              fontWeight: FontWeight.w500,
                              fontSize: 13.0),
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: amarillo,
                            size: 16.0,
                          ),
                          Text(
                            review,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 13.0),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5.0),
                            child: Text(
                              ratings,
                              style: TextStyle(
                                  color: gris,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13.0),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 35.0),
                            width: 110.0,
                            height: 18.0,
                            child: hasActionButton
                                ? RaisedButton(
                                    elevation: 0.5,
                                    shape: StadiumBorder(),
                                    color: orange,
                                    onPressed: () {},
                                    child: Text(
                                      buttonText,
                                      style: TextStyle(
                                        fontSize: 11.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                  )
                                : Text(''),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      )
    ],
  );
}
