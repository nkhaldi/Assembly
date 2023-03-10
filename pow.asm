; Требуется написать функцию pow, которая принимает на вход
; два беззнаковых числа x и p (в регистрах RDI и RSI соответственно)
; и возвращает значение x^p в регистре RAX.

; Гарантируется, что x и p не могут быть равны 0 одновременно
; (по отдельности они все еще могут быть равны 0).
; Также гарантируется, что ответ помещается в 64 бита.

pow:
    movq    $1,    %RAX
    cmpq    $0,    %RSI
    jz stop
    jmp cycle
stop:
    ret
cycle:
    mulq    %RDI
    decq    %RSI
    cmpq    $0,    %RSI
    jz stop
    jmp cycle
