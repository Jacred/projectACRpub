PrintItemDescription: ; 0x1c8955
; Print the description for item [CurSpecies] at de.

	ld a, [CurSpecies]
	cp TM_DYNAMICPUNCH
	jr c, .not_a_tm

	ld [CurItem], a
	push de
	callba GetTMHMItemMove
	pop hl
	ld a, [wd265]
	ld [CurSpecies], a
	predef PrintMoveDesc
	ret

.not_a_tm
	push de
	cp S_S_TICKET
	jr nz, .not_ss_ticket
	ld a, [StatusFlags]
	bit 5, a
	ld de, SSTicketEGKDesc
	jr z, .okay
.not_ss_ticket
	ld hl, ItemDescriptions
	ld a, [CurSpecies]
	dec a
	ld c, a
	ld b, 0
	add hl, bc
	add hl, bc
	ld e, [hl]
	inc hl
	ld d, [hl]
.okay
	pop hl
	jp PlaceString
; 0x1c8987


ItemDescriptions:
	dw MasterBallDesc
	dw UltraBallDesc
	dw BrightpowderDesc
	dw GreatBallDesc
	dw PokeBallDesc
	dw PremierBallDesc
	dw BicycleDesc
	dw MoonStoneDesc
	dw AntidoteDesc
	dw BurnHealDesc
	dw IceHealDesc
	dw AwakeningDesc
	dw ParlyzHealDesc
	dw FullRestoreDesc
	dw MaxPotionDesc
	dw HyperPotionDesc
	dw SuperPotionDesc
	dw PotionDesc
	dw EscapeRopeDesc
	dw RepelDesc
	dw MaxElixerDesc
	dw FireStoneDesc
	dw ThunderStoneDesc
	dw WaterStoneDesc
	dw PoisonGuardDesc
	dw HPUpDesc
	dw ProteinDesc
	dw IronDesc
	dw CarbosDesc
	dw LuckyPunchDesc
	dw CalciumDesc
	dw RareCandyDesc
	dw XAccuracyDesc
	dw LeafStoneDesc
	dw MetalPowderDesc
	dw NuggetDesc
	dw PokeDollDesc
	dw FullHealDesc
	dw ReviveDesc
	dw MaxReviveDesc
	dw GuardSpecDesc
	dw SuperRepelDesc
	dw MaxRepelDesc
	dw DireHitDesc
	dw BurnGuardDesc
	dw FreshWaterDesc
	dw SodaPopDesc
	dw LemonadeDesc
	dw XAttackDesc
	dw FreezeGuardDesc
	dw XDefendDesc
	dw XSpeedDesc
	dw XSpecialDesc
	dw CoinCaseDesc
	dw ItemfinderDesc
	dw PokeFluteDesc
	dw ExpShareDesc
	dw OldRodDesc
	dw GoodRodDesc
	dw SilverLeafDesc
	dw SuperRodDesc
	dw PPUpDesc
	dw EtherDesc
	dw MaxEtherDesc
	dw ElixerDesc
	dw RedScaleDesc
	dw SecretPotionDesc
	dw SSTicketDesc
	dw MysteryEggDesc
	dw ClearBellDesc
	dw SilverWingDesc
	dw MoomooMilkDesc
	dw QuickClawDesc
	dw PsnCureBerryDesc
	dw GoldLeafDesc
	dw SoftSandDesc
	dw SharpBeakDesc
	dw PrzCureBerryDesc
	dw BurntBerryDesc
	dw IceBerryDesc
	dw PoisonBarbDesc
	dw KingsRockDesc
	dw BitterBerryDesc
	dw MintBerryDesc
	dw RedApricornDesc
	dw TinyMushroomDesc
	dw BigMushroomDesc
	dw SilverPowderDesc
	dw BluApricornDesc
	dw SleepGuardDesc
	dw AmuletCoinDesc
	dw YlwApricornDesc
	dw GrnApricornDesc
	dw CleanseTagDesc
	dw MysticWaterDesc
	dw TwistedSpoonDesc
	dw WhtApricornDesc
	dw BlackbeltDesc
	dw BlkApricornDesc
	dw ParlyzGuardDesc
	dw PnkApricornDesc
	dw BlackGlassesDesc
	dw SlowpokeTailDesc
	dw PinkBowDesc
	dw StickDesc
	dw SmokeBallDesc
	dw NeverMeltIceDesc
	dw MagnetDesc
	dw MiracleBerryDesc
	dw PearlDesc
	dw BigPearlDesc
	dw EverStoneDesc
	dw SpellTagDesc
	dw RageCandyBarDesc
	dw GSBallDesc
	dw BlueCardDesc
	dw MiracleSeedDesc
	dw ThickClubDesc
	dw FocusBandDesc
	dw ConfuseGuardDesc
	dw EnergyPowderDesc
	dw EnergyRootDesc
	dw HealPowderDesc
	dw RevivalHerbDesc
	dw HardStoneDesc
	dw LuckyEggDesc
	dw CardKeyDesc
	dw MachinePartDesc
	dw EggTicketDesc
	dw LostItemDesc
	dw StardustDesc
	dw StarPieceDesc
	dw BasementKeyDesc
	dw PassDesc
	dw HelixFossilDesc
	dw DomeFossilDesc
	dw OldAmberDesc
	dw CharcoalDesc
	dw BerryJuiceDesc
	dw ScopeLensDesc
	dw OaksParcelDesc
	dw PowerHerbDesc
	dw MetalCoatDesc
	dw DragonFangDesc
	dw FriendCharmDesc
	dw LeftoversDesc
	dw ResearchNotesDesc
	dw TeruSama16Desc
	dw TeruSama17Desc
	dw MysteryBerryDesc
	dw DragonScaleDesc
	dw BerserkGeneDesc
	dw TeruSama18Desc
	dw XSpDefDesc
	dw TeruSama20Desc
	dw SacredAshDesc
	dw HeavyBallDesc
	dw FlowerMailDesc
	dw LevelBallDesc
	dw LureBallDesc
	dw FastBallDesc
	dw TeruSama21Desc
	dw LightBallDesc
	dw FriendBallDesc
	dw MoonBallDesc
	dw LoveBallDesc
	dw NormalBoxDesc
	dw GorgeousBoxDesc
	dw SunStoneDesc
	dw PolkadotBowDesc
	dw TeruSama22Desc
	dw UpGradeDesc
	dw BerryDesc
	dw GoldBerryDesc
	dw SquirtBottleDesc
	dw TeruSama23Desc
	dw ParkBallDesc
	dw RainbowWingDesc
	dw TeruSama24Desc
	dw BrickPieceDesc
	dw SurfMailDesc
	dw LiteBlueMailDesc
	dw PortraitMailDesc
	dw LovelyMailDesc
	dw EonMailDesc
	dw MorphMailDesc
	dw BlueSkyMailDesc
	dw MusicMailDesc
	dw MewMailDesc
	dw TeruSama25Desc
	dw TeruSama26Desc
	dw TeruSama26Desc
	dw TeruSama26Desc
	dw TeruSama26Desc
	dw TeruSama26Desc
	dw TeruSama27Desc
	dw TeruSama27Desc
	dw TeruSama27Desc
	dw TeruSama27Desc
	dw TeruSama27Desc
	dw TeruSama27Desc
	dw TeruSama27Desc
	dw TeruSama27Desc
	dw TeruSama27Desc
	dw TeruSama27Desc
	dw TeruSama27Desc
	dw TeruSama27Desc
	dw TeruSama27Desc
	dw TeruSama27Desc
	dw TeruSama27Desc
	dw TeruSama27Desc
	dw TeruSama27Desc
	dw TeruSama27Desc
	dw TeruSama27Desc
	dw TeruSama27Desc
	dw TeruSama27Desc
	dw TeruSama27Desc
	dw TeruSama27Desc
	dw TeruSama27Desc
	dw TeruSama27Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama29Desc
	dw TeruSama30Desc
	dw TeruSama31Desc
	dw TeruSama32Desc
	dw TeruSama33Desc

