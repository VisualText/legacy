
# AUTOMATICALLY GENERATED! EDITS WILL BE LOST!
# FILE: d:\apps\rez0_2\spec\hardware.pat
# TIME: 16:58:29 11/17/06
@NODES _LINE

@PRE
<1,1>	cap();
<3,3>	cap();
@RULES

# Ex:	IBM\_RS\_6000
_hardware [layer=(_Caps )] <- IBM [s] _xWHITE [star s] RS [s] _xWHITE [star s] 6000 [s] @@

# Ex:	IBM\_PC\_compatibles
_hardware [layer=(_Caps )] <- IBM [s] _xWHITE [star s] PC [s] _xWHITE [star s] compatibles [s] @@

@PRE
<1,1>	cap();
@RULES

# Ex:	PDP\_11\_
_hardware [layer=(_Caps )] <- PDP [s] _xWHITE [star s] 11 [s] _xWHITE [star s] @@

# Ex:	IBM\_370\_
_hardware [layer=(_Caps )] <- IBM [s] _xWHITE [star s] 370 [s] _xWHITE [star s] @@

# Ex:	HP\_9000\_
_hardware [layer=(_Caps )] <- HP [s] _xWHITE [star s] 9000 [s] _xWHITE [star s] @@

@PRE
<1,1>	cap();
<3,3>	cap();
@RULES

# Ex:	Dec\_Alpha\_
_hardware [layer=(_Caps )] <- Dec [s] _xWHITE [star s] Alpha [s] _xWHITE [star s] @@

@RULES

# Ex:	logic\_analyzer\_
_hardware [layer=(_Caps )] <- logic [s] _xWHITE [star s] analyzer [s] _xWHITE [star s] @@

@PRE
<1,1>	cap();
<3,3>	cap();
@RULES

# Ex:	Protocol\_Analyzer\_
_hardware [layer=(_Caps )] <- Protocol [s] _xWHITE [star s] Analyzer [s] _xWHITE [star s] @@

# Ex:	Alpha\_AXP\_
_hardware [layer=(_Caps )] <- Alpha [s] _xWHITE [star s] AXP [s] _xWHITE [star s] @@

# Ex:	PROM\_Burner\_
_hardware [layer=(_Caps )] <- PROM [s] _xWHITE [star s] Burner [s] _xWHITE [star s] @@

@PRE
<1,1>	cap();
@RULES

# Ex:	PCI\_bus\_
_hardware [layer=(_Caps )] <- PCI [s] _xWHITE [star s] bus [s] _xWHITE [star s] @@

@RULES

# Ex:	hardware\_design\_
_hardware [layer=(_Caps )] <- hardware [s] _xWHITE [star s] design [s] _xWHITE [star s] @@

@PRE
<1,1>	cap();
<3,3>	cap();
<5,5>	cap();
@RULES

# Ex:	In-Circuit\_Emulator\_
_hardware [layer=(_Caps )] <- In [s] \- [s] Circuit [s] _xWHITE [star s] Emulator [s] _xWHITE [star s] @@

@PRE
<1,1>	cap();
<3,3>	cap();
@RULES

# Ex:	Silicon\_Graphics\_
_hardware [layer=(_Caps )] <- Silicon [s] _xWHITE [star s] Graphics [s] _xWHITE [star s] @@

# Ex:	Apple\_II\_
_hardware [layer=(_Caps )] <- Apple [s] _xWHITE [star s] II [s] _xWHITE [star s] @@

# Ex:	IBM\_PC\_
_hardware [layer=(_Caps )] <- IBM [s] _xWHITE [star s] PC [s] _xWHITE [star s] @@

# Ex:	Pentium\_PC's
_hardware [layer=(_Caps )] <- Pentium [s] _xWHITE [star s] PC [s] \' [s] s [s] @@

# Ex:	DEC\_PDP-8
_hardware [layer=(_Caps )] <- DEC [s] _xWHITE [star s] PDP [s] \- [s] 8 [s] @@

# Ex:	Sun\_Workstation
_hardware [layer=(_Caps )] <- Sun [s] _xWHITE [star s] Workstation [s] @@

@RULES

# Ex:	486\_
_hardware [layer=(_Caps )] <- 486 [s] _xWHITE [star s] @@

@PRE
<3,3>	cap();
@RULES

# Ex:	10-BaseT\_
_hardware [layer=(_Caps )] <- 10 [s] \- [s] BaseT [s] _xWHITE [star s] @@

@PRE
<1,1>	cap();
@RULES

# Ex:	AMD\_
_hardware [layer=(_Caps )] <- AMD [s] _xWHITE [star s] @@

