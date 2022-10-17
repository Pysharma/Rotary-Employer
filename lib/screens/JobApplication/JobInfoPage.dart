import 'package:flutter/material.dart';
import 'package:progress_indicator/progress_indicator.dart';
import 'package:intl/intl.dart';
import 'package:rootery/screens/IndividualEmp/IndividualProfile.dart';
import 'package:rootery/screens/JobApplication/JobRequirementInfo.dart';

class JobInfoPage extends StatefulWidget {
  const JobInfoPage({Key? key}) : super(key: key);

  @override
  State<JobInfoPage> createState() => _JobInfoPageState();
}

class _JobInfoPageState extends State<JobInfoPage> {

  TextEditingController dateinput = TextEditingController();

  @override
  void initState() {
    dateinput.text = ""; //set the initial value of text field
    super.initState();
  }

  late String valueChooseTitle='2 Wheeler Washer';
  var JobTitle=[
    "2 Wheeler Washer",
    "2D/3D Architect",
    "3D Animator",
  ];

  late String valueChooseState='Chhattisgarh';
  var state=[
    "Chhattisgarh",
    "Bihar",
    "Orrisa",
  ];

  late String valueChooseLocation='Bilaspur';
  var City=[
    "Bilaspur",
    "Raipur",
  ];

  late String valueChooseWork='Part Time';
  var WorkType=[
    "Part Time",
    "Full Time",
    "Contractual"
  ];

  late String WorkingHours='1 Hr';
  var Hours=[
    "1 Hr",
    "2 Hr",
    "3 Hr"
  ];