MasterBallDesc:
	db   "The perfect BALL."
	next "It never fails.@"

UltraBallDesc:
	db   "BALL with a high"
	next "success rate.@"

BrightpowderDesc:
	db   "Lowers the foe's"
	next "accuracy. (HOLD)@"

GreatBallDesc:
	db   "BALL with better"
	next "success rate.@"

PokeBallDesc:
	db   "A capsule for"
	next "catching #MON.@"

PremierBallDesc:
	db   "An extra BALL for"
	next "bulk shoppers.@"

BicycleDesc:
	db   "Collapsible bike"
	next "for fast travel.@"

MoonStoneDesc:
	db   "Evolves certain"
	next "kinds of #MON.@"

AntidoteDesc:
	db   "Cures a poisoned"
	next "#MON.@"

BurnHealDesc:
	db   "Heals a burned"
	next "#MON.@"

IceHealDesc:
	db   "Defrosts a frozen"
	next "#MON.@"

AwakeningDesc:
	db   "Awakens a"
	next "sleeping #MON.@"

ParlyzHealDesc:
	db   "Heals a paralyzed"
	next "#MON.@"

FullRestoreDesc:
	db   "Heals all HP and"
	next "cures ailments.@"

MaxPotionDesc:
	db   "Heals all HP for"
	next "one #MON.@"

