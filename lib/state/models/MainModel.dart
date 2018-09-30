import 'package:scoped_model/scoped_model.dart';

/// 应用状态
class MainModel extends Model {
  MainModel();

  double _offsetOfPageView = 0.0;

  /// 页面偏移量
  get offsetOfPageView => _offsetOfPageView;

  /// 页面偏移量
  set offsetOfPageView(double value) {
    _offsetOfPageView = value;
    notifyListeners();
  }

  int _indexOfPageView = 0;

  /// 当前页面索引
  get indexOfPageView => _indexOfPageView;

  /// 当前页面索引
  set indexOfPageView(int value) {
    _indexOfPageView = value;
    notifyListeners();
  }

  MainModel of(context) => ScopedModel.of<MainModel>(context);
}
