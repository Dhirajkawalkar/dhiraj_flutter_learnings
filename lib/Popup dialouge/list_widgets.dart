import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InsideInfo extends StatelessWidget {
  const InsideInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.only(top: 25.h,left: 32.w),
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: Container(
              width: 70.w,
              child:
              Row(                        //John doe and icon
                children: [
                  Icon(Icons.person, size: 16.sp, color: Color(0xffCD4E00),),

                  SizedBox(width: 9.w,),

                  Text("John Doe (You)", style: TextStyle(fontSize: 10.sp, color: Color(0xffCD4E00),fontStyle: FontStyle.normal, fontWeight: FontWeight.w400, letterSpacing: 0.25.sp,),),
                ],
              ),
            ),
          ),

          SizedBox(height: 2.h,),

          SizedBox(
            width: double.infinity,
            child: Container(
              width: 70.w,
              child:
              Wrap(                        //Route Id
                children: [
                  Text("Route ID - RMEREG02 CA SK Consumer Delivery Services 20250716 1", style: TextStyle(fontSize: 10.sp, color: Color(0xffCD4E00),fontStyle: FontStyle.normal, fontWeight: FontWeight.w400, letterSpacing: 0.25.sp,),),
                ],
              ),
            ),
          ),

          SizedBox(height: 9.h,),

          SizedBox(
            width: double.infinity,

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Stack(
                  children: [
                    Column(
                      children: [

                        SizedBox(height: 8.h,),
                        Icon(Icons.blur_circular_outlined ,size: 16.sp, color: Color(0xff1C453B),),
                        SizedBox(height: 6.5.h,),

                        //Dashed line vertical
                        Column(
                          children: List.generate(
                            3,
                                (index) => Container(
                              width: 1,
                              height: 4,
                              color: Color(0xff747E7A),
                              margin: const EdgeInsets.symmetric(vertical: 2),
                            ),
                          ),
                        ),

                        SizedBox(height: 6.5.h,),

                        Icon(Icons.location_on_outlined ,size: 16.sp, color: Color(0xff1C453B),),
                      ],
                    ),


                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(left: 20.w),
                          child: Text("Pickup from", style: TextStyle(fontSize: 8.sp),),
                        ),

                        Padding(
                          padding:  EdgeInsets.only(top: 0, left: 20.w,bottom: 10.h),
                          child: SizedBox(

                            child: Text("1030 NORTH SERVICE RD. Moose Jaw, SK, Canada S6H 4P6", style: TextStyle(fontSize: 8.sp),),
                          ),
                        ),

                        Padding(
                          padding:  EdgeInsets.only(bottom: 1.h, left: 20.w),
                          child: Text("Delivery at", style: TextStyle(fontSize: 8.sp),),
                        ),

                        Padding(
                          padding:  EdgeInsets.only(left: 20.w, bottom: 10.h),
                          child: SizedBox(

                            child: Text("Ziing Regina 1421 Fleury St Regina, SK, Canada S4N7N56", style: TextStyle(fontSize: 8.sp),),
                          ),
                        ),


                      ],
                    )

                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class NewDateButton extends StatelessWidget {
  const NewDateButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 26.h,
      width: 116.w,
      padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 8.w),

      decoration: BoxDecoration(
          color: Color(0xff1C453B),
          borderRadius: BorderRadius.circular(30)
      ),

      child: Row(
        children: [
          SizedBox(width: 8.w,),
          Text("Jan 24, 2025", style: TextStyle(color: Color(0xffFFFFFF), fontSize: 10.sp),),

          SizedBox(width: 8.w,),
          Icon(Icons.keyboard_arrow_up, size: 18.sp, color: Color(0xffFFFFFF),)
        ],
      ),

    );
  }
}