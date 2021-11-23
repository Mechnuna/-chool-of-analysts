import sys

#Читаем весь текст из файла (text.txt) и рабиваем его на слова
#Отправлем по группами слова на сервер
#На каждом сервере даем каждому слову индекс 1
# Разбиваем слова на группы, одно слово - одна группа -- sort
#Подсчитываем сколько в группе слов

#запускать как 
#cat text.txt| python3 main.py | sort | python3 reduce.py

for line in sys.stdin:
    line = line.strip()
    world = line.split()
    for world in world:
        print('%s\t%s' %(world,1))