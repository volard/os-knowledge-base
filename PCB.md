Process Control Block

1. идентификатор [[Процесс]]а;
2. состояние [[Процесс]]а;
	- Выполняемый (Executing) — поток, который выполняется в текущий момент на процессоре.
	-   Готовый (Runnable) — поток ждет получения кванта времени и готов выполнять назначенные ему инструкции. Планировщик выбирает следующий поток для выполнения только из готовых потоков.
	-   Ожидающий (Waiting) или заблокированный (Locked) — работа потока заблокирована в ожидании блокирующей операции или ресурса
1. список [[Ресурс]]ов, выделенных [[Процесс]]у;

адрес текущей команды, копия содержимого [[регистр]]ов процессора и т.п.





