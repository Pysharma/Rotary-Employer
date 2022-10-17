import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rootery/screens/HomeWidget/Dashboard.dart';
import 'package:rootery/screens/JobApplication/JobInfoPage.dart';
import 'RecruiterDetails.dart';

class ThankUpage extends StatelessWidget {
  const ThankUpage({Key? key}) : super(key: key);

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
            Navigator.push(context, MaterialPageRoute(builder: (_)=> RecruiterDetails()));
          },

        ),
        title: Text('Thank You',
          style: TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.bold,
            fontFamily: 'Poppins',
            color: Colors.white,
          ),
        ),

      ),

      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: Colors.green,
              radius: 70,
              child: Icon(FontAwesomeIcons.check,color: Colors.white,size: 75,),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 17),
              child: Text("Your Job successfully\nposted!!",textAlign: TextAlign.center,style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold,fontSize: 20),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 8),
              child: Container(
                height: 48,
                margin: EdgeInsets.symmetric(),
                width: double.infinity,
                child: FlatButton(
                  child: Text("+Add other openings",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=> JobInfoPage()));
                  },
                  color: Color(0xff174590),
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: TextButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=> DashboardPage()));
                },
                child: Text('Go to Dashboard',style: TextStyle(color: Colors.black87,fontSize: 18,fontFamily: 'Lato',fontWeight: FontWeight.w500),),

              ),
            ),

            SizedBox(height: 40,)
          ],
        ),
      ),
    );
  }
}
