part of '../../../utils/imports/app_imports.dart';

class _Search extends StatefulWidget {
  _Search({Key? key}) : super(key: key);

  @override
  __SearchState createState() => __SearchState();
}

class __SearchState extends State<_Search> {
  late TextEditingController _editingController;

  @override
  void initState() {
    super.initState();
    _editingController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: TextField(
              controller: _editingController,
              // textAlignVertical: TextAlignVertical.center,
              onChanged: (_) => setState(() {}),
              decoration: InputDecoration(
                hintText: 'Search',
                hintStyle: TextStyle(
                    color: AppTheme.isDark(context)
                        ? AppColors.bgWhite
                        : AppColors.bgBlack),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
            ),
          ),
          _editingController.text.trim().isEmpty
              ? IconButton(
                  icon: Icon(Icons.search,
                      color: AppTheme.isDark(context)
                          ? AppColors.bgWhite
                          : AppColors.bgBlack),
                  onPressed: null)
              : IconButton(
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  icon: Icon(Icons.clear,
                      color: AppTheme.isDark(context)
                          ? AppColors.bgWhite
                          : AppColors.bgBlack),
                  onPressed: () => setState(
                    () {
                      _editingController.clear();
                    },
                  ),
                ),
        ],
      ),
    );
  }
}
