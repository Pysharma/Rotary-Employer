import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Homecontent.dart';
import 'otppage.dart';


class loginscreen extends StatefulWidget {
  const loginscreen({Key? key}) : super(key: key);

  @override
  State<loginscreen> createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {
  String currentText = "";
  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xfffafafa),
      appBar : AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 160,
        elevation: 0,
        centerTitle: true,
        title: Image.asset('assets/rotarylg.png',height: 150,),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Color(0xff174590),
                  Color(0xff718fbb),

                ]
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(

        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 5,),
          child: Column(
            children: [
              SizedBox(height: 60,),
              Text("Get Started with HR Portal",
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontFamily: 'Lato',
                ),
              ),

              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10),

                child: Center(
                  child: Container(
                    margin: EdgeInsets.all(4),
                    child: Text(
                      Strings.logindesc,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 14,fontFamily: 'Lato',color: Color(0xFF757575),fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 25,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: SizedBox(
                  height: 50,
                  child: TextField(
                    cursorHeight: 20,
                    cursorColor: Colors.orangeAccent,
                    maxLength: 10,
                    enableSuggestions: true,
                    keyboardType: TextInputType.number,
                    onChanged: (text) => setState(() {
                      currentText = text;
                    }),
                    decoration: InputDecoration(
                      counter: Offstage(),
                      isDense: true,
                      prefixIcon: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Image.asset('assets/india (1) 1.png',height: 30,),
                          ),
                          VerticalDivider(
                            color: Colors.black,
                            thickness: 1,
                            indent: 16,
                            endIndent: 14,
                          ),
                        ],
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 1.0),
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                    ),
                  ),
                ),
              ),


              SizedBox(height: 15,),
              Container(
                height: 50,
                margin: EdgeInsets.symmetric(horizontal: 40,vertical: 5),
                width: double.infinity,
                child: FlatButton(
                  child: Text("Get OTP",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=> otpPage(text: currentText,),));
                  },
                  color: Color(0xFF174590),
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
