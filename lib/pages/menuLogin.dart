import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uts_mobile/pages/mainMenu.dart';

class loginmenu extends StatelessWidget {
  const loginmenu({super.key});

  @override
  Widget build(BuildContext context) {
    Widget tombolLogin() {
      return Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Mainmenu()));
          },
          child: Container(
            margin: const EdgeInsets.only(top: 1),
            padding: const EdgeInsets.symmetric(horizontal: 131, vertical: 11),
            decoration: BoxDecoration(
                color: const Color(0xff008676),
                borderRadius: BorderRadius.circular(18)),
            child: Text(
              'Login',
              style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xffffffff)),
            ),
          ),
        ),
      );
    }

    Widget kotakLogin() {
      return Container(
        height: 392,
        width: 347,
        margin: EdgeInsets.symmetric(horizontal: 30),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            spreadRadius: 0,
            blurRadius: 2,
            offset: Offset(0, 0),
          )
        ], borderRadius: BorderRadius.circular(20), color: Color(0xffffffff)),
        child: Column(
          children: [
            SizedBox(
              height: 43,
            ),
            Center(
              child: Text(
                'Login First',
                style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff655C5C)),
              ),
            ),
            SizedBox(
              height: 75,
            ),
            TextFormField(
              decoration: const InputDecoration(
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff655C5C)),
                  ),
                  prefixIcon: Icon(
                    Icons.person,
                    size: 20,
                    color: Color(0xff655C5C),
                  ),
                  labelText: "Username",
                  labelStyle: TextStyle(color: Color(0xff655C5C))),
            ),
            SizedBox(
              height: 55,
            ),
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff655C5C)),
                  ),
                  prefixIcon: Icon(
                    Icons.lock,
                    size: 20,
                    color: Color(0xff655C5C),
                  ),
                  suffixIcon: Icon(
                    Icons.visibility,
                    size: 20,
                    color: Color(0xff655C5C),
                  ),
                  labelText: "Password",
                  labelStyle: TextStyle(color: Color(0xff655C5C))),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage("assets/bg.png"))),
          ),
          SafeArea(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 91,
              ),
              Center(
                child: Text(
                  "Your Future",
                  style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color(0xfffffffff)),
                ),
              ),
              SizedBox(
                height: 43,
              ),
              Center(
                child: Text(
                  "Furniture",
                  style: GoogleFonts.poppins(
                      fontSize: 32,
                      fontWeight: FontWeight.w500,
                      color: Color(0xfffffffff)),
                ),
              ),
              SizedBox(
                height: 43,
              ),
              Container(
                height: 2,
                width: 167,
                margin: EdgeInsets.only(left: 132, right: 131),
                color: Color(0xffffffff),
              ),
              SizedBox(
                height: 80,
              ),
              kotakLogin(),
              SizedBox(
                height: 40,
              ),
              tombolLogin()
            ],
          ))
        ],
      ),
    );
  }
}
