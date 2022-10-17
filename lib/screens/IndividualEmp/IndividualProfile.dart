import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:progress_indicator/progress_indicator.dart';
import 'package:rootery/screens/EmployerType.dart';
import 'package:rootery/screens/JobApplication/JobInfoPage.dart';

class IndividualProfile extends StatefulWidget {
  const IndividualProfile({Key? key}) : super(key: key);

  @override
  State<IndividualProfile> createState() => _IndividualProfileState();
}

class _IndividualProfileState extends State<IndividualProfile> {
  late String valueChoose='Chhattisgarh';
  var state=[
    "Chhattisgarh",
    "Bihar",
    "Orrisa",
  ];

  late String valueChooseCity='Bilaspur';
  var City=[
    "Bilaspur",
    "Raipur",
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffafafa),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: false,
        backgroundColor: Color(0xff174590),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_sharp,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (_)=> EmployerType()));
          },

        ),
        title: Text('Individual Registration',
          style: TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.bold,
            fontFamily: 'Poppins',
            color: Colors.white,
          ),
        ),

      ),

      body: Container(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 33,horizontal: 15),
                  child: BarProgress(
                    percentage: 25.0 ,
                    backColor: Color(0xffe5e5e5),
                    color: Color(0xff174590),
                    showPercentage: true,
                    textStyle:TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold),
                    stroke: 35,
                    round: true,
                  ),
                ),

                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 10,bottom: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [


                      Container(
                        decoration: BoxDecoration(
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              blurRadius: 40,
                            ),
                          ],
                        ),
                        child: SizedBox(
                          height: 115,
                          width: 110,
                          child: Stack(
                            fit: StackFit.expand,
                            children: [
                              CircleAvatar(
                                backgroundImage: AssetImage('assets/no_user.jpg'),
                              ),
                              Positioned(
                                left: -10,
                                top: -66,
                                bottom: 0,
                                child: SizedBox(
                                  height: 46,
                                  width: 46,
                                  child: Icon(FontAwesomeIcons.plusCircle,color: Color(0xff174590),),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),


                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Text("Profile Name" ,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black87

                                  ),),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Container(
                                  width: 200,
                                  child: Text("Add a profile picture of yourself so customers will know exactly who they'll be working with ",
                                      style: const TextStyle(fontFamily: 'Poppins',color: Colors.grey,fontWeight: FontWeight.w500,fontSize: 15)
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text('Name',style: const TextStyle(fontFamily: 'Lato',color: Colors.black,fontSize: 16)),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 5,bottom: 20),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        border: Border.all(color: Colors.grey,width: 1)
                    ),
                    child: TextFormField(
                      style: TextStyle(
                        fontFamily: 'Lato',color: Colors.grey,
                      ),
                      cursorHeight: 25,
                      cursorColor: Colors.orange,
                      keyboardType: TextInputType.text,
                      decoration: new InputDecoration(
                        isDense: true,
                        counter: Offstage(),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black, width: 1.0),
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        contentPadding: EdgeInsets.only(left: 8,top: 4, right: 15),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text('Mobile',style: const TextStyle(fontFamily: 'Lato',color: Colors.black,fontSize: 16)),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 5,bottom: 20),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        border: Border.all(color: Colors.grey,width: 1)
                    ),
                    child: TextFormField(
                      style: TextStyle(
                        fontFamily: 'Lato',color: Colors.grey,
                      ),
                      cursorColor: Colors.orange,
                      maxLength: 10,
                      keyboardType: TextInputType.number,
                      decoration: new InputDecoration(
                        isDense: true,
                        counter: Offstage(),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black, width: 1.0),
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        contentPadding: EdgeInsets.only(left: 10,  top: 8, right: 15),
                        hintText: 'Enter your mobile number',
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text('Email',style: const TextStyle(fontFamily: 'Lato',color: Colors.black,fontSize: 16)),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 5,bottom: 20),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        border: Border.all(color: Colors.grey,width: 1)
                    ),
                    child: TextFormField(
                      style: TextStyle(
                        fontFamily: 'Lato',color: Colors.grey,
                      ),
                      cursorColor: Colors.orange,
                      keyboardType: TextInputType.emailAddress,
                      decoration: new InputDecoration(
                        isDense: true,
                        counter: Offstage(),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black, width: 1.0),
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        contentPadding: EdgeInsets.only(left: 10, bottom: 3, top: 8, right: 15),
                        hintText: 'Enter your email Id',
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text('About Your Self(optional)',style: const TextStyle(fontFamily: 'Lato',color: Colors.black,fontSize: 16)),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 5,bottom: 20),
                  child: Container(
                    height: 70,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        border: Border.all(color: Colors.grey,width: 1)
                    ),
                    child: TextFormField(
                      style: TextStyle(fontSize: 19),
                      cursorHeight: 26,
                      cursorColor: Colors.orange,
                      keyboardType: TextInputType.multiline,
                      maxLines: null,
                      decoration: new InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black, width: 1.0),
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        contentPadding: EdgeInsets.only(left: 10, bottom: 5, top: 6, right: 15),

                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 8,bottom: 5),
                  child: Text('Address',style: const TextStyle(fontFamily: 'Poppins',color: Colors.black,fontSize: 17)),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 5,bottom: 20),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        border: Border.all(color: Colors.grey,width: 1)
                    ),
                    child: TextFormField(
                      cursorColor: Colors.orange,
                      keyboardType: TextInputType.multiline,
                      maxLines: null,
                      decoration: new InputDecoration(
                        isDense: true,
                        counter: Offstage(),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black, width: 1.0),
                          borderRadius: BorderRadius.circular(2.0),
                        ),
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        contentPadding: EdgeInsets.only(left: 15, bottom: 5, top: 8, right: 15),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 8,bottom: 5),
                  child: Text('State',style: const TextStyle(fontFamily: 'Poppins',color: Colors.black,fontSize: 16)),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 5,bottom: 20),
                  child: Container(
                    padding: EdgeInsets.only(left: 16,right: 16),
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey,width: 1),
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: DropdownButton(
                      icon: Icon(Icons.arrow_drop_down),
                      iconSize: 25,
                      isExpanded: true,
                      underline: SizedBox(),
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                      value: valueChoose,
                      borderRadius: BorderRadius.circular(20),
                      onChanged: (String? newvalue1) {
                        setState(() {
                          valueChoose = newvalue1!;
                        });
                      },
                      items: state.map((String state){
                        return DropdownMenuItem(
                          value: state,
                          child: Text(state),
                        );
                      }).toList(),

                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 8,bottom: 5),
                  child: Text('City',style: const TextStyle(fontFamily: 'Poppins',color: Colors.black,fontSize: 16)),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 5,bottom: 20),
                  child: Container(
                    padding: EdgeInsets.only(left: 16,right: 16),
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey,width: 1),
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: DropdownButton(
                      icon: Icon(Icons.arrow_drop_down),
                      iconSize: 25,
                      isExpanded: true,
                      underline: SizedBox(),
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                      value: valueChooseCity,
                      borderRadius: BorderRadius.circular(20),
                      onChanged: (String? newvalue1) {
                        setState(() {
                          valueChooseCity = newvalue1!;
                        });
                      },
                      items: City.map((String state){
                        return DropdownMenuItem(
                          value: state,
                          child: Text(state),
                        );
                      }).toList(),

                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 8,bottom: 5),
                  child: Text('Zipcode',style: const TextStyle(fontFamily: 'Poppins',color: Colors.black,fontSize: 16)),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 5,bottom: 5),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        border: Border.all(color: Colors.grey,width: 1)
                    ),
                    child: TextFormField(
                      maxLength: 6,
                      style: TextStyle(
                        fontFamily: 'Lato',color: Colors.grey,
                      ),
                      cursorHeight: 25,
                      cursorColor: Colors.orange,
                      keyboardType: TextInputType.number,
                      decoration: new InputDecoration(
                        isDense: true,
                        counter: Offstage(),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black, width: 1.0),
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        contentPadding: EdgeInsets.only(left: 10,top: 10,bottom: 5, right: 15),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 30),
                  child: Container(
                    width: double.infinity,
                    height: 47,
                    child: FloatingActionButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),

                      ),
                      backgroundColor: Color(0xff174590),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=> JobInfoPage()),);
                      },
                      child: Text('Next',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,fontFamily: 'Lato'),),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
