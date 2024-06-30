import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';



class voting_app extends StatefulWidget {
  const voting_app({super.key});

  @override
  State<voting_app> createState() => _voting_appState();
}

class _voting_appState extends State<voting_app> {
  int option1count=0;
  int option2count=0;

  void voteforoption1(){
    setState(() {
      option1count++;
    });
  }
  void voteforoption2(){
    setState(() {
      option2count++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar
        (centerTitle: true,
        backgroundColor: Colors.black87,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Text(
              "Voting app",
              style: TextStyle(fontSize: 30,color: Colors.white,
                  fontFamily:'Poppins', fontWeight: FontWeight.bold)
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Container(
                  width: 400,
                  height: 400,
                  decoration: BoxDecoration(borderRadius:
                  BorderRadius.circular(40),
                      color: Colors.white30),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width-50,
                          height: 145,
                          decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.circular(30),
                              color: Colors.white30),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Image.network(
                                  "https://news.uchicago.edu/sites/default/files/images/2019-07/Mobile%20voting.jpg",
                                  fit: BoxFit.cover)),
                        ),
                        const SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const SizedBox(
                              width: 18,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Hi guys!",
                                  style: TextStyle(
                                      color: Colors.white,fontFamily: 'Poppins',fontWeight: FontWeight.bold,
                                      fontSize: 20),),
                                Text(
                                  "Welcome to poll!",
                                  style: TextStyle(
                                      color: Colors.white,fontFamily: 'Poppins',fontWeight: FontWeight.bold,
                                      fontSize: 20),)
                              ],
                            ),
                            const SizedBox(height: 10,),

                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        LinearPercentIndicator(
                          width: MediaQuery.of(context).size.width-50 ,
                          animation: true,
                          lineHeight: 60,
                          animationDuration: 1000,
                          percent: option1count/50,
                          barRadius: Radius.circular(20),
                          progressColor: Colors.greenAccent,
                          backgroundColor: Colors.white30,
                          center: Text(
                              "Naredra Damodar Das Modi", style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16,fontFamily: 'Poppins'),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        LinearPercentIndicator(
                          width: MediaQuery.of(context).size.width-50 ,
                          animation: true,
                          lineHeight: 60,
                          animationDuration: 1000,
                          percent: option2count/50,
                          barRadius: Radius.circular(20),
                          progressColor: Colors.indigo,
                          backgroundColor: Colors.white30,
                          center: Text(""
                              "Rahul Gandhi", style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16,fontFamily: 'Poppins'),
                          ),
                        )
                      ],
                    ),
                  ),

                ),

              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: (){
                    voteforoption1();
                  },
                  child: Container(
                    width: 190,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Naredra Modi", style: TextStyle( color: Colors.white,
                            fontWeight: FontWeight.bold, fontSize: 16,fontFamily: 'Poppins'),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "$option1count", style: TextStyle( color: Colors.greenAccent,
                            fontWeight: FontWeight.bold, fontSize: 20,fontFamily: 'Poppins'),
                        ),

                      ],
                    ),

                    ),
                ),
                InkWell(
                  onTap: (){
                    voteforoption2();
                  },
                  child: Container(
                    width: 190,
                    height: 80,
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(30)
                    ),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Rahul Gandhi", style: TextStyle( color: Colors.white,
                            fontWeight: FontWeight.bold, fontSize: 16,fontFamily: 'Poppins'),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "$option2count", style: TextStyle( color: Colors.greenAccent,
                            fontWeight: FontWeight.bold, fontSize: 20,fontFamily: 'Poppins'),
                        ),

                      ],
                    ),

                  ),
                ),
              ],
            ),
          ),

        ],
      ),
    );

  }
}

