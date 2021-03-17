# LaTeX_resume
resume code for LaTeX engines (En, Ja)

There are 2 versions of LaTeX resume Form

1. Deedy CV for English
2. Deedy CV for Japanese

- They could be visualized and converted to pdf file [OverLeaf Website](https://www.overleaf.com/project)
- Japanese text file downloaded from [Free Japanese Font](https://www.freejapanesefont.com/source-han-serif-download/)
- The original version is [Deedy CV](https://www.overleaf.com/latex/templates/deedy-cv/bjryvfsjdyxz)

## How to use
1. Download files (En or Ja)
2. Sign in [OverLeaf Website](https://www.overleaf.com/project) and Upload files
3. Edit the contents and save as pdf

- CV for japanese needed to insert photo
  - edit from deedy-resume-openfont.cls file
  - If you don't need to insert photo file, delete 
```
\newcommand\photo[1]{\AtPageUpperLeft{%
 \put(\LenToUnit{17.5cm},\LenToUnit{-4.2cm}){#1}%
 }}%

\AddToShipoutPictureBG*{%
\photo{\fboxsep1.5pt\fcolorbox{white}{white}%
{\includegraphics[width=30mm,keepaspectratio]{images/gr.eps}}}
}
```

##License
This work is developed based on [Deedy-Resume](https://github.com/deedy/Deedy-Resume)
