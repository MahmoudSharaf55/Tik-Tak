import 'package:flutter/material.dart';
import 'package:tiktak/constants.dart';
import 'package:tiktak/screens/list.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).size.height > 680 ? 30 : 15,
              ),
              Image(
                image: AssetImage('assets/tiktak_text.png'),
                height: 34,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height > 680 ? 80 : 60,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 30),
                child: Image(
                  image: AssetImage('assets/tiktak.png'),
                  width: MediaQuery.of(context).size.width / 4,
                  height: MediaQuery.of(context).size.width / 4,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height > 680 ? 20 : 15,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                child: Material(
                  elevation: 8,
                  borderRadius: BorderRadius.circular(5),
                  child: TextField(
                    keyboardType: TextInputType.phone,
                    textAlign: TextAlign.right,
                    style: kTextStyle,
                    controller: TextEditingController(),
                    decoration: InputDecoration(
                      contentPadding: MediaQuery.of(context).size.height > 680 ? EdgeInsets.all(20): EdgeInsets.all(15),
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      hintText: "رقم الجوال",
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                child: Material(
                  elevation: 8,
                  borderRadius: BorderRadius.circular(5),
                  child: TextField(
                    obscureText: true,
                    keyboardType: TextInputType.visiblePassword,
                    textAlign: TextAlign.right,
                    style: kTextStyle,
                    controller: TextEditingController(),
                    decoration: InputDecoration(
                      contentPadding: MediaQuery.of(context).size.height > 680 ? EdgeInsets.all(20): EdgeInsets.all(15),
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      hintText: "الرقم السري",
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                child: FlatButton(
                  padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                  color: kPrimaryColor,
                  shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide.none,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ListScreen()));
                  },
                  child: Text(
                    'دخول',
                    style: kButtonTextStyle,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height > 680 ? 40 : 25,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "ان كنت غير مسجل",
                    style: kTextStyle.copyWith(fontSize: 13),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      GestureDetector(
                        child: Text(
                          "اضغط هنا",
                          style: kTextStyle.copyWith(
                              fontSize: 13, color: kPrimaryColor),
                          textDirection: TextDirection.rtl,
                        ),
                        onTap: () {
                          // sign up action
                        },
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "وتريد العمل مع Tik Tak",
                        style: kTextStyle.copyWith(fontSize: 13),
                        textDirection: TextDirection.rtl,
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
