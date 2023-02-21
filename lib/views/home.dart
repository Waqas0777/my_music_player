import 'package:flutter/material.dart';
import '../consts/colors.dart';

import '../consts/text_style.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgDarkColor,
      appBar: AppBar(
        backgroundColor: bgDarkColor,
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.search,color: whiteColor,))
        ],
        leading: const Icon(Icons.sort_rounded,color: whiteColor,),
        title:  Text(
          "Beats",
          style:ourStyle(family: "bold",size: 14,),
        ),
      ),
      body: Padding(
        padding:  const EdgeInsets.all(8.0),
        child: ListView.builder(
          physics:const BouncingScrollPhysics(),
            itemCount: 100,
            itemBuilder: (BuildContext context,int index){
              return Container(
                margin: EdgeInsets.only(bottom: 4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                ),
                child:  ListTile(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)
                  ),
                  tileColor: bgColor,
                  title: Text("Music name",style:ourStyle(family: bold,size: 14,),),
                  subtitle: Text("Artist name",style:ourStyle(family: regular,size: 12,),),
                  leading: Icon(Icons.music_note,color: Colors.white,size: 32,),
                  trailing: Icon(Icons.play_arrow,color: Colors.white,size: 26,),
                ),
              );
            }),
      ),
    );
  }
}
