                    ; memorarea matricei in vectorul a, linie dupa linie

a db 1,2,-2,-5,3,-2 ; 1 2

A doua
parcurgere

Daca am ajuns la final

Daca a[si]&lt;0

Adunam la suma a[si] si contorizam nr
numerelor negative Se revine la ciclu

Sfarsit a doua
parcurgere

Impartirea sumei la nr
numerelor negative

stop

Impartirea sumei la numarul
numerelor negative

stop

;-2 -5
; 3 -2
mov ax,3       ; numarul de linii 

mov bx,2        ; numarul de coloane

mul bx          ; dimensiunea matricei(sirului) ax*bx

mov cx,ax       ; copiem dimensiunea in cx

sub cx,1        ; scadem cx-1 deoarece vectorul incepe de la pozitia 0

mov al,0        ; suma nr pozitive

mov SI,-1       ; registrul pentru pozitii
 
mov bl,0        ;numarul numerelor pozitive

nrpozitive:inc SI

cmp a[SI],0     ; parcurgerea vectorului

jle comp1       ; si adunarea nr pozitive

jge sum1

sum1:add al,a[SI]

inc bl

comp1:cmp SI,cx

jl nrpozitive

div bl           ; ma a nr pozitive

mov dl,al        ; copiem catul din media aritmetica in registrul dl

mov dh,ah        ; copiem restul din media aritmetica in dh

mov al,0         ; suma nr negative

mov SI,-1        ; registrul pentru pozitii

mov bl,0         ; numarul numerelor negative

mov ah,0

nrnegative:inc SI

cmp a[SI],0

jle sum2          ; parcurgerea vectorului

jge comp2         ; si adunarea nr negative

sum2:add al,a[SI]

inc bl

comp2:cmp SI,cx

jl nrnegative

neg al             ; transformam in suma pozitiva

div bl             ; calculam media aritmetica

neg al             ; transformam in numar negativ
 
neg ah             ; transformam in nr negative

add al,ah          ;adunam la cat, restul

neg ah             ;transformam in pozitiv

mov cl,al          ; copiem catul mediei nr negative in cl

mov ch,ah          ; copiem restul mediei nr negative in ch


                   ; dl catul - nr pozitive din ma, dh -restul nr pozitive din ma
 
                   ; cl catul - nr negative din ma, ch -restul nr negative din ma
