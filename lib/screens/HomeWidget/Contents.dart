class Strings {
  Strings._();

  static const String logindesc = 'Make job offers directly from Rotary Jobs, highlighting people with the best skillsets for your posittion. Inform them about available positions and urge them to apply immediately from their phones.';
  static const String number = '8812330034';
  static const String hiring_completed = '0';

}

class Catalogmodel{
  static final items = [
    Item(id: 1,
      name: "2 Wheeler Washer",
      desc: 'VZ',
      price: 12000,
      location: "Jagdalpur" ,
      image: 'assets/2560px-Adidas_Logo 1.png',
      date: "16 Aug 2022",
      opening: "12",
      worktype: "Full Time" ,
      worktiming: "8 Hr Hrs",
      experienced: "03-05 Years",
      qualification: "12th Pass",
      contName: "samit",
      contNo: "6454545455",
      emailID: "sumitashu007@gmail.com",
      address: "Jagdalpur",
    ),
    Item(id: 1,
      name: "Accounts Admin",
      desc: 'AD',
      price: 12000,
      location: "bilaspur" ,
      image: 'assets/amazon.png',
      date: "16 Aug 2022",
      opening: "45",
      worktype: "Part Time" ,
      worktiming: "8 Hr Hrs",
      experienced: "03-05 Years",
      qualification: "12th Pass",
      contName: "samit",
      contNo: "6454545455",
      emailID: "sumitashu007@gmail.com",
      address: "Jagdalpur",
    ),
    Item(id: 1,
      name: "2 Wheeler Washer",
      desc: 'VZ',
      price: 12000,
      location: "Jagdalpur" ,
      image: 'assets/2560px-Adidas_Logo 1.png',
      date: "16 Aug 2022",
      opening: "12",
      worktype: "Full Time" ,
      worktiming: "8 Hr Hrs",
      experienced: "03-05 Years",
      qualification: "12th Pass",
      contName: "samit",
      contNo: "6454545455",
      emailID: "sumitashu007@gmail.com",
      address: "Jagdalpur",
    ),
    Item(id: 1,
      name: "Accounts Admin",
      desc: 'AD',
      price: 12000,
      location: "bilaspur" ,
      image: 'assets/amazon.png',
      date: "16 Aug 2022",
      opening: "45",
      worktype: "Part Time" ,
      worktiming: "8 Hr Hrs",
      experienced: "03-05 Years",
      qualification: "12th Pass",
      contName: "samit",
      contNo: "6454545455",
      emailID: "sumitashu007@gmail.com",
      address: "Jagdalpur",
    ),

  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final  num price;
  final String location;
  final String image;
  final String date;
  final String opening;

  final String worktype;
  final String worktiming;
  final String experienced;
  final String qualification;
  final String contName;
  final String contNo;
  final String emailID;
  final String address;




  Item({ required this.id,
    required this.name,
    required this.desc ,
    required this.price ,
    required this.location,
    required this.image,
    required this.date,
    required this.opening,
    required this.worktype,
    required this.worktiming,
    required this.qualification,
    required this.experienced,
    required this.contName,
    required this.contNo,
    required this.emailID,
    required this.address,


  });

}