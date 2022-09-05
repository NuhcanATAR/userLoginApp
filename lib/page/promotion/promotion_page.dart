import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_app/animated/scale_route.dart';
import 'package:login_app/animated/slide_route.dart';
import 'package:login_app/page/login_page/user_login.dart';
import 'package:page_transition/page_transition.dart';

class promotionUser extends StatefulWidget {
  const promotionUser({super.key});

  @override
  State<promotionUser> createState() => _promotionUserState();
}

class _promotionUserState extends State<promotionUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                    image:
                        AssetImage("assets/images/pexels-fauxels-3184188.jpg"),
                    fit: BoxFit.cover),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                width: double.infinity,
                height: 320,
                padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: Column(
                  children: <Widget>[
                    Expanded(
                      flex: 4,
                      child: Container(
                        width: double.infinity,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              width: double.infinity,
                              alignment: Alignment.center,
                              child: RichText(
                                text: TextSpan(
                                  style: GoogleFonts.openSans(
                                    textStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: 21,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  children: const <TextSpan>[
                                    TextSpan(
                                        text: 'Yemek Listesi',
                                        style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 255, 82, 82),
                                          fontSize: 21,
                                          fontWeight: FontWeight.bold,
                                        )),
                                    TextSpan(text: ' Uygulamasına'),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              alignment: Alignment.center,
                              child: Text(
                                "Hoşgeldin!",
                                style: GoogleFonts.openSans(
                                  textStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 21,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Container(
                              width: double.infinity,
                              child: Text(
                                " Uygulama İçersinde Birden fazla çeşitli yemek tariflerinin bulunduğu ve yöresel lezzetlerin tanıtıldığı uygulama ",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          SlideLeftRoute(
                            page: userLogin(),
                          ),
                        );
                      },
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(18),
                        margin: EdgeInsets.only(bottom: 10),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.redAccent,
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          ),
                        ),
                        child: Text(
                          "Giriş Yap",
                          style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
