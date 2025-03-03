
import 'package:flutter/material.dart';
import 'package:pawrentingreborn/utils/constants/colors.dart';
import 'package:pawrentingreborn/utils/constants/images_strings.dart';

class addPet5 extends StatelessWidget {
  const addPet5({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
       padding: const EdgeInsetsDirectional.symmetric(horizontal: 32, vertical: 125),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.center,
         mainAxisAlignment: MainAxisAlignment.start,
         children: [
           SizedBox(
             // color: Colors.red.withAlpha(100),
             height: 250,
             child: Column(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 SizedBox(
                   // color: Colors.red.withAlpha(100),
                   width: 250,
                   child: Text(
                     'Let\'s add your pet\'s picture',
                     style: Theme.of(context).textTheme.headlineLarge,
                     textAlign: TextAlign.center,
                     ),
                 ),
                 Form(
                   child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          height: 100,
                          width: 100,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)
                                  )
                                )
                              ),
                              onPressed: (){}, 
                              child: const Padding(
                                padding: EdgeInsets.symmetric(vertical: 12),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image(
                                      image: AssetImage(TImages.picIcon),
                                      color: TColors.accent,
                                      fit: BoxFit.fill,
                                      height: 55,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                    
                      ],
                    ),
                   ),
                 ),
                 const SizedBox(height: 10,)
               ],
             ),
           ),
         ],
       ),
     );
  }
}
