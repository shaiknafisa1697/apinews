
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsapp_task/api/api.dart';
import 'package:newsapp_task/pages/appbar.dart';
import 'package:newsapp_task/pages/searchbar.dart';


import 'controllers/home_controller.dart';
import 'models/news_model.dart';


import 'pages/floatingfilter.dart';
import 'pages/heading.dart';

void  main() {
  runApp( const MyApp());
}
class  MyApp extends StatelessWidget {
   const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
    
  }
}
class Homepage extends StatefulWidget {
   Homepage({super.key});
 final homeNewsController = Get.put(HomeNewsController());
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(top: 10),
          child: Text("MyNEWS",style: TextStyle(color: Color.fromARGB(255, 247, 242, 242),fontSize: 20),),
        ),
        backgroundColor: Colors.blue,
         actions: const <Widget>[
        
         NewsAppBar(),
        ],
      ), body: Padding(
        padding:  const EdgeInsets.all(8.0),
        child: Column(
          children:   [
            const SizedBox(height: 10),
            const SearchBar(),
            const HeadingText(),
           // NewsList(),
            const SizedBox(height: 20),
              
                 FutureBuilder<List<Article?>?>(
                  future: NewsApiServices().fetchNewsArticle(),
                  builder: (context, snapshot) {
                    if (!snapshot.hasData) {
                      return   const Center(child: CircularProgressIndicator(),);
                    } else {
                      List<Article?>? newsArticle = snapshot.data;
                      return ListView.builder(
                        itemCount: newsArticle!.length,
                        itemBuilder: (context, index) {
                          
                          customListTile(newsArticle[index]!);return const Center(
                            
                          );});                   
  }})])),  floatingActionButton: const Filter(),);}
  
  void customListTile(Article newsArticle) {}}