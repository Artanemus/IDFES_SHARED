#Set-Location ..$Ev = $Env:HOMEDRIVE + $Env:HOMEPATH  + '\Documents\GitHub\IDFES_SHARED\assets\'

$infile = $Env:HOMEDRIVE + $Env:HOMEPATH  + '\Documents\GitHub\IDFES_SHARED\assets\IDFES-logo-small.png'
# magick needs a fully qualified pathname - no abbrev allowed!
$outfileICO = $Env:HOMEDRIVE + $Env:HOMEPATH  + '\Documents\GitHub\IDFES_SHARED\assets\IDFES.ico'

$outfileWUP128 = $Env:HOMEDRIVE + $Env:HOMEPATH  + '\Documents\GitHub\IDFES_SHARED\assets\IDFES_128x128.png'
$outfileWUP64 = $Env:HOMEDRIVE + $Env:HOMEPATH  + '\Documents\GitHub\IDFES_SHARED\assets\IDFES_64x64.png'
$outfileWUP48 = $Env:HOMEDRIVE + $Env:HOMEPATH  + '\Documents\GitHub\IDFES_SHARED\assets\IDFES_48x48.png'

if (Test-Path -Path $outfileICO -PathType Leaf) {
    Remove-Item $outfileICO 
}

magick convert $infile -flatten -resize 256x256 -alpha off -background white -define icon:auto-resize="256,128,96,64,48,32,16" $outfileICO

if (Test-Path -Path $outfileWUP128 -PathType Leaf) {
    Remove-Item $outfileWUP128
}

magick convert $infile -flatten -resize 128x128 $outfileWUP128


if (Test-Path -Path $outfileWUP64 -PathType Leaf) {
    Remove-Item $outfileWUP64
}

magick convert $infile -flatten -resize 64x64 $outfileWUP64

if (Test-Path -Path $outfileWUP48 -PathType Leaf) {
    Remove-Item $outfileWUP48
}

magick convert $infile -flatten -resize 48x48 $outfileWUP48