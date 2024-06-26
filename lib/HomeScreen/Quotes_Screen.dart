import 'dart:math';
import 'package:flutter/material.dart';
import 'package:quotes_app_daily_task/HomeScreen/QuoteModel.dart';
import 'package:quotes_app_daily_task/utils/quotesList.dart';

QuoteModel? quoteModel;

class Quotes extends StatefulWidget {
  const Quotes({super.key});

  @override
  State<Quotes> createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {
  @override
  void initState() {
    quoteModel = QuoteModel.toList(quoteList);
    super.initState();
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black12,
        appBar: AppBar(
          backgroundColor: Colors.black12,
          title: const Text('Quotes',style: TextStyle(color: Colors.white,fontSize: 30),),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: List.generate(
              quoteModel!.quoteModelList.length,
              (index) => Card(
                // color: Colors.primaries[Random().nextInt((Colors.primaries.length))],
                child: ListTile(
                  title: Text(quoteModel!.quoteModelList[index].quote!),
                  subtitle: Text(quoteModel!.quoteModelList[index].author!),
                ),
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Random random = Random();
            int x = random.nextInt(quoteModel!.quoteModelList.length);
            showDialog(
              context: context,
              builder: (context) => AlertDialog(backgroundColor: Colors.primaries[Random().nextInt((Colors.primaries.length))],
                title: Text(quoteModel!.quoteModelList[x].author!),
                content: Text(quoteModel!.quoteModelList[x].quote!),
              ),
            );
          },
          child: const Icon(Icons.notification_add_outlined),
        ),
      ),
    );
  }
}
