import 'package:flutter/material.dart';

class ExpansionDetails extends StatefulWidget {
  const ExpansionDetails({super.key});

  @override
  State<ExpansionDetails> createState() => _ExpansionDetailsState();
}

class _ExpansionDetailsState extends State<ExpansionDetails> {
  bool _customTileExpanded = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            color: Color.fromARGB(255, 255, 80, 67),
            child: ExpansionTile(
              title: const Text(
                'Details',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              trailing: Icon(
                _customTileExpanded ? Icons.arrow_drop_down_circle : Icons.arrow_drop_down,
              ),
              children: const <Widget>[
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                      '''You visited Love Calculator that means you are curious to know about the strength of your Love by trying our Love Tester. But we personally prefer not to take the Love Calculator score seriously. Please read the below points:
                
1. This Love Calculator is just an algorithm, don't take it serious in real life.
2. Love is between two souls, how a computer can calculate compatibility of it?
3. True compromise can only happen when each partner begins an interaction by first supporting the other's point of view.
4. Quality relationships are made up of two partners who treasure and uphold a set of mutual beliefs and ethics.

This application is just made for fun purpose don't take this seriously.''',
                      style: TextStyle(fontFamily: "Georgia", color: Colors.white)),
                ),
              ],
              onExpansionChanged: (bool expanded) {
                setState(() => _customTileExpanded = expanded);
              },
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
