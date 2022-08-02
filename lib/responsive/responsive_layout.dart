import 'package:flutter/cupertino.dart';

class ResponsiveLayout extends StatelessWidget {
  Widget mobile_body;
  Widget desktop_body;

  ResponsiveLayout({Key? key, required this.mobile_body, required this.desktop_body}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context,constrain){
      if(constrain.maxWidth<600)
        {
          return mobile_body;

        }
      else{
        return desktop_body;
      }
    });
  }
}
