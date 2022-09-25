import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Container(
        padding: EdgeInsets.all(23),
        child: ListView.separated(
            itemBuilder: (context, index) {
              Icon icon;
              Text text;
              switch (index) {
                case 0:
                  icon = Icon(Icons.add_circle, color: Colors.green);
                  text = Text('ADD CARD');
                  break;
                case 1:
                  icon = Icon(Icons.credit_card, color: Colors.green);
                  text = Text('CHOOSE CARD');
                  break;
              }

              return InkWell(
                onTap: () {
                  onItemPress(context, index); //called to select the function to call depending on the method chosen
                },
                child: ListTile(
                  title: text,
                  leading: icon,
                ),
              );
            },
            separatorBuilder: (context, index) => Divider(
              color: Colors.green,
            ),
            itemCount: 2),
      ),
    );
  }
}
