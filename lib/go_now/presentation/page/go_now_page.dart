import 'package:flutter/material.dart';
import 'package:moteis/go_now/presentation/widgets/filters_widget.dart';
import 'package:moteis/go_now/presentation/widgets/motel_card_widget.dart';
import 'package:moteis/go_now/presentation/widgets/switch_tabs_widget.dart';
import 'package:moteis/shared/constants/app_colors.dart';
import 'package:moteis/shared/themes/extensions.dart';

/// Tela de ir agora
class GoNowPage extends StatefulWidget {
  const GoNowPage({super.key});

  @override
  State<GoNowPage> createState() => _GoNowPageState();
}

class _GoNowPageState extends State<GoNowPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),
        title: SwitchTabs(),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InkWell(
            onTap: () {},
            child: Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'minha localização',
                        textAlign: TextAlign.center,
                        style: context.textTheme.bodyMedium?.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: Colors.white,
                      )
                    ],
                  ),
                  Divider(
                    endIndent: MediaQuery.sizeOf(context).width / 3.2,
                    indent: MediaQuery.sizeOf(context).width / 3.3,
                    color: Colors.white,
                    thickness: 1,
                    height: 0,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 16),
          Expanded(
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: AppColors.secundary,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(14),
                  topRight: Radius.circular(14),
                ),
              ),
              child: SizedBox.expand(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: SizedBox(
                        height: 36,
                        child: FiltersWidget(),
                      ),
                    ),
                    Divider(height: 0, color: AppColors.gray2),
                    MotelCardWidget(
                      image:
                          'https://cdn.guiademoteis.com.br/imagens/logotipos/3148-le-nid.gif',
                      title: 'Motel nova lisboa',
                      address: 'santa cecília - são paulo',
                      rate: '4.2',
                      evaluation: '83 avaliações',
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
