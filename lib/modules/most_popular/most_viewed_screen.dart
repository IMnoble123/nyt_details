import 'package:flutter/material.dart';
import 'package:nyt_details/global/constants/app_state.dart';
import 'package:nyt_details/global/constants/fonts/font_constants.dart';
import 'package:nyt_details/modules/most_popular/controller/mostview_controller.dart';
import 'package:provider/provider.dart';
import '../../gen/colors.gen.dart';
import '../../gen/fonts.gen.dart';
import '../../global/constants/fonts/size_config.dart';
import '../../global/text_widgets/build_text.dart';

class MostViewedScreen extends StatefulWidget {
  const MostViewedScreen({super.key});

  @override
  State<MostViewedScreen> createState() => _MostViewedScreenState();
}

class _MostViewedScreenState extends State<MostViewedScreen> {
  double height = 0.0;
  double width = 0.0;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    height = SizeConfig.safeBlockVertical!;
    width = SizeConfig.safeBlockHorizontal!;
    final controller = context.watch<MostViewedController>();
    return SafeArea(
      child: Scaffold(
        appBar: appabrWidget(),
        body: SateProvider.widget(
            state: controller.state,
            loaded: _createBody(controller),
            loading: lodingWidget()),
      ),
    );
  }

  AppBar appabrWidget() {
    return AppBar(
      backgroundColor: const Color.fromARGB(255, 99, 244, 217),
      elevation: 1,
      leading: const Icon(
        Icons.menu,
        color: Colors.white,
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BuildText(
            text: 'NY Times Most Popular',
            color: Colors.white,
            family: FontFamily.openSansSemibold,
            fontSize: 10.0.medium20px(),
          ),
          const Icon(
            Icons.search,
            color: Colors.white,
          )
        ],
      ),
      actions: const [
        Icon(
          Icons.more_vert,
          color: Colors.white,
        )
      ],
    );
  }

  Widget lodingWidget() {
    return const Center(
        child: CircularProgressIndicator(color: ColorName.colorPrimary));
  }

  Widget _createBody(MostViewedController controller) {
    return SingleChildScrollView(
      physics: const AlwaysScrollableScrollPhysics(),
      child: Column(
        children: [
          SizedBox(height: height * 2),
          SizedBox(
            height: 500,
            child: ListView.separated(
              shrinkWrap: true,
              separatorBuilder: (context, index) => const SizedBox(),
              itemCount: controller.viewed?.results?.length ?? 0,
              itemBuilder: (context, index) {
                return mostViewedBox(controller, index);
              },
            ),
          )
        ],
      ),
    );
  }

  Widget mostViewedBox(MostViewedController controller, int index) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * 3),
      child: Row(children: [
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: ColorName.colorGray,
              image: DecorationImage(
                  image: NetworkImage(controller.viewed?.results?[index]
                          .media?[0].mediaMetadata?[0].url ??
                      ''),
                  fit: BoxFit.cover)),
        ),
        Flexible(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: width * 3, vertical: height * 1.5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BuildText(
                  text: controller.viewed?.results?[index].title ?? '',
                  color: Colors.black,
                  family: FontFamily.openSansMedium,
                  fontSize: 10.0.small14px(),
                  overFlow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
                SizedBox(height: height * 1),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: BuildText(
                          text: controller.viewed?.results?[index].byline ?? '',
                          color: ColorName.colorGray,
                          family: FontFamily.openSansMedium,
                          fontSize: 10.0.small14px(),
                          overFlow: TextOverflow.visible,
                          maxLines: 1,
                        ),
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.calendar_month,
                            color: ColorName.colorGray,
                          ),
                          SizedBox(width: width * 2),
                          BuildText(
                              text: controller
                                      .viewed?.results?[index].publishedDate ??
                                  '',
                              color: ColorName.colorGray,
                              family: FontFamily.openSansRegular,
                              fontSize: 10.0.small12px()),
                        ],
                      ),
                    ]),
              ],
            ),
          ),
        ),
        const Icon(
          Icons.arrow_forward_ios,
          size: 12,
        )
      ]),
    );
  }
}
