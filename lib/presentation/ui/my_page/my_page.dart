import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:movie_portfolio/domain/model/account_info/account_info.dart';
import 'package:movie_portfolio/domain/use_cases/shard_preferences/shard_preferences_usecase.dart';
import 'package:movie_portfolio/presentation/view_model/my_view_model/my_view_model.dart';

class MyPage extends ConsumerStatefulWidget {
  const MyPage({super.key});

  @override
  ConsumerState<MyPage> createState() => _MyPageState();
}

class _MyPageState extends ConsumerState<MyPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.watch(myViewModelProvider.notifier).updateAccountInfo(null);
    });
  }

  @override
  Widget build(BuildContext context) {
    final myViewModelState = ref.watch(myViewModelProvider);
    final myViewModelFun = ref.watch(myViewModelProvider.notifier);
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
            child: myViewModelState.accountInfo == null
                ? ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurpleAccent,
                      minimumSize: const Size.fromHeight(40),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0))),
                  onPressed: () {
                    signInWithGoogle();
                  },
                  child: Text(
                    "구글 로그인",
                    style: TextStyle(
                        fontWeight: FontWeight.w600, color: Colors.white),
                  ),
                )
                : Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(45.0),
                          child: Image.network(
                              "${myViewModelState.accountInfo?.profileImageUrl}"),
                        ),
                        Text("${myViewModelState.accountInfo?.name}"),
                        Expanded(child: SizedBox()),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.deepPurpleAccent,
                              minimumSize: const Size.fromHeight(40),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(0))),
                          onPressed: () {
                            FirebaseAuth.instance.signOut();
                            myViewModelFun.signOut();
                            myViewModelFun.updateAccountInfo(null);
                          },
                          child: Text(
                            "로그아웃",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  )),
      ),
    );
  }

  Future<AccountInfo> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    final UserCredential authResult =
        await FirebaseAuth.instance.signInWithCredential(credential);

    final tokenId = await authResult.user?.getIdToken();

    AccountInfo accountInfo = AccountInfo(
      type: Type.GOOGLE,
      profileImageUrl: authResult.user?.photoURL.toString(),
      name: authResult.user?.displayName.toString(),
      userId: authResult.user?.uid.toString(),
      tokenId: tokenId,
    );

    ref.watch(myViewModelProvider.notifier).signIn(accountInfo);
    ref.watch(myViewModelProvider.notifier).updateAccountInfo(accountInfo);

    // Once signed in, return the UserCredential
    return accountInfo;
  }
}
