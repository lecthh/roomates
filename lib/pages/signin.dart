import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stroke_text/stroke_text.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final signInFormKey = GlobalKey<FormState>();
  String name = '';
  String password = '';

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color(0xffFFC508),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: StrokeText(
                      text: "PadEase",
                      textStyle: GoogleFonts.inter(
                        color: const Color(0xffFDF9F1),
                        fontWeight: FontWeight.bold,
                        fontSize: 32,
                      ),
                      strokeWidth: 2,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "SIGN IN",
                        style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      const SizedBox(width: 8),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          "SIGN UP",
                          style: GoogleFonts.inter(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color:const Color(0xffD2A30B)
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Form(
                key: signInFormKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 16, bottom: 16),
                      child: Text(
                        "Welcome\nBack!",
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w900,
                          color: Colors.black,
                          fontSize: 32
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        StrokeText(
                          text: "Username",
                          strokeWidth: 2,
                          textStyle: GoogleFonts.inter(
                            color: const Color(0xffFDF9F1),
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        const SizedBox(height: 8,),
                        TextFormField(
                          decoration: const InputDecoration(
                            fillColor: Color(0xffFDF9F1),
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.zero,
                              borderSide: BorderSide(
                                width: 1.0
                              )
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.zero,
                              borderSide: BorderSide(
                                width: 1.0
                              )
                            )
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 24,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        StrokeText(
                          text: "Password",
                          strokeWidth: 2,
                          textStyle: GoogleFonts.inter(
                            color: const Color(0xffFDF9F1),
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        const SizedBox(height: 8,),
                        TextFormField(
                          obscureText: true,
                          decoration: const InputDecoration(
                            fillColor: Color(0xffFDF9F1),
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.zero,
                              borderSide: BorderSide(
                                width: 1.0
                              )
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.zero,
                              borderSide: BorderSide(
                                width: 1.0
                              )
                            )
                          ),
                        ),
                        const SizedBox(height: 24,),
                        GestureDetector(
                          onTap: () {},
                          child: SizedBox(
                            width: double.infinity,
                            height: 53,
                            child: Container(
                              decoration: BoxDecoration(
                                color: const Color(0xff2CC081),
                                border: Border.all(
                                  width: 1
                                ),
                              ),
                              child: Center(
                                child: StrokeText(
                                  text: "Sign in",
                                  strokeWidth: 2,
                                  textStyle: GoogleFonts.inter(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                )
                              ),
                            ),
                          )
                        ),
                        const SizedBox(height: 96),
                        const Center(
                          child: Text(
                            "Already have an account? Sign up"
                          ),
                        ),
                        const SizedBox(height: 96,)
                      ],
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