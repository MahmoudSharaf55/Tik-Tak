import 'package:flutter/material.dart';
import 'package:tiktak/components/order_card.dart';
import 'package:tiktak/constants.dart';
import 'package:tiktak/screens/wallet.dart';

class ListScreen extends StatefulWidget {
  @override
  _ListScreenState createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ScrollConfiguration(
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
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => WalletScreen()));
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
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 15),
                          child: Row(
                            mainAxisAlignment:
                            MainAxisAlignment.start,
                            children: <Widget>[
                              GestureDetector(
                                onTap: () {
                                  // action
                                },
                                child: Text(
                                  'قائمة الطلبيات',
                                  style: kTextStyle,
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
                    OrderCard(
                      orderNumber: 38472,
                      name: 'طاهر أحمد محاميد',
                      address: 'البلد, الحارة, الشارع',
                      date: '27.03',
                      time: '14:30',
                      shops: 'الروحة مول + محمص شادي + ملحمة ابو دخش',
                      orderPrice: 180,
                      chargingPrice: 15,
                      isNewOrder: true,
                    ),
                    OrderCard(
                      orderNumber: 38472,
                      name: 'طاهر أحمد محاميد',
                      address: 'البلد, الحارة, الشارع',
                      date: '27.03',
                      time: '14:30',
                      shops: 'الروحة مول + محمص شادي + ملحمة ابو دخش',
                      orderPrice: 180,
                      chargingPrice: 15,
                      isNewOrder: false,
                    ),
                    OrderCard(
                      orderNumber: 38472,
                      name: 'طاهر أحمد محاميد',
                      address: 'البلد, الحارة, الشارع',
                      date: '27.03',
                      time: '14:30',
                      shops: 'الروحة مول + محمص شادي + ملحمة ابو دخش',
                      orderPrice: 180,
                      chargingPrice: 15,
                      isNewOrder: false,
                    ),
                    OrderCard(
                      orderNumber: 38472,
                      name: 'طاهر أحمد محاميد',
                      address: 'البلد, الحارة, الشارع',
                      date: '27.03',
                      time: '14:30',
                      shops: 'الروحة مول + محمص شادي + ملحمة ابو دخش',
                      orderPrice: 180,
                      chargingPrice: 15,
                      isNewOrder: false,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ],
          ),
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
