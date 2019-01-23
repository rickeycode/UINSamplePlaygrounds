# Validation code about minimumFontSize property in WKPreferences.

[日本語](README.ja.md)

- It contains the playground for verification described in Swift.   
- The Resources directory contains HTML files for verification.include playground project.   

## Example resources

- sample_basic.html
    HTML with simple text definition only
- sample_edit_head.html
    HTML with font-size specification in head tag in CSS
- sample_edit_body_js.html
    HTML script with script that changes font-size at JS at the end of body tag
- sample_edit_inline.html
    HTML with font-size specification inline on p tag in CSS
- sample_edit_class.html
    In CSS, specify font-size as px for head tag and HTML applied to p tag with class name
- sample_edit_class_em.html
    In CSS, specify font-size to em for head tag and HTML applied to p tag with class name
- sample_edit_class_percentage.html
    In the CSS, specify the font-size as a percentage for the head tag and HTML applied to the p tag with the class name
- sample_edit_class_fontSizeAdjust.html
    In CSS, specify fontSizeAdjust for head tag and HTML applied to p tag with class name
- sample_edit_class_textSizeAdjust.html
    In CSS, specify textSizeAdjust for head tag and HTML applied to p tag with class name


## Result

The "minimumFontSize" property does not work if "textSizeAdjust" is specified.   
HTML files other than sample_edit_class_textSizeAdjust.html are adjusted to the size specified by "minimumFontSize" even if you specify a small size in CSS.   
However, sample_edit_class_textSizeAdjust.html specifies "textSizeAdjust", which is displayed in a font smaller than "minimumFontSize".    

## Blog

[Blog link](https://rc-code.info/ios/post-236/)
