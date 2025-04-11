section .bss
count resd 1 ; Результат
numbers resd 1 ; Исходное количество чисел
perem resd 1 ; Текущее число
digit resd 1 ; Остаток от деления на 10
temp resd 1 ; Временная переменная

section .text
global _start

_start:
; Чтение количества чисел
mov eax, 3
mov ebx, 0
mov ecx, numbers
mov edx, 255 ; Максимальное читаемое число байтов в строке
int 0x80

; Вызываем функцию преобразования строки в число
call string_to_int
mov [numbers], eax
mov dword [count], 0

;Функция чтения чисел
read_numbers:
mov eax, [numbers]
cmp eax, 0 ; Проверка на 0
jz finish ; Если 0, выходим из цикла

; Чтение следующего числа
mov eax, 3
mov ebx, 0
mov ecx, perem
mov edx, 255
int 0x80

; Преобразуем введенное число из строки в число
call string_to_int
mov [perem], eax ; Сохраняем число в perem
mov eax, [perem] ; Загружаем число в eax
check_digits:
cmp eax, 0
je number_done

; Получаем последнюю цифру
mov edx, 0
mov ebx, 10
div ebx
mov [digit], edx
mov eax, [digit]

; Проверяем, делится ли последняя цифра на 3. Если да - в фунцию подсчета. После - в функцию skip
cmp eax, 0
je add_to_count
cmp eax, 3
je add_to_count
cmp eax, 6
je add_to_count
cmp eax, 9
je add_to_count
jmp skip_add

;Функция подсчета
add_to_count:
mov eax, [digit]
add dword [count], eax

; Функция skip
skip_add:
mov eax, [perem] ; Загружаем число в eax
mov edx, 0 ; Обнуляем edx для деления
mov ebx, 10
div ebx
mov [perem], eax ; Сохраняем оставшуюся часть числа
mov eax, [perem]
jmp check_digits

;Уменьшаем значение количества чисел. И так по кругу
number_done:
dec dword [numbers]
jmp read_numbers

finish:
; Печать результирующего количества
mov eax, [count]
call int_to_string ; Преобразуем число в строку
mov eax, 4
mov ebx, 1
mov ecx, temp
mov edx, 255
int 0x80

; Завершаем программу
mov eax, 1 ; Syscall: exit
xor ebx, ebx ; Код выхода
int 0x80 ; Вызов

;Преобразуем строку в int
string_to_int:
push ebx
push ecx
push edx
push esi
xor eax, eax ; EAX = 0 (результат)
mov esi, ecx ; ESI = адрес начала строки

convert_loop:
movzx ebx, byte [esi] ; Загружаем текущий символ в EBX (расширяем до 32 бит)
cmp bl, 10 ; Проверяем, является ли символ символом новой строки
je convert_end ; Если да, то конец строки
cmp bl, 13 ; Проверяем, является ли символ возвратом каретки
je convert_end ; Если да, то конец строки
cmp bl, '0' ; Проверяем, является ли символ цифрой
jl convert_end ; Если нет, то конец строки
cmp bl, '9' ; Проверяем, является ли символ цифрой
jg convert_end ; Если нет, то конец строки
sub bl, '0' ; Преобразуем символ в число
mov ecx, eax 
mov eax, 10 
mul ecx ; EAX = EAX * ECX (текущий результат * 10)
add eax, ebx ; Добавляем текущую цифру к результату
inc esi ; Переходим к следующему символу
jmp convert_loop

convert_end:
pop esi
pop edx
pop ecx
pop ebx
ret

;Преобразуем число в строку
int_to_string:
push eax
push ebx
push ecx
push edx
push esi
push edi

mov esi, 0 ; Индекс для записи строки
mov edi, temp ; Указатель на начало буфера

; Обрабатываем число
mov ecx, 10 

;Обрабатываем каждый символ строки и переделываем его в символ
convert_to_string_loop:
xor edx, edx
div ecx
add dl, '0' ; Преобразуем остаток в символ цифры
push dx ; Сохраняем цифру в стеке
inc esi ; Увеличиваем индекс строки
test eax, eax ; Проверяем, не равно ли частное нулю
jnz convert_to_string_loop

;Записываем строку в буфер
write_string_loop:
pop dx ; Извлекаем цифру из стека
mov [edi], dl ; Записываем символ в буфер
inc edi ; Переходим к следующей позиции
dec esi ; Уменьшаем индекс строки
jnz write_string_loop ; Если не равно нулю, то продолжаем
mov byte [edi], 10
inc edi
mov byte [edi], 0

pop edi
pop esi
pop edx
pop ecx
pop ebx
pop eax
ret
