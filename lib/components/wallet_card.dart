import 'package:flutter/material.dart';

import '../constants.dart';

class WalletCard extends StatelessWidget {
  final int orderNumber;
  final String name;
  final String address;
  final String date;
  final String time;
  final String shops;
  final int orderPrice;
  final int chargingPrice;

  WalletCard(
      {this.orderNumber,
      this.name,
      this.address,
      this.date,
      this.time,
      this.shops,
      this.orderPrice,
      this.chargingPrice});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 13),
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
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            textDirection: TextDirection.rtl,
            children: <Widget>[
              Text(
                'طلبية رقم $orderNumber',
                textAlign: TextAlign.right,
                style: kTextStyle.copyWith(fontSize: 19),
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
                'توقيت التوصيل: بتاريخ $date الساعة $time',
                style: kTextStyle.copyWith(fontSize: 13),
                textAlign: TextAlign.right,
              ),
              Text(
                'المتاجر: $shops',
                textAlign: TextAlign.right,
                style: kTextStyle.copyWith(fontSize: 13),
              ),
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
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: FlatButton(
                  padding: EdgeInsets.fromLTRB(12.0, 5.0, 12.0, 5.0),
                  color: kPrimaryColor,
                  shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide.none,
                  ),
                  onPressed: () {
                    // action
                  },
                  child: Text(
                    'تفاصيل',
                    style: kButtonTextStyle.copyWith(fontSize: 14),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