# Ex:	Apollo\_
_hardware [layer=(_Caps )] <- Apollo [s] _xWHITE [star s] @@

# Ex:	Apple\_
_hardware [layer=(_Caps )] <- Apple [s] _xWHITE [star s] @@

# Ex:	AS/400\_
_hardware [layer=(_Caps )] <- AS [s] \/ [s] 400 [s] _xWHITE [star s] @@

# Ex:	ATM\_
_hardware [layer=(_Caps )] <- ATM [s] _xWHITE [star s] @@

# Ex:	AXP\_
_hardware [layer=(_Caps )] <- AXP [s] _xWHITE [star s] @@

# Ex:	Banyan\_
_hardware [layer=(_Caps )] <- Banyan [s] _xWHITE [star s] @@

# Ex:	Bull\_
_hardware [layer=(_Caps )] <- Bull [s] _xWHITE [star s] @@

# Ex:	BURROUGHS\_
_hardware [layer=(_Caps )] <- BURROUGHS [s] _xWHITE [star s] @@

# Ex:	CDPD\_
_hardware [layer=(_Caps )] <- CDPD [s] _xWHITE [star s] @@

# Ex:	CRAY\_
_hardware [layer=(_Caps )] <- CRAY [s] _xWHITE [star s] @@

# Ex:	DASD
_hardware [layer=(_Caps )] <- DASD [s] @@

# Ex:	DEC
_hardware [layer=(_Caps )] <- DEC [s] @@

# Ex:	Ethernet
_hardware [layer=(_Caps )] <- Ethernet [s] @@

# Ex:	FDDI
_hardware [layer=(_Caps )] <- FDDI [s] @@

# Ex:	Gateways
_hardware [layer=(_Caps )] <- Gateways [s] @@

# Ex:	HP
_hardware [layer=(_Caps )] <- HP [s] @@

# Ex:	Hubs
_hardware [layer=(_Caps )] <- Hubs [s] @@

# Ex:	IBM
_hardware [layer=(_Caps )] <- IBM [s] @@

# Ex:	Intel
_hardware [layer=(_Caps )] <- Intel [s] @@

# Ex:	Intergraph
_hardware [layer=(_Caps )] <- Intergraph [s] @@

# Ex:	LAN
_hardware [layer=(_Caps )] <- LAN [s] @@

# Ex:	Mac
_hardware [layer=(_Caps )] <- Mac [s] @@

# Ex:	Macintosh
_hardware [layer=(_Caps )] <- Macintosh [s] @@

@RULES

# Ex:	mainframe
_hardware [layer=(_Caps )] <- mainframe [s] @@

@PRE
<1,1>	cap();
@RULES

# Ex:	MIPS
_hardware [layer=(_Caps )] <- MIPS [s] @@

# Ex:	Motorola
_hardware [layer=(_Caps )] <- Motorola [s] @@

# Ex:	NCR
_hardware [layer=(_Caps )] <- NCR [s] @@

# Ex:	NEC
_hardware [layer=(_Caps )] <- NEC [s] @@

# Ex:	NeXT
_hardware [layer=(_Caps )] <- NeXT [s] @@

# Ex:	OmniSQL
_hardware [layer=(_Caps )] <- OmniSQL [s] @@

@RULES

# Ex:	oscilloscope
_hardware [layer=(_Caps )] <- oscilloscope [s] @@

@PRE
<1,1>	cap();
@RULES

# Ex:	PC
_hardware [layer=(_Caps )] <- PC [s] @@

# Ex:	PCI
_hardware [layer=(_Caps )] <- PCI [s] @@

# Ex:	PCs
_hardware [layer=(_Caps )] <- PCs [s] @@

# Ex:	PDP-11
_hardware [layer=(_Caps )] <- PDP [s] \- [s] 11 [s] @@

# Ex:	Pentium/486
_hardware [layer=(_Caps )] <- Pentium [s] \/ [s] 486 [s] @@

# Ex:	PowerPC
_hardware [layer=(_Caps )] <- PowerPC [s] @@

# Ex:	Routers
_hardware [layer=(_Caps )] <- Routers [s] @@

# Ex:	RS/6000
_hardware [layer=(_Caps )] <- RS [s] \/ [s] 6000 [s] @@

# Ex:	RS232
_hardware [layer=(_Caps )] <- RS [s] 232 [s] @@

# Ex:	RS-232
_hardware [layer=(_Caps )] <- RS [s] \- [s] 232 [s] @@

# Ex:	RS-422
_hardware [layer=(_Caps )] <- RS [s] \- [s] 422 [s] @@

