terminal 

1) Посмотреть где я
pwd

2) Создать папку === mkdir folder_HW1

3) Зайти в папку === cd folder_HW1 

4) Создать 3 папки === mkdir folder_1_HW1 folder_2_HW1 folder_3_HW1 

5) Зайти в любоую папку === cd folder_1_HW1

6) Создать 5 файлов (3 txt, 2 json) === touch {file1.txt,file2.txt,file3.txt,file_4.json,file_5.json}

7) Создать 3 папки === mkdir f_1 f_2 f_3

8) Вывести список содержимого папки === ls -la

9) + Открыть любой txt файл === vim file1.txt

10) + написать туда что-нибудь, любой текст. 

11) + сохранить и выйти. === клавиша "esc" затем :wq

12) Выйти из папки на уровень выше === cd ..

—
13) переместить любые 2 файла, которые вы создали, в любую другую папку. === 
mv {file1.txt,file2.txt} f_1 

14) скопировать любые 2 файла, которые вы создали, в любую другую папку. ===
cp {file_5.json,file_4.json} f_1

15) Найти файл по имени === find . -name "file1*"

16) просмотреть содержимое в реальном времени (команда grep) изучите как она работает. === tail -F file1.txt

17) вывести несколько первых строк из текстового файла === head -3 file1.txt 

18) вывести несколько последних строк из текстового файла === tail -3 file1.txt

19) просмотреть содержимое длинного файла (команда less) изучите как она работает.
=== less file1.txt

20) вывести дату и время === date
=========

Задание *
1) Отправить http запрос на сервер.
http://162.55.220.72:5005/terminal-hw-request
curl  "http://162.55.220.72:5005/get_method?name=Lily&age=33"
2) Написать скрипт который выполнит автоматически пункты 3, 4, 5, 6, 7, 8, 13
1. Создаем файл с именем myscript
touch myscript
2. Добавляем в этот файл команды из пунктов 
pwd
mkdir script_folder_HW1 
cd script_folder_HW1 
mkdir folder_1_HW1_s folder_2_HW1_s folder_3_HW1_s
cd folder_1_HW1_s
touch {f1_s.txt,f2_s.txt,f3_s.txt,f4_s.json,f5_s.json}
mkdir f_script_1 f_script_2 f_script_3
ls -la
mv f1_s.txt f2_s.txt f_script_1

3. Запускаем на выполнение
chmod +x script_HW1.sh
sudo ./script_HW1.sh
