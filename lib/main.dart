import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: DennisCard(),
  ));
}
class DennisCard extends StatefulWidget {
  const DennisCard({super.key});

  @override
  State<DennisCard> createState() => _DennisCardState();
}

class _DennisCardState extends State<DennisCard> {

  int dennisLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text(
            'Dennis Card ',
            style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            setState(() {
              dennisLevel +=1;
            });
          },
          child: Icon(Icons.add),
          backgroundColor: Colors.grey[800],
      ),
      body: Padding(
          padding: EdgeInsets.fromLTRB(30, 30, 40, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/trumph.jpeg'),
                  radius: 50,
                ),
              ),
              Divider(
                height: 60,
                color: Colors.grey[800],),
              Text(
                'NAME',
                style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 2.5),
              ),
              SizedBox(height: 20,),
              Text(
                'Dennis',
                style: TextStyle(
                    color: Colors.amberAccent[200],
                    letterSpacing: 2.5,
                    fontSize: 28,
                    fontWeight: FontWeight.bold ),
              ),
              SizedBox(height: 30,),

              Text(
                'Current Dennis Level',
                style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 2.5),
              ),
              SizedBox(height: 10,),
              Text(
                '$dennisLevel',
                style: TextStyle(
                    color: Colors.amberAccent[200],
                    letterSpacing: 2.5,
                    fontSize: 28,
                    fontWeight: FontWeight.bold ),
              ),
              SizedBox(height: 30,),
              Row(
                children: [
                  Icon(
                    Icons.email,
                    color: Colors.grey[400],
                  ),
                  SizedBox(width: 10,),
                  Text(
                      'machariad196@gmail.com',
                      style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 18,
                        letterSpacing: 2.5
                      ),
                  ),

                ],
              )
            ],
          ),),
    );
  }
}

