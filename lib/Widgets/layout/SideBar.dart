import 'package:flutter/material.dart';

class SideBar extends StatefulWidget {
  final int initialIndex;
  final ValueChanged<int>? onDestinationSelected;
  final bool showLeading;
  final bool showTrailing;
  final NavigationRailLabelType labelType;

  const SideBar({
    super.key,
    this.initialIndex = 0,
    this.onDestinationSelected,
    this.showLeading = false,
    this.showTrailing = false,
    this.labelType = NavigationRailLabelType.all,
  });

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  late int _selectedIndex;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.initialIndex;
  }

  void _onDestinationSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
    if (widget.onDestinationSelected != null) {
      widget.onDestinationSelected!(index);
    }
  }

  @override
  Widget build(BuildContext context) {
    return NavigationRail(
      selectedIndex: _selectedIndex,
      onDestinationSelected: _onDestinationSelected,
      labelType: widget.labelType,
      leading: widget.showLeading
          ? FloatingActionButton(
              elevation: 0,
              onPressed: () {
                // Adicione ação aqui, se desejar.
              },
              child: const Icon(Icons.add),
            )
          : const SizedBox.shrink(),
      trailing: widget.showTrailing
          ? IconButton(
              onPressed: () {
                // Adicione ação aqui, se desejar.
              },
              icon: const Icon(Icons.more_horiz_rounded),
            )
          : const SizedBox.shrink(),
      destinations: const <NavigationRailDestination>[
        NavigationRailDestination(
          icon: Icon(Icons.favorite_border),
          selectedIcon: Icon(Icons.favorite),
          label: Text('Favoritos'),
        ),
        NavigationRailDestination(
          icon: Icon(Icons.bookmark_border),
          selectedIcon: Icon(Icons.book),
          label: Text('Salvos'),
        ),
        NavigationRailDestination(
          icon: Icon(Icons.star_border),
          selectedIcon: Icon(Icons.star),
          label: Text('Mais'),
        ),
      ],
    );
  }
}
