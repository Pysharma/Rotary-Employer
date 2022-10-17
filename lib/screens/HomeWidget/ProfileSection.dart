import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rootery/screens/HomeWidget/Dashboard.dart';

class ProfileSection extends StatefulWidget {
  const ProfileSection({Key? key}) : super(key: key);

  @override
  State<ProfileSection> createState() => _ProfileSectionState();
}

class _ProfileSectionState extends State<ProfileSection> {
  late String valueState='Chhattisgarh';
  var State=[
    "Chhattisgarh",
    "Bihar",
    "Orrisa",
  ];

  late String valueCity='Bilaspur';
  var City=[
    "Bilaspur",
    "Raipur",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
            Navigator.push(context, MaterialPageRoute(builder: (_)=> DashboardPage()),);
          },

        ),
        title: Text('Edit Profile',
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
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 20,bottom: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          height: 105,
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


                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text("Profile" ,
                                style: TextStyle(
                                    fontSize: 17,
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black

                                ),),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Container(
                                width: 250,
                                child: Text("Add company logo or your profile so job seekers will know exactly who they'll be working with ",
                                    style: const TextStyle(fontFamily: 'Lato',color: Colors.grey,fontWeight: FontWeight.w500,fontSize: 16)
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 8,top: 20),
                  child: Text('Registration Number',style: const TextStyle(fontFamily: 'Lato',color: Colors.black,fontSize: 16)),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 8,bottom: 20),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        border: Border.all(color: Colors.grey,width: 1)
                    ),
                    child: TextFormField(
                      style: TextStyle(fontFamily: 'Lato',color: Colors.grey,fontWeight: FontWeight.bold,),
                      cursorColor: Colors.orange,
                      keyboardType: TextInputType.text,
                      decoration: new InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        contentPadding: EdgeInsets.only(left: 15, bottom: 1, top: 1, right: 15),
                        hintText: 'ROTARY300545454',
                        hintStyle: TextStyle(fontFamily: 'Lato',color: Colors.grey,fontWeight: FontWeight.bold,),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text('Contact Number',style: const TextStyle(fontFamily: 'Lato',color: Colors.black,fontSize: 16)),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 8,bottom: 20),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        border: Border.all(color: Colors.grey,width: 1)
                    ),
                    child: TextFormField(
                      style: TextStyle(fontFamily: 'Lato',color: Colors.grey,),
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
                        contentPadding: EdgeInsets.only(left: 15, bottom: 5, top: 10, right: 15),
                        hintText: 'Enter mobile number',
                        hintStyle: TextStyle(fontFamily: 'Lato',color: Colors.grey[400],fontWeight: FontWeight.bold,),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text('Email ID',style: const TextStyle(fontFamily: 'Lato',color: Colors.black,fontSize: 16)),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 8,bottom: 20),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        border: Border.all(color: Colors.grey,width: 1)
                    ),
                    child: TextFormField(
                      style: TextStyle(fontFamily: 'Lato',color: Colors.grey,),
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
                        contentPadding: EdgeInsets.only(left: 15, bottom: 5, top: 9, right: 15),
                        hintText: 'Enter your company email ID',
                        hintStyle: TextStyle(fontFamily: 'Lato',color: Colors.grey[400],fontWeight: FontWeight.bold,),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text('Owner Name :',style: const TextStyle(fontFamily: 'Lato',color: Colors.black,fontSize: 16)),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 8,bottom: 20),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        border: Border.all(color: Colors.grey,width: 1)
                    ),
                    child: TextFormField(
                      style: TextStyle(fontFamily: 'Lato',color: Colors.grey,),
                      cursorColor: Colors.orange,
                      keyboardType: TextInputType.name,
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
                        contentPadding: EdgeInsets.only(left: 15, bottom: 5, top: 9, right: 15),
                        hintText: 'Enter owner name',
                        hintStyle: TextStyle(fontFamily: 'Lato',color: Colors.grey[400],fontWeight: FontWeight.bold,),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 8,bottom: 5),
                  child: Text('Address',style: const TextStyle(fontFamily: 'Lato',color: Colors.black,fontSize: 17)),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 8,bottom: 20),
                  child: Container(
                    height: 70,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        border: Border.all(color: Colors.grey,width: 1)
                    ),
                    child: TextFormField(
                      style: TextStyle(fontSize: 18),
                      cursorHeight: 26,
                      cursorColor: Colors.orange,
                      keyboardType: TextInputType.multiline,
                      maxLines: null,
                      decoration: new InputDecoration(
                        counter: Offstage(),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black, width: 1.0),
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        contentPadding: EdgeInsets.only(left: 15, bottom: 5, top: 6, right: 15),
                        hintText: 'Complete Address',
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 8,bottom: 5),
                  child: Text('State',style: const TextStyle(fontFamily: 'Lato',color: Colors.black,fontSize: 16)),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 5,bottom: 20),
                  child: Container(
                    padding: EdgeInsets.only(left: 16,right: 16),
                    height: 30,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey,width: 1),
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: DropdownButton(
                      icon: Icon(Icons.arrow_drop_down),
                      iconSize: 30,
                      isExpanded: true,
                      underline: SizedBox(),
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                      value: valueState,
                      borderRadius: BorderRadius.circular(20),
                      onChanged: (String? newvalue1) {
                        setState(() {
                          valueState = newvalue1!;
                        });
                      },
                      items: State.map((String state){
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
                  child: Text('City',style: const TextStyle(fontFamily: 'Lato',color: Colors.black,fontSize: 16)),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 5,bottom: 20),
                  child: Container(
                    padding: EdgeInsets.only(left: 16,right: 16),
                    height: 30,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey,width: 1),
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: DropdownButton(
                      icon: Icon(Icons.arrow_drop_down),
                      iconSize: 30,
                      isExpanded: true,
                      underline: SizedBox(),
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                      value: valueCity,
                      borderRadius: BorderRadius.circular(20),
                      onChanged: (String? newvalue1) {
                        setState(() {
                          valueCity = newvalue1!;
                        });
                      },
                      items: City.map((String city){
                        return DropdownMenuItem(
                          value: city,
                          child: Text(city),
                        );
                      }).toList(),

                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text('About (optional)',style: const TextStyle(fontFamily: 'Lato',color: Colors.black,fontSize: 16)),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 5,bottom: 20),
                  child: Container(
                    height: 110,
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
                        contentPadding: EdgeInsets.only(left: 15, bottom: 5, top: 6, right: 15),
                        hintText: 'Please write...',
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 20),
                  child: Container(
                    width: double.infinity,
                    height: 47,
                    child: FloatingActionButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),

                      ),
                      backgroundColor: Color(0xff174590),
                      onPressed: (){

                      },
                      child: Text('Update Profile',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,fontFamily: 'Lato'),),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                ),

                SizedBox(height: 50,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
