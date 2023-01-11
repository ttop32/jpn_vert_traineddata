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
って?何であなだ  
こんな所に  
いるんですっ?  
  
ナリ  
そんな格好で  
歩きまわらないで  
くださいっ  
  
</td>
<td> 
って?僻であなた  
こんな所に  
いるんですっ3?  
  
ナリ  
そんな格好で  
歩きままわらないで  
くださいっ  
</td>
<td> 
って?僻であなた  
こんな所に  
いるんですっ3?  

ナリ  
そんな格好で  
歩きままわらないで  
くださいっ  
</td>
<td> 
って?体であなだ  
こんだな所に  
いるんですつのり  
  
ナリ  
そんな格好で  
歩老まわらないで  
くだださいっつ  
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








