import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../constants.dart';

class CartProduct extends StatelessWidget {
  final String name;
  final String imagePath;
  final String newPrice;
  final String oldPrice;

  CartProduct({this.name, this.imagePath, this.newPrice, this.oldPrice});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 13),
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
              offset: Offset(0, 0),
              blurRadius: 10,
              color: Colors.grey[600].withAlpha(100),
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 15,horizontal: 15),
          child: Row(
            textDirection: TextDirection.rtl,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                textDirection: TextDirection.rtl,
                children: <Widget>[
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 18,
                  ),
                  Image(image: AssetImage(imagePath),height: 100,),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Text(
                        name,
                        style: kTextStyle,
                        textAlign: TextAlign.right,
                      ),
                      Row(
                        textDirection: TextDirection.rtl,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            textDirection: TextDirection.rtl,
                            children: <Widget>[
                              Text(
                                newPrice,
                                style: kTextStyle,
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Text(
                                '₪',
                                style: kSymbolStyle.copyWith(fontSize: 14),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            textDirection: TextDirection.rtl,
                            children: <Widget>[
                              Text(
                                oldPrice,
                                style: kTextStyle.copyWith(color: Colors.grey,decoration: TextDecoration.lineThrough),
                              ),
                              Text(
                                '₪',
                                style: kSymbolStyle.copyWith(fontSize: 14,color: Colors.grey,decoration: TextDecoration.lineThrough),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: EdgeInsets.all(3),
                        child: Icon(
                            MdiIcons.minus,
                            size: 20,
                            color: Colors.black
                        ),
                      ),
                    ),
                    Text(
                      '0',
                      style: kHeaderStyle.copyWith(fontSize: 24),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: EdgeInsets.all(3),
                        child: Icon(
                            MdiIcons.plus,
                            size: 20,
                            color: Colors.black
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
