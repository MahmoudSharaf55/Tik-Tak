import 'package:flutter/material.dart';
import 'package:tiktak/components/cart_header.dart';
import 'package:tiktak/components/cart_product.dart';
import 'package:tiktak/constants.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
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
                                      // bin action
                                    },
                                    child: Text(
                                      'السلة',
                                      style: kTextStyle,
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
                        CartHeader(title: 'منتجات سوبر ماركت الروحة'),
                        CartProduct(
                          name: 'حليب تنوفا 1.5 لتر',
                          imagePath: 'assets/product.png',
                          newPrice: '1,500.45',
                          oldPrice: '1,500.45',
                        ),
                        CartProduct(
                          name: 'حليب تنوفا 1.5 لتر',
                          imagePath: 'assets/product.png',
                          newPrice: '1,500.45',
                          oldPrice: '1,500.45',
                        ),
                        CartHeader(title: 'منتجات محمص شادي'),
                        CartProduct(
                          name: 'حليب تنوفا 1.5 لتر',
                          imagePath: 'assets/product.png',
                          newPrice: '1,500.45',
                          oldPrice: '1,500.45',
                        ),
                        CartProduct(
                          name: 'حليب تنوفا 1.5 لتر',
                          imagePath: 'assets/product.png',
                          newPrice: '1,500.45',
                          oldPrice: '1,500.45',
                        ),
                        CartProduct(
                          name: 'حليب تنوفا 1.5 لتر',
                          imagePath: 'assets/product.png',
                          newPrice: '1,500.45',
                          oldPrice: '1,500.45',
                        ),
                        CartProduct(
                          name: 'حليب تنوفا 1.5 لتر',
                          imagePath: 'assets/product.png',
                          newPrice: '1,500.45',
                          oldPrice: '1,500.45',
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
                  padding: EdgeInsets.symmetric(horizontal: 35, vertical: 25),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
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
