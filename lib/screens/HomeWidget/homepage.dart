import 'package:flutter/material.dart';
import 'package:rootery/screens/Homecontent.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 80,
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {  },
          icon: Icon(Icons.menu,color: Colors.black,size: 30,),

        ),
        title: Image.asset('assets/rotarylg.png',height: 90,),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: IconButton(
                onPressed: (){},
                icon: Icon(Icons.notifications_none_outlined,color: Colors.black,size: 30,)
            ),
          ),
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              AppBar(
                automaticallyImplyLeading: false,
                toolbarHeight: 55,
                elevation: 5,
                centerTitle: false,
                backgroundColor: Colors.black,
                title: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text('Find Jobs',style: TextStyle(color: Colors.white,fontSize: 14),),
                ),
                actions: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    child: TextButton(
                        onPressed: (){},
                      child: Text('Help?',style: TextStyle(color: Colors.white,fontSize: 14),),

                    ),
                  ),
                ],
              ),
              Container(
                color: Color(0xff174590),
                child: Stack(
                  children: <Widget>[
                    Image.asset('assets/image.png'),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 200,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text('Find the perfect',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.white),),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                          child: Text('Jobs',style: TextStyle(fontSize: 34,fontWeight: FontWeight.w700,color: Colors.white),),
                        ),
                        Container(
                          height: 53,
                          margin: EdgeInsets.only(left: 15,right: 15,top: 20),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Search "Engineering jobs"',
                              prefixIcon: Icon(Icons.search,size: 26,),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6),
                                borderSide: BorderSide.none,
                              ),
                              filled: true,
                              fillColor: Colors.white,
                            ),
                          ),
                        ),
                        Container(
                          height: 50,
                          margin: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                          width: double.infinity,
                          child: FlatButton(
                            child: Text("Search",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Poppins',
                              ),
                            ),
                            onPressed: (){
                              //Navigator.push(context, MaterialPageRoute(builder: (_)=> Homepage()),);
                            },
                            //color: Theme.of(context).primaryColor,
                            color: Color(0xFFF7A81B),
                            textColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6)
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 15),
                child: Row(
                  children: [
                    Text('Powered by: ',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.black),),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Image.asset('assets/rotarypowered.png',height: 35,),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Popular categories",style: TextStyle(fontFamily: 'Poppins',color: Colors.black,fontWeight: FontWeight.w600,fontSize: 18)),
                    TextButton(
                      onPressed: (){},
                      child: Row(
                        children: [
                          Text('View all',style: TextStyle(fontFamily: 'Poppins',fontSize: 14,color: Color(0xff008BDC),fontWeight: FontWeight.w600),),
                          Icon(Icons.arrow_forward,color: Color(0xff008BDC),size: 16,),
                        ],
                      ),
                    ),
                  ],),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  child: SizedBox(
                    height: 190,
                    child: GridView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: Categories.items.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index){
                        final item = Categories.items[index];
                        return Card(
                          margin: EdgeInsets.only(right: 10,top: 14,bottom: 20,left: 10),
                          elevation: 0,
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0)
                          ),
                          child: InkWell(
                            //onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> productpage(),),),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 20,left: 10,right: 10,bottom: 10),
                                  child: Image.asset(item.image,height: 60,),
                                ),
                                Text(item.name ,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                  ),),
                              ],
                            ),
                          ),
                        );
                      },
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                        childAspectRatio: 1.3,
                      ),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Popular Locations",style: TextStyle(fontFamily: 'Poppins',color: Colors.black,fontWeight: FontWeight.w600,fontSize: 18)),
                    TextButton(
                      onPressed: (){},
                      child: Row(
                        children: [
                          Text('View all',style: TextStyle(fontFamily: 'Poppins',fontSize: 14,color: Color(0xff008BDC),fontWeight: FontWeight.w600),),
                          Icon(Icons.arrow_forward,color: Color(0xff008BDC),size: 16,),
                        ],
                      ),
                    ),
                  ],),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  child: SizedBox(
                    height: 190,
                    child: GridView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: Locations.items.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index){
                        final item = Locations.items[index];
                        return Card(
                          margin: EdgeInsets.only(right: 10,top: 14,bottom: 20,left: 10),
                          elevation: 0,
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0)
                          ),
                          child: InkWell(
                            //onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> productpage(),),),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 20,left: 10,right: 10,bottom: 10),
                                  child: Image.asset(item.image,),
                                ),
                                Text(item.name ,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                  ),),
                              ],
                            ),
                          ),
                        );
                      },
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                        childAspectRatio: 1.3,
                      ),
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
