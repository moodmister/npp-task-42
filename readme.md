
# Курсова задача на Валентин Стоянов, 206588, КН-задочно

## Дадено
Дадена е информация за състезание по програмиране на студенти, която поддържа следната информация за участниците – име, курс, университет, брой точки от първия ден и брой точки от втория конкурсен ден.

## Търси се
1) Да се избере и опише подходящо представяне на информацията чрез средствата на Lisp. Да се дефинира функция, която извежда данните на всички студенти, които имат повече от средния брой точки (за първия ден), като за всеки се даде име и университет.
2) Да се избере подходящо представяне на информацията на Prolog. Да се дефинира предикат, който извършва същото действие като функцията на Lisp.

Инсталация:
```
git clone https://github.com/moodmister/npp-task-42
cd npp-task-42
```

Изпълнение на (1):
```
# докато сте в директорията на проекта
clisp main.lisp
```

## Документация

### Lisp част
Структурата е списък от студенти със съответните данни:
- Име
- Курс
- Университет
- Списък от брой точки за съответният ден (първи/втори)

Изходът на програмата се образува от две дефинирани функции:
1) getAveragePointsFromDayOne - която обхожда подаден списък и изчислява средноаритемтично броя на точките от първия ден
2) printStudentsWithMoreThanAverage - обхожда подаден списък и извежда в конзолата името и университетът на студентите от подадения списък, които имат над средния брой точки за първия ден