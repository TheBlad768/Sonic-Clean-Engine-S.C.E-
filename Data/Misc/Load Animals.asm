
; =============== S U B R O U T I N E =======================================

PLCLoad_Animals:
		moveq	#0,d0
		move.w	(Current_zone_and_act).w,d0
		lsl.b	#6,d0
		lsr.w	#5,d0
		move.w	Offs_PLCAnimals(pc,d0.w),d0
		lea	Offs_PLCAnimals(pc,d0.w),a1
		jmp	(LoadPLC_Raw_Nem).l
; ---------------------------------------------------------------------------

Offs_PLCAnimals: offsetTable
		offsetTableEntry.w PLCAnimals_DEZ1	; DEZ1
		offsetTableEntry.w PLCAnimals_DEZ1	; DEZ2
		offsetTableEntry.w PLCAnimals_DEZ1	; DEZ3
		offsetTableEntry.w PLCAnimals_DEZ1	; DEZ4

		zonewarning Offs_PLCAnimals,(2*4)
; ---------------------------------------------------------------------------

PLCAnimals_DEZ1: plrlistheader
		plreq $580, ArtNem_BlueFlicky
		plreq $592, ArtNem_Chicken
PLCAnimals_DEZ1_End