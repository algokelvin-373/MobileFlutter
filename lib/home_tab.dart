import 'package:flutter/material.dart';
import 'package:mobile_flutter/model/resource.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  static const List<Resource> resources = [
    Resource(id: 1, name: 'Sand Dollar', year: 2006, hex: '#DECDBE'),
    Resource(id: 2, name: 'Chili Pepper', year: 2007, hex: '#9B1B30'),
    Resource(id: 1, name: 'Sand Dollar', year: 2006, hex: '#DECDBE'),
    Resource(id: 2, name: 'Chili Pepper', year: 2007, hex: '#9B1B30'),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: resources.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        padding: const EdgeInsets.all(10),
        itemBuilder: (context, index) {
          final resource = resources[index];
          return Card(
            elevation: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundColor: Color(
                    int.parse(resource.hex.replaceFirst('#', 'FF'), radix: 16),
                  ),
                  child: Text(
                    resource.name[0], // Display the first letter of the user's name
                    style: const TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  resource.name,
                  style: Theme.of(context).textTheme.bodyMedium,
                  textAlign: TextAlign.center,
                ),
                Text(
                  'ID: ${resource.id}',
                  style: Theme.of(context).textTheme.bodySmall,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          );
        }
    );
  }

}