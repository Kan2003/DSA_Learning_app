import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'colors.dart' as color;

class Array extends StatefulWidget {
  const Array({Key? key}) : super(key: key);

  @override
  State<Array> createState() => _ArrayState();
}

class _ArrayState extends State<Array> {
  List videoInfo=[];
  _initData() async {
    await DefaultAssetBundle.of(context).loadString("json/videoinfo.json").then((value) {
     videoInfo = json.decode(value);
    });

  }

  @override
  void initState(){
    super.initState();
    _initData();
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
       decoration: BoxDecoration(
         gradient: LinearGradient(
           colors:[
             color.AppColor.gradientFirst.withOpacity(0.9),
             color.AppColor.gradientSecond,
           ],
           begin: const FractionalOffset(0.0, 0.4),
           end: Alignment.topRight,
         )
       ),
          child: Column(
            children: [
              
              //blue header
              Container(
                padding: const EdgeInsets.only(top: 70,left: 30,right: 30),
                width: MediaQuery.of(context).size.width,
                height: 300,
                child: Column(
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap:(){
                          Get.back();
                            },

                          child: Icon(Icons.arrow_back_ios,size: 20,
                          color: color.AppColor.secondPageIconColor,
                          ),
                        ),

                        //using expanded widget to separate them
                        Expanded(child: Container()),

                        Icon(Icons.info_outline,size: 20,
                          color: color.AppColor.secondPageIconColor,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Array",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: color
                              .AppColor.secondPageTitleColor),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "An array is a linear data structure that collects elements of the same data type and stores them in contiguous and adjacent memory locations.",
                      style: TextStyle(
                          fontSize: 15,
                          color: color
                              .AppColor.secondPageTitleColor),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 90,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.circular(10),
                              gradient: LinearGradient(
                                colors: [
                                  color.AppColor
                                      .secondPageContainerGradient1stColor,
                                  color.AppColor
                                      .secondPageContainerGradient2ndColor
                                ],
                                begin: Alignment.bottomLeft,
                                end: Alignment.topRight,
                              )),
                          child: Row(
                            mainAxisAlignment:
                            MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.timer,
                                size: 20,
                                color: color.AppColor
                                    .secondPageIconColor,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "10 min",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: color.AppColor
                                        .secondPageIconColor),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Container(
                            width: 180,
                            height: 30,
                            decoration: BoxDecoration(
                                borderRadius:
                                BorderRadius.circular(10),
                                gradient: LinearGradient(
                                  colors: [
                                    color.AppColor
                                        .secondPageContainerGradient1stColor,
                                    color.AppColor
                                        .secondPageContainerGradient2ndColor
                                  ],
                                  begin: Alignment.bottomLeft,
                                  end: Alignment.topRight,
                                )),
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.handyman_outlined,
                                  size: 20,
                                  color: color.AppColor
                                      .secondPageIconColor,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  width: 170,
                                  child: Text(
                                    "Data Structure & Algorithm",
                                    overflow: TextOverflow.fade,
                                    maxLines: 1,
                                    softWrap: false,
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: color.AppColor
                                            .secondPageIconColor),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),

                  ],
                ),
              ),

              //  white bottom
              Expanded(child: Container(
               decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.only(
                   topRight: Radius.circular(70)
                 )
               ),
                child: Column(
                  children: [
                    SizedBox(height: 30,),
                    Row(
                      children: [
                        SizedBox(width: 30,),
                        Text(
                          "Videos of: Array",
                          style: TextStyle(
                              fontSize:20,
                              fontWeight: FontWeight.bold,
                              color: color.AppColor.circuitsColor),
                        ),

                        Expanded(child: Container()),

                        Row(
                          children: [
                            Icon(Icons.loop,
                                size: 30,
                                color: color.AppColor.loopColor),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Play All",
                              style: TextStyle(
                                fontSize: 12,
                                color: color.AppColor.setsColor,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                    Expanded(child: ListView.builder(
                        itemCount: videoInfo.length,
                        itemBuilder: (_,int index){

                      return GestureDetector(
                        onTap: (){
                          debugPrint(index.toString());
                        },
                        child: Container(
                          height: 135,
                          color: Colors.red,
                          width: 200,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 80,
                                    height: 80,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                        image: AssetImage(
                                          videoInfo[index]["thumbnail"]
                                        )
                                      )
                                    ),
                               
                                  ),
                                  SizedBox(width: 10,),
                                  Column(
                                    children: [
                                      Text(
                                        videoInfo[index]["title"],
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              )

                            ],
                          ),
                        ),
                      );


                    }))
                  ],
                ),

              ))
             

              
            
            ],
          )
    ));
  }
}
