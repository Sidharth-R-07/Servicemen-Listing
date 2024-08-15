import 'package:injectable/injectable.dart';
import 'package:servicemen_listing/features/authetication/domain/i_authetication_facade.dart';

@LazySingleton(as: IAutheticationFacade)
class IAutheticationImpl implements IAutheticationFacade {}
