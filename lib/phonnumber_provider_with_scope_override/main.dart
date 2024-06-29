import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_libphonenumber/flutter_libphonenumber.dart' as libph;
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:min_riverpod/phonnumber_provider_with_scope_override/next_page.dart';
import 'package:min_riverpod/phonnumber_provider_with_scope_override/phone_number_formatter.dart';

void main(List<String> args) async {
  runApp(const ProviderScope(
    child: MaterialApp(home: FirstPage()),
  ));
}

// build地に state の変更が波及して、何回も再描画をさせたくない時とか、
// Widgetsbinding,instance.addPostFrameCallback()のような、build 構築後に呼ばれるけど確実性に不安だったり、
// stateless な環境で 初期化をflag管理で行わず、
// 画面遷移を行ったタイミングで Provider へ値を渡したい時。
// (isolateを使わない限り、シングルスレッドな環境で。Widgetsbinding,instance.addPostFrameCallback()とaddListbnerを使うのはすごい疑問)
class FirstPage extends HookConsumerWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textEditController = useTextEditingController();
    final state = useState<String>("");
    final countryJP = JP();

    listener() {
      state.value = textEditController.text;
    }

    // text editor controller の最初の処理
    useEffect(() {
      textEditController.text = state.value;
      textEditController.addListener(listener);
      return () {
        // widgetが treeからdetach されると自動的にdisposeされるので、これは書かなくていい
        textEditController.removeListener(listener);
        textEditController.dispose();
      };
    }, [textEditController]);

    // state.value の状態が変わったときに呼ばれる
    // 試しに state 単体で監視してみよう
    useEffect(() {
      debugPrint(state.value);
      return;
    }, [state.value]);

    // widget の初期化
    useEffect(() {
      libph.init();
      return;
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text("最初の画面だね"),
      ),
      body: Center(
        child: Padding(
            padding: const EdgeInsets.all(20.0),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              TextField(
                textAlign: TextAlign.start,
                controller: textEditController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText:
                      " ${countryJP.exampleNumberMobileNational.replaceAll(RegExp(r'[^0-9]'), '')}",
                  hintStyle: const TextStyle(color: Colors.grey),
                  helperText: 'ハイフンを省略して入力してください',
                  helperStyle: const TextStyle(fontSize: 12.0),
                ),
                // inputFormatters: [
                //   libph.LibPhonenumberTextFormatter(
                //     country: countryJP,
                //     phoneNumberFormat: libph.PhoneNumberFormat.national,
                //     inputContainsCountryCode: false,
                //     shouldKeepCursorAtEndOfInput: true,
                //   ),
                // ],
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    final next = NextPage.route(textEditController.text
                        .replaceAll(RegExp(r'[^0-9]'), ''));
                    Navigator.of(context).push(next);
                  },
                  child: const Text("次の画面へ")),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    textEditController.clear();
                  },
                  child: const Text("テキストフィールドをクリア")),
            ])),
      ),
    );
  }
}
