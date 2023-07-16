part of '../../utils/imports/app_imports.dart';

class Webview_screen extends StatefulWidget {
  const Webview_screen({Key? key, required this.url_sarp}) : super(key: key);
  final String url_sarp;
  static const routename = '/WebScreen';

  @override
  State<Webview_screen> createState() => _Webview_screenState();
}

class _Webview_screenState extends State<Webview_screen> {
  late WebViewController controller;

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as News_Card;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor:
            AppTheme.isDark(context) ? Colors.black87 : Colors.white70,
        leading: BackButton(
          color: AppTheme.isDark(context)
              ? AppColors.nipa_brown
              : AppColors.bgGreen,
        ),
        actions: [
          IconButton(
            onPressed: () async {
              controller.goBack();
            },
            icon: Icon(Icons.arrow_back),
            color: AppTheme.isDark(context)
                ? AppColors.nipa_brown
                : AppColors.bgGreen,
          ),
          IconButton(
            onPressed: () async {
              controller.goForward();
            },
            icon: Icon(Icons.arrow_forward),
            color: AppTheme.isDark(context)
                ? AppColors.nipa_brown
                : AppColors.bgGreen,
          ),
          IconButton(
            onPressed: () async {
              controller.reload();
              print(args.url_path + 'kjbukjb');
            },
            icon: Icon(Icons.refresh),
            color: AppTheme.isDark(context)
                ? AppColors.nipa_brown
                : AppColors.bgGreen,
          ),
        ],
      ),
      body: WebViewWidget(
          controller: controller = WebViewController()
            ..setJavaScriptMode(JavaScriptMode.unrestricted)
            ..setBackgroundColor(const Color(0x00000000))
            ..setNavigationDelegate(
              NavigationDelegate(
                onProgress: (int progress) {
                  // Update loading bar.
                },
                onPageStarted: (String url) {},
                onPageFinished: (String url) {},
                onWebResourceError: (WebResourceError error) {},
                onNavigationRequest: (NavigationRequest request) {
                  if (request.url.startsWith('https://www.youtube.com/')) {
                    return NavigationDecision.prevent;
                  }
                  return NavigationDecision.navigate;
                },
              ),
            )
            ..loadRequest(Uri.parse('https://flutter.dev'))),
      backgroundColor:
          AppTheme.isDark(context) ? Colors.black87 : Colors.white70,
      // initialUrl: args.url_path,
      // initialUrl: 'https://www.example.com',
      // javascriptMode: JavascriptMode.unrestricted,
      // onWebViewCreated: (controller) {
      // this.controller = controller;
      // },
    );
  }
}
