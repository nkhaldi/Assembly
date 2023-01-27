; Нахождение минимума из RDI и RSI 

min:
    movq    %RDI,   %RAX
    cmpq    %RDI,   %RSI
    ja      rdi_gt
    movq    %RSI,   RAX
rdi_gt
    ret
