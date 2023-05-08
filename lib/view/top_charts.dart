import 'package:flutter/material.dart';
import 'package:out_caster2/view/for_you.dart';

class Topchat extends StatefulWidget {
  const Topchat({Key? key}) : super(key: key);

  @override
  _TopchatState createState() => _TopchatState();
}

class _TopchatState extends State<Topchat> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
                Expanded(
                  child: ListView.builder(itemBuilder: (context, index) {
                    return allitem(
                      photo: prot!.all[index].img,
                      Name: prot!.all[index].name,
                      Rate: prot!.all[index].rating,
                      mb: prot!.all[index].mb
                    );

                  },itemCount: prof.all.length,
                  ),
                )
            ],
        ),
      ),
    );
  }
  Widget allitem ({String? photo,String? Name,String? Rate,String? mb,})
{
  return ListTile(
    leading: ClipRRect(
      borderRadius: BorderRadius.circular(20),
        child: Image.asset("$photo")),
    title: Text("$Name",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
    subtitle:Text("$Rate",style: TextStyle(color: Colors.white),),
    trailing: Text("$mb",style: TextStyle(color: Colors.white),),
  );
}
}
