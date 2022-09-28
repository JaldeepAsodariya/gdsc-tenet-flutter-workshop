import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: const ColorScheme.light().copyWith(
            primary: const Color(0xFF285C55),
          ),
        ),
        home: const MyHome());
  }
}

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('WhatsApp'),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert),
            ),
          ],
          bottom: const TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Text('CALLS'),
              Text('CHATS'),
              Text('CONTACTS'),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: const Color(0xFF60D079),
          child: const Icon(
            Icons.message,
            color: Colors.white,
          ),
        ),
        body: const TabBarView(
          children: [
            CallsView(),
            ChatsView(),
            ContactsView(),
          ],
        ),
      ),
    );
  }
}

class CallsView extends StatelessWidget {
  const CallsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Calls',
        style: TextStyle(fontSize: 18.0),
      ),
    );
  }
}

class ChatsView extends StatelessWidget {
  const ChatsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView.builder(
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(4.0),
              child: ListTile(
                leading: CircleAvatar(
                  radius: 30.0,
                  backgroundColor: Colors.green,
                  child: Text(
                    'C$index',
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
                title: Text(
                  'Chat #$index',
                  style: const TextStyle(fontSize: 18.0, color: Colors.black),
                ),
                subtitle: Text(
                  'SubTitle #$index',
                  style: const TextStyle(fontSize: 16.0, color: Colors.grey),
                ),
                trailing: const Text('TODAY'),
              ),
            );
          }),
    );
  }
}

class ContactsView extends StatelessWidget {
  const ContactsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Contacts',
        style: TextStyle(fontSize: 18.0),
      ),
    );
  }
}
