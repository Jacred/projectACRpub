GiveOddEgg: ; 1fb4b6

	; Figure out which egg to give.

	; Compare a random word to
	; probabilities out of 0xffff.
	call Random
	ld hl, .Probabilities
	ld c, 0
	ld b, c
.loop
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a

	; Break on $ffff.
	ld a, d
	cp $ffff / $100
	jr nz, .not_done
	ld a, e
	cp $ffff % $100
	jr z, .done
.not_done

	; Break when [hRandom] <= de.
	ld a, [hRandom + 1]
	cp d
	jr c, .done
	jr z, .ok
	jr .next
.ok
	ld a, [hRandom + 0]
	cp e
	jr c, .done
	jr z, .done
.next
	inc bc
	jr .loop
.done

	ld hl, OddEggs
	ld a, OddEgg2 - OddEgg1
	call AddNTimes

	ld de, wEnemyMoveStruct
	ld bc, $0046
	call CopyBytes

	ld a, EGG_TICKET
	ld [CurItem], a
	ld a, $1
	ld [wd10c], a
	ld a, $ff
	ld [wd107], a
	ld hl, NumItems
	call TossItem

	ld a, EGG
	ld [wcd2a], a

	ld a, wcd29 % $100
	ld [CreditsPos], a
	ld a, wcd29 / $100
	ld [wcd21], a
	ld a, wEnemyMoveStruct % $100
	ld [wcd22], a
	ld a, wEnemyMoveStruct / $100
	ld [wcd23], a

	ld hl, .Odd
	ld de, wcd2b
	ld bc, PKMN_NAME_LENGTH
	call CopyBytes

	ld a, wcd2b % $100
	ld [wcd24], a
	ld a, wcd2b / $100
	ld [wcd25], a
	ld a, BattleMonHappiness % $100
	ld [wcd26], a
	ld a, BattleMonHappiness / $100
	ld [wcd27], a
	callba Function11b98f
	ret
; 1fb546

.Odd
	db "ODD@@@@@@@@@"

.Probabilities

prob: MACRO
prob_total = prob_total + (\1)
	dw prob_total * $ffff / 100
ENDM

prob_total = 0

	prob 8	; 12% Pichu
	prob 4
	prob 11	; 16% Cleffa
	prob 5
	prob 11	; 16% Igglybuff
	prob 5
	prob 10	; 15% Smoochum
	prob 5
	prob 9	; 13% Magby
	prob 4
	prob 10	; 15% Elekid
	prob 5
	prob 9	; 13% Tyrogue
	prob 4
; 1fb56e


OddEggs: ; 1fb56e

OddEgg1:
	db PICHU
	db NO_ITEM
	db DIZZY_PUNCH, CHARM, THUNDERSHOCK, NONE
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	db $ff, $ff ; DVs
	db 10, 10, 10, 0 ; PP
	db 20 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 17 ; Max HP
	bigdw 9 ; Atk
	bigdw 6 ; Def
	bigdw 11 ; Spd
	bigdw 8 ; SAtk
	bigdw 8 ; SDef
	db "EGG@@@@@@@@"

