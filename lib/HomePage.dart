import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    var _mediaQuary = MediaQuery.of(context);


    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Media Quary Example", style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),

      //  The start 1st  part.....!!

      // body: SafeArea(
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: [
      //       Container(
      //         height: _mediaQuary.size.height*0.5,
      //         width: _mediaQuary.size.width*0.3,
      //         decoration: BoxDecoration(
      //           color: Colors.cyan
      //         ),
      //       ),
      //
      //       Container(
      //        // height: _mediaQuary.size.height*0.5,
      //         width: _mediaQuary.size.width*0.7,
      //         decoration: BoxDecoration(
      //             color: Colors.deepOrange
      //         ),
      //       )
      //     ],
      //   ),
      // ),

      //  The End 1st part.....!!


      //  The Start 2nd part.....!!
      body: Builder(
        builder: (context)
        {
          if (_mediaQuary.orientation == Orientation.portrait) {
            return portraitWidget(_mediaQuary.size);
          }
          else {
            return landscapeWidget(_mediaQuary.size);
          }
        },
      ),

      /*
      body: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait) {

            return portraitWidget(_mediaQuary.size);
          }
          else {
            return landscapeWidget(_mediaQuary.size);
          }
        },
      ),*/

      //  The End 2nd part.....!!


    );
  }

  Widget portraitWidget(Size size) {
    return Center(
      child: Container(
        //padding: EdgeInsets.all(10),
        height: size.height*0.8,
        width: size.height*0.8,
        decoration: BoxDecoration(
          color: Colors.cyan
        ),
        child: Center(child: Text("Portrait Screen"),),
      ),
    );
  }


  Widget landscapeWidget(Size size) {
    return Center(
      child: Container(
       // padding: EdgeInsets.all(10),
        height: size.height*0.8,
        width: size.height*0.8,
        decoration: BoxDecoration(
            color: Colors.teal
        ),
        child: Center(child: Text("Landscape Screen"),),
      ),
    );
  }

}



