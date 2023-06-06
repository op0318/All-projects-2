import 'package:flutter/material.dart';
import 'package:whatsapp_clone/common/extension/Customthemeextension.dart';
import 'package:whatsapp_clone/common/theme/dark_theme.dart';
import 'package:whatsapp_clone/common/utilities/colors.dart';


class languagebutton extends StatelessWidget {
  const languagebutton({Key? key}) : super(key: key);
showBottomSheet(context)
{
  return showModalBottomSheet(context: context, builder: (context)
  {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(mainAxisSize: MainAxisSize.min,
        children: [
          Container(
                decoration: BoxDecoration(
                color: context.theme.greycolor!.withOpacity(0.4),
                borderRadius:  BorderRadius.circular(5)),
                height: 4,
                width: 40
            ),
         const SizedBox(height: 20),
        Row(
          children: [
            const SizedBox(width: 10,),
            IconButton(
              onPressed: ()=>Navigator.of(context).pop(),
              splashColor: Colors.transparent,
              splashRadius: 22,
              iconSize: 22,
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(minWidth: 40),
              icon:Icon(Icons.close_outlined),
              color:coolors.greenDark,),
            const SizedBox(width: 10,),
            const Text('App Language',style:
              TextStyle(fontSize: 20,fontWeight: FontWeight.w500),)
          ],
        ),
          const SizedBox(height: 10,),
          Divider(color: context.theme.greycolor!.withOpacity(0.3),
          thickness: .5,),
          RadioListTile(
            value: true,
            groupValue: true,
            onChanged: (value){},
            activeColor: coolors.greenDark ,
            title:const Text('English'),
          subtitle: Text("(phone's language)",style:TextStyle(color: Colors.white),)),
          RadioListTile(
              value: true,
              groupValue: false,
              onChanged: (value){},
              activeColor: coolors.greenDark ,
              title:const Text('Amharic'),
              ),
          RadioListTile(
            value: true,
            groupValue: false,
            onChanged: (value){},
            activeColor: coolors.greenDark ,
            title:const Text('Tamil'),
          ),
          RadioListTile(
            value: true,
            groupValue: false,
            onChanged: (value){},
            activeColor: coolors.greenDark ,
            title:const Text('kannada'),
          )


        ],
      ),
    );
  }
  );
}
  @override
  Widget build(BuildContext context) {
    return Material(color:context.theme.langBtnColor,
      borderRadius: BorderRadius.circular(20),
      child: InkWell(onTap: ()=>showBottomSheet(context),
          borderRadius: BorderRadius.circular(20),
          splashFactory: NoSplash.splashFactory,
          highlightColor: context.theme.langBtnColor ,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
            child: Row(mainAxisSize: MainAxisSize.min,
              children: [Icon(
                Icons.language,color:coolors.greenDark,),
                SizedBox(width: 10,),
                Text('English',style: TextStyle(color: coolors.greenDark)),
                SizedBox(width: 10,),

                Icon(Icons.keyboard_arrow_down,color: coolors.greenDark)],
            ),
          )),
    ) ;
  }
}
