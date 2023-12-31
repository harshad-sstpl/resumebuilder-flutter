import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:intl/intl.dart';
import 'package:resumebuilder/screens/models/objective_model.dart';
import 'package:resumebuilder/screens/models/profile_model.dart';
import 'package:resumebuilder/screens/widgets/common_textfield.dart';

class ObjectiveDetailsScreen extends StatefulWidget {
  final ProfileModel? profile;
  final int? id;
  const ObjectiveDetailsScreen({super.key,this.id,this.profile});

  @override
  State<ObjectiveDetailsScreen> createState() => _ObjectiveDetailsScreenState();
}

class _ObjectiveDetailsScreenState extends State<ObjectiveDetailsScreen> {

  final objectiveController = TextEditingController();
  @override
  void initState() {
    if(widget.profile!=null){
       objectiveController.text=widget.profile!.objective!.objective;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
        title: Text(
          "Objective",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.deepPurple,
        actions: [
          GestureDetector(
              onTap: (){
                if(widget.id==null){
                  
                  final profile=ProfileModel(dateTimeCreated:"${DateFormat.yMMMd().format(DateTime.now())} ${DateFormat.jm().format(DateTime.now())}",objective:ObjectiveModel(objective:objectiveController.text) );
                  Hive.box<ProfileModel>('profileBox').add(profile);
                  Navigator.pop(context);
                  Navigator.pop(context);
                }
                else{
                  final profile=widget.profile!.copyWith(objective:ObjectiveModel(objective:objectiveController.text));
                  Hive.box<ProfileModel>('profileBox').putAt(widget.id!,profile);
                  Navigator.pop(context);
                  Navigator.pop(context);
                  //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>ProfileScreen(profileId:widget.id!,profile:profile)));
                }
              },
              child: Icon(
                Icons.done_outline,
                color: Colors.white,
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.black54,
                  blurRadius: 5.0,
                  offset: Offset(0.0, 0.75))
            ],
          ),
          child: CommonTextField(
            controller: objectiveController,
            labelText: "Objective",
            maxLines: 3,
          ),
        ),
      ),
      
    );
  }
}
