import 'package:agrolife/pages/mobile/create_account_two.dart';
import 'package:agrolife/responsive/mobile_scaffold.dart';
import 'package:agrolife/responsive/responsive_layout.dart';
import 'package:agrolife/responsive/tablet_scaffold.dart';
import 'package:agrolife/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {

  bool isChecked = false;

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


      body: ListView(
        children: [
          Column(
          
            children: [
              
               const SizedBox(height: 30,),

              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(left: 20),
                
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
        
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      child: Text('Cadastro', style: GoogleFonts.poppins(
                        fontSize: 22,
                        fontWeight: FontWeight.w500),
                      ),
                    ),
                    
                    Container(
                       margin: const EdgeInsets.only(bottom: 5),
                      child: Text('Crie sua conta aqui', style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                      ),
                    ),
        
                    Text('Etapa 1', style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                    ),
        
                  ],
                ),
              ),


              const SizedBox(height: 30,),


              Form(
                child: Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(left: 20),
                  
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
              
                      Container(
                        margin: const EdgeInsets.only(right: 28),
                        child: SizedBox(
                          width: 350,
                          height: 50,
                          child: TextFormField(
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              
                              icon: const Icon(Icons.person),
              
                              labelStyle: Style.textInput,
                            
                              labelText: 'Nome do usuário',
                              hintText: 'Ex: NomeQualquer',
                              hintStyle: Style.hintStyle,
              
                            ),
                          ),
                        ),
                      ),
              
                      const SizedBox(height: 25,),
              
                      Container(
                        margin: const EdgeInsets.only(right: 28),
                        child: SizedBox(
                          width: 350,
                          height: 50,
                          child: TextFormField(
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              
                              icon: const Icon(Icons.phone),
              
                              labelStyle: Style.textInput,
                              hintText: 'Ex: (xx) xxxxx-xxxx',
                              hintStyle: Style.hintStyle,
                            
                              labelText: 'Número de telefone'
                            ),
                          ),
                        ),
                      ),
              
                      const SizedBox(height: 25,),
              
                      Container(
                        margin: const EdgeInsets.only(right: 28),
                        child: SizedBox(
                          width: 350,
                          height: 50,
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              
                              icon: const Icon(Icons.email),
                              hintText: 'Ex: email@gmail.com',
                              hintStyle: Style.hintStyle,
                              labelStyle: Style.textInput,
                            
                              labelText: 'Endereço de email'
                            ),
                          ),
                        ),
                      ),
              
                      const SizedBox(height: 25,),
              
                      Container(
                        margin: const EdgeInsets.only(right: 28),
                        child: SizedBox(
                          width: 350,
                          height: 50,
                          child: TextFormField(
                            keyboardType: TextInputType.visiblePassword,
                            decoration: InputDecoration(
                              
                              icon: const Icon(Icons.key),
              
                              labelStyle: Style.textInput,
                              hintText: 'Ex: Senha@123',
                              hintStyle: Style.hintStyle,
                              suffixIcon: const Icon(Icons.remove_red_eye),
              
                              // focusedBorder: UnderlineInputBorder(
                              //   borderSide: BorderSide(
                              //     color: Style.colorInputCreateAccount,
                              //     width: 2,
                              //   )
                              // ),
                              
                              labelText: 'Senha'
                            ),
                          ),
                        ),
                      ),
                      
                    ],
                  ),
                ),
              ),
        
              const SizedBox(height: 25,),

              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Row(
                      children: [

                        Container(
                          margin: const EdgeInsets.only(left: 15),
                          child: Row(
                            children: [

                              Checkbox(
                                value: isChecked,
                                activeColor: Style.primaryColor,
             
                                onChanged: (bool? checked){
                                  //print(checked);
                                  setState(() {
                                    isChecked = checked!;
                                    //isChecked = !isChecked;
                                  });
                                }
                              ),
                              
                              Container(
                                margin: const EdgeInsets.only(left: 12),
                                child: Text(
                                  'Ao se inscrever, você concorda com nossos',
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                   
                                  ), 
                                ),
                              ),

                            ],
                          ),
                        ),
                     
                       
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 59),
                      child: Text(
                        'termos de uso',
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          decoration: TextDecoration.underline,
                        
                        ),
                      )
                    )
                  ],
                ),
              ),

              const SizedBox(height: 40,),

              GestureDetector(
                onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(
                    builder: (context){

                      return ResponsiveLayout(
                        mobileScaffold: CreateAccountTwo(),
                        tabletScaffold: const TabletScaffold(),
                      );
                    }
                  )
                ),
                child: Container(
                  width: 320,
                  height: 48,
                  decoration: BoxDecoration(
                    color: Style.primaryColor,
                    borderRadius: BorderRadius.circular(100)
                  ),
                  child: Center(
                    child: Text('Continuar',style: GoogleFonts.poppins(
                      color: Colors.white, 
                      fontSize: 16, 
                      fontWeight: FontWeight.w300),
                    )
                  ),
                ),
              ),

              const SizedBox(height: 30,),

              Container(
                child: Text.rich(
                  TextSpan(
                    text: 'Você já é um membro? ',
                    style: Style.textMember,
                    children: <TextSpan>[
                      TextSpan(
                        text: ' Entrar',
                        style: Style.textMemberGreen,
                      )
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 15,),
              
            ],
          ),
        ]
      )

    );
  }
}