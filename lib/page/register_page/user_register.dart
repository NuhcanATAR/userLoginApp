import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_app/animated/slide_route.dart';
import 'package:login_app/page/login_page/user_login.dart';

class userRegister extends StatefulWidget {
  const userRegister({super.key});

  @override
  State<userRegister> createState() => _userRegisterState();
}

class _userRegisterState extends State<userRegister> {
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
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                child: GestureDetector(
                  onTap: () {},
                  child: Image.asset("assets/images/undraw_Hello_re_3evm.png"),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                width: double.infinity,
                alignment: Alignment.centerLeft,
                child: Text(
                  'Kayıt Ol',
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
              _buildUserSurnameInput,
              SizedBox(
                height: 15,
              ),
              _buildUserPhoneNumberInput,
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                alignment: Alignment.centerLeft,
                child: Column(
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Kaydol düğmesine tıklamakla Yemek Listesi'nin Hizmet Koşullarını kabul etmiş  onaylamış sayılırsınız.",
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      alignment: Alignment.centerLeft,
                      child: GestureDetector(
                        onTap: () {},
                        child: Text(
                          "Detaylar İçin",
                          style: TextStyle(
                            color: Colors.redAccent,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              _buildRegisterAddBtn,
              SizedBox(
                height: 15,
              ),
              _buildLoginBtn,
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

  Widget get _buildUserSurnameInput => Container(
        width: double.infinity,
        height: 45,
        child: Row(
          children: <Widget>[
            Icon(
              Icons.account_box_outlined,
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
                  decoration: InputDecoration(
                    hintText: "Adınız Soyadınız",
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

  Widget get _buildUserPhoneNumberInput => Container(
        width: double.infinity,
        height: 45,
        child: Row(
          children: <Widget>[
            Icon(
              Icons.call_outlined,
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
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    hintText: "Telefon Numaranız",
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

  Widget get _buildRegisterAddBtn => Container(
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
          "Devam Et",
          style: GoogleFonts.roboto(
            textStyle: TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
        ),
      );

  Widget get _buildLoginBtn => Container(
        width: double.infinity,
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "Zaten Bir Hesabınız Varmı?",
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
                    page: userLogin(),
                  ),
                );
              },
              child: Text(
                "Giriş Yap",
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
