import 'package:flutter/material.dart';
import 'package:flutter_libphonenumber/flutter_libphonenumber.dart' as ph;
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:min_riverpod/phonnumber_provider_with_scope_override/pop_up_state_view_model.dart';

// Remiさんはあまりこの方法を勧めてない、 widget tree内に次のページが乗らない内にやると思いがけない挙動を起こすかもしれないから
// できるなら別の方法でよくないか？という話
// あと外部にVMの参照を渡そうと思ったできちゃうから
// https://stackoverflow.com/questions/75377245/flutter-is-it-ok-to-use-notifier-constructor-to-pass-initial-value-in-riverpod
class NextPage extends HookConsumerWidget {
  const NextPage(this.previewState, {super.key});

  static MaterialPageRoute<NextPage> route(String state) => MaterialPageRoute(
      builder: (_) => ProviderScope(overrides: [
            // ここでViweModelのインスタンスの生成をオーバーライドしてやると、ViewModelのbuild地に引数が渡せたような感じにできる
            popUpViewModelProvider.overrideWith(() => PopUpViewModel(state)),
          ], child: NextPage(state)));

  final String previewState;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final phoneNumberType = switch (previewState.length) {
    //   10 => ph.PhoneNumberType.fixedLine,
    //   11 => ph.PhoneNumberType.mobile,
    //   _ => ph.PhoneNumberType.fixedLine
    // };
    final state = ref.watch(popUpViewModelProvider);
    ref.read(popUpViewModelProvider.notifier);
    final fromLibralyJp =
        ph.CountryManager().countries.singleWhere((c) => c.phoneCode == "81");
    debugPrint(fromLibralyJp.getPhoneMask(
        format: ph.PhoneNumberFormat.national,
        type: ph.PhoneNumberType.fixedLine));
    return Scaffold(
      appBar: AppBar(
        title: const Text("次の画面だよ"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(state.text),
            const SizedBox(
              height: 10.0,
            ),
            ElevatedButton(
                child: const Text("Rssolve: 電話番号として表示します"),
                onPressed: () async {
                  Map<String, dynamic> parse;
                  try {
                    parse = await ph.parse("+81${state.text.substring(1)}",
                        region: "81");
                    debugPrint("parse phone: ${parse.toString()}");
                    ref
                        .read(popUpViewModelProvider.notifier)
                        .setText("${parse["national"].toString()} 上手く更新されたよ！");
                  } catch (e) {
                    debugPrint("電話番号を解決できませんでした ${e.toString()}");
                  }

                  // 手動で番号に関する情報を作ることもできるが
                  // var number = ph.formatNumberSync(
                  //   state.text,
                  //   country: JP(),
                  //   phoneNumberType: phoneNumberType,
                  //   phoneNumberFormat: ph.PhoneNumberFormat.national,
                  //   removeCountryCodeFromResult: false,
                  //   inputContainsCountryCode: false,
                  // );
                  // number = number.replaceAll(" ", "-");
                })
          ],
        ),
      ),
    );
  }
}
