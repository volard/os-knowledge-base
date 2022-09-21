1.  Ядро в Windows представлено как процесс с идентификатором 4(PID), наименьший 0, но он занятый. В Linux ядро не является процессом.
    
2.  В среде Microsoft Windows процесс, – это контейнер для потоков. Процесс-контейнер содержит как минимум один поток. Если потоков в процессе несколько, приложение (процесс) становится многопоточным. В мире Linux все выглядит иначе. В Linux каждый поток является процессом, и для того, чтобы создать новый поток, нужно создать новый процесс. То есть в UNIX-системах и не разделяются потоки и процессы.
    

Доп инфа:

[https://habr.com/ru/post/40227/](https://habr.com/ru/post/40227/) - Много текста. Есть классификация потоков.

[https://codernet.ru/amp/?page=potok_i_proczessyi_v_operaczionnoj_sisteme_proczessore_i_programmirovanii](https://codernet.ru/amp/?page=potok_i_proczessyi_v_operaczionnoj_sisteme_proczessore_i_programmirovanii) - В целом тоже про процессы и потоки, но более простым языком и с примерами.

[https://ppt-online.org/737032](https://ppt-online.org/737032) - Презентация. Есть про иерархию процессов/потоков в Windows и Linux, про Параллелизм и Многопоточность.