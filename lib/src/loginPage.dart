import 'package:flutter/material.dart';
import 'package:flutter_login_signup/src/dashboard.dart';
import 'package:flutter_login_signup/src/signup.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'Widget/bezierContainer.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _date = "Not set";
  String _time = "Not set";
  void initState() {
    super.initState();
    star();
  }

  Widget star() {
    return Center(
      child: Container(
        height: 200,
        width: 200,
        child: Image(
          image: AssetImage("assets/images/road.png"),
        ),
      ),
    );
  }
  // Widget _backButton() {
  //   return InkWell(
  //     onTap: () {
  //       Navigator.pop(context);
  //     },
  //     child: Container(
  //       padding: EdgeInsets.symmetric(horizontal: 10),
  //       child: Row(
  //         children: <Widget>[
  //           Container(
  //             padding: EdgeInsets.only(left: 0, top: 10, bottom: 10),
  //             child: Icon(Icons.keyboard_arrow_left, color: Colors.black),
  //           ),
  //           Text('Back',
  //               style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500))
  //         ],
  //       ),
  //     ),
  //   );
  // }

  Widget _entryField(String title, {bool isPassword = false}) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
              obscureText: isPassword,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  fillColor: Color(0xfff3f3f4),
                  filled: true))
        ],
      ),
    );
  }

  Widget _submitButton() {
    return Container(
      height: 50,
      margin: EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Row(
        children: <Widget>[
          // Expanded(
          //   flex: 5,
          //   // child: RaisedButton(
          //   //   child:
          //   child: Container(
          //     decoration: BoxDecoration(
          //       // color: Color(0xfffe9263),
          //       gradient: LinearGradient(
          //           begin: Alignment.centerLeft,
          //           end: Alignment.centerRight,
          //           colors: [Color(0xfffe9263), Color(0xfff7892b)]),
          //       borderRadius: BorderRadius.all(
          //         Radius.circular(5),
          //       ),
          //     ),
          //     alignment: Alignment.center,
          //     child:
          Container(
            // width: double.infinity,
            child: ButtonTheme(
              // minWidth: MediaQuery.of(context).size.width,
              minWidth: 350.0,
              height: 100.0,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(8.0),
                  // side: BorderSide(color: Colors.red)
                ),
                color: Color(0xfffe9263),
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Dashboard())),
                child: Text('Login',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w400)),
              ),
            ),
          ),
          //   ),
          // ),
        ],
      ),
    );
  }

  Widget _divider() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                thickness: 1,
              ),
            ),
          ),
          Text('or'),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                thickness: 1,
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      // child: Image(image: AssetImage("assets/images/logo.jpg"),),
    );
  }

  Widget _guestSignUp() {
    return Container(
      height: 50,
      margin: EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Row(
        children: <Widget>[
          // Expanded(
          //   flex: 5,
          //   // child: RaisedButton(
          //   //   child:
          //   child: Container(
          //     decoration: BoxDecoration(
          //       // color: Color(0xfffe9263),
          //       gradient: LinearGradient(
          //           begin: Alignment.centerLeft,
          //           end: Alignment.centerRight,
          //           colors: [Color(0xfffe9263), Color(0xfff7892b)]),
          //       borderRadius: BorderRadius.all(
          //         Radius.circular(5),
          //       ),
          //     ),
          //     alignment: Alignment.center,
          //     child:
          Container(
            // width: double.infinity,
            child: ButtonTheme(
              // minWidth: MediaQuery.of(context).size.width,
              minWidth: 350.0,
              height: 100.0,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(8.0),
                  // side: BorderSide(color: Colors.red)
                ),
                color: Color(0xfffe9263),
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignUpPage())),
                child: Text('Guest Login',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w400)),
              ),
            ),
          ),
          //   ),
          // ),
        ],
      ),
    );
  }

  Widget _createAccountLabel() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Don\'t have an account ?',
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            width: 10,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SignUpPage()));
            },
            child: Text(
              'Register',
              style: TextStyle(
                  color: Color(0xfff79c4f),
                  fontSize: 13,
                  fontWeight: FontWeight.w600),
            ),
          )
        ],
      ),
    );
  }

  Widget _title() {
    // return RichText(
    //   textAlign: TextAlign.center,
    //   text: TextSpan(
    //       text: 'Patiala',
    //       style: GoogleFonts.portLligatSans(
    //         textStyle: Theme.of(context).textTheme.display1,
    //         fontSize: 30,
    //         fontWeight: FontWeight.w700,
    //         color: Color(0xffe46b10),
    //       ),
    //       children: [
    //         TextSpan(
    //           text: ' Foun',
    //           style: TextStyle(color: Colors.black, fontSize: 30),
    //         ),
    //         TextSpan(
    //           text: 'dation',
    //           style: TextStyle(color: Color(0xffe46b10), fontSize: 30),
    //         ),
    //       ]),
    // );
    return Container(
      height: 200,
      width: 200,
      child: Image(
        image: AssetImage("assets/images/road.png"),
      ),
    );
  }

  Widget _emailPasswordWidget() {
    return Column(
      children: <Widget>[
        _entryField("Email id"),
        _entryField("Password", isPassword: true),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      flex: 3,
                      child: SizedBox(),
                    ),
                    _title(),
                    SizedBox(
                      height: 20,
                    ),
                    _emailPasswordWidget(),
                    SizedBox(
                      height: 20,
                    ),
                    // Container(child: Row(children: <Widget>[Radio(value: Text("Manager"),)],),),
                    _submitButton(),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      alignment: Alignment.centerRight,
                      child: Text('Forgot Password ?',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500)),
                    ),
                    _divider(),
                    _guestSignUp(),
                    Expanded(
                      flex: 2,
                      child: SizedBox(),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: _createAccountLabel(),
              ),
              // FlatButton(
              //     onPressed: () {
              //       DatePicker.showDatePicker(context,
              //           showTitleActions: true,
              //           minTime: DateTime(2000, 1, 1),
              //           maxTime: DateTime(2022, 12, 31), onChanged: (date) {
              //         print('change $date');
              //       }, onConfirm: (date) {
              //         print('confirm $date');
              //       }, currentTime: DateTime.now(), locale: LocaleType.en);
              //     },
              //     child: Text(
              //       'Show DateTime Picker',
              //     )),

              // Positioned(top: 40, left: 0, child: _backButton()),
              // Positioned(
              //     top: -MediaQuery.of(context).size.height * .15,
              //     right: -MediaQuery.of(context).size.width * .4,
              //     child: BezierContainer())
            ],
          ),
        ),
      ),
    );
  }
}
