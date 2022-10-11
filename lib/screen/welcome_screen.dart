import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'login_screen.dart';

class welcomeScreen extends StatefulWidget {
  const welcomeScreen({super.key});

  @override
  State<welcomeScreen> createState() => _welcomeScreenState();
}

class _welcomeScreenState extends State<welcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/dash2.jpg'), fit: BoxFit.cover),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 8,
                child: Padding(
                  padding: const EdgeInsets.only(top: 170, left: 80),
                  child: Column(
                    children: [
                      Text(
                        'Food Bite',
                        style: TextStyle(
                            fontSize: 55,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            shadows: [
                              BoxShadow(
                                blurRadius: 5,
                                color: Colors.orange,
                                offset: Offset(3, 3),
                              )
                            ]),
                      ),
                      Text(
                        ' Jagannath University',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey[200],
                            shadows: [
                              BoxShadow(
                                blurRadius: 5,
                                color: Colors.orange,
                                offset: Offset(2, 2),
                              )
                            ]),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  children: [
                    Container(
                      height: 60,
                      width: double.infinity,
                      padding:
                          const EdgeInsets.only(top: 25, left: 80, right: 24),
                      //   child: RaisedButton(
                      //     elevation: 0,
                      //     shape: RoundedRectangleBorder(
                      //         borderRadius: BorderRadius.circular(25),
                      //     ),
                      //     color: Colors.white,
                      //     onPressed: () => Navigator.of(context).pushNamed(SignupScreen.routeName),
                      child: Text(
                        'Where tasteful creations begin',
                        style: GoogleFonts.lobster(
                          fontSize: 18,
                          color: Colors.grey[200],
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                    // ),
                    Container(
                      height: 80,
                      width: double.infinity,
                      padding:
                          const EdgeInsets.only(top: 8, left: 44, right: 44),
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => loginScreen()));
                        },
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(35),
                        ),
                        color: Colors.orange,
                        child: Text(
                          'Get Start',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    // Container(
                    //   height: 80,
                    //   width: double.infinity,
                    //   padding: const EdgeInsets.only(top: 25, left: 24, right: 24),
                    //   child: RaisedButton(
                    //     elevation: 0,
                    //     shape: RoundedRectangleBorder(
                    //         borderRadius: BorderRadius.circular(25),
                    //     ),
                    //     color: Colors.white,
                    //     onPressed: () => Navigator.of(context).pushNamed(SignupScreen.routeName),
                    //     child: Text(
                    //       'Sign Up',
                    //       style: TextStyle(
                    //         fontSize: 20,
                    //         fontWeight: FontWeight.w700,
                    //         color: Colors.lightBlue,
                    //       ),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