HyperPotionDesc:
	db   "Heals 120 HP for"
	next "one #MON.@"

SuperPotionDesc:
	db   "Heals 60 HP for"
	next "one #MON.@"

PotionDesc:
	db   "Heals 20 HP for"
	next "one #MON.@"

EscapeRopeDesc:
	db   "Use for escaping"
	next "from caves, etc.@"

RepelDesc:
	db   "Repels #MON"
	next "for 100 steps.@"

MaxElixerDesc:
	db   "Restores all PP"
	next "for 1 #MON.@"

FireStoneDesc:
	db   "Evolves certain"
	next "kinds of #MON.@"

ThunderStoneDesc:
	db   "Evolves certain"
	next "kinds of #MON.@"

WaterStoneDesc:
	db   "Evolves certain"
	next "kinds of #MON.@"

TeruSama2Desc:
	db   "This shouldn't be"
	next "here, should it?@"

HPUpDesc:
	db   "Raises HEALTH of"
	next "one #MON.@"

ProteinDesc:
	db   "Raises ATTACK of"
	next "one #MON.@"

IronDesc:
	db   "Raises DEFENSE of"
	next "one #MON.@"

CarbosDesc:
	db   "Raises SPEED of"
	next "one #MON.@"

LuckyPunchDesc:
	db   "Raises CHANSEY's"
	next "critical. (HOLD)@"

CalciumDesc:
	db   "Raises SPECIAL of"
	next "one #MON.@"

RareCandyDesc:
	db   "Raises a #MON's"
	next "level by 1.@"

XAccuracyDesc:
	db   "Raises ACCURACY."
	next "(1 BTL)@"

LeafStoneDesc:
	db   "Evolves certain"
	next "kinds of #MON.@"

MetalPowderDesc:
	db   "Raises DITTO's"
	next "DEFENSE. (HOLD)@"

NuggetDesc:
	db   "Made of solid"
	next "gold. Sell high.@"

PokeDollDesc:
	db   "Use to flee from"
	next "a wild #MON.@"

FullHealDesc:
	db   "Eliminates all"
	next "status ailments.@"

ReviveDesc:
	db   "Revives a fainted"
	next "#MON. (50% HP)@"

MaxReviveDesc:
	db   "Fully restores a"
	next "fainted #MON.@"

GuardSpecDesc:
	db   "Prevents stat"
	next "lowering. (1 BTL)@"