  late String valueChooseYear='Year';
  var Duration=[
    "Year",
    "Month",
    "Day",
    "Week",
    "Hour",
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
            Navigator.push(context, MaterialPageRoute(builder: (_)=> IndividualProfile()));
          },

        ),
        title: Text('Job Information',
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
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 33,horizontal: 20),
                  child: BarProgress(
                    percentage: 50.0 ,
                    backColor: Color(0xffe5e5e5),
                    color: Color(0xff174590),
                    showPercentage: true,
                    textStyle:TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.bold),
                    stroke: 35,
                    round: true,
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 8,top: 10),
                  child: Text('* Job Title',style: const TextStyle(fontFamily: 'Lato',color: Colors.black,fontSize: 16)),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 12,bottom: 10),
                  child: Container(
                    padding: EdgeInsets.only(left: 16,right: 16),
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey,width: 1),
                      borderRadius: BorderRadius.circular(5),
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
                      value: valueChooseTitle,
                      borderRadius: BorderRadius.circular(20),
                      onChanged: (String? newvalue1) {
                        setState(() {
                          valueChooseTitle = newvalue1!;
                        });
                      },
                      items: JobTitle.map((String state){
                        return DropdownMenuItem(
                          value: state,
                          child: Text(state),
                        );
                      }).toList(),

                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 8,top: 10),
                  child: Text('* State',style: const TextStyle(fontFamily: 'Lato',color: Colors.black,fontSize: 16)),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 12,bottom: 12),
                  child: Container(
                    padding: EdgeInsets.only(left: 16,right: 16),
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey,width: 1),
                      borderRadius: BorderRadius.circular(3),
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
                      value: valueChooseState,
                      borderRadius: BorderRadius.circular(20),
                      onChanged: (String? newvalue1) {
                        setState(() {
                          valueChooseState = newvalue1!;
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
                  padding: const EdgeInsets.only(left: 8,top: 10),
                  child: Text('* Work Location',style: const TextStyle(fontFamily: 'Lato',color: Colors.black,fontSize: 16)),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 12,bottom: 12),
                  child: Container(
                    padding: EdgeInsets.only(left: 16,right: 16),
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey,width: 1),
                      borderRadius: BorderRadius.circular(3),
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
                      value: valueChooseLocation,
                      borderRadius: BorderRadius.circular(20),
                      onChanged: (String? newvalue1) {
                        setState(() {
                          valueChooseLocation = newvalue1!;
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
                  padding: const EdgeInsets.only(left: 8,top: 10),
                  child: Text('* Job Description',style: const TextStyle(fontFamily: 'Lato',color: Colors.black,fontSize: 16)),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 8,bottom: 10),
                  child: Container(
                    height: 100,
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
                  padding: const EdgeInsets.only(left: 8,top: 10),
                  child: Text('Who can apply this job?(Optional)',style: const TextStyle(fontFamily: 'Lato',color: Colors.black,fontSize: 16)),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 8,bottom: 10),
                  child: Container(
                    height: 100,
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
                  padding: const EdgeInsets.only(left: 8,top: 10),
                  child: Text('* Stipend/Salary',style: const TextStyle(fontFamily: 'Lato',color: Colors.black,fontSize: 16)),
                ),


                Padding(
                  padding: const EdgeInsets.only(top: 15,bottom: 10),
                  child: Container(
                    child: IntrinsicHeight(
                      child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Expanded(
                              flex: 5,
                              child: Container(
                                height: 40.0,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(color: Colors.grey,width: 1)
                                ),
                                margin: EdgeInsets.only(bottom: 10,right: 5),
                                width: double.infinity,
                                child: TextFormField(
                                  textAlign: TextAlign.center,
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
                                      borderRadius: BorderRadius.circular(3.0),
                                    ),
                                    focusedBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    disabledBorder: InputBorder.none,
                                    contentPadding: EdgeInsets.only(top: 10, ),
                                    hintText: "₹ 15000",
                                    hintStyle: TextStyle(fontFamily: 'Lato',color: Colors.grey,),
                                  ),
                                ),
                                //decoration: BoxDecoration(),
                              ),
                            ),
                            Expanded(
                              flex: 5,
                              child: Container(
                                padding: EdgeInsets.only(left: 14,right: 14),
                                height: 40.0,
                                margin: EdgeInsets.only(left: 5,bottom: 10),
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey,width: 1),
                                  borderRadius: BorderRadius.circular(5),
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
                                  value: valueChooseYear,
                                  borderRadius: BorderRadius.circular(10),
                                  onChanged: (String? newvalue1) {
                                    setState(() {
                                      valueChooseYear = newvalue1!;
                                    });
                                  },
                                  items: Duration.map((String state){
                                    return DropdownMenuItem(
                                      value: state,
                                      child: Text(state),
                                    );
                                  }).toList(),

                                ),
                                //decoration: BoxDecoration(),
                              ),
                            ),
                          ]),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 8,top: 10),
                  child: Text('* Work Type',style: const TextStyle(fontFamily: 'Lato',color: Colors.black,fontSize: 16)),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 14,bottom: 12),
                  child: Container(
                    padding: EdgeInsets.only(left: 16,right: 16),
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey,width: 1),
                      borderRadius: BorderRadius.circular(3),
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
                      value: valueChooseWork,
                      borderRadius: BorderRadius.circular(20),
                      onChanged: (String? newvalue1) {
                        setState(() {
                          valueChooseWork = newvalue1!;
                        });
                      },
                      items: WorkType.map((String state){
                        return DropdownMenuItem(
                          value: state,
                          child: Text(state),
                        );
                      }).toList(),

                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 8,top: 10),
                  child: Text('* Apply till',style: const TextStyle(fontFamily: 'Lato',color: Colors.black,fontSize: 16)),
                ),


                Padding(
                  padding: const EdgeInsets.only(top: 10,bottom: 10),
                  child: Container(
                    padding: EdgeInsets.only(left: 16,right: 8),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey,width: 1),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: TextField(
                      cursorColor: Colors.orange,
                      controller: dateinput, //editing controller of this TextField
                      decoration: InputDecoration(
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        suffixIcon: Icon(Icons.calendar_today,color: Color(0xff737373),),
                        hintText: 'Last Date of application submission',
                        hintStyle: TextStyle(fontFamily: "Lato",fontWeight: FontWeight.w600,color: Colors.grey,letterSpacing: 0.2)
                      ),
                      readOnly: true,  //set it true, so that user will not able to edit text
                      onTap: () async {
                        DateTime? pickedDate = await showDatePicker(
                            context: context, initialDate: DateTime.now(),
                            firstDate: DateTime(2000), //DateTime.now() - not to allow to choose before today.
                            lastDate: DateTime(2101)
                        );

                        if(pickedDate != null ){
                          print(pickedDate);  //pickedDate output format => 2021-03-10 00:00:00.000
                          String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
                          print(formattedDate); //formatted date output using intl package =>  2021-03-16
                          //you can implement different kind of Date Format here according to your requirement

                          setState(() {
                            dateinput.text = formattedDate; //set output date to TextField value.
                          });
                        }else{
                          print("Date is not selected");
                        }
                      },
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 8,top: 12),
                  child: Text('* No. of openings',style: const TextStyle(fontFamily: 'Lato',color: Colors.black,fontSize: 16)),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 10,bottom: 10),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
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
                        contentPadding: EdgeInsets.only(left: 13,top: 8,bottom: 4, right: 15),
                        hintText: "Ex- 3",
                        hintStyle: TextStyle(fontFamily: 'Lato',color: Colors.grey)
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 8,top: 12),
                  child: Text('* Working Hrs',style: const TextStyle(fontFamily: 'Lato',color: Colors.black,fontSize: 16)),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 12,bottom: 12),
                  child: Container(
                    padding: EdgeInsets.only(left: 16,right: 16,top: 5,bottom: 5),
                    height: 45,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey,width: 1),
                      borderRadius: BorderRadius.circular(5),
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
                      value: WorkingHours,
                      borderRadius: BorderRadius.circular(10),
                      onChanged: (String? newvalue1) {
                        setState(() {
                          WorkingHours = newvalue1!;
                        });
                      },
                      items: Hours.map((String state){
                        return DropdownMenuItem(
                          value: state,
                          child: Text(state),
                        );
                      }).toList(),

                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 15,bottom: 80),
                  child: Container(
                    alignment: Alignment.center,
                    child: Container(
                      width: 170,
                      height: 45,
                      child: FloatingActionButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),

                        ),
                        backgroundColor: Color(0xff174590),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (_)=> JobRqdInfoPage()));
                        },
                        child: Text('Next',style: TextStyle(fontSize: 16),),
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