# Ex:	RS-485
_hardware [layer=(_Caps )] <- RS [s] \- [s] 485 [s] @@

# Ex:	RS6000
_hardware [layer=(_Caps )] <- RS [s] 6000 [s] @@

# Ex:	Sparcstation
_hardware [layer=(_Caps )] <- Sparcstation [s] @@

# Ex:	Spectrometer
_hardware [layer=(_Caps )] <- Spectrometer [s] @@

# Ex:	Symbolics
_hardware [layer=(_Caps )] <- Symbolics [s] @@

# Ex:	Unisys
_hardware [layer=(_Caps )] <- Unisys [s] @@

# Ex:	USB
_hardware [layer=(_Caps )] <- USB [s] @@

# Ex:	Vax
_hardware [layer=(_Caps )] <- Vax [s] @@

# Ex:	VAX
_hardware [layer=(_Caps )] <- VAX [s] @@

# Ex:	Workstations
_hardware [layer=(_Caps )] <- Workstations [s] @@

@RULES

# Ex:	x86
_hardware [layer=(_Caps )] <- x [s] 86 [s] @@

@PRE
<1,1>	cap();
<3,3>	cap();
@RULES

# Ex:	PC-AT
_hardware [layer=(_Caps )] <- PC [s] \- [s] AT [s] @@

# Ex:	PC-EGA
_hardware [layer=(_Caps )] <- PC [s] \- [s] EGA [s] @@

# Ex:	IBM\_PC/x86
_hardware [layer=(_Caps )] <- IBM [s] _xWHITE [star s] PC [s] \/ [s] x [s] 86 [s] @@

@PRE
<2,2>	cap();
@RULES

# Ex:	320C240
_hardware [layer=(_Caps )] <- 320 [s] C [s] 240 [s] @@

# Ex:	68HC812
_hardware [layer=(_Caps )] <- 68 [s] HC [s] 812 [s] @@

@PRE
<1,1>	cap();
@RULES

# Ex:	HP730
_hardware [layer=(_Caps )] <- HP [s] 730 [s] @@

# Ex:	DEC6xxx
_hardware [layer=(_Caps )] <- DEC [s] 6 [s] xxx [s] @@

# Ex:	S/390
_hardware [layer=(_Caps )] <- S [s] \/ [s] 390 [s] @@

# Ex:	IBM\_3090
_hardware [layer=(_Caps )] <- IBM [s] _xWHITE [star s] 3090 [s] @@

# Ex:	IBM\_4380
_hardware [layer=(_Caps )] <- IBM [s] _xWHITE [star s] 4380 [s] @@

@RULES

# Ex:	hubs
_hardware [layer=(_Caps )] <- hubs [s] @@

# Ex:	switches
_hardware [layer=(_Caps )] <- switches [s] @@

@PRE
<1,1>	cap();
@RULES

# Ex:	SCSI
_hardware [layer=(_Caps )] <- SCSI [s] @@

# Ex:	T1
_hardware [layer=(_Caps )] <- T [s] 1 [s] @@

# Ex:	CSU
_hardware [layer=(_Caps )] <- CSU [s] @@

@RULES

# Ex:	router
_hardware [layer=(_Caps )] <- router [s] @@

@PRE
<1,1>	cap();
@RULES

# Ex:	RFL
_hardware [layer=(_Caps )] <- RFL [s] @@

# Ex:	Radian
_hardware [layer=(_Caps )] <- Radian [s] @@

# Ex:	Z-80
_hardware [layer=(_Caps )] <- Z [s] \- [s] 80 [s] @@

@RULES

# Ex:	routers
_hardware [layer=(_Caps )] <- routers [s] @@

@PRE
<1,1>	cap();
@RULES

# Ex:	PDP-11/84
_hardware [layer=(_Caps )] <- PDP [s] \- [s] 11 [s] \/ [s] 84 [s] @@

# Ex:	PDP-11/34
_hardware [layer=(_Caps )] <- PDP [s] \- [s] 11 [s] \/ [s] 34 [s] @@

@PRE
<1,1>	cap();
<3,3>	cap();
@RULES

# Ex:	MicroVax\_II
_hardware [layer=(_Caps )] <- MicroVax [s] _xWHITE [star s] II [s] @@

@PRE
<1,1>	cap();
@RULES

# Ex:	UNISYS\_2200
_hardware [layer=(_Caps )] <- UNISYS [s] _xWHITE [star s] 2200 [s] @@

@PRE
<1,1>	cap();
<3,3>	cap();
@RULES

# Ex:	Smart\_Card
_hardware [layer=(_Caps )] <- Smart [s] _xWHITE [star s] Card [s] @@