SuperRepelDesc:
	db   "Repels #MON"
	next "for 200 steps.@"

MaxRepelDesc:
	db   "Repels #MON"
	next "for 250 steps.@"

DireHitDesc:
	db   "Raises CRITICAL."
	next "(1 BTL)@"

TeruSama3Desc:
	db   "This shouldn't be"
	next "here, should it?@"

FreshWaterDesc:
	db   "Heals 50 HP."
	next "Very refreshing.@"

SodaPopDesc:
	db   "Heals 70 HP."
	next "Extremely fizzy.@"

LemonadeDesc:
	db   "Heals 80 HP."
	next "Extremely sweet.@"

XAttackDesc:
	db   "Raises ATTACK."
	next "(1 BTL)@"

TeruSama4Desc:
	db   "This shouldn't be"
	next "here, should it?@"

XDefendDesc:
	db   "Raises DEFENSE."
	next "(1 BTL)@"

XSpeedDesc:
	db   "Raises SPEED."
	next "(1 BTL)@"

XSpecialDesc:
	db   "Raises SPECIAL"
	next "ATTACK. (1 BTL)@"

CoinCaseDesc:
	db   "Holds coins for"
	next "the GAME CORNER.@"

ItemfinderDesc:
	db   "Checks for hidden"
	next "objects nearby.@"

PokeFluteDesc:
	db   "Wakes up all"
	next "sleeping #MON.@"

ExpShareDesc:
	db   "Benched #MON"
	next "earns EXP. (HOLD)@"

OldRodDesc:
	db   "Use by water to"
	next "fish for #MON.@"

GoodRodDesc:
	db   "A better ROD for"
	next "catching #MON.@"

SilverLeafDesc:
	db   "A silver leaf."
	next "Sell low.@"

SuperRodDesc:
	db   "The best ROD for"
	next "catching #MON.@"

PPUpDesc:
	db   "Raises max PP of"
	next "a selected move.@"

EtherDesc:
	db   "Restores 10 PP"
	next "for one move.@"

MaxEtherDesc:
	db   "Restores all PP"
	next "for one move.@"

ElixerDesc:
	db   "Restores 10 PP"
	next "for all moves.@"

RedScaleDesc:
	db   "A scale from the"
	next "red GYARADOS.@"

SecretPotionDesc:
	db   "Strong medicine"
	next "for sick #MON.@"

SSTicketDesc:
	db   "A ticket for the"
	next "S.S.AQUA.@"

MysteryEggDesc:
	db   "An EGG obtained"
	next "from MR.#MON.@"

ClearBellDesc:
	db   "It makes a gentle"
	next "ringing sound.@"

SilverWingDesc:
	db   "A strange, shiny"
	next "white feather.@"

MoomooMilkDesc:
	db   "Heals 100 HP."
	next "Very nutritious.@"

QuickClawDesc:
	db   "Raises 1st-strike"
	next "chance. (HOLD)@"

PsnCureBerryDesc:
	db   "A self-cure for"
	next "poison. (HOLD)@"

GoldLeafDesc:
	db   "A golden leaf."
	next "Sell high.@"

SoftSandDesc:
	db   "Powers up ground-"
	next "type moves. (HOLD)@"

SharpBeakDesc:
	db   "Powers up flying-"
	next "type moves. (HOLD)@"

PrzCureBerryDesc:
	db   "A self-cure for"
	next "paralysis. (HOLD)@"

BurntBerryDesc:
	db   "A self-cure for"
	next "freezing. (HOLD)@"

IceBerryDesc:
	db   "A self-cure for a"
	next "burn. (HOLD)@"

PoisonBarbDesc:
	db   "Powers up poison-"
	next "type moves. (HOLD)@"

KingsRockDesc:
	db   "May make the foe"
	next "flinch. (HOLD)@"

BitterBerryDesc:
	db   "A self-cure for"
	next "confusion. (HOLD)@"

