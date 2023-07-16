// import 'dart:js';

// import 'dart:html';
// import 'dart:html';
import 'dart:io' show Platform;
// import 'dart:js';
import 'package:flutter/rendering.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:meta/meta.dart';
import 'package:share_plus/share_plus.dart';
import 'dart:math';
import 'dart:ui';
import 'package:webview_flutter/webview_flutter.dart';

import 'package:flutter/material.dart';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'dart:async';
import 'dart:developer' as dev;
import '../language/app_lang_key.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import 'package:fluttertoast/fluttertoast.dart';

//* api
part 'package:flutter_app_store/api/api_key.dart';
part '../../api/api_handle.dart';
part '../../api/api.dart';
//* models
part '../../model/Store/model_store.dart';
part '../../model/Store/model_store_list.dart';

//* utils
part '../constant/app_images.dart';
part '../constant/app_icons.dart';
part '../language/app_lang.dart';
part '../dime/app_dime.dart';
part '../language/app_lang_config.dart';
part '../routes/app_routes.dart';
part '../theme/app_colors.dart';
part '../theme/app_theme_choose.dart';
part '../theme/app_theme.dart';
part '../svg/app_svg.dart';
part '../restart/app_restart.dart';
part '../../views/store/search_deleget.dart';
part '../../views/store/search_header.dart';
part '../../views/store/widgets/staggered_grid_view/image_data.dart';
part '../constant/app_lists.dart';
//* widgets
part '../../views/home/widgets/drwaer_costume/drawer_body.dart';
part '../../views/home/widgets/drwaer_costume/settings/drawer_settings.dart';
part '../../views/home/widgets/drwaer_costume/settings/lang/drawer_lang.dart';
part '../../views/home/widgets/drwaer_costume/settings/theme/drawe_theme.dart';
part '../../views/home/widgets/drwaer_costume/profile/drawer_profile.dart';
part '../../views/home/widgets/drwaer_costume/settings/drawer_design_settings.dart';
part '../../views/favorite/widgets/favorite_books_card.dart';
part '../../views/library_screen/widgets/books_card.dart';
part '../../views/favorite/widgets/favorite_food_card.dart';
part '../../widgets/main_app_bar.dart';
part '../../main_store.dart';
part '../../views/favorite/favorite_books_view.dart';
part '../../views/news/widgets/news_card.dart';
part '../../views/store/widgets/search.dart';
part '../../widgets/loading/app_loading.dart';
part '../../views/store/widgets/item_card.dart';
part '../../views/orders/Order_list_item.dart';
part '../../views/store/widgets/speacial_subject_card.dart';
part '../../views/store/widgets/staggered_grid_view/image_card.dart';
part '../../views/store/widgets/staggered_grid_view/staggered_p_grid_view.dart';
part '../../widgets/toast/toast.dart';

//* controller
part '../../controllers/api_controller.dart';
part '../../controllers/theme_controller.dart';

//* views
part '../../views/splash.dart';
part '../../views/home.dart';
part '../../views/news.dart';
part '../../views/favorite.dart';
part '../../views/library.dart';
part '../../views/favorite/favorite_food_view.dart';
part '../../views/store.dart';
part '../../views/order.dart';
part '../../views/book.dart';
part '../../views/news/webview_screen.dart';
part '../../views/detail_page.dart';
