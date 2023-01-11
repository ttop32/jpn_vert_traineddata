# jpn_vert_traineddata
tesseract jpn_vert traineddata fintune
finetune zodiac3539 jpn_vert model with 16 jp fonts until it reach BCER 1% 


# Result   
- input image
![result](doc/result1.png)    
- output text comparison


<table>
<tr><td> Truth </td><td> Ours jpn_vert_new </td> <td> zodiac3539 jpn_ver5 </td><td> NbtKmy jpn_vert_v4 </td></tr>
<tr>
<td> 
って?何であなだ  <br>
こんな所に  <br>
いるんですっ?  <br>
  <br>
ナリ  <br>
そんな格好で  <br>
歩きまわらないで  <br>
くださいっ  <br>
  <br>
</td>
<td> 
って?僻であなた <br> 
こんな所に  <br>
いるんですっ3?  <br>
  <br>
ナリ  <br>
そんな格好で <br> 
歩きままわらないで <br> 
くださいっ  <br>
</td>
<td> 
って?僻であなた  <br>
こんな所に  <br>
いるんですっ3?  <br>
<br>
ナリ  <br>
そんな格好で  <br>
歩きままわらないで <br> 
くださいっ  <br>
</td>
<td> 
って?体であなだ  <br>
こんだな所に  <br>
いるんですつのり  <br>
  <br>
ナリ  <br>
そんな格好で  <br>
歩老まわらないで  <br>
くだださいっつ  <br>
</td>

</tr>
</table>









# Acknowledgement and References  
- [tesseract-training](https://github.com/nikhilbaby/tesseract-training) 
- [tesseract-custom-font-training](https://github.com/xayilmaz/tesseract-custom-font-training) 
- [tesseract-custom-font-training](https://github.com/tesseract-ocr/tesseract/issues/3001) 
- [Best Practices re OPENMP](https://github.com/tesseract-ocr/tesseract/issues/3744) 
- [Image too small to scale](https://github.com/tesseract-ocr/tesseract/issues/3001) 
- [tesstrain doesnt support vertical languages](https://github.com/tesseract-ocr/tesseract/issues/2989) 
- [tessdoc](https://tesseract-ocr.github.io/tessdoc/) 
- [zodiac3539 jpn_vert](https://github.com/zodiac3539/jpn_vert) 
- [NbtKmy jpn_vert](https://github.com/NbtKmy/jpn_vert_improvement) 
- [freejapanesefont](https://www.freejapanesefont.com/)     
- [google font](https://fonts.google.com/?subset=japanese&noto.script=Jpan)     
- [google font github](https://github.com/google/fonts)     








