import 'package:agrolife/pages/mobile/create_account.dart';
import 'package:agrolife/pages/mobile/login_account.dart';
import 'package:agrolife/responsive/mobile_scaffold.dart';
import 'package:agrolife/responsive/responsive_layout.dart';
import 'package:agrolife/responsive/tablet_scaffold.dart';
import 'package:agrolife/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class CreateAccountTwo extends StatefulWidget {
  const CreateAccountTwo({super.key});

  @override
  State<CreateAccountTwo> createState() => _CreateAccountTwo();
}

class _CreateAccountTwo extends State<CreateAccountTwo> {

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
                mobileScaffold: const CreateAccount(),
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
                  
        
                    Text('Etapa 2', style: GoogleFonts.poppins(
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
                            
                              labelText: 'Cnpj',
                              hintText: 'Ex: XX.XXX.XXX/0001-XX',
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
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              
                              icon: const Icon(Icons.account_box),
              
                              labelStyle: Style.textInput,
                              hintText: 'Ex: NomeQualquer',
                              hintStyle: Style.hintStyle,
                            
                              labelText: 'Nome fantasia'
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
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              
                              icon: const Icon(Icons.location_on),
                              hintText: 'Ex: XXXXX-XXX',
                              hintStyle: Style.hintStyle,
                              labelStyle: Style.textInput,
                            
                              labelText: 'CEP'
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
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              
                              icon: const Icon(Icons.location_city),
              
                              labelStyle: Style.textInput,
                              hintText: 'Ex: Bahia',
                              hintStyle: Style.hintStyle,
                       
                              labelText: 'Estado'
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
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              
                              icon: const Icon(Icons.location_city),
                              hintText: 'Ex: Salvador',
                              hintStyle: Style.hintStyle,
                              labelStyle: Style.textInput,
                            
                              labelText: 'Cidade'
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
                        mobileScaffold: const MobileScaffold(),
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
                    child: Text('Cadastrar',style: GoogleFonts.poppins(
                      color: Colors.white, 
                      fontSize: 16, 
                      fontWeight: FontWeight.w300),
                    )
                  ),
                ),
              ),

              const SizedBox(height: 30,),

              /*

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

              */

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Você já é um membro? ',
                    style: Style.textMember,
                  ),
                  GestureDetector(
                    onTap: () => Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context){
                          return ResponsiveLayout(
                            mobileScaffold: const LoginAccount(),
                            tabletScaffold: const TabletScaffold(),
                          );
                        }
                      )
                    ),
                    child: Text(
                      ' Entrar',
                      style: Style.textMemberGreen,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 15,),
              
            ],
          ),
        ]
      )

    );
  }
}