import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_app/animated/slide_route.dart';
import 'package:login_app/page/login_page/user_login.dart';
import 'package:login_app/page/promotion/promotion_page.dart';
import 'package:login_app/page/register_page/user_register.dart';
import 'package:page_transition/page_transition.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';

void main() {
  runApp(routersList());
}

class routersList extends StatefulWidget {
  const routersList({super.key});

  @override
  State<routersList> createState() => _routersListState();
}

class _routersListState extends State<routersList> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/loadingRoutePg",
      routes: {
        "/loadingRoutePg": (context) => loadingRoutePg(),
        "/promotionPg": (context) => promotionUser(),
        "/userLogin": (context) => userLogin(),
        "/userRegister": (context) => userRegister(),
      },
      home: loadingRoutePg(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class loadingRoutePg extends StatefulWidget {
  const loadingRoutePg({super.key});

  @override
  State<loadingRoutePg> createState() => _loadingRoutePgState();
}

class _loadingRoutePgState extends State<loadingRoutePg> {
  bool isFinished = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height,
                child: CachedNetworkImage(
                  imageUrl:
                      "https://images.pexels.com/photos/842571/pexels-photo-842571.jpeg",
                  fit: BoxFit.cover,
                  progressIndicatorBuilder: (context, url, downloadProgress) =>
                      CircularProgressIndicator(
                          value: downloadProgress.progress),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height,
                color: Colors.redAccent.withOpacity(0.1),
              ),
            ),
            Positioned(
              bottom: 35,
              left: 20,
              right: 20,
              height: 55,
              child: SwipeableButtonView(
                buttonText: 'Giriş Yapmak İçin Kaydır',
                buttontextstyle: GoogleFonts.ubuntu(
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
                buttonWidget: Container(
                  child: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.grey,
                  ),
                ),
                activeColor: Colors.redAccent,
                isFinished: isFinished,
                onWaitingProcess: () {
                  Future.delayed(Duration(seconds: 1), () {
                    setState(() {
                      isFinished = true;
                    });
                  });
                },
                onFinish: () async {
                  await Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.fade,
                          child: promotionUser()));

                  //TODO: For reverse ripple effect animation
                  setState(() {
                    isFinished = false;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
