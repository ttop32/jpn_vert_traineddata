# jpn_vert_traineddata
tesseract jpn_vert traineddata fintune  
finetune zodiac3539 jpn_vert model with 16 jp fonts until it reach BCER 1%   
Text transition works well but there is poor text segmentation performance  


# Result   
- input image  
![result](test/result2.jpg)      
- output text comparison


<table>
<tr><td> Ours jpn_vert_new </td> <td> <a href="https://github.com/zodiac3539/jpn_vert">zodiac3539 jpn_ver5</a> </td><td> <a href="https://github.com/NbtKmy/jpn_vert_improvement">NbtKmy jpn_vert_v4</a> </td></tr>
<tr>
<td >
ふーん<br>
<br>
いには<br>
斥か怒盾選ってて<br>
はずれるのね<br>
<br>
!<br>
<br>
トい稜<br>
<br>
えっと…<br>
ワァスサナーにかは<br>
前にはないのね<br>
<br>
横かしら?<br>
それともを後ろ?<br>
<br>
ちょっと<br>
ピに強っに<br>
るんですかっ<br>
<br>
</td>
<td>
      悶                       ちょっと‼ <br>
疾                  旋也⁈ <br>
到尼                       かっ‼ <br>
o       ボッヅクになってて <br>
加量倫了     系有旋外 <br>
92 <br>
<br>
ワ-スナーたかは <br>
ヮスナーとかは <br>
女路小 <br>
<br>
かしら? <br>
評い千⁈ <br>

</td>
<td> 
                       ちょつとリ <br>
捉                  放っ <br>
にて                       かつり <br>
       ボックになってて <br>
/、湾下     はずれるのね <br>
の4v0全 <br>
<br>
ファスナーとかは <br>
アスナーとかは <br>
門にはないのね <br>
<br>
かしら? <br>
それとも後ろア<br>


</td>
</tr>
</table>
  

# To reproduce
 - git clone 
 - see train_and_preprocess.ipynb



# Acknowledgement and References  
- [tesseract-training](https://github.com/nikhilbaby/tesseract-training) 
- [tesseract-custom-font-training](https://github.com/xayilmaz/tesseract-custom-font-training) 
- [tesseract-custom-font-training](https://github.com/tesseract-ocr/tesseract/issues/3001) 
- [Best Practices re OPENMP](https://github.com/tesseract-ocr/tesseract/issues/3744) 
- [Image too small to scale](https://github.com/tesseract-ocr/tesseract/issues/3001) 
- [tesstrain doesnt support vertical languages](https://github.com/tesseract-ocr/tesseract/issues/2989) 
- [tesseract](https://github.com/tesseract-ocr/tesseract) 
- [tesstrain](https://github.com/tesseract-ocr/tesstrain) 
- [tessdoc](https://tesseract-ocr.github.io/tessdoc/) 
- [zodiac3539 jpn_vert](https://github.com/zodiac3539/jpn_vert) 
- [NbtKmy jpn_vert](https://github.com/NbtKmy/jpn_vert_improvement) 
- [freejapanesefont](https://www.freejapanesefont.com/)     
- [google font](https://fonts.google.com/?subset=japanese&noto.script=Jpan)     
- [google font github](https://github.com/google/fonts)     