MintBerryDesc:
	db   "A self-awakening"
	next "for sleep. (HOLD)@"

RedApricornDesc:
	db   "Trade to KURT for"
	next "LEVEL BALL.@"

TinyMushroomDesc:
	db   "Small mushroom."
	next "Sell low.@"

BigMushroomDesc:
	db   "Large mushroom."
	next "Sell high.@"

SilverPowderDesc:
	db   "Powers up bug-type"
	next "moves. (HOLD)@"

BluApricornDesc:
	db   "Trade to KURT for"
	next "LURE BALL.@"

TeruSama6Desc:
	db   "This shouldn't be"
	next "here, should it?@"

AmuletCoinDesc:
	db   "Doubles prize"
	next "money. (HOLD)@"

YlwApricornDesc:
	db   "Trade to KURT for"
	next "MOON BALL.@"

GrnApricornDesc:
	db   "Trade to KURT for"
	next "FRIEND BALL.@"

CleanseTagDesc:
	db   "Helps repel wild"
	next "#MON. (HOLD)@"

MysticWaterDesc:
	db   "Powers up water-"
	next "type moves. (HOLD)@"

TwistedSpoonDesc:
	db   "Powers up psychic-"
	next "type moves. (HOLD)@"

WhtApricornDesc:
	db   "Trade to KURT for"
	next "FAST BALL.@"

BlackbeltDesc:
	db   "Boosts fighting-"
	next "type moves. (HOLD)@"

BlkApricornDesc:
	db   "Trade to KURT for"
	next "HEAVY BALL.@"

TeruSama7Desc:
	db   "This shouldn't be"
	next "here, should it?@"

PnkApricornDesc:
	db   "Trade to KURT for"
	next "LOVE BALL.@"

BlackGlassesDesc:
	db   "Powers up dark-"
	next "type moves. (HOLD)@"

SlowpokeTailDesc:
	db   "Cruel, but tasty."
	next "Sell high.@"

PinkBowDesc:
	db   "Powers up fairy-"
	next "type moves. (HOLD)@"

StickDesc:
	db   "Ups FARFETCH'D's"
	next "critical. (HOLD)@"

SmokeBallDesc:
	db   "Escape from wild"
	next "#MON. (HOLD)@"

NeverMeltIceDesc:
	db   "Powers up ice-type"
	next "moves. (HOLD)@"

MagnetDesc:
	db   "Boosts electric-"
	next "type moves. (HOLD)@"

MiracleBerryDesc:
	db   "Cures any status"
	next "problem. (HOLD)@"

PearlDesc:
	db   "SHELLDER's pearl."
	next "Sell low.@"

BigPearlDesc:
	db   "CLOYSTER's pearl."
	next "Sell high.@"

EverStoneDesc:
	db   "Stops evolution."
	next "(HOLD)@"

SpellTagDesc:
	db   "Powers up ghost-"
	next "type moves. (HOLD)@"

RageCandyBarDesc:
	db   "Heals 30 HP."
	next "Furiously tasty.@"

GSBallDesc:
	db   "Gold and silver."
	next "It won't open.@"

BlueCardDesc:
	db   "Card from BUENA"
	next "to save points.@"

MiracleSeedDesc:
	db   "Powers up grass-"
	next "type moves. (HOLD)@"

ThickClubDesc:
	db   "Doubles CUBONE's"
	next "ATTACK. (HOLD)@"

FocusBandDesc:
	db   "10% chance to"
	next "ENDURE. (HOLD)@"

TeruSama8Desc:
	db   "This shouldn't be"
	next "here, should it?@"

EnergyPowderDesc:
	db   "Heals 50 HP."
	next "Very bitter.@"

EnergyRootDesc:
	db   "Heals 200 HP."
	next "Extremely bitter.@"

HealPowderDesc:
	db   "Cures any status"
	next "problem. Bitter.@"

RevivalHerbDesc:
	db   "Revives fainted"
	next "#MON. Bitter.@"

