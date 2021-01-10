# STFS Simple Text File Splitter 1.0 (C) Vlad-Florin Chelaru, 10.01.2021, Cluj-Napoca, Romania
# Available at github.com/vladflorinchelaru
echo 'STFS Simple Text File Splitter 1.0 (C) Vlad-Florin Chelaru 10.01.2021, Cluj-Napoca, Romania'
echo 'github.com/vladflorinchelaru' 
echo 'EN: This Program comes with ABSOLUTELY NO WARRANTY; check https://www.gnu.org/licenses/gpl-3.0.html'
echo 'This program is FREE software, and you are welcome to redistribute it under certain conditions (see link)!'
echo 'RO: Acest program NU este insotit DE NICIO GARANTIE; vezi https://www.gnu.org/licenses/gpl-3.0.html'
echo 'Acest program constituie software LIBER/GRATUIT si esti invitat sa-l redistribui, cu anumite conditii (vezi link)!'
echo 'EN: Choose original file to be split apart (text only).'
echo 'RO: Alege fisierul care sa fie impartit (doar fisiere text).'
$sourcefile = Read-Host 'Original file: '
echo 'EN: Write the names of the final files. End the sequence with an empty line (enter).'
echo 'RO: Scrie numele fisierelor finale. Termina enumerarea printr-o linie goala (enter).'
$destfiles = @()
$destfiles+=Read-Host 'File 1:'
while($destfiles[-1] -ne ''){
    $destfiles+=Read-Host 'File ' ($destfiles.Length+1)
}
$i=0
foreach ($line in Get-Content $sourcefile){
    echo $line >> $destfiles[$i]
    echo "Written line $line to file no. $i which is $destfiles[$i]"
    $i++
    echo "New value of i is $i"
    if($i -eq $destfiles.Length-1) {
        $i = 0
        echo "Value of i reached max file number, reverting to $i"
    }
}
echo 'STFS ended with no errors in sight.'
echo 'STFS Simple Text File Splitter 1.0 (C) Vlad-Florin Chelaru 10.01.2021, Cluj-Napoca, Romania'
echo 'github.com/vladflorinchelaru' 