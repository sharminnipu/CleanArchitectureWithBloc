import 'package:architecture/core/dioHelper/dio_helper.dart';
import 'package:architecture/core/error/execptions.dart';
import 'package:architecture/features/post/data/models/activity_model.dart';

abstract class ActivityRemoteDataSource{

  Future<ActivityModel>getActivity();

}

class ActivityRemoteDataSourceImpl implements ActivityRemoteDataSource{

 /* @override
  Future<ShopListResponseModel> getShopList(int pageNo, int pageSize) async{
    final response = await DioHelper().getDataWithBasicToken('shop?pageNo=$pageNo&pageSize=$pageSize');
    if (response.statusCode == 200) {
      return ShopListResponseModel.fromJson(response.data);
    } else {
      throw ServerExecption();
    }

  }*/

  @override
  Future<ActivityModel> getActivity()async {
    final response = await DioHelper().getDataWithoutToken("");
    if (response.statusCode == 200) {
      return ActivityModel.fromJson(response.data);
    } else {
      throw ServerExecption();
    }
  }

}