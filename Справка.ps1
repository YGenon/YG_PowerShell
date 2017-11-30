﻿# версия powershell
    Get-Host

#устанавливаем месторасположение
    Set-Location "С:\"


# ----- берем имя файла ------

    $a="C:\440\output.xlsx"

# 1 variant

    $fileobject = Get-Item $a

    $fileobject.name # выводит полное имя в консоль 'output.xlsx'

# 2 variant (только имя файла без расширения)

    [System.IO.Path]::GetFileNameWithoutExtension($a) # Return 'output'

#  ++++++ берем имя файла +++++++

# ------- Запуск внешних команд и скриптов -----------

    & 'H:\Работа\powershell\GUI 550.ps1'
    & ′C:\Program Files\Hello.exe′  ′Hello, world′ # вызов с параметрами

#   3 вариант
    $exe = ′C:\Program Files\Hello.exe′
    $arg1 = ′Hello′
    $arg2 = ′world′
    & $exe $arg1 $arg2

#   4 вариант (если аргументов очень много)    
    $exe = ′C:\Program Files\Hello.exe′
    $allargs = @(′Hello,′,′world′)
    & $exe $allargs

#  5 вариант

    # ВАЖНО !!! параметры должны быть без пробелов (' a ' - выдаст ошибку)
    # (' *.XML' - также выдаст ошибку) 

    $param_arj_1 =  'a' 
    $param_arj_2 =  ' ' + $TmpDir + ' '
    $param_arj_3 = '*.XML'

    & $Soft_Arj $param_arj_1 $param_arj_2 $param_arj_3 
    
# +++++++++ Запуск внешних команд и скриптов +++++++++++++

# -------  Узнать размер файла ------------------------

$l = Get-Item [путь к файлу]

$l.Length

# +++++++++ Узнать размер файла +++++++++++++++++++++++++

# ---------- bat file - архивируем данные (папка или файл)
@echo off
set a7z=%ProgramFiles%\7-Zip\7z.exe
set otkuda=c:\1
set kuda=c:\2
"%a7z%" a "%kuda%\name.7z" "%otkuda%\*"
# +++++++++ bat file архивируем данные (папка или файл)+++++++++


# ---------- смотрим сколько файлов в папке

$fileCount = (Get-ChildItem $Dir).Count

# +++++++++ смотрим сколько файлов в папке

# ----------- Работа со строками  ---------------------

$string = ″My name is Kirill″
$string | Get-Member  # выводит все методы для строки

#  Свойство Length содержит длину строки, или количество символов:
$string.Length

# Свойство Chars позволяет обращаться к любому символу в строке по его номеру, например:
$string.Chars(4)

# Кстати, к символам в строке можно обращаться без использования Chars, а как к элементам массива, по индексу:
$string[4]

# А если указать отрицательное число, то массив будет перебираться с конца:
$string[-4]

# Также кроме одного символа можно указать диапазон, например:
$string[0..2]
$string[-17..-15]
