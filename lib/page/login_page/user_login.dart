import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_app/animated/slide_route.dart';
import 'package:login_app/page/register_page/user_register.dart';

class userLogin extends StatefulWidget {
  const userLogin({super.key});

  @override
  State<userLogin> createState() => _userLoginState();
}

class _userLoginState extends State<userLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        alignment: Alignment.center,
        padding: EdgeInsets.all(25),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              AnimatedContainer(
                duration: Duration(seconds: 1),
                width: MediaQuery.of(context).size.width,
                height: 200,
                child: GestureDetector(
                  onTap: () {},
                  child: Image.asset("assets/images/undraw_Login_re_4vu2.png"),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                width: double.infinity,
                alignment: Alignment.centerLeft,
                child: Text(
                  'Giriş Yap',
                  style: GoogleFonts.ubuntu(
                    textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              _buildEmailInput,
              SizedBox(
                height: 15,
              ),
              _buildPasswordInput,
              SizedBox(
                height: 5,
              ),
              _buildForgotPassBtn,
              SizedBox(
                height: 5,
              ),
              _buildLoginBtn,
              SizedBox(
                height: 15,
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  "Veya",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              _buildGoogleLoginBtn,
              SizedBox(
                height: 15,
              ),
              _buildNewRegisterBtn,
            ],
          ),
        ),
      ),
    );
  }

  Widget get _buildEmailInput => Container(
        width: double.infinity,
        height: 45,
        child: Row(
          children: <Widget>[
            Container(
              width: 20,
              height: 45,
              alignment: Alignment.center,
              child: Text(
                "@",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                height: 45,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.grey,
                      width: 0.8,
                    ),
                  ),
                ),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: "Email ID",
                    hintStyle: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                  ),
                ),
              ),
            ),
          ],
        ),
      );

  Widget get _buildPasswordInput => Container(
        width: double.infinity,
        height: 45,
        child: Row(
          children: <Widget>[
            Icon(
              Icons.lock_outline,
              color: Colors.grey,
              size: 21,
            ),
            SizedBox(
              width: 15,
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.grey, width: 0.8),
                  ),
                ),
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Şifre",
                    hintStyle: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                  ),
                ),
              ),
            ),
          ],
        ),
      );

  Widget get _buildForgotPassBtn => Container(
        width: double.infinity,
        alignment: Alignment.centerRight,
        padding: EdgeInsets.all(10),
        child: GestureDetector(
          onTap: () {},
          child: Text(
            "Şifrenizimi Unuttunuz?",
            style: GoogleFonts.ubuntu(
              textStyle: TextStyle(
                color: Colors.redAccent,
                fontSize: 13,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      );

  Widget get _buildLoginBtn => Container(
        width: double.infinity,
        padding: EdgeInsets.all(15),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.redAccent,
          borderRadius: BorderRadius.all(
            Radius.circular(7),
          ),
        ),
        child: Text(
          "Giriş Yap",
          style: GoogleFonts.roboto(
            textStyle: TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
        ),
      );

  Widget get _buildGoogleLoginBtn => Container(
        width: double.infinity,
        padding: EdgeInsets.all(14),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.2),
          borderRadius: BorderRadius.all(
            Radius.circular(7),
          ),
        ),
        child: Row(
          children: <Widget>[
            Container(
              width: 20,
              height: 20,
              child: Image.asset("assets/images/icons8-google-48.png"),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  "Google ile Giriş Yap",
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );

  Widget get _buildNewRegisterBtn => Container(
        width: double.infinity,
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "Yeni Bir Hesap Oluştur",
              style: GoogleFonts.ubuntu(
                textStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 13,
                ),
              ),
            ),
            SizedBox(
              width: 5,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  SlideLeftRoute(
                    page: userRegister(),
                  ),
                );
              },
              child: Text(
                "Kayıt Ol",
                style: GoogleFonts.ubuntu(
                  textStyle: TextStyle(
                    color: Colors.redAccent,
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
}
