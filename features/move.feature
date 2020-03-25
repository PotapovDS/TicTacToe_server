#language: ru
Функционал: Крестики нолики

    Сценарий: Ход игрока
        Дано пустое поле
        И ходит игрок 1
        Когда игрок ходит в клетку 1, 1
        То поле становится "100|000|000"
        Когда игрок ходит в клетку 2, 2
        То поле становится "100|020|000"
        Когда игрок ходит в клетку 3, 1
        То поле становится "101|020|000"

    Сценарий: Ход игрока в заполненную клетку
        Дано поле "100|200|102"
        И ходит игрок 1
        Когда игрок ходит в клетку 1, 2
        То возвращается ошибка
        И поле становится "100|200|102"
        Когда игрок ходит в клетку 2, 2
        То поле становится "100|210|102"

    Сценарий: определение победителя по вертикали
        Дано поле "102|120|002"
        И ходит игрок 1
        Когда игрок ходит в клетку 1, 3
        То поле становится "102|120|102"
        И победил игрок 1
