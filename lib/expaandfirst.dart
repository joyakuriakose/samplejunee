import 'package:expand_widget/expand_widget.dart';
import 'package:flutter/material.dart';


class ExpaandFirst extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expand Widget'),
      ),
      body: ListView(
        padding: EdgeInsets.all(8),
        children: <Widget>[
          Card(
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                children: <Widget>[
                  Text(
                    'Expand Text',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  SizedBox(height: 8),
                  ExpandText(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam suscipit risus pulvinar, hendrerit nisi quis, vehicula ante. Morbi ut diam elit. Praesent non justo sodales, auctor lacus id, congue massa. Duis ac odio dui. Sed sed egestas metus. Donec hendrerit velit magna. Vivamus elementum, nulla ac tempor euismod, erat nunc mollis diam, nec consequat nisl ex eu tellus. Curabitur fringilla enim at lorem pulvinar, id ornare tellus aliquam. Cras eget nibh tempor lacus aliquam rutrum.',
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 4),
          Card(
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                children: <Widget>[
                  Text(
                    'Expand Child',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  SizedBox(height: 8),
                  OutlinedButton(
                    child: Text('Button0'),
                    onPressed: () => print('Pressed button0'),
                  ),
                  ExpandChild(
                    child: Column(
                      children: <Widget>[
                        OutlinedButton(
                          child: Text('Button1'),
                          onPressed: () => print('Pressed button1'),
                        ),
                        OutlinedButton(
                          child: Text('Button2'),
                          onPressed: () => print('Pressed button2'),
                        ),
                        OutlinedButton(
                          child: Text('Button3'),
                          onPressed: () => print('Pressed button3'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                children: <Widget>[
                  Text(
                    'Expand Child Horizontally',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  SizedBox(height: 8),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        OutlinedButton(
                          child: Text('Button'),
                          onPressed: () => print('Pressed button0'),
                        ),
                        ExpandChild(
                          expandDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              ...List.generate(
                                4,
                                    (index) => OutlinedButton(
                                  child: Text('Button$index'),
                                  onPressed: () =>
                                      print('Pressed button$index'),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                children: <Widget>[
                  Text(
                    'Custom icon & text',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  SizedBox(height: 8),
                  OutlinedButton(
                    child: Text('Button0'),
                    onPressed: () => print('Pressed button0'),
                  ),
                  ExpandChild(
                    hideArrowOnExpanded: true,
                    arrowColor: Colors.red,
                    arrowSize: 40,
                    expandArrowStyle: ExpandArrowStyle.both,
                    icon: Icons.cake,
                    hintTextStyle: TextStyle(fontSize: 16),
                    child: Column(
                      children: <Widget>[
                        OutlinedButton(
                          child: Text('Button1'),
                          onPressed: () => print('Pressed button1'),
                        ),
                        OutlinedButton(
                          child: Text('Button2'),
                          onPressed: () => print('Pressed button2'),
                        ),
                        OutlinedButton(
                          child: Text('Button3'),
                          onPressed: () => print('Pressed button3'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                children: <Widget>[
                  Text(
                    'Custom widget',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  SizedBox(height: 8),
                  OutlinedButton(
                    child: Text('Button0'),
                    onPressed: () => print('Pressed button0'),
                  ),
                  ExpandChild(
                    arrowColor: Colors.red,
                    arrowSize: 40,
                    expandArrowStyle: ExpandArrowStyle.both,
                    icon: Icons.cake,
                    hintTextStyle: TextStyle(fontSize: 16),
                    indicatorBuilder: (context, onTap, expanded) => InkWell(
                      onTap: onTap,
                      child: FlutterLogo(
                        style: expanded
                            ? FlutterLogoStyle.horizontal
                            : FlutterLogoStyle.stacked,
                        size: 50,
                      ),
                    ),
                    child: Column(
                      children: <Widget>[
                        OutlinedButton(
                          child: Text('Button1'),
                          onPressed: () => print('Pressed button1'),
                        ),
                        OutlinedButton(
                          child: Text('Button2'),
                          onPressed: () => print('Pressed button2'),
                        ),
                        OutlinedButton(
                          child: Text('Button3'),
                          onPressed: () => print('Pressed button3'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}