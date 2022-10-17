import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:progress_indicator/progress_indicator.dart';
import 'package:rootery/screens/JobApplication/JobInfoPage.dart';
import '../IndividualEmp/Multiselect/app_data_controller.dart';
import 'package:multi_select_flutter/dialog/multi_select_dialog_field.dart';
import '../IndividualEmp/Multiselect/subject_data_model.dart';
import 'RecruiterDetails.dart';

class JobRqdInfoPage extends StatefulWidget {
  const JobRqdInfoPage({Key? key}) : super(key: key);

  @override
  State<JobRqdInfoPage> createState() => _JobRqdInfoPageState();
}

class _JobRqdInfoPageState extends State<JobRqdInfoPage> {
  final AppDataController controller = Get.put(AppDataController());
  @override
  Widget build(BuildContext context) {
    late String WorkingHours='01 - 03 Years';
    var Hours=[
      "01 - 03 Years",
      "03 - 05 Years",
      "05 - 10 Years",
      "10 Years & Above",
    ];

    late String QualificationChoose='10th Pass';
    var qualification=[
      "10th Pass",
      "12th Pass",
      "Graduate",
      "Post Graduate",
      "Phd",
      "Other",
    ];

    late String GenderChoose='male';
    var gender=[
      "male",
      "female",
      "Any One",
    ];

    late String SpeakingChoose='Normal';
    var Skill=[
      "Normal",
      "Medium",
      "Fluent",
      "None",
    ];

    List subjectData = [];

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      controller.getSubjectData();
    });

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
            Navigator.push(context, MaterialPageRoute(builder: (_)=> JobInfoPage()));
          },

        ),
        title: Text('Job Requirement Information',
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
                    percentage: 75.0 ,
                    backColor: Color(0xffe5e5e5),
                    color: Color(0xff174590),
                    showPercentage: true,
                    textStyle:TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.bold),
                    stroke: 35,
                    round: true,
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 8,top: 20),
                  child: Text('* Work Experience Required',style: const TextStyle(fontFamily: 'Lato',color: Colors.black,fontSize: 16)),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 12,bottom: 10),
                  child: Container(
                    padding: EdgeInsets.only(left: 26,right: 18,top: 5,bottom: 5),
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
                  padding: const EdgeInsets.only(left: 8,top: 10),
                  child: Text("* Candidate's Minimum Qualification Should be",style: const TextStyle(fontFamily: 'Lato',color: Colors.black,fontSize: 16)),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 12,bottom: 12),
                  child: Container(
                    padding: EdgeInsets.only(left: 26,right: 18,top: 5,bottom: 5),
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
                      value: QualificationChoose,
                      borderRadius: BorderRadius.circular(10),
                      onChanged: (String? newvalue1) {
                        setState(() {
                          QualificationChoose = newvalue1!;
                        });
                      },
                      items: qualification.map((String state){
                        return DropdownMenuItem(
                          value: state,
                          child: Text(state),
                        );
                      }).toList(),

                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 8,bottom: 10),
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
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
                  child: Text("* Gender of Staff Should be",style: const TextStyle(fontFamily: 'Lato',color: Colors.black,fontSize: 16)),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 12,bottom: 12),
                  child: Container(
                    padding: EdgeInsets.only(left: 26,right: 18,top: 5,bottom: 5),
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
                      value: GenderChoose,
                      borderRadius: BorderRadius.circular(10),
                      onChanged: (String? newvalue1) {
                        setState(() {
                          GenderChoose = newvalue1!;
                        });
                      },
                      items: gender.map((String state){
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
                  child: Text("* Candidate's English Speaking Skill should be",style: const TextStyle(fontFamily: 'Lato',color: Colors.black,fontSize: 16)),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 12,bottom: 12),
                  child: Container(
                    padding: EdgeInsets.only(left: 26,right: 18,top: 5,bottom: 5),
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
                      value: SpeakingChoose,
                      borderRadius: BorderRadius.circular(10),
                      onChanged: (String? newvalue1) {
                        setState(() {
                          SpeakingChoose = newvalue1!;
                        });
                      },
                      items: Skill.map((String state){
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
                  child: Text("* Candidates can call me",style: const TextStyle(fontFamily: 'Lato',color: Colors.black,fontSize: 16)),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 15,bottom: 10),
                  child: Container(
                    child: IntrinsicHeight(
                      child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Expanded(
                              flex: 3,
                              child: Container(
                                padding: EdgeInsets.only(top: 10),
                                height: 40.0,
                                decoration: BoxDecoration(
                                    color: Colors.white,

                                  boxShadow: [
                                    BoxShadow(
                                        color: Color(0xffe0e0e0),
                                        blurRadius: 4
                                    )
                                  ],
                                ),
                                margin: EdgeInsets.only(bottom: 10,right: 5),
                                width: double.infinity,
                                child: Text("Everyday",textAlign: TextAlign.center,),
                                //decoration: BoxDecoration(),
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Container(
                                padding: EdgeInsets.only(top: 10),
                                height: 40.0,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color(0xffe0e0e0),
                                        blurRadius: 4
                                    )
                                  ],
                                ),
                                margin: EdgeInsets.only(bottom: 10,right: 5),
                                width: double.infinity,
                                child: Text("Mon-Fri",textAlign: TextAlign.center,),
                                //decoration: BoxDecoration(),
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Container(
                                padding: EdgeInsets.only(top: 10),
                                height: 40.0,
                                decoration: BoxDecoration(
                                  color: Colors.white,

                                  boxShadow: [
                                    BoxShadow(
                                        color: Color(0xffe0e0e0),
                                        blurRadius: 4
                                    )
                                  ],
                                ),
                                margin: EdgeInsets.only(bottom: 10,right: 5),
                                width: double.infinity,
                                child: Text("Mon-Sat",textAlign: TextAlign.center,),
                                //decoration: BoxDecoration(),
                              ),
                            ),
                          ]),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 8,top: 10),
                  child: Text("* Preffered Skills",style: const TextStyle(fontFamily: 'Lato',color: Colors.black,fontSize: 16)),
                ),

                GetBuilder<AppDataController>(builder: (controller) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: MultiSelectDialogField(
                      items: controller.dropDownData,
                      title: const Text(
                        "Select Jobs",
                        style: TextStyle(color: Colors.black),
                      ),
                      selectedColor: Colors.black,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                        border: Border.all(
                          color: Colors.grey,
                          width: 2,
                        ),
                      ),
                      buttonIcon: const Icon(
                        Icons.arrow_drop_down,
                      ),

                      onConfirm: (results) {
                        subjectData = [];
                        for (var i = 0; i < results.length; i++) {
                          SubjectModel data = results[i] as SubjectModel;
                          print(data.subjectId);
                          print(data.subjectName);
                          subjectData.add(data.subjectId);
                        }
                        print("data $subjectData");

                        //_selectedAnimals = results;
                      },
                    ),
                  );
                }),


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
                          Navigator.push(context, MaterialPageRoute(builder: (_)=> RecruiterDetails()));
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
