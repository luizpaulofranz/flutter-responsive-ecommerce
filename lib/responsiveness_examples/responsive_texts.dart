import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

/// We can use AutoSizeText to make our texts responsibles to Screen Size
class ResponsiveTexts extends StatefulWidget {
  const ResponsiveTexts({Key? key}) : super(key: key);

  @override
  _ResponsiveTextsState createState() => _ResponsiveTextsState();
}

class _ResponsiveTextsState extends State<ResponsiveTexts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Responsive Texts'),
      ),
      body: Column(
        children: const [
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing "
            "elit. Donec ut ex finibus, ullamcorper sapien ut, "
            "aliquam urna. Class aptent taciti sociosqu ad "
            "litora torquent per conubia nostra, per "
            "inceptos himenaeos.",
            style: TextStyle(fontSize: 30),
          ),
          SizedBox(height: 50),
          AutoSizeText(
            "Lorem ipsum dolor sit amet, consectetur adipiscing "
            "elit. Donec ut ex finibus, ullamcorper sapien ut, "
            "aliquam urna. Class aptent taciti sociosqu ad "
            "litora torquent per conubia nostra, per "
            "inceptos himenaeos.",
            style: TextStyle(fontSize: 30),

            // maxLines: 2,
            // minFontSize: 14,

            // if the text does not fit on the screen we can use overflow property
            // to show "...", to fade or even keep showing the text.
            // overflow: TextOverflow.ellipsis,

            // this property overrides the text with a given Widget when it does not fit
            // overflowReplacement: Text("Does not fit!"),

            
            // with this we set the font increasing and decreasing step
            // in this case, starting with size 30, it will decrease like: 30, 20, 10
            // stepGranularity: 10,

            maxLines: 3,
            // and this prop set all possible font sizes 
            presetFontSizes: [30, 22, 10],
          ),
        ],
      ),
    );
  }
}
