# iOS WKWebViewConfigurationに設定する WKPreferances の minimumFontSize プロパティ検証

[English](README.md)

- Swift で記載した検証用の playground を含んでいます。   
- Resources ディレクトリに検証用のHTMLファイルを含んでいます。   


## Example resources
- sample_basic.html   
    ・シンプルなテキスト定義のみのHTML   
- sample_edit_head.html   
    ・CSSにてheadタグにfont-size指定を記載したHTML   
- sample_edit_body_js.html   
    ・JSにてfont-sizeを変更するスクリプトをbodyタグ末尾に記載したHTML   
- sample_edit_inline.html   
    ・CSSにてpタグにインラインでfont-size指定を記載したHTML   
- sample_edit_class.html    
    ・CSSにてheadタグにfont-sizeをpx指定し、クラスネームでpタグに適用したHTML   
- sample_edit_class_em.html   
    ・CSSにてheadタグにfont-sizeをem指定し、クラスネームでpタグに適用したHTML   
- sample_edit_class_percentage.html   
    ・CSSにてheadタグにfont-sizeをパーセンテージ指定し、クラスネームでpタグに適用したHTML   
- sample_edit_class_fontSizeAdjust.html   
    ・CSSにてheadタグにfontSizeAdjustを指定し、クラスネームでpタグに適用したHTML   
- sample_edit_class_textSizeAdjust.html   
    ・CSSにてheadタグにtextSizeAdjustを指定し、クラスネームでpタグに適用したHTML   


## Result

"minimumFontSize" プロパティは "textSizeAdjust" が指定されていると効かない。   
sample_edit_class_textSizeAdjust.html 以外のHTMLファイルはCSSで小さいサイズを指定しても、"minimumFontSize" で指定したサイズに調整される。   
しかし、sample_edit_class_textSizeAdjust.html では "textSizeAdjust" を指定しており、こちらは "minimumFontSize" の指定よりも小さいフォントで表示される。   
