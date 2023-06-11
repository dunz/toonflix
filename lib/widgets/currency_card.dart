import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String name, code, amount;
  final IconData icon;
  final bool isInverted;

  final _blackColor = const Color(0xFF1F2123);

  const CurrencyCard({
    super.key,
    required this.name,
    required this.code,
    required this.amount,
    required this.icon,
    this.isInverted = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: isInverted ? Colors.white : _blackColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Wrap(
            direction: Axis.vertical,
            spacing: 16,
            children: [
              Text(
                name,
                style: TextStyle(
                  color: isInverted ? _blackColor : Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Wrap(
                spacing: 8,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Text(
                    amount,
                    style: TextStyle(
                      color: isInverted ? _blackColor : Colors.white,
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    code,
                    style: TextStyle(
                      color: isInverted
                          ? _blackColor
                          : Colors.white.withOpacity(.8),
                    ),
                  ),
                ],
              )
            ],
          ),
          Transform.scale(
            scale: 2,
            child: Transform.translate(
              offset: const Offset(0, 16),
              child: Icon(
                icon,
                color: isInverted ? _blackColor : Colors.white,
                size: 100,
              ),
            ),
          )
        ],
      ),
    );
  }
}
