Механизм подкачки по требованию ~~очень похож на систему подкачки с подкачкой~~, где [[Процесс]]ы, хранящиеся во вторичной памяти и страницах, загружаются только по требованию, а не заранее.

Таким образом, когда происходит переключение контекста, [[ОС]] никогда не копирует ни одной из страниц старой программы с диска или страниц новой программы в основную память. Вместо этого он начнет выполнение новой программы после загрузки первой страницы и извлечет страницы программы, на которые имеются ссылки.

Во время выполнения программы, если программа ссылается на страницу, которая может быть недоступна в основной памяти, поскольку она была заменена, то [[Процесс]]ор считает ее недопустимой ссылкой на память. Это происходит из-за сбоя страницы и передачи управления обратно из программы в [[ОС]], что требует сохранения страницы обратно в память.