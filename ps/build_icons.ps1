# Set-Location ..\Documents\GitHub\SCM_ASSETS\ICONS\

$Ev = $Env:HOMEDRIVE + $Env:HOMEPATH  + '\Documents\GitHub\SCM_ASSETS\ICONS\'

$infile = $Ev + 'TimeKeeper.png'

$outpath = $Ev
$outfileICO = $outpath + 'TimeKeeper.ico'
$outfileWUP150 = $outpath + 'TimeKeeper_150x150.png'
$outfileWUP44 = $outpath + 'TimeKeeper_44x44.png'

if (Test-Path -Path $outfileICO -PathType Leaf) {
    Remove-Item $outfileICO 
}

magick convert $infile -flatten -resize 256x256 -alpha off -background white -define icon:auto-resize="256,128,96,64,48,32,16" $outfileICO


if (Test-Path -Path $outfileWUP150 -PathType Leaf) {
    Remove-Item $outfileWUP150
}

magick convert $infile -flatten -resize 150x150 $outfileWUP150

if (Test-Path -Path $outfileWUP44 -PathType Leaf) {
    Remove-Item $outfileWUP44
}

magick convert $infile -flatten -resize 44x44 $outfileWUP44