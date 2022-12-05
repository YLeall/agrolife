import 'package:agrolife/pages/mobile/forgot_email.dart';
import 'package:agrolife/pages/mobile/forgot_password.dart';
import 'package:agrolife/pages/mobile/splash_screen_menu.dart';
import 'package:agrolife/responsive/mobile_scaffold.dart';
import 'package:agrolife/responsive/responsive_layout.dart';
import 'package:agrolife/responsive/tablet_scaffold.dart';
import 'package:agrolife/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class LoginAccount extends StatefulWidget {
  const LoginAccount({super.key});

  @override
  State<LoginAccount> createState() => _LoginAccountState();
}

class _LoginAccountState extends State<LoginAccount> {

  bool showPassword = false;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(

        leading: GestureDetector(
          onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(
            builder: (context){
            return ResponsiveLayout(
                mobileScaffold: const MobileScaffold(),
                tabletScaffold: const TabletScaffold(),
            );
          })),
          child: const Icon(Icons.arrow_back)
        ),

        iconTheme: const IconThemeData(color: Colors.black),

        elevation: 0,

        backgroundColor: Colors.grey[300],

        title: Row(

          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Image.asset('lib/images/logoVerdeD.png', width: 30,),
            Padding(
              padding: const EdgeInsets.only(right: 45),
              child: Text('AGROLIFE', style: GoogleFonts.poppins(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: primary
              ),),
            ),
          ],
        ),
        
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
        
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [


                const SizedBox(height: 30,),

                Container(
                  child: Text(
                    'Entre na sua conta',
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),

                const SizedBox(height: 10,),

                Container(
                  child: Text(
                    'Escolha uma das opções de login para entrar',
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w400
                    ),
                  ),
                ),

              ],
            ),

            const SizedBox(height: 50,),

            Container(
              height: 56,
              decoration: BoxDecoration(
                //color: Colors.white,
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(100),
                border: Border.all(
                  color: Style.colorBorderGoogle,
                  width: 1,
                ),

                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade500,
                    offset: const Offset(4.0, 4.0),
                    blurRadius: 15.0,
                    spreadRadius: 1.0
                  ),
                  const BoxShadow(
                    color: Colors.white,
                    offset: Offset(-4.0, -4.0),
                    blurRadius: 15.0,
                    spreadRadius: 1.0
                  ),
                ]
                
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.facebook),
                  const SizedBox(width: 10,),
                  Text(
                    'Continue com Google',
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w500
                    ),
                  )
                ],
              ),
            ),

            
            const SizedBox(height: 30,),

            
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [

                  Expanded(
                    child: Container(
                      color: Style.colorDivider,
                      child: const SizedBox(
                        width: 146,
                        height: 2,
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 3),
                      child: Text(
                        'ou',
                        style: Style.textDividerStyle,
                      ),
                    ),
                  ),

                  Expanded(
                    child: Container(
                      color: Style.colorDivider,
                      child: const SizedBox(
                        width: 146,
                        height: 2,
                      ),
                    ),
                  ),

                ]
              ),
            ),


            const SizedBox(height: 30,),

            Form(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text(
                      'E-mail',
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w500
                      )
                    ),
                    
                    SizedBox(
                      height: 40,
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        style: const TextStyle(fontSize: 16, height: 1),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8), 
                          )
                        ),
                      ),
                    ),

                    const SizedBox(height: 20,),

                    Text(
                      'Senha',
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w500
                      )
                    ),
                    
                    SizedBox(
                      height: 40,
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        style: const TextStyle(fontSize: 16, height: 1),
                        decoration: InputDecoration(

                          suffixIcon: GestureDetector( 
                            child: showPassword == false ? const Icon(Icons.visibility_off) : const Icon(Icons.visibility),
                            onTap: () {
                              setState(() {
                                showPassword = !showPassword;
                              });
                            },
                          ),

                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8), 
                          )
                        ),
                        //obscureText: !showPassword,
                        obscureText: showPassword == false ? true : false,

                      ),
                    ),

                    const SizedBox(height: 20,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Expanded(
                          child: GestureDetector(
                            onTap: () => Navigator.pushReplacement(
                            context, MaterialPageRoute(
                              builder: (context){
                                return ResponsiveLayout(
                                  mobileScaffold: const ForgotEmail(),
                                  tabletScaffold: const TabletScaffold(),
                                );
                              }
                            )
                          ),
                            child: Text(
                              'Esqueci o email',
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),

                        

                        Expanded(
                          flex: -1,
                          child: GestureDetector(
                            onTap: () => Navigator.pushReplacement(
                              context, 
                              MaterialPageRoute(
                                builder: (context){
                                  return ResponsiveLayout(
                                    mobileScaffold: const ForgotPassword(),
                                    tabletScaffold: const TabletScaffold(),
                                  );
                                }
                              )
                            ),
                            child: Container(
                                          
                              child: Text(
                                'Esqueci a senha',
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )

                  ],
                ),
              )
            ),

            const SizedBox(height: 80,),

            GestureDetector(
              onTap: () => Navigator.pushReplacement(
                context, MaterialPageRoute(
                  builder: (context){
                    return ResponsiveLayout(
                      mobileScaffold: const SplashScreenMenu(),
                      tabletScaffold: const TabletScaffold(),
                    );
                  }
                )
              ),

              child: Container(
                height: 48,
                decoration: BoxDecoration(
                  color: Style.primaryColor,
                  borderRadius: BorderRadius.circular(100)
                ),
                child: Center(
                  child: Text(
                    'Logar',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    )
                  ),
                ),
              ),
            )

     

         

          ],
        ),
      )

    );
  }
}