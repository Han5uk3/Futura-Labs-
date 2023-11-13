import 'package:flutter/material.dart';
class MyLogin extends StatefulWidget {
  const MyLogin({super.key, required this.title});
  final String title;
  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  bool ToF = true;
 TextEditingController complaintController = TextEditingController();
 TextEditingController emailController = TextEditingController();
 TextEditingController nameController = TextEditingController();
 TextEditingController phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

          backgroundColor: Colors.blue.shade300,
          title: Text(widget.title, style: const TextStyle(fontSize: 26.0, fontWeight: FontWeight.bold,)),
          leading: const Icon(Icons.telegram, color: Colors.black, size: 50 ),
        ),
      backgroundColor: Colors.blue.shade200,
      body: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(left: 70 ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Padding(
                padding: EdgeInsets.only(right:500, top: 10 ),
                child: SizedBox(
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person_2_rounded),
                    label: Text("Name"),
                      hintText: "John Doe",
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(right: 500,top: 10 ),
                child: SizedBox(
                  child: TextField(
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                      label: Text("Email"),
                      prefixIcon: Icon(Icons.mail),
                      hintText: "example@gmail.com",
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 500,top: 10 ),
                child: SizedBox(
                  child: TextField(
                    controller: phoneController,
                    obscureText: ToF,
                    maxLength: 10,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      counterText: "",
                        prefixIcon: Icon(Icons.phone_android),
                        suffixIcon:  IconButton(onPressed: (){
                          ToF = !ToF;
                          setState(() {
                          });
                        }, icon: Icon(Icons.remove_red_eye_rounded)),
                        label: Text("Phone Number"),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(right: 100,top: 10 ),
                child: SizedBox(
                  child: TextField(
                    controller: complaintController,
                    minLines: 4,
                    maxLines: 50,
                    keyboardType: TextInputType.multiline,
                    decoration: InputDecoration(
                      label: Text("Complaint"),
                      prefixIcon: Icon(Icons.text_fields),
                      hintText: "Please keep it clear and brief",
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: SizedBox(
                  height: 60,
                  child: ElevatedButton(
                    onPressed: (){
                      print(" Name : ${nameController.text} \n Email : ${emailController.text} \n Phone Number : ${phoneController.text} \n Complaint : ${complaintController.text}");
                    },
                    child: Text("SUBMIT"),
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.greenAccent, ),
                  ),
                ),
              )
            ],
            ),
          )
      )
    );



  }
}