OddEgg2:
	db PICHU
	db NO_ITEM
	db DIZZY_PUNCH, CHARM, THUNDERSHOCK, NONE
	dw 00256 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	db $aa, $aa ; DVs
	db 10, 10, 10, 0 ; PP
	db 20 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 17 ; Max HP
	bigdw 9 ; Atk
	bigdw 7 ; Def
	bigdw 12 ; Spd
	bigdw 9 ; SAtk
	bigdw 9 ; SDef
	db "EGG@@@@@@@@"

	db CLEFFA
	db NO_ITEM
	db DIZZY_PUNCH, DOUBLESLAP, CHARM, ENCORE
	dw 04096 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	db $ff, $ff ; DVs
	db 10, 10, 10, 10 ; PP
	db 20 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 20 ; Max HP
	bigdw 7 ; Atk
	bigdw 7 ; Def
	bigdw 6 ; Spd
	bigdw 9 ; SAtk
	bigdw 10 ; SDef
	db "EGG@@@@@@@@"

	db CLEFFA
	db NO_ITEM
	db DIZZY_PUNCH, DOUBLESLAP, CHARM, ENCORE
	dw 00768 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	db $aa, $aa ; DVs
	db 10, 10, 10, 10 ; PP
	db 20 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 20 ; Max HP
	bigdw 7 ; Atk
	bigdw 8 ; Def
	bigdw 7 ; Spd
	bigdw 10 ; SAtk
	bigdw 11 ; SDef
	db "EGG@@@@@@@@"

	db IGGLYBUFF
	db NO_ITEM
	db DIZZY_PUNCH, POUND, SING, CHARM
	dw 04096 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	db $ff, $ff ; DVs
	db 10, 10, 10, 10 ; PP
	db 20 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 24 ; Max HP
	bigdw 8 ; Atk
	bigdw 6 ; Def
	bigdw 6 ; Spd
	bigdw 9 ; SAtk
	bigdw 7 ; SDef
	db "EGG@@@@@@@@"

	db IGGLYBUFF
	db NO_ITEM
	db DIZZY_PUNCH, POUND, SING, CHARM
	dw 00768 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	db $aa, $aa ; DVs
	db 10, 10, 10, 10 ; PP
	db 20 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 24 ; Max HP
	bigdw 8 ; Atk
	bigdw 7 ; Def
	bigdw 7 ; Spd
	bigdw 10 ; SAtk
	bigdw 8 ; SDef
	db "EGG@@@@@@@@"

	db SMOOCHUM
	db NO_ITEM
	db DIZZY_PUNCH, POUND, MEDITATE, LICK
	dw 03584 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	db $ff, $ff ; DVs
	db 10, 10, 10, 10 ; PP
	db 20 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 19 ; Max HP
	bigdw 8 ; Atk
	bigdw 6 ; Def
	bigdw 11 ; Spd
	bigdw 13 ; SAtk
	bigdw 11 ; SDef
	db "EGG@@@@@@@@"

	db SMOOCHUM
	db NO_ITEM
	db DIZZY_PUNCH, POUND, MEDITATE, LICK
	dw 00512 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	db $aa, $aa ; DVs
	db 10, 10, 10, 10 ; PP
	db 20 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 19 ; Max HP
	bigdw 8 ; Atk
	bigdw 7 ; Def
	bigdw 12 ; Spd
	bigdw 14 ; SAtk
	bigdw 12 ; SDef
	db "EGG@@@@@@@@"

	db MAGBY
	db NO_ITEM
	db DIZZY_PUNCH, RAGE, LEER, NONE
	dw 02560 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	db $ff, $ff ; DVs
	db 10, 10, 10, 0 ; PP
	db 20 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 19 ; Max HP
	bigdw 12 ; Atk
	bigdw 8 ; Def
	bigdw 13 ; Spd
	bigdw 12 ; SAtk
	bigdw 10 ; SDef
	db "EGG@@@@@@@@"

	db MAGBY
	db NO_ITEM
	db DIZZY_PUNCH, RAGE, LEER, NONE
	dw 00512 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	db $aa, $aa ; DVs
	db 10, 10, 10, 10 ; PP
	db 20 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 19 ; Max HP
	bigdw 12 ; Atk
	bigdw 9 ; Def
	bigdw 14 ; Spd
	bigdw 13 ; SAtk
	bigdw 11 ; SDef
	db "EGG@@@@@@@@"

	db ELEKID
	db NO_ITEM
	db DIZZY_PUNCH, QUICK_ATTACK, LEER, NONE
	dw 03072 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	db $ff, $ff ; DVs
	db 10, 10, 10, 0 ; PP
	db 20 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 19 ; Max HP
	bigdw 11 ; Atk
	bigdw 8 ; Def
	bigdw 14 ; Spd
	bigdw 11 ; SAtk
	bigdw 10 ; SDef
	db "EGG@@@@@@@@"

	db ELEKID
	db NO_ITEM
	db DIZZY_PUNCH, QUICK_ATTACK, LEER, NONE
	dw 00512 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	db $aa, $aa ; DVs
	db 10, 10, 10, 10 ; PP
	db 20 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 19 ; Max HP
	bigdw 11 ; Atk
	bigdw 9 ; Def
	bigdw 15 ; Spd
	bigdw 12 ; SAtk
	bigdw 11 ; SDef
	db "EGG@@@@@@@@"

	db TYROGUE
	db NO_ITEM
	db DIZZY_PUNCH, RAPID_SPIN, MACH_PUNCH, NONE
	dw 02560 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	db $ff, $ff ; DVs
	db 10, 10, 10, 0 ; PP
	db 20 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 18 ; Max HP
	bigdw 8 ; Atk
	bigdw 8 ; Def
	bigdw 8 ; Spd
	bigdw 8 ; SAtk
	bigdw 8 ; SDef
	db "EGG@@@@@@@@"

	db TYROGUE
	db NO_ITEM
	db DIZZY_PUNCH, RAPID_SPIN, MACH_PUNCH, NONE
	dw 00256 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	db $aa, $aa ; DVs
	db 10, 10, 10, 10 ; PP
	db 20 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 18 ; Max HP
	bigdw 8 ; Atk
	bigdw 9 ; Def
	bigdw 9 ; Spd
	bigdw 9 ; SAtk
	bigdw 9 ; SDef
	db "EGG@@@@@@@@"