HardStoneDesc:
	db   "Powers up rock-"
	next "type moves. (HOLD)@"

LuckyEggDesc:
	db   "Tastes like free"
	next "EXP. (HOLD)@"

CardKeyDesc:
	db   "Opens shutters in"
	next "the RADIO TOWER.@"

MachinePartDesc:
	db   "Machine part for"
	next "the POWER PLANT.@"

EggTicketDesc:
	db   "Trade for an EGG"
	next "in GOLDENROD.@"

LostItemDesc:
	db   "KIRBY DOLL lost"
	next "by the COPYCAT.@"

StardustDesc:
	db   "Pretty, red sand."
	next "Sell high.@"

StarPieceDesc:
	db   "A hunk of red gem."
	next "Sell very high.@"

BasementKeyDesc:
	db   "Opens a door in"
	next "GOLDENROD TUNNEL.@"

PassDesc:
	db   "A ticket for the"
	next "MAGNET TRAIN.@"

TeruSama9Desc:
	db   "This shouldn't be"
	next "here, should it?@"

TeruSama10Desc:
	db   "This shouldn't be"
	next "here, should it?@"

TeruSama11Desc:
	db   "This shouldn't be"
	next "here, should it?@"

CharcoalDesc:
	db   "Boosts fire-type"
	next "moves. (HOLD)@"

BerryJuiceDesc:
	db   "Self-restore item"
	next "(20 HP, HOLD).@"

ScopeLensDesc:
	db   "Raises critical"
	next "hit rate. (HOLD)@"

OaksParcelDesc:
	db   "A parcel from a"
	next "#MON MART.@"

PowerHerbDesc:
	db   "Speeds up 2-turn"
	next "moves. (HOLD)@"

MetalCoatDesc:
	db   "Powers up steel-"
	next "type moves. (HOLD)@"

DragonFangDesc:
	db   "Powers up dragon-"
	next "type moves. (HOLD)@"

FriendCharmDesc:
	db   "Increases catch"
	next "chance. (HOLD)@"

LeftoversDesc:
	db   "Restores HP each"
	next "turn. (HOLD)@"

ResearchNotesDesc:
	db   "Shows the way to"
	next "a FARAWAY ISLAND.@"

TeruSama16Desc:
	db   "An illusory, dark"
	next "purple feather.@"

TeruSama17Desc:
	db   "This shouldn't be"
	next "here, should it?@"

MysteryBerryDesc:
	db   "A self-restore"
	next "for PP. (HOLD)@"

DragonScaleDesc:
	db   "Unlocks a dragon's"
	next "potential. (HOLD)@"

BerserkGeneDesc:
	db   "ROCKET's secret"
	next "weapon. (HOLD)@"

TeruSama18Desc:
	db   "This shouldn't be"
	next "here, should it?@"

XSpDefDesc:
	db   "Raises SPECIAL"
	next "DEFENSE. (1 BTL)@"

TeruSama20Desc:
	db   "This shouldn't be"
	next "here, should it?@"

SacredAshDesc:
	db   "Fully revives all"
	next "fainted #MON.@"

HeavyBallDesc:
	db   "BALL for catching"
	next "heavy #MON.@"

FlowerMailDesc:
	db   "Flower-print MAIL."
	next "(HOLD)@"

LevelBallDesc:
	db   "BALL for catching"
	next "weak #MON.@"

LureBallDesc:
	db   "BALL for catching"
	next "fish #MON.@"

FastBallDesc:
	db   "BALL for catching"
	next "fast #MON.@"

TeruSama21Desc:
	db   "This shouldn't be"
	next "here, should it?@"

LightBallDesc:
	db   "Raises PIKACHU's"
	next "offenses. (HOLD)@"

FriendBallDesc:
	db   "A BALL that makes"
	next "#MON friendly.@"

MoonBallDesc:
	db   "A BALL for MOON"
	next "STONE evolvers.@"

