# CAGradientLayer の透過グラデーションが濁る時の対応

[English](README.md)

- Swift で記載した検証用の playground を含んでいます。   
- playground の CAGradientLayer に2種類の方法で透過グラデーションをかけています。


## Result

`CAGradientLayer` を利用して透過のグラデーションを作る際は透過前後の色踏襲し、`withAlphaComponent` を使って定義すると、綺麗なグラデーションになる。


## Blog

[詳しいブログはこちら](https://rc-code.info/?p=305)
