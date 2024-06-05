import 'package:flutter/material.dart';

import 'HomeScreen/Quotes_Screen.dart';

class ToggleView extends StatefulWidget {
  const ToggleView({super.key});

  @override
  State<ToggleView> createState() => _ToggleViewState();
}

class _ToggleViewState extends State<ToggleView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quotes'),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.grid_view_outlined),
          )
        ],
      ),
      body: GridView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(quoteModel!.quoteModelList[index].quote!),
              subtitle: Text(quoteModel!.quoteModelList[index].author!),
            ),
          );
        },
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 12/16,
        ),
      ),
    );
  }
}
