
## baseview注意

``baseview`` 使用时请初始化 ``flutter_screenUtil``

## Getting started

```yaml
baseview: ^0.0.1
```

## 初始化
```dart
Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 667),
      builder: (context, child) => GetMaterialApp(
        title: 'Flutter Demo',
        initialBinding: GlobalBinding(),
        home: Container(),
      ),
    );
  }
```

## example
```dart

class TestPage extends BaseCommonView<TestController> {

  @override
  // TODO: implement navTitle
  String? get navTitle => "test";
  
  @override
  String failImageStr() {
    // TODO: implement failImageStr
    return "";
  }

 @override
  Widget buildContent() {
	// Implement your buildContent method here
    return Obx(() => creatCommonView(controller, (context) {
      return Text("1111");
    }));
  }
}
  

class TestController extends BaseCommonController {
  @override
  void initData() {
    // TODO: implement initData
    getnetworkdata(configNetWorkParmas());
  }

  @override
  Map<String, dynamic> configNetWorkParmas() {
    // TODO: implement configNetWorkParmas
    return {};
  }
  
  @override
  void getnetworkdata(Map<String, dynamic> info) {
    // TODO: implement getnetworkdata
  }

}


class TestListController extends BaseListController {
  @override
  void initData() {
  }
  
  @override
  Map<String, dynamic> configNetWorkParmas() {
    // TODO: implement configNetWorkParmas
    return {};
  }
  
  @override
  void getnetworkdata(Map<String, dynamic> info) {
    // TODO: implement getnetworkdata
  }
  
}



```

