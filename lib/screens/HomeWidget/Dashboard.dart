import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rootery/screens/HomeWidget/ProfileSection.dart';
import 'package:rootery/screens/JobApplication/JobInfoPage.dart';
import 'Contents.dart';
import 'JobDetails.dart';
import 'RecentJobsView.dart';

class DashboardPage extends StatefulWidget {
  DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _currentIndex =0;

  List<String> values =[
    'Total  Jobs Live',
    'Total  Job Applied',
    'Total Selected',
    'Total Interviews',
  ];

  List<String> valuesData =[
    '0',
    '0',
    '0',
    '0',
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar : AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Image.asset('assets/rotarylg.png',height: 95,),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(6),
                      child: Image.asset('assets/drawer.jpg',
                        height: 45,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Rotary Jobs',style: TextStyle(color: Colors.white,fontSize: 17,fontFamily: 'Lato'),),
                          SizedBox(height: 5),
                          Text(Strings.number,style: TextStyle(color: Colors.white.withOpacity(0.8),fontSize: 15,fontFamily: 'Lato'),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              decoration: BoxDecoration(
                color: Color(0xff174590),
              ),
            ),
            ListTile(
              leading: Icon(
                FontAwesomeIcons.userEdit,size: 20,color: Colors.black,
              ),
              title: Text('Edit Profile',style: TextStyle(fontFamily: 'Lato',fontWeight: FontWeight.w600),),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_)=> ProfileSection()));
              },
            ),
            ListTile(
              leading: Icon(
                FontAwesomeIcons.users,color: Colors.black,size: 21,
              ),
              title: Text('Post New Hiring',style: TextStyle(fontFamily: 'Lato',fontWeight: FontWeight.w600),),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_)=> JobInfoPage()));
              },
            ),
            ListTile(
              leading: Icon(
                FontAwesomeIcons.solidFileAlt,color: Colors.black,size: 25,
              ),
              title: Text('All Job Posts',style: TextStyle(fontFamily: 'Lato',fontWeight: FontWeight.w600),),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              leading: Icon(
                FontAwesomeIcons.solidQuestionCircle,color: Colors.black,size: 25,
              ),
              title: Text('FAQ',style: TextStyle(fontFamily: 'Lato',fontWeight: FontWeight.w600),),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              leading: Icon(
                Icons.receipt_long_rounded,color: Colors.black,size: 25,
              ),
              title: Text('Terms & Conditions',style: TextStyle(fontFamily: 'Lato',fontWeight: FontWeight.w600),),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              leading: Icon(Icons.privacy_tip_sharp,color: Colors.black87,),
              title: Text('Privacy Policy',style: TextStyle(fontFamily: 'Lato',fontWeight: FontWeight.w600),),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              leading: Icon(
                FontAwesomeIcons.whatsapp,color: Colors.black,size: 25,
              ),
              title: Text('WhatsApp Support',style: TextStyle(fontFamily: 'Lato',fontWeight: FontWeight.w600),),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              leading: Icon(
                Icons.mail,color: Colors.black87,size: 25,
              ),
              title: Text('Email Support',style: TextStyle(fontFamily: 'Lato',fontWeight: FontWeight.w600),),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              leading: Icon(
                Icons.logout,color: Colors.black,size: 25,
              ),
              title: Text('Logout',style: TextStyle(fontFamily: 'Lato',fontWeight: FontWeight.w600),),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),

      body: Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              AppBar(
                automaticallyImplyLeading: false,
                toolbarHeight: 60,
                centerTitle: false,
                backgroundColor: Colors.orangeAccent,
                title: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text('Hiring Analytics',style: TextStyle(color: Colors.white,fontSize: 16),),
                ),
                actions: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 8),
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                      height: 42,
                      color: Colors.white,
                      onPressed: () {

                      },
                      child: Text("New Job Post",style: TextStyle(color: Color(0xff174590),fontFamily: 'Lato',fontWeight: FontWeight.bold),),

                    ),
                  ),
                ],
              ),

              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: GridView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 4,
                  itemBuilder: (context, index){
                    return Card(
                      margin: EdgeInsets.only(left: 4,right: 4,top: 5,bottom: 5),
                      color: Colors.white,
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text( values[index],
                              style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'Lato',
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: Text( valuesData[index],
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Lato',
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                ),),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisExtent: 80,
                  ),
                ),
              ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
            child: Material(
              elevation: 4,
              borderRadius: BorderRadius.circular(8),
              child: Container(
                decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                ),
                margin: EdgeInsets.only(top: 5,),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text( 'Hiring Completed',
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Lato',
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 6),
                          child: Text( Strings.hiring_completed,
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Lato',
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),

              Divider(
                color: Colors.grey,
                thickness: 1.5,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Recent Job Activities",style: TextStyle(fontFamily: 'Lato',color: Colors.black,fontWeight: FontWeight.w600,fontSize: 20)),
                    TextButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=> AllJobsView()),);
                      },
                      child: Row(
                        children: [
                          Text('View all ',style: TextStyle(fontFamily: 'Lato',fontSize: 16,color: Color(0xff174590),fontWeight: FontWeight.bold),),
                          Icon(Icons.arrow_forward_ios,color: Colors.black87,size: 14,),
                        ],
                      ),
                    ),
                  ],),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                child: Container(
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: Catalogmodel.items.length,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index){
                      final item = Catalogmodel.items[index];
                      return Card(
                        margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                        elevation: 5,
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(3.0)
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 15,),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text( item.name,
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontFamily: 'Lato',
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                          ),),
                                        Image.asset(item.image,height: 40,),
                                      ],
                                    ),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: Text(item.desc,style: TextStyle(
                                        fontFamily: 'Lato', fontSize: 15,color: Colors.grey)),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 5),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text( 'Stipend/Salary',
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontFamily: 'Lato',
                                                color: Colors.black87,
                                              ),),

                                            Padding(
                                              padding: const EdgeInsets.only(top: 5),
                                              child: Text("\₹ ${item.price}/Month ",
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  fontFamily: 'Lato',
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black87,
                                                ),),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text( 'Location',
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontFamily: 'Lato',
                                                color: Colors.black87,
                                              ),),


                                            Padding(
                                              padding: const EdgeInsets.only(top: 5),
                                              child: Text(item.location,
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  fontFamily: 'Lato',
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black87,
                                                ),),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text( 'Apply by',
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontFamily: 'Lato',
                                                color: Colors.black87,
                                              ),),

                                            Padding(
                                              padding: const EdgeInsets.only(top: 5),
                                              child: Text(item.date,
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  fontFamily: 'Lato',
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black87,
                                                ),),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text( "Openings",
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontFamily: 'Lato',
                                                color: Colors.black87,
                                              ),),
                                            Padding(
                                              padding: const EdgeInsets.symmetric(vertical: 4),
                                              child: Text( item.opening,
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 17,
                                                  fontFamily: 'Lato',
                                                  color: Colors.black,
                                                ),),
                                            ),

                                          ],
                                        ),

                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            Text( "Job Type",
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontFamily: 'Lato',
                                                color: Colors.black87,
                                              ),),
                                            Padding(
                                              padding: const EdgeInsets.symmetric(vertical: 4),
                                              child: Text( item.worktype,
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15,
                                                  fontFamily: 'Lato',
                                                  color: Colors.black,
                                                ),),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),

                                ],
                              ),
                            ),

                            Divider(
                              color: Colors.grey,
                              thickness: 2,
                            ),


                            Center(
                              child: TextButton(
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> JobDetails(item: item,),),);
                                },
                                child: Text('View Details',style: TextStyle(fontFamily: 'Lato',fontSize: 16,color: Colors.black87,),),
                              ),
                            ),
                            SizedBox(height: 7,)
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),

              Divider(
                color: Colors.grey,
                thickness: 1.5,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: TextButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=> AllJobsView()),);
                  },
                  child: Text('View all ',style: TextStyle(fontFamily: 'Lato',fontSize: 16,color: Color(0xff174590),fontWeight: FontWeight.bold),),
                ),
              ),

              Container(
                width: double.infinity,
                color: Color(0xff174590),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 180,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 5),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      RichText(
                                        textAlign: TextAlign.start,
                                        text : TextSpan(
                                            style: TextStyle(
                                                color: Colors.white, fontFamily: "Lato"
                                            ),
                                            children: <TextSpan>[
                                              TextSpan(text: 'Post your New\nJob Roles',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600)),
                                              TextSpan(text: "\n\n"),
                                              TextSpan(text: 'Lorem ipsum dolor sit amet, consectetur adipiscing.',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w400)),
                                            ]
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 7),
                                        child: FlatButton(
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(7),
                                          ),
                                          height: 42,
                                          color: Colors.orangeAccent,
                                          onPressed: () {
                                          },
                                          child: Text("Post Job",style: TextStyle(color: Color(0xff174590),fontFamily: 'Lato',fontWeight: FontWeight.bold),),

                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: Image.asset('assets/manimg.png',height: 170,fit: BoxFit.fitWidth,alignment: Alignment.centerLeft),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Powered by: ',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.black),),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Image.asset('assets/rotarypowered.png',height: 35,),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 50,),
            ],
          ),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xff174590),
        showUnselectedLabels: true,
        currentIndex: _currentIndex,
        selectedLabelStyle: TextStyle(color: Colors.white),
        selectedItemColor: Colors.white,
        unselectedItemColor: Color(0xffAABCDB),
        onTap: (index){
          setState(() {
            _currentIndex=index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home',backgroundColor: Color(0xff174590),),
          BottomNavigationBarItem(icon: Icon(Icons.markunread_mailbox),label: 'My Job',backgroundColor: Color(0xff174590)),
          BottomNavigationBarItem(icon: Image.asset('assets/Group.png',height: 20,),label: 'Support',backgroundColor: Color(0xff174590)),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile',backgroundColor: Color(0xff174590)),
        ],
      ),
    );
  }
}
