<?php
$numbers = readline();
$max = 0;
if($numbers<=0) {
    echo "Быть не может";
    exit;
}
$clumba = []; 
for ($i = 0; $i < $numbers; $i++) {
    $flower = readline();
    if ($flower > 0) 
    {
         $clumba[] = $flower; 
    }
    if ($flower > $max)
    {
        $max = $flower;
    }
}
$poliv = readline();
if ($poliv < $max) {
    echo "Как купишь новую лейку - приходи.";
    exit;
}
$step = 0;
$perem = $poliv;
for ($i = 0; $i < count($clumba);$i++)
    {
        if ($perem < $clumba[$i])
        {
            $step = $step + ($i * 2 + 1);
            $perem = $poliv;
        }
        else
        {
            $step += 1;
        }
        $perem -= $clumba[$i];
    }
echo 'Результат: ' .$step;
?>
