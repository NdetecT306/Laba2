<?php
$mystring = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
while (true) {
    $number = readline("Введите число: ");
    if (!is_numeric($number) || $number <= 0 || $number > 26) {
        echo "Неправильное число. Попробуйте снова.\n";
        continue;
    }
    $point = $number - 1;
    echo "Результат: \n";
    while ($point >= 0) {
        for ($i = $number - 1; $i >= $point; $i--) {
            echo $mystring[$i];
            echo " ";
        }
        $point -= 1;
        echo "\n";
    }
    break; 
}
?>
