# Validation code about minimumFontSize property in WKPreferences.

- include playground project.   
- sample html files in Resource directory.   

## Example resources
- sample_basic.html   
    ・simple paragraph html file.   
- sample_edit_head.html   
    ・inclued css code in head tag.   
- sample_edit_body_js.html   
    ・inclued css code in end of body tag.   
- sample_edit_inline.html   
    ・inclued css code in paragraph tag.   
- sample_edit_class.html    
    ・inclued css code in head tag and appending class at paragraph.   
- sample_edit_class_em.html   
    ・inclued css code decide font-size by em in head tag.   
- sample_edit_class_percentage.html   
    ・inclued css code decide font-size by percentage in head tag.   
- sample_edit_class_fontSizeAdjust.html   
    ・inclued css code decide fontSizeAdjusting in head tag.   
- sample_edit_class_textSizeAdjust.html   
    ・inclued css code decide textSizeAdjusting in head tag.   

## Result

"minimumFontSize" property doesn't work when inclued textSizeAdjust style.   
We can see same view when showing example resources, exclued sample_edit_class_textSizeAdjust.html.   
But sample_edit_class_textSizeAdjust.html is providing view with minimumFontSize properties disabled.
