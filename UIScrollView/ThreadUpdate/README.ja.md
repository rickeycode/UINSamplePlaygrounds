# UIScrollView のスクロールがカクつく時の対応

[English](README.md)

- Swift で記載した検証用の playground を含んでいます。   
- playground の UIScrollViewDelegate 内でシステムに負荷かけています。
- `scrollLogSessionQueue.async` により、処理を `mainthread` から別スレッドに移譲しています。


## Result

UIScrollViewDelegate の `scrollViewDidScroll` が発火される度（スクロールされる度）に負荷がかかるようプログラムを組みました。
サンプルコードの  `scrollLogSessionQueue.async` の行で別threadに処理を移譲した事で、表示のカクつきが軽減されています。


## Blog

[詳しいブログはこちら](https://rc-code.info/ios/post-236/)
