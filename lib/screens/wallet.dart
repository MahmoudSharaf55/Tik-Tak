import 'package:flutter/material.dart';
import 'package:tiktak/components/wallet_card.dart';
import 'package:tiktak/constants.dart';

class WalletScreen extends StatefulWidget {
  @override
  _WalletScreenState createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            ScrollConfiguration(
              behavior: MyBehavior(),
              child: CustomScrollView(
                slivers: <Widget>[
                  SliverAppBar(
                    backgroundColor: Colors.white,
                    floating: false,
                    pinned: true,
                    elevation: 5,
                    centerTitle: true,
                    leading: GestureDetector(
                      onTap: () {
                        // call action
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius:
                            BorderRadius.all(Radius.circular(50))),
                        margin: EdgeInsets.all(17),
                        child: Padding(
                          padding: EdgeInsets.all(2),
                          child: Icon(Icons.call,
                              size: 15, color: Colors.white),
                        ),
                      ),
                    ),
                    actions: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: GestureDetector(
                          onTap: () {
                            // bars action
                          },
                          child: Padding(
                            padding: EdgeInsets.all(5),
                            child: Icon(
                              Icons.dehaze,
                              size: 24,
                            ),
                          ),
                        ),
                      ),
                    ],
                    title: Image(
                      image: AssetImage('assets/tiktak_text.png'),
                      height: 34,
                    ),
                    bottom: PreferredSize(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(
                                  top: 5, left: 15,right: 15,bottom: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  GestureDetector(
                                    onTap: () {
                                      // action
                                    },
                                    child: Text(
                                      'محفظتي حسب الشهر',
                                      style: kTextStyle.copyWith(fontSize: 13),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(50))),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 15,vertical: 2),
                                        child: Text(
                                          'العودة للخلف',
                                          style: kTextStyle.copyWith(
                                              fontSize: 12,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        preferredSize:
                            Size(MediaQuery.of(context).size.width, 50)),
                  ),
                  SliverList(
                    delegate: SliverChildListDelegate(
                      [
                        WalletCard(
                          orderNumber: 20012,
                          name: 'طاهر أحمد محاميد',
                          address: 'البلد, الحارة, الشارع',
                          date: '27.03',
                          time: '14:30',
                          shops: 'الروحة مول + محمص شادي + ملحمة ابو دخش',
                          orderPrice: 180,
                          chargingPrice: 15,
                        ),
                        WalletCard(
                          orderNumber: 20012,
                          name: 'طاهر أحمد محاميد',
                          address: 'البلد, الحارة, الشارع',
                          date: '27.03',
                          time: '14:30',
                          shops: 'الروحة مول + محمص شادي + ملحمة ابو دخش',
                          orderPrice: 180,
                          chargingPrice: 15,
                        ),
                        WalletCard(
                          orderNumber: 20012,
                          name: 'طاهر أحمد محاميد',
                          address: 'البلد, الحارة, الشارع',
                          date: '27.03',
                          time: '14:30',
                          shops: 'الروحة مول + محمص شادي + ملحمة ابو دخش',
                          orderPrice: 180,
                          chargingPrice: 15,
                        ),
                        WalletCard(
                          orderNumber: 20012,
                          name: 'طاهر أحمد محاميد',
                          address: 'البلد, الحارة, الشارع',
                          date: '27.03',
                          time: '14:30',
                          shops: 'الروحة مول + محمص شادي + ملحمة ابو دخش',
                          orderPrice: 180,
                          chargingPrice: 15,
                        ),
                        SizedBox(
                          height: 130,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      offset: Offset(0, -5),
                      blurRadius: 5.0,
                      color: Colors.grey[400].withAlpha(100),
                    ),
                  ],
                ),
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Text(
                            'المجموع الكلي',
                            style: kTextStyle,
                            textAlign: TextAlign.right,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            textDirection: TextDirection.rtl,
                            children: <Widget>[
                              Text(
                                '1,500.45',
                                style: kTextStyle.copyWith(fontSize: 24),
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Text(
                                '₪',
                                style: kSymbolStyle.copyWith(fontSize: 24),
                              ),
                            ],
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2000, 4),
                            lastDate: DateTime(2021),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: kPrimaryColor,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Row(
                            textDirection: TextDirection.rtl,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.all(2),
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width / 3.5,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(5),
                                    child: Text(
                                      '03/2020',
                                      style: kTextStyle.copyWith(fontSize: 18),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ),
                              Icon(Icons.keyboard_arrow_down),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
