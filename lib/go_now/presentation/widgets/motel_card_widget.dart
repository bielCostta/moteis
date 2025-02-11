import 'package:flutter/material.dart';
import 'package:moteis/shared/themes/extensions.dart';

class MotelCardWidget extends StatefulWidget {
  const MotelCardWidget({
    super.key,
    required this.image,
    required this.title,
    required this.address,
    required this.rate,
    required this.evaluation,
    this.images,
  });
  final String image;
  final String title;
  final String address;
  final String rate;
  final String evaluation;
  final List<String>? images;

  @override
  State<MotelCardWidget> createState() => _MotelCardWidgetState();
}

class _MotelCardWidgetState extends State<MotelCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 18,
                backgroundImage: NetworkImage(widget.image),
              ),
              SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.title,
                      style: context.textTheme.titleMedium,
                      maxLines: 1,
                    ),
                    Text(
                      widget.address,
                      style: context.textTheme.bodyMedium,
                      maxLines: 1,
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        DecoratedBox(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                              color: Colors.amber,
                              width: 1,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 2,
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.star_rounded,
                                  color: Colors.amber,
                                  size: 16,
                                ),
                                SizedBox(width: 4),
                                Text(
                                  widget.rate,
                                  style: context.textTheme.titleSmall,
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 8),
                        Text(
                          widget.evaluation,
                          style: context.textTheme.titleSmall,
                        ),
                        SizedBox(width: 4),
                        Icon(
                          Icons.keyboard_arrow_down_rounded,
                          size: 14,
                        )
                      ],
                    )
                  ],
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.favorite_border_rounded),
              )
            ],
          ),
        ),
        SizedBox(height: 16),
        if (widget.images != null)
          ListView.separated(
            itemCount: widget.images!.length,
            separatorBuilder: (_, __) => SizedBox(width: 16),
            itemBuilder: (context, index) {
              return DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Image.network(
                    widget.images![index],
                    fit: BoxFit.cover,
                    color: Colors.white,
                    errorBuilder: (_, __, ___) => Icon(
                      Icons.warning_amber_rounded,
                      size: 32,
                      color: Colors.red.shade800,
                    ),
                  ),
                ),
              );
            },
          ),
      ],
    );
  }
}
