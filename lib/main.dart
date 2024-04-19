import 'package:flutter/material.dart';

void main() {
  // ====================section2========================= //
  // ----lecture2----
  // int(イント) --> 整数値
  //    例）1, 0, 2, -1
  // ListView.builderのitemCount
  // double(ダブル) --> 小数点を含む数値
  //    例）1.0, 0.1, 1.75
  // Containerのwidthやheight

  //  ----lecture3----
  // String（ストリング） --> 文字列
  const Text('文字列');
  print('プログラム' + '太郎');

  //  ----lecture4----
  // bool（ブール） --> 真偽値
  //    true or false
  // MaterialAppのdebugShowCheckedModeBanner false
  //
  //  ----lecture5----
  //  変数 --> 値を管理するための入れ物
  //　変数の定義の仕方
  //    データ型　変数名 = 値;
  //    例）String name = '奥野'; , int number = 1;
  //    *データ型と値のデータ型は一致している必要がある
  //
  //    List（リスト） --> 複数の値を管理できる
  // List<String> nameList = ['奥野', '田中'];
  // print(nameList);
  // Listに値を追加する方法
  // nameList.add('岡田');
  //  ----lecture6----
  //  Map(マップ）-->複数の値を管理できる（keyとvalue）
  //  List<String> nameList = ['奥野','田中'];
  //  List = []
  Map<String, String> nameMap = {'1': '奥野', '2': '田中'};
  // Map = {};
  print(nameMap);
  print(nameMap['2']);

  nameMap['3'] = '後藤';
  print(nameMap);
  nameMap['abc'] = '佐藤';
  print(nameMap);
  print(nameMap['abc']);
  //
  //  ----lecture7----
  //  var（バリアブル）--> 型推論
  //  初めに入れられた値から型を推測してくれる
  //  データ型　変数名 = 値;　変数の定義
  //  String name = '奥野';
  //  var name2 = '田中';
  //  int number1 = 0;
  //  var number2 = 0;
  //  var nameList = [];
  //  int  name = 0;
  //  var name = '奥野';
  //
  //  String name = '奥野';

  //  ----lecture8----
  // Fucntion(ファンクション)-->メソッド、開数
  //     処理をまとめたもの
  // 引数
  // --> 値が必順かつ 値を送る順番は引数の定義の順番
  // 名前付き引数-->{}をつける
  //-->値は必須ではない かつ 値を送る順番は自由
  // オプション引數-->[]
  //-->値は必須ではない かつ 値を送る順番は引数の定義の順番

  // メソッドの定義
  void printNumber([int x = 0, int y = 0]) {
    int number = 0; //0
    print(number + x + y); //2
  }

  //メソッドの実行
  printNumber(10, 5);

  //return
  //メソッドを実行した結果を得る
  //returnのあるメソッドの定義方法
  //returnされるデータ型 メソッド名(){処理}
  String getName() {
    String name = 'AMF';
    return name;
  }

  //returnのないメソッドの定義方法
  //void メソッド名(){処理}
  // void getName2() {
  //   String name = '奥野';
  // }
  //   String name2 = getName();
  //   print(name2);

  //アロー関数→メソッドの定義を簡潔にするもの
  // 1行で処理が終わる内容のものを簡潔に書くことができる
  void printNum() {
    print(10);
  }

  void printNum2() => print(10);
  String getNane() {
    return '奥野';
  }

  String getName2() => '奥野';

  //  ----lecture9----
  //  Future（フューチャー）-->時間のかかる処理
  //  Futureの時はasyncが必要
  //  非同期処理
  void test() {
    print('スタート');
    // 3秒後にフィニッシュしたい
    print('フィニッシュ');
  }

  Future<void> test2() async {
    print('スタート');
    // 3秒後にフィニッシュしたい
    await Future.delayed(Duration(seconds: 3));
    print('フィニッシュ');
  }

  test2();

  //  ----lecture10----
  //  Widget（ウィジェット）-->FlutterのUIを構成するコンポーネント
  // 文字を反映 Text Widget
  //　箱を表示 Container Widget
  // アイコンを表示 Icon Widget
  Widget txt = Text('奥野');
  Widget container = Container(
    width: 10.0,
    height: 5.0,
  );
  Widget icon = Icon(Icons.keyboard);
  Widget column = Column();

  // ===================================================== //

  // ====================section3========================= //
  //  ----lecture1----
  //class-->設計园
  String name1 = '奥野';
  int age1 = 26;

  String name2 = '田中';
  int age2 = 18;

  List<String> nameList = ['奥野', '田中', '佐藤'];
  List<int> ageList = [26, 18, 42];

//インスタンスの作り方→ クラス名():
  List<Person> personList = [
    Person(name: '奥野', age: 26),
    Person(name: '田中', age: 18),
    Person(name: '佐藤'),
  ];

//インスタンスから特定の値を取得する方法
  print(personList[0].age);

  Person person = Person(name: 'fA', age: 29);
  print(person.name);

  // ===================================================== //

  // ====================section4========================= //
  //  ----lecture12----
  // final
  // const
  //    定数 --> 値を変更することができない
  //    変数 --> 値を変更することができる
  // finalとconstの違いは？
  // const --> コンパイル時定数
  // finalには変数を入れられるがconstには入れられない

  // String name = '奥野';
  // final String name2 = name;
  // const String name3 = name;

  //  ----lecture14----
  print(Test.name);
  print(Test.age);

  // ===================================================== //
  // ====================section5========================= //
  //  ----lecture15----
  // 変数への代入 --> その変数に値を入れる
  String name = '奥野';
  print(name);
  name = '田中';
  print(name);

  //  ----lecture16----
  int num = 5;
  // num = num - 1;
  num;
  print(num);

  //  ----lecture17----
  double num1 = 0.0;
  // num1 = num1 +3;
  num1 /= 10.0;
  print(num1);
  // ===================================================== //
  // ====================section6========================= //
  //  ----lecture18----
  // 比較演算子
  int num2 = 19;
  print(num2 >= 0);
  //  ----lecture19----
  // if もし
  int num3 = 2;
  if (num3 == 0) {
    print('num3は0です。');
  } else if (num3 == 1) {
    print('num3は1です。');
  } else {
    print('num3は0でも1でもないです。');
  }

  //  ----lecture20----
  // 論理演算子  ~かつ~ ~または~
  int age = 25;
  if (age <= 20 || age >= 30) {
    print('20代ではありません。');
  } else {
    print('20代です。');
  }

  //  ----lecture21----
  // 三項演算子 ?と:を用いて処理を分岐する

  // if文を用いた条件分岐
  int num4 = 1;
  if (num4 == 0) {
    print('numは0です');
  } else {
    print('numは0ではないです');
  }

  // 三項演算子を用いた条件分岐
  num4 == 0 ? print('numは0です') : print('numは0ではないです');

  //  ----lecture22----
  // スコープ --> 変数を使える範囲
  int num5 = 0;
  print(num5);
  int num6 = 1;
  if (num5 == 0) {
    print(num5);
    print(num6);
    if (num6 == 1) {
      int num7 = 2;
      print(num6);
    }

    // print(num7);
  }
  print(num6);

  // ===================================================== //
  // ====================section7========================= //
  //  ----lecture23----
  // switch文
  int num8 = 2;
  switch (num8) {
    case 0:
      print('numは0です');
      break;
    case 1:
      print('numは1です');
      break;
    default:
      print('numは0でも1でもない');
      break;
  }

  //  ----lecture24----
  // enum 列挙体
  String animal = 'dog';
  Animal animal2 = Animal.cat;
  switch (animal2) {
    case Animal.dog:
      print('犬です');
      break;
    case Animal.cat:
      print('猫です');
      break;
    case Animal.bear:
      print('熊です');
      break;
    default:
      print('わかりません');
      break;
  }

  // ===================================================== //
  // ====================section8========================= //
  //  ----lecture25----
  for (int i = 0; i < 11; i++) {
    print(i);
  }

  //  ----lecture26----
  // for in
  List<String> nameList2 = ['奥野', '田中', '佐藤'];
  for (String name in nameList2) {
    print(name);
  }
  for (int i = 0; i < nameList2.length; i++) {
    print(nameList2[i]);
  }

  // ===================================================== //
  // ====================section9========================= //
  //  ----lecture27----
  // while文
  int num9 = 5;
  while (num > num9) {
    print(num9);
    num9--;
  }

  //  ----lecture28----

  // while文
  int num10 = 5;
  while (num10 > 0) {
    if (num10 % 3 == 0) {
      num10--;
      continue;
    }
    print(num10);
    num10--;
  }
  // ===================================================== //
  // ====================section10========================= //
  //  ----lecture29----
  // try-catch

  try {
    int num11 = 0;
    //エラーの処理
    // throw('エラーが発生');
    print(num11);
  } catch (e) {
    print(e);
  } finally {
    print('フィニッシュ');
  }

  // ===================================================== //
  // ====================section11========================= //
  //  ----lecture30----
  void sum({int x = 0}) {
    print(x + 1);
    sum(x: 10);
  }
}

enum Animal { dog, cat, bear }

class Test {
  static String? name;
  static int? age;
}

class Person {
  String name;
  int? age;

//コンストラクター→クラスのインスタンスが生成される時に実行されるメソッド
  Person({required this.name, this.age});
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
