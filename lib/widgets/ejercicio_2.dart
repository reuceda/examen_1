import 'package:flutter/material.dart';

class ejercicio2 extends StatefulWidget {
  const ejercicio2({super.key});

  @override
  State<ejercicio2> createState() => _ejercicio2State();
}

class _ejercicio2State extends State<ejercicio2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          Card.outlined(
            child: ListTile(
              leading: Image.network(
                  width: 100,
                  height: 100,
                  "https://assets-global.website-files.com/6384f662e0af97fd0cbaa3e3/6384fa28b371c80eb74f9861_6384f4e246de793ce9c68cbc_LOGO%20NICHAS%20(1)%20(1).png"),
              title: const Text('Nichas Burger'),
              subtitle: const Text('Ave. Morazan'),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Card.outlined(
            child: ListTile(
              leading: Image.network(
                  width: 100,
                  height: 100,
                  "https://static.vecteezy.com/system/resources/thumbnails/019/909/686/small_2x/burger-king-transparent-burger-king-free-free-png.png"),
              title: const Text('Burger King'),
              subtitle: const Text('Ave. San Isidro'),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Card.outlined(
            child: ListTile(
              leading: Image.network(
                  width: 100,
                  height: 100,
                  "https://logowik.com/content/uploads/images/popeyes-new1826.jpg"),
              title: const Text('Popeyes'),
              subtitle: const Text('Ave. San Isidro'),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Card.outlined(
            child: ListTile(
              leading: Image.network(
                  width: 100,
                  height: 100,
                  "https://logowik.com/content/uploads/images/pizza-hut-new6371.jpg"),
              title: const Text('Pizza Hut'),
              subtitle: const Text('Frente a Parque Central'),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Card.outlined(
            child: ListTile(
              leading: Image.network(
                  width: 100,
                  height: 100,
                  "https://www.foood.app/sebas/images/logo.webp"),
              title: const Text('Sebas'),
              subtitle: const Text('Ave. Morazan'),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Card.outlined(
            child: ListTile(
              leading: Image.network(
                  width: 100,
                  height: 100,
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUN7sfFLtiwIj6OGNZVRIQ0RRBUFVWJU08Y7hoKfTXWR3bCugtmKaFmK7huSVinzoGX1Q&usqp=CAU"),
              title: const Text('Cric Cric Burger'),
              subtitle: const Text('1ra Calle, en Malecon Reinaldo Canales'),
            ),
          ),
        ],
      ),
    );
  }
}
