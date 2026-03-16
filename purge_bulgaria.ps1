$f = "c:\Users\Lalyo Boyadzhiev\AppData\LocalLow\BlackSeaGames\Sovereign\Mods\681AD\Maps\europe\realms.csv"
$c = [System.IO.File]::ReadAllText($f)
# Replace Bulgaria (but not Bulgaria_681) with -
# \bBulgaria\b(?!_681) matches 'Bulgaria' as a word, but only if not followed by '_681'
$newC = $c -replace '\bBulgaria\b(?!_681)', '-'
[System.IO.File]::WriteAllText($f, $newC)
