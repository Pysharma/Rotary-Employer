import 'package:flutter/material.dart';
import 'package:progress_indicator/progress_indicator.dart';
import 'package:rootery/screens/JobApplication/JobRequirementInfo.dart';
import 'package:rootery/screens/JobApplication/thankUpage.dart';

class RecruiterDetails extends StatelessWidget {
  const RecruiterDetails({Key? key}) : super(key: key);

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
            Navigator.push(context, MaterialPageRoute(builder: (_)=> JobRqdInfoPage()));
          },

        ),
        title: Text('Recruiter Details',
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
                  padding: const EdgeInsets.symmetric(vertical: 25,horizontal: 20),
                  child: BarProgress(
                    percentage: 100.0 ,
                    backColor: Color(0xffe5e5e5),
                    color: Color(0xff174590),
                    showPercentage: true,
                    textStyle:TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.bold),
                    stroke: 35,
                    round: true,
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text('Recruiter Details',style: const TextStyle(fontFamily: 'Lato',color: Colors.black,fontSize: 20)),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 8,top: 20),
                  child: Text('* Contact person/ Recruiter Name',style: const TextStyle(fontFamily: 'Lato',color: Colors.black,fontSize: 16)),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 8,bottom: 20),
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
                        contentPadding: EdgeInsets.only(left: 8,top: 8,bottom: 3, right: 15),
                        hintText: 'Ex- Krishna Reddy',
                        hintStyle: TextStyle(fontFamily: 'Lato',color: Colors.grey,),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text('* Email ID',style: const TextStyle(fontFamily: 'Lato',color: Colors.black,fontSize: 16)),
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
                        hintText: 'Ex- akrishna@gmail.com',
                        hintStyle: TextStyle(fontFamily: 'Lato',color: Colors.grey,),

                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text('* Phone Number',style: const TextStyle(fontFamily: 'Lato',color: Colors.black,fontSize: 16)),
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
                        hintText: 'Ex- 1234567890',
                        hintStyle: TextStyle(fontFamily: 'Lato',color: Colors.grey,),
                      ),
                    ),
                  ),
                ),

                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 10,bottom: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                      Image.asset('assets/pop-up-alert.png',height: 40,),
                      Container(
                        width: 300,
                        child: Text("Asking job seeker for any kind of payment is strictly prohibited ",
                            style: const TextStyle(fontFamily: 'Lato',color: Colors.black,fontSize: 15)
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 15,bottom: 80),
                  child: Container(
                    alignment: Alignment.center,
                    child: Container(
                      width: 180,
                      height: 48,
                      child: FloatingActionButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),

                        ),
                        backgroundColor: Color(0xff174590),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (_)=> ThankUpage()));
                        },
                        child: Text('Next',style: TextStyle(fontSize: 19,fontFamily: 'Lato'),),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                      ),
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
