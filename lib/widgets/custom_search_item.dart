import 'package:flutter/material.dart';

class CustomSearchItem extends StatefulWidget {
  @override
  _CustomSearchItemState createState() => _CustomSearchItemState();
}

class _CustomSearchItemState extends State<CustomSearchItem> {
  TextEditingController _searchController = TextEditingController();
  List<String> _allItems = []; // Aquí puedes mapear tus elementos
  List<String> _filteredItems = [];

  @override
  void initState() {
    super.initState();
    _filteredItems.addAll(_allItems);
  }

  void _filterItems(String query) {
    List<String> results = [];
    if (query.isEmpty) {
      results = _allItems;
    } else {
      results = _allItems
          .where((item) => item.toLowerCase().contains(query.toLowerCase()))
          .toList();
    }
    setState(() {
      _filteredItems = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.5,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 4,
            ),
            TextField(
              controller: _searchController,
              onChanged: (query) => _filterItems(query),
              decoration: InputDecoration(
                  hintText: 'Buscar servicios',
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  contentPadding: const EdgeInsets.symmetric(vertical: 5)),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _filteredItems.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(_filteredItems[index]),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
