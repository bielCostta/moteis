import 'package:flutter/material.dart';
import 'package:moteis/shared/themes/extensions.dart';

enum FiltersType {
  none(name: 'filtros'),
  discount(name: 'descontos'),
  available(name: 'disponíveis'),
  hotTub(name: 'hidro'),
  swimmingPool(name: 'piscina'),
  sauna(name: 'sauna'),
  internet(name: 'internet'),
  parking(name: 'estacionamento');

  const FiltersType({required this.name});
  final String name;
}

/// Listagem dos filtros

class FiltersWidget extends StatelessWidget {
  const FiltersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      padding: EdgeInsets.symmetric(horizontal: 16),
      scrollDirection: Axis.horizontal,
      itemCount: FiltersType.values.length,
      separatorBuilder: (_, __) => SizedBox(width: 16),
      itemBuilder: (context, index) {
        final item = FiltersType.values[index];
        return Chip(
          avatar: item == FiltersType.none ? Icon(Icons.filter_list) : null,
          label: Text(
            item.name,
            style: context.textTheme.titleSmall,
          ),
          color: WidgetStateProperty.all(Colors.white),
        );
      },
    );
  }
}
