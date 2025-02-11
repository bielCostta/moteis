import 'package:flutter/material.dart';
import 'package:moteis/shared/constants/app_colors.dart';
import 'package:moteis/shared/themes/extensions.dart';

class SwitchTabs extends StatefulWidget {
  const SwitchTabs({super.key});

  @override
  SwitchTabsState createState() => SwitchTabsState();
}

class SwitchTabsState extends State<SwitchTabs> {
  bool isNowSelected = true;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(24),
      ),
      child: SizedBox(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildButton(
              icon: Icons.flash_on,
              label: "Ir agora",
              isSelected: isNowSelected,
              onTap: () => setState(() => isNowSelected = true),
            ),
            _buildButton(
              icon: Icons.calendar_today,
              label: "Ir outro dia",
              isSelected: !isNowSelected,
              onTap: () => setState(() => isNowSelected = false),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildButton({
    required IconData icon,
    required String label,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: isSelected ? Colors.white : Colors.transparent,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                icon,
                color: isSelected ? AppColors.primary : Colors.white,
                size: 16,
              ),
              SizedBox(width: 4),
              Text(
                label,
                maxLines: 1,
                textAlign: TextAlign.center,
                style: context.textTheme.titleSmall?.copyWith(
                  color: isSelected ? Colors.black : Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
