import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:progress_indicator/progress_indicator.dart';
import 'package:rootery/screens/Company/CompanyRegistration.dart';
import 'package:rootery/screens/IndividualEmp/IndividualProfile.dart';

class EmployerType extends StatefulWidget {
  const EmployerType({Key? key}) : super(key: key);

  @override
  State<EmployerType> createState() => _EmployerTypeState();
}

class _EmployerTypeState extends State<EmployerType> {
  //int selected_inx = 0;
  @override
  Widget build(BuildContext context) {

    // var n = 2;
    // var listOfContainers = <Padding>[];
    // var list = List<int>.generate(n, (i) => i +4);
    // list.forEach((i) {
    //   Color borderColor = (i == selected_inx) ? Color(0xff174590) : Colors.white;
    //   return listOfContainers.add(
    //     Padding(
    //       padding: const EdgeInsets.all(5),
    //       child: Container(
    //         decoration: BoxDecoration(
    //           color: Colors.white,
    //           boxShadow: [
    //             BoxShadow(
    //                 color: Color(0xffe0e0e0),
    //                 blurRadius: 2
    //             )
    //           ],
    //         ),
    //         width: 170,
    //         height: 190,
    //
    //         child: Container(
    //           margin: EdgeInsets.all(10),
    //           decoration: BoxDecoration(
    //               color: Colors.white,
    //               border: Border.all(width: 2, color: borderColor),
    //               borderRadius: const BorderRadius.all(Radius.circular(5))),
    //
    //           child: InkWell(
    //             child: Column(
    //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //               crossAxisAlignment: CrossAxisAlignment.center,
    //               children: [
    //                 Padding(
    //                   padding: const EdgeInsets.only(right: 10),
    //                   child: Image.asset('assets/employee (2) 1.png',repeat: ImageRepeat.noRepeat,scale: 6),
    //                 ),
    //                 Text("Individual",style: TextStyle(fontFamily: 'Lato',fontSize: 20),),
    //               ],
    //             ),
    //             onTap: () {
    //               setState(() {
    //                 selected_inx = i;
    //                 print(i);
    //               });
    //             },
    //           ),
    //         ),
    //       ),
    //     ),
    //
    //   );
    // });

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
          },

        ),
        title: Text('Select Employer Type',
          style: TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.bold,
            fontFamily: 'Poppins',
            color: Colors.white,
          ),
        ),

      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
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

              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 40),
                    child: Text("Are you a",style: TextStyle(fontFamily: 'Lato',fontSize: 20),),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      child: IntrinsicHeight(
                        child: Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color(0xffe0e0e0),
                                          blurRadius: 2
                                      )
                                    ],
                                  ),
                                  width: 170,
                                  height: 190,

                                  child: Container(
                                    margin: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(width: 2, color: Color(0xff174590)),
                                        borderRadius: const BorderRadius.all(Radius.circular(5))),

                                    child: InkWell(
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(right: 10),
                                            child: Image.asset('assets/employee (2) 1.png',repeat: ImageRepeat.noRepeat,scale: 6),
                                          ),
                                          Text("Individual",style: TextStyle(fontFamily: 'Lato',fontSize: 20),),
                                        ],
                                      ),
                                      onTap: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (_)=> IndividualProfile()),);
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color(0xffe0e0e0),
                                          blurRadius: 2
                                      )
                                    ],
                                  ),
                                  width: 170,
                                  height: 190,

                                  child: Container(
                                    margin: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(width: 2, color: Color(0xff174590)),
                                        borderRadius: const BorderRadius.all(Radius.circular(5))),

                                    child: InkWell(
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(right: 10),
                                            child: Image.asset('assets/company.png',repeat: ImageRepeat.noRepeat,scale: 6),
                                          ),
                                          Text("Company",style: TextStyle(fontFamily: 'Lato',fontSize: 20),),
                                        ],
                                      ),
                                      onTap: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (_)=> CompanyRegistration()),);
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: SizedBox(
                  child: Container(
                    width: 170,
                    height: 47,
                    child: FloatingActionButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),

                      ),
                      backgroundColor: Color(0xff174590),
                      onPressed: (){
                        Fluttertoast.showToast(
                          msg: 'Please select registration type',
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.CENTER,
                          timeInSecForIosWeb: 2,
                          backgroundColor: Colors.white,
                          textColor: Colors.black,
                          fontSize: 13,
                        );
                      },
                      child: Text('Next',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,fontFamily: 'Lato'),),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                    ),
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