# Ex:	Pentium-II
_hardware [layer=(_Caps )] <- Pentium [s] \- [s] II [s] @@

@PRE
<1,1>	cap();
@RULES

# Ex:	Pentium
_hardware [layer=(_Caps )] <- Pentium [s] @@

# Ex:	Laptops
_hardware [layer=(_Caps )] <- Laptops [s] @@

# Ex:	PS/2
_hardware [layer=(_Caps )] <- PS [s] \/ [s] 2 [s] @@

@PRE
<1,1>	cap();
<3,3>	cap();
@RULES

# Ex:	PC/AT
_hardware [layer=(_Caps )] <- PC [s] \/ [s] AT [s] @@

@PRE
<1,1>	cap();
@RULES

# Ex:	VAX\_11/780
_hardware [layer=(_Caps )] <- VAX [s] _xWHITE [star s] 11 [s] \/ [s] 780 [s] @@

# Ex:	Apollo
_hardware [layer=(_Caps )] <- Apollo [s] @@

# Ex:	Amiga
_hardware [layer=(_Caps )] <- Amiga [s] @@

# Ex:	Tandem
_hardware [layer=(_Caps )] <- Tandem [s] @@

@PRE
<1,1>	cap();
<3,3>	cap();
@RULES

# Ex:	Intel-PC
_hardware [layer=(_Caps )] <- Intel [s] \- [s] PC [s] @@

# Ex:	Power\_PC
_hardware [layer=(_Caps )] <- Power [s] _xWHITE [star s] PC [s] @@

@PRE
<1,1>	cap();
@RULES

# Ex:	PDAs
_hardware [layer=(_Caps )] <- PDAs [s] @@

# Ex:	PCMCIA
_hardware [layer=(_Caps )] <- PCMCIA [s] @@

# Ex:	OCR
_hardware [layer=(_Caps )] <- OCR [s] @@

@PRE
<1,1>	cap();
<3,3>	cap();
@RULES

# Ex:	CD-ROM
_hardware [layer=(_Caps )] <- CD [s] \- [s] ROM [s] @@

@PRE
<1,1>	cap();
@RULES

# Ex:	RISC
_hardware [layer=(_Caps )] <- RISC [s] @@

# Ex:	SGI
_hardware [layer=(_Caps )] <- SGI [s] @@

# Ex:	PentiumPro
_hardware [layer=(_Caps )] <- PentiumPro [s] @@

# Ex:	T3
_hardware [layer=(_Caps )] <- T [s] 3 [s] @@

# Ex:	X.25
_hardware [layer=(_Caps )] <- X [s] \. [s] 25 [s] @@

# Ex:	Burroughs
_hardware [layer=(_Caps )] <- Burroughs [s] @@

# Ex:	Convergent
_hardware [layer=(_Caps )] <- Convergent [s] @@

# Ex:	Wang
_hardware [layer=(_Caps )] <- Wang [s] @@

# Ex:	Altos
_hardware [layer=(_Caps )] <- Altos [s] @@

# Ex:	Honeywell
_hardware [layer=(_Caps )] <- Honeywell [s] @@

@PRE
<3,3>	cap();
@RULES

# Ex:	3COM\_LAN
_hardware [layer=(_Caps )] <- _companyPhrase [s] _xWHITE [star s] LAN [trig s] @@

@PRE
<1,1>	cap();
@RULES

# Ex:	LCD\_graphics\_display
_hardware [layer=(_Caps )] <- LCD [s] _xWHITE [star s] graphics [s] _xWHITE [star s] display [s] @@

# Ex:	Flatbed\_image\_scanner
_hardware [layer=(_Caps )] <- Flatbed [s] _xWHITE [star s] image [s] _xWHITE [star s] scanner [s] @@

# Ex:	Motherboard
_hardware [layer=(_Caps )] <- Motherboard [s] @@

# Ex:	ASIC
_hardware [layer=(_Caps )] <- ASIC [s] @@

# Ex:	ISDN
_hardware [layer=(_Caps )] <- ISDN [s] @@

# Ex:	Dialup
_hardware [layer=(_Caps )] <- Dialup [s] @@

# Ex:	PRI
_hardware [layer=(_Caps )] <- PRI [s] @@

# Ex:	BRI
_hardware [layer=(_Caps )] <- BRI [s] @@

# Ex:	Merced
_hardware [layer=(_Caps )] <- Merced [s] @@

# Ex:	Amdahl
_hardware [layer=(_Caps )] <- Amdahl [s] @@

# Ex:	Pyramid
_hardware [layer=(_Caps )] <- Pyramid [s] @@

