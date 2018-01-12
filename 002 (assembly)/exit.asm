
stksg       segment stack
            db 32 dup("stck")
stksg       ends

datasg      segment para 'data'
datasg      ends

main        proc far
            assume ds: datasg, cs: codesg, ss: stksg

            int 21h

main        endp
codesg      ends
            end     main

