TARGET DECK: OS - 4 - экзамен
START
Basic

Front: PCB - Process Control Block

Back: В состав PCB входят следующие данные:

1. идентификатор [[Процесс]]а;
2. состояние [[Процесс]]а;
	- Выполняемый (Executing) — поток, который выполняется в текущий момент на процессоре.
	-   Готовый (Runnable) — поток ждет получения кванта времени и готов выполнять назначенные ему инструкции. Планировщик выбирает следующий поток для выполнения только из готовых потоков.
	-   Ожидающий (Waiting) или заблокированный (Locked) — работа потока заблокирована в ожидании блокирующей операции или ресурса
1. список [[Ресурс]]ов, выделенных [[Процесс]]у;

другие данные, характеризующие [[Процесс]] (адрес текущей команды, копия содержимого [[регистр]]ов процессора и т.п.).
<!--ID: 1663705565838-->
END



