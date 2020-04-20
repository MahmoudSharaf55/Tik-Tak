import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tiktak/screens/cart.dart';

import '../constants.dart';

class OrderCard extends StatelessWidget {
  final int orderNumber;
  final String name;
  final String address;
  final String date;
  final String time;
  final String shops;
  final int orderPrice;
  final int chargingPrice;
  final bool isNewOrder;

  OrderCard(
      {this.orderNumber,
      this.name,
      this.address,
      this.date,
      this.time,
      this.shops,
      this.orderPrice,
      this.chargingPrice,
      this.isNewOrder});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Stack(
        children: <Widget>[
          Container(
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
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                textDirection: TextDirection.rtl,
                children: <Widget>[
                  Row(
                    textDirection: TextDirection.rtl,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'طلبية رقم $orderNumber',
                        textAlign: TextAlign.right,
                        style: kTextStyle.copyWith(fontSize: 19),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        textDirection: TextDirection.rtl,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              // action
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: kPrimaryColor,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50))),
                              child: Padding(
                                padding: EdgeInsets.all(2),
                                child: Icon(Icons.check,
                                    size: 24, color: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          GestureDetector(
                            onTap: () {
                              // action
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50))),
                              child: Padding(
                                padding: EdgeInsets.all(2),
                                child: Icon(Icons.close,
                                    size: 24, color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'اسم مستلم الطلبية: $name',
                    textAlign: TextAlign.right,
                    style: kTextStyle.copyWith(fontSize: 13),
                  ),
                  Text(
                    'العنوان: $address',
                    style: kTextStyle.copyWith(fontSize: 13),
                    textAlign: TextAlign.right,
                  ),
                  Text(
                    'المتاجر: $shops',
                    textAlign: TextAlign.right,
                    style: kTextStyle.copyWith(fontSize: 13),
                  ),
                  Text(
                    'توقيت التوصيل: بتاريخ $date الساعة $time',
                    style: kTextStyle.copyWith(fontSize: 13),
                    textAlign: TextAlign.right,
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        textDirection: TextDirection.rtl,
                        children: <Widget>[
                          Text(
                            'سعر الطلبية: $orderPrice',
                            style: kTextStyle.copyWith(fontSize: 13),
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        textDirection: TextDirection.rtl,
                        children: <Widget>[
                          Text(
                            'سعر التوصيل: $chargingPrice',
                            style: kTextStyle.copyWith(fontSize: 13),
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
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      reverse: true,
                      child: Row(
                        textDirection: TextDirection.rtl,
                        children: <Widget>[
                          FlatButton(
                            color: kPrimaryColor,
                            shape: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                              borderSide: BorderSide.none,
                            ),
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => CartScreen()));
                            },
                            child: Text(
                              'تفاصيل',
                              style: kButtonTextStyle.copyWith(fontSize: 13),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          FlatButton(
                            color: Colors.white,
                            shape: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                              borderSide: BorderSide(width: 2),
                            ),
                            onPressed: () {
                              // action
                            },
                            child: Row(
                              textDirection: TextDirection.rtl,
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(50))),
                                  child: Padding(
                                    padding: EdgeInsets.all(3),
                                    child: Icon(Icons.call,
                                        size: 16, color: Colors.white),
                                  ),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  'اتصل',
                                  style:
                                      kButtonTextStyle.copyWith(fontSize: 13),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          FlatButton(
                            color: Colors.white,
                            shape: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                              borderSide:
                                  BorderSide(width: 2, color: Colors.lightBlue),
                            ),
                            onPressed: () {
                              // action
                            },
                            child: Row(
                              textDirection: TextDirection.rtl,
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(50))),
                                  child: Image(
                                    image: AssetImage('assets/waze.png'),
                                    width: 24,
                                    height: 24,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'ويز',
                                  style: kButtonTextStyle.copyWith(
                                      fontSize: 13, color: Colors.lightBlue),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          FlatButton(
                            color: Colors.white,
                            shape: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                              borderSide:
                                  BorderSide(width: 2, color: Colors.amber),
                            ),
                            onPressed: () {
                              // action
                            },
                            child: Row(
                              textDirection: TextDirection.rtl,
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(50))),
                                  child: Image(
                                    image: AssetImage('assets/google.png'),
                                    width: 24,
                                    height: 24,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'جوجل',
                                  style: kButtonTextStyle.copyWith(
                                      fontSize: 13, color: Colors.amber),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          isNewOrder
              ? Positioned.fill(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 7, sigmaY: 7),
                      child: Container(
                        color: Colors.white.withOpacity(0.4),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          textDirection: TextDirection.rtl,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              textDirection: TextDirection.rtl,
                              children: <Widget>[
                                Text(
                                  '!طلبية جديدة',
                                  style: kTextStyle.copyWith(fontSize: 20),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'العنوان: $address',
                                  style: kTextStyle.copyWith(fontSize: 13),
                                  textAlign: TextAlign.right,
                                ),
                                Text(
                                  'توقيت التوصيل: بتاريخ $date الساعة $time',
                                  style: kTextStyle.copyWith(fontSize: 13),
                                  textAlign: TextAlign.right,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              textDirection: TextDirection.rtl,
                              children: <Widget>[
                                FlatButton(
                                  padding:
                                      EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                                  color: kPrimaryColor,
                                  shape: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(50),
                                    borderSide: BorderSide.none,
                                  ),
                                  onPressed: () {
                                    // action
                                  },
                                  child: Text(
                                    'قبول',
                                    style:
                                        kButtonTextStyle.copyWith(fontSize: 14),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                FlatButton(
                                  padding:
                                      EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                                  color: Colors.white,
                                  shape: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(50),
                                    borderSide: BorderSide(width: 2),
                                  ),
                                  onPressed: () {
                                    // action
                                  },
                                  child: Text(
                                    'رفض',
                                    style:
                                        kButtonTextStyle.copyWith(fontSize: 14),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
