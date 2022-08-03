import 'package:flutter/material.dart';
import 'package:movie_list/db/temp_db.dart';
import 'package:movie_list/details_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Movie List'),),
     body: ListView(
       children: movieList.map((movie) => ListTile(
           onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>MovieDetails(movie)));
           },
         title: Text(movie.name!),
         subtitle: Text(movie.subTitle!),
         leading: Image.asset(movie.image!,width: 40,),
         trailing: Row(
           mainAxisSize: MainAxisSize.min,
           children: [
             Text(movie.rating!.toString()),
           ],
         ),

       )).toList(),
     ),
    );
  }
}
