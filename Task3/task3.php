<?php
$numbers = readline();
$count = 0;
if($numbers<=0) {
    echo "Быть не может";
}
while ($numbers >= 0) {
    $perem = readline();
    while ($perem != 0)
    {
        $ost = $perem % 10; 
        if ($ost % 3 == 0) 
        {
            $count += $ost; 
        }
        $perem /= 10; 
    }
    $numbers--;
}
echo $count;
?>
