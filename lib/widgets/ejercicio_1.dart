import 'dart:convert';

import 'package:dotenv/dotenv.dart' as dotenv;
import 'package:examen_1/types/post.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class NewsApi extends StatefulWidget {
  const NewsApi({super.key});

  @override
  State<NewsApi> createState() => _NewsApiState();
}

Future<List<Article>> getArticles() async {
  try {
    var env = dotenv.DotEnv()..load();
    String? apiKey = env['API_KEY'];
    var q = 'tesla';
    var from = '2024-07-19';
    var sortBy = 'publishedAt';

    final Uri url = Uri.https('newsapi.org', '/v2/everything', {
      'q': q,
      'from': from,
      'sortBy': sortBy,
      'apiKey': apiKey,
    });

    final response = await http.get(url, headers: {'X-Api-Key': apiKey!});
    print(response);
    final Map<String, dynamic> jsonResponse = json.decode(response.body);
    final List<dynamic> articlesJson = jsonResponse['articles'];
    return articlesJson.map((e) => Article.fromJson(e)).toList();

  } catch (e) {
    print("Error: $e");
    return [];
  }
}

class _NewsApiState extends State<NewsApi> {
    Future<List<Article>> ArticlesFuture = getArticles();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder(
          future: ArticlesFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            } else if (snapshot.hasData) {
              final posts = snapshot.data!;
              return buildPost(posts);
            } else {
              print(snapshot.error);
              return const Text("No data available");
            }
          },
        ),
      ),
    );
  }
}

Widget buildPost(List<Article> articles) {
  return ListView.builder(
    itemCount: articles.length,
    itemBuilder: (context, index) {
      final article = articles[index];
      return Card.outlined(
        child: ListTile(
          
          title: Text(article.title ?? 'Default Title'),
          subtitle: Text(article.description ?? 'Default Description'),
        )
      );
    },
  );
}