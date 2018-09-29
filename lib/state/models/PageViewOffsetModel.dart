import 'package:scoped_model/scoped_model.dart';

/// PageView的偏移
class PageViewOffsetModel extends Model {
  double _offset = 0.0;
  PageViewOffsetModel();
  get offset => _offset;

  set offset(double value) {
    _offset = value;
    notifyListeners();
  }

  PageViewOffsetModel of(context) =>
      ScopedModel.of<PageViewOffsetModel>(context);
}
