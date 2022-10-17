import 'package:flutter/material.dart';
import 'package:rootery/screens/HomeWidget/Dashboard.dart';

import 'Contents.dart';
import 'JobDetails.dart';


class AllJobsView extends StatefulWidget {
  const AllJobsView({Key? key}) : super(key: key);

  @override
  State<AllJobsView> createState() => _AllJobsViewState();
}

class _AllJobsViewState extends State<AllJobsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
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
        title: Text('Jobs',
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
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 10),
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: Catalogmodel.items.length,
                  itemBuilder: (context, index){
                    final item = Catalogmodel.items[index];
                    return Card(
                      margin: EdgeInsets.only(left: 5,right: 5,top: 15,bottom: 5),
                      elevation: 5,
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0)
                      ),
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 15,),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Text( item.name,
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontFamily: 'Lato',
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                          ),),
                                      ),
                                      Image.asset(item.image,height: 40,),
                                    ],
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
                                                  fontSize: 14,
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
                                                  fontSize: 14,
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
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> JobDetails(item: item),),);
                                },
                                child: Text('View Details',style: TextStyle(fontFamily: 'Lato',fontSize: 16,color: Colors.black87,),),
                              ),
                            ),
                            SizedBox(height: 7,)
                          ],
                        ),
                      ),
                    );
                  },

                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
