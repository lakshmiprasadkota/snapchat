import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
   List<String> image = [
       "img/bot1.jpg",
       "img/bot10.png",
       "img/bot3.png",
     "img/bot10.png",

       "img/bot5.jpg",
       "img/bot6.png",
     "img/bot7.png",
     "img/bot8.png",
     "img/bot9.jpg",
     "img/bot10.png"
   ];
   List<String> subtitle = [ "Tap To Load" , "Tap to Load" , "New Snap", "Tap to Load" , "New Snap" , "Tap to Load" , "New Snap", "Tap to Load",  "New Snap", "Tap to Load"];
  List<String>  title = [ " lakshmi prasad" , " Pawan Kalyan " ," Stylish Arjun" , " Anaconda Ambani " , " TATA" , " Rocy Ram" ," Miss Lakshmi" ," Mahi 143" ," lakshmi prasad" , " Pawan Kalyan " ,];
 List <String> day = [ "2h " , " 5h" , "10h" , "1d" , "1d" ,"1d" ,"2d" ,"2d" ,"2d", "3d"];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            centerTitle: true,
            actions: [
              CircleAvatar(
                backgroundColor: Colors.blueGrey[50] ,
                radius: 25,
                child:  CircleAvatar(
                  backgroundColor: Colors.blueGrey[50] ,
                  backgroundImage: AssetImage("img/bot.jpg"),
                  radius :20,
                ),
              ),

              SizedBox(width: 20,),
              CircleAvatar(
                backgroundColor: Colors.blueGrey[50],
                child: Icon(Icons.search),
                radius: 20,
              ),
              SizedBox(width: 55,),
              Padding(
                padding: const EdgeInsets.only(top: 11.5,
                bottom: 8),
                child: Text( "Chat" , textAlign: TextAlign.center, style: TextStyle(fontSize: 25,
                    fontWeight: FontWeight.w700  , color: Colors.black),),
              ),
              SizedBox(width:50,),

              CircleAvatar(
                backgroundColor:  Colors.blueGrey[50],
                child: Icon(Icons.person_add),
                radius: 20,
              ),
              SizedBox(width: 20,),
              CircleAvatar(
                backgroundColor: Colors.blueGrey[50],
                child: Icon(Icons.mark_email_unread_sharp),
                radius: 20,
              ),




            ],
          ),


            body: SingleChildScrollView(
              child: SafeArea(
                child:
                Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                       children: [

                         ListView.builder(
                           shrinkWrap: true,
                           itemCount: title.length,
                           itemBuilder: (context , index){
                              return ContainerWidget(
                                   image:  image[index],
                                   title: title[index],
                                     subtit: subtitle[index],
                                      day: day[index]

                              );
                           }


                         )
                   //  ContainerWidget(
                  //     title: "hai",
                  //     subtit: "guys",
                 //    ),


          ],

    ),
                ),
              )
        ),
            )
    ));
  }
}

class ContainerWidget extends StatefulWidget {
  ContainerWidget( {
    this.image ,this.title, this.subtit , this.day
});
  final String image;
  final String title;
  final String subtit;
  final String day;

  @override
  _ContainerWidgetState createState() => _ContainerWidgetState();
}

class _ContainerWidgetState extends State<ContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:
     Column(

       children: [
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
           Row(

             children: [
               CircleAvatar(
                 backgroundImage: AssetImage(widget.image),
                 radius: 27,
               ),
               SizedBox(width: 10,),
               Container(
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text(widget.title , style: TextStyle(fontWeight: FontWeight.w900,
                         fontSize: 16, color: Colors.black),),
                     Row(
                       children: [
                         Container(
                           height: 10,
                           width: 10,
                           color: Colors.red,
                         ),
                         SizedBox(width: 5,),
                         Text(widget.subtit ,style: TextStyle(fontWeight: FontWeight.w900,
                             fontSize: 14, color: Colors.red),),
                         Text(" . "),
                         SizedBox(width: 5,),

                         Text(widget.day)
                       ],
                     )

                   ],
                 ),
               ),



             ],
           ),
           Container(
          child: Row(
            children: [
              Container(
                height: 40,
                width: 2,
                color: Colors.blueGrey[50],
              ),
              SizedBox(width: 10,),
              Icon(Icons.message),
            ],
          ),
           ),


         ],),

         SizedBox(height: 10,),
         Divider(height: 4,
           color: Colors.blueGrey[40],
         ),
         SizedBox(height: 10,),
       ],
     ),



    );


  }
}


