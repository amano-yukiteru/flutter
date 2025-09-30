import 'package:flutter/material.dart';

// --- 1. Class Abstrak ---
abstract class ListItem {
  Widget buildTitle(BuildContext context);
  Widget buildSubtitle(BuildContext context);
}

// --- 2. HeadingItem ---
class HeadingItem implements ListItem {
  final String heading;
  HeadingItem(this.heading);

  @override
  Widget buildTitle(BuildContext context) {
    return Text(
      heading,
      style: const TextStyle(
        color: Colors.blue,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  @override
  Widget buildSubtitle(BuildContext context) => const SizedBox.shrink();
}

// --- 3. MessageItem ---
class MessageItem implements ListItem {
  final String sender;
  final String body;

  MessageItem(this.sender, this.body);

  @override
  Widget buildTitle(BuildContext context) {
    return Text(
      sender,
      style: const TextStyle(fontWeight: FontWeight.bold),
    );
  }

  @override
  Widget buildSubtitle(BuildContext context) => Text(body);
}

// --- 4. ImageItem Lokal ---
class ImageItem implements ListItem {
  final String imagePath; // path lokal di folder images/
  final String title;

  ImageItem(this.imagePath, this.title);

  @override
  Widget buildTitle(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(fontWeight: FontWeight.bold),
    );
  }

  @override
  Widget buildSubtitle(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 4.0),
      child: Image.asset(
        imagePath,
        height: 50,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }
}

// --- Widget utama ---
class Layout6 extends StatelessWidget {
  const Layout6 ({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ListItem> items = List<ListItem>.generate(30, (i) {
      if (i % 5 == 0) {
        return HeadingItem('Heading $i');
      } else if (i % 3 == 0) {
        // gunakan gambar lokal
        final imageIndex = (i ~/ 3) % 3 + 1; // hasil: 1, 2, 3
        return ImageItem('img/$imageIndex.png', 'Image Item $i');
      } else {
        return MessageItem('Sender $i', 'Message body $i');
      }
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text("List dengan Berbagai Item"),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
            child: Card(
              elevation: 2,
              child: ListTile(
                title: item.buildTitle(context),
                subtitle: item.buildSubtitle(context),
                contentPadding: const EdgeInsets.all(8),
              ),
            ),
          );
        },
      ),
    );
  }
}