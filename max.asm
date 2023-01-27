; Нахождение максимума из RDI и RSI

max:
    movq    %RDI,   %RAX
    cmpq    %RSI,   %RDI
    ja      rdi_gt
    movq    %RSI,   RAX
rdi_gt
    ret
