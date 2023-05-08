import 'package:flutter/material.dart';
import 'package:out_caster2/provider/Playstore_provider.dart';
import 'package:provider/provider.dart';

Playprovider prof = Playprovider();
Playprovider prot = Playprovider();

class For_you extends StatefulWidget {
  const For_you({Key? key}) : super(key: key);

  @override
  _For_youState createState() => _For_youState();
}

class _For_youState extends State<For_you> {
  @override
  Widget build(BuildContext context) {
    prof = Provider.of<Playprovider>(context, listen: false);
    prot = Provider.of<Playprovider>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      "Recommended for you",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                  ),
                  Icon(
                    Icons.arrow_forward,
                    color: Colors.grey.shade700,
                  )
                ],
              ),
              SizedBox(
                height: 262,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return baneer(
                        name: prot.Game2[index].name,
                        photo: prot.Game2[index].img,
                        rate: prot.Game2[index].rating,
                      mb: prot.Game2[index].mb,
                    );

                  },
                  itemCount: prof.Game2.length,
                ),
              ),

              SizedBox(
                height: 170,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return topView(
                        name: prot!.Game[index].name,
                        photo: prot!.Game[index].img,
                        rate: prot!.Game[index].rating,
                        mb: prot!.Game[index].mb);
                  },
                  itemCount: prof.Game.length,
                ),
              ),
              SizedBox(
                height: 170,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, 'final',arguments: index);
                      },
                      child: topView(
                          name: prot!.App[index].name,
                          photo: prot!.App[index].img,
                          rate: prot!.App[index].rating,
                          mb: prot!.App[index].mb),
                    );
                  },
                  itemCount: prof.App.length,
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.grey,
          backgroundColor: Colors.black,

          items: [
            BottomNavigationBarItem(icon: Icon(Icons.sports_esports,),label: "Games",),
            BottomNavigationBarItem(icon: Icon(Icons.view_comfy_alt),label: "Apps",),
            BottomNavigationBarItem(icon: Icon(Icons.sell),label: "Offers"),
            BottomNavigationBarItem(icon: Icon(Icons.sports_esports),label: ""),
          ],
        ),
      ),
    );
  }

  Widget topView({String? photo, String? name, String? rate, String? mb}) {
    return Column(
      children: [
        Container(
          height: 111,
          width: 111,
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              "$photo",
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
        Text(
          "$name",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white,fontSize: 17),
        ),
        Row(
          children: [
            Text(
              "$rate",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 12),
            ),
            SizedBox(width: 10,),
            Text("$mb",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 12))
          ],
        )
      ],
    );
  }


  Widget baneer({String? photo, String? name, String? rate,String? mb}) {
    return Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Container(
            height: 150,
            width: 200,
            margin: EdgeInsets.all(5),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  "$photo",
                  fit: BoxFit.cover,
                )),
          ),
          Row(
            children: [
              Container(
                height: 50,
                width: 50,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.asset(
                    "$photo",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Column(
                children: [
                  Text(
                    "$name",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white,fontSize: 17),
                  ),
                  SizedBox(height: 4,),
                  Row(
                    children: [
                      Text(
                        "$rate",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white,fontSize: 13),
                      ),
                      SizedBox(width: 7,),
                      Text(
                        "$mb",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white,fontSize: 13),

                      )
                    ],
                  ),

                ],
              )
            ],
          )
        ],
      ),
    );
  }
  Widget Last({String? photo, String? name, String? rate, String? mb}) {
    return Column(
      children: [
        Container(
          height: 111,
          width: 111,
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              "$photo",
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
        Text(
          "$name",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white,fontSize: 17),
        ),
        Row(
          children: [
            Text(
              "$rate",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 12),
            ),
            SizedBox(width: 10,),
            Text("$mb",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 12))
          ],
        )
      ],
    );
  }



}