LoveBallDesc:
	db   "For catching the"
	next "opposite gender.@"

NormalBoxDesc:
	db   "Open it and see"
	next "what's inside!@"

GorgeousBoxDesc:
	db   "Open it and see"
	next "what's inside!@"

SunStoneDesc:
	db   "Evolves certain"
	next "kinds of #MON.@"

PolkadotBowDesc:
	db   "Powers up normal-"
	next "type moves. (HOLD)@"

TeruSama22Desc:
	db   "This shouldn't be"
	next "here, should it?@"

UpGradeDesc:
	db   "New software for"
	next "digital #MON.@"

BerryDesc:
	db   "Self-restore item"
	next "(10 HP, HOLD).@"

GoldBerryDesc:
	db   "Self-restore item"
	next "(25% HP, HOLD).@"

SquirtBottleDesc:
	db   "A pistol used for"
	next "watering plants.@"

TeruSama23Desc:
	db   "This shouldn't be"
	next "here, should it?@"

ParkBallDesc:
	db   "BALL for the BUG"
	next "CATCHING CONTEST.@"

RainbowWingDesc:
	db   "A mystical feather"
	next "of rainbow colors.@"

TeruSama24Desc:
	db   "This shouldn't be"
	next "here, should it?@"

BrickPieceDesc:
	db   "A chunk of tile."
	next "Sell low.@"

SurfMailDesc:
	db   "LAPRAS-print MAIL."
	next "(HOLD)@"

LiteBlueMailDesc:
	db   "DRATINI-print"
	next "MAIL. (HOLD)@"

PortraitMailDesc:
	db   "MAIL featuring the"
	next "holder's likeness.@"

LovelyMailDesc:
	db   "Heart-print MAIL."
	next "(HOLD)@"

EonMailDesc:
	db   "EEVEE-print MAIL."
	next "(HOLD)@"

MorphMailDesc:
	db   "DITTO-print MAIL."
	next "(HOLD)@"

BlueSkyMailDesc:
	db   "Sky-print MAIL."
	next "(HOLD)@"

MusicMailDesc:
	db   "NATU-print MAIL."
	next "(HOLD)@"

MewMailDesc:
	db   "MEW-print MAIL."
	next "(HOLD)@"

DomeFossilDesc:
	db   "A fossil of an"
	next "ancient #MON.@"

HelixFossilDesc:
	db   "A fossil of an"
	next "ancient #MON.@"

OldAmberDesc:
	db   "Hardened tree sap"
	next "containing DNA.@"

PoisonGuardDesc:
	db   "User can't get"
	next "poisoned. (HOLD)@"

BurnGuardDesc:
	db   "User can't get"
	next "burned. (HOLD)@"

FreezeGuardDesc:
	db   "User can't get"
	next "frozen. (HOLD)@"

SleepGuardDesc:
	db   "User can't fall"
	next "asleep. (HOLD)@"

ParlyzGuardDesc:
	db   "User can't get"
	next "paralyzed. (HOLD)@"

ConfuseGuardDesc:
	db   "User can't get"
	next "confused. (HOLD)@"

TeruSama25Desc:
	db   "This shouldn't be"
	next "here, should it?@"

TeruSama26Desc:
	db   "This shouldn't be"
	next "here, should it?@"

TeruSama27Desc:
	db   "This shouldn't be"
	next "here, should it?@"

TeruSama28Desc:
	db   "This shouldn't be"
	next "here, should it?@"

TeruSama29Desc:
	db   "This shouldn't be"
	next "here, should it?@"

TeruSama30Desc:
	db   "This shouldn't be"
	next "here, should it?@"

TeruSama31Desc:
	db   "This shouldn't be"
	next "here, should it?@"

TeruSama32Desc:
	db   "This shouldn't be"
	next "here, should it?@"

TeruSama33Desc:
	db   "This shouldn't be"
	next "here, should it?@"

SSTicketEGKDesc:
	db   "A ticket for the"
	next "ST.ANNE.@"
