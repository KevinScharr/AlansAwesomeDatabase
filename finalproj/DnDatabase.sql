--Species--
create table Race (
  RaceName      text,
  SizeFT      varchar(5),
  SpeedFT     integer,
  AgeYR       integer,
primary key(RaceName)
);

INSERT INTO Race( RaceName, SizeFT, SpeedFT, AgeYR )
  VALUES( 'Dwarf', '4-5ft', 25, 350);
INSERT INTO Race( RaceName, SizeFT, SpeedFT, AgeYR )
  VALUES( 'Elf', '5-6ft', 30, 750);
INSERT INTO Race( RaceName, SizeFT, SpeedFT, AgeYR )
  VALUES( 'Halfling', '3ft', 25, 150);
INSERT INTO Race( RaceName, SizeFT, SpeedFT, AgeYR )
  VALUES( 'Human', '5-6ft', 30, 100);
INSERT INTO Race( RaceName, SizeFT, SpeedFT, AgeYR )
  VALUES( 'Dragonborn', '6-7ft', 30, 80);
INSERT INTO Race( RaceName, SizeFT, SpeedFT, AgeYR )
  VALUES( 'Gnome', '3-4ft', 25, 425);
INSERT INTO Race( RaceName, SizeFT, SpeedFT, AgeYR )
  VALUES( 'Half-Elf', '5-6ft', 30, 180);
INSERT INTO Race( RaceName, SizeFT, SpeedFT, AgeYR )
  VALUES( 'Half-Orc', '5-6ft', 30, 75);
INSERT INTO Race( RaceName, SizeFT, SpeedFT, AgeYR )
  VALUES( 'Tiefling', '5-6ft', 30, 100);
  
-- Player --
CREATE TABLE Player (
  PID        Varchar(4) not null,
  CharName   text,
  RealName   Text,
  Alignment  text,
  Gender     Text,
  RaceName   Text not null references Race(RaceName),
  primary key(PID)
);

INSERT INTO Player( PID, CharName, RealName, Alignment, Gender, RaceName )
  VALUES( 1, 'Kevathor', 'Kevin Scharr', 'Neutral Good', 'Male', 'Human');
INSERT INTO Player( PID, CharName, RealName, Alignment, Gender, RaceName )
  VALUES( 2, 'Quar', 'Zach Banic', 'Chaotic Neutral', 'Male', 'Elf');
INSERT INTO Player( PID, CharName, RealName, Alignment, Gender, RaceName )
  VALUES( 3, 'Dr. Dankenstein', 'Kevin Scharr', 'Chaotic Evil', 'Male', 'Tiefling');
INSERT INTO Player( PID, CharName, RealName, Alignment, Gender, RaceName )
  VALUES( 4, 'Scanlan Shorthalt', 'Sam Riegel', 'Neutral Good', 'Male', 'Gnome');
INSERT INTO Player( PID, CharName, RealName, Alignment, Gender, RaceName )
  VALUES( 5, 'Grog Strongjaw', 'Travis Willingham', 'Chaotic Neutral', 'Male', 'Human');
INSERT INTO Player( PID, CharName, RealName, Alignment, Gender, RaceName )
  VALUES( 6, 'Keyleth', 'Marisha Ray', 'Lawful Good', 'Female', 'Half-Elf');
INSERT INTO Player( PID, CharName, RealName, Alignment, Gender, RaceName )
  VALUES( 7, 'Vax ildan', 'Liam Obrien', 'Chaotic Good', 'Male', 'Half-Elf');
INSERT INTO Player( PID, CharName, RealName, Alignment, Gender, RaceName )
  VALUES( 8, 'Vex ahlia', 'Laura Baily', 'Lawful Neutral', 'Female', 'Half-Elf');

-- Classes --
CREATE TABLE Classes(
  ClassName         Text not null,
  hitPointPerLevel  varchar(4) not null,
  PrimaryAbility    Text not null,
  CastingAbility    Text,
  primary key(ClassName)
);

INSERT INTO Classes( ClassName, hitPointPerLevel, PrimaryAbility, CastingAbility)
  VALUES( 'Barbarian', '1d12', 'Strength', null);
 INSERT INTO Classes( ClassName, hitPointPerLevel, PrimaryAbility, CastingAbility)
  VALUES( 'Bard', '1d8', 'Charisma', 'Charisma');
INSERT INTO Classes( ClassName, hitPointPerLevel, PrimaryAbility, CastingAbility)
  VALUES( 'Cleric', '1d8', 'Wisdom', 'Wisdom');
INSERT INTO Classes( ClassName, hitPointPerLevel, PrimaryAbility, CastingAbility)
  VALUES( 'Druid', '1d8', 'Wisdom', 'Wisdom');
INSERT INTO Classes( ClassName, hitPointPerLevel, PrimaryAbility, CastingAbility)
  VALUES( 'Fighter', '1d10', 'Strength', null);
INSERT INTO Classes( ClassName, hitPointPerLevel, PrimaryAbility, CastingAbility)
  VALUES( 'Monk', '1d8', 'Dexterity', null);
INSERT INTO Classes( ClassName, hitPointPerLevel, PrimaryAbility, CastingAbility)
  VALUES( 'Paladin', '1d10', 'Strength', 'Charisma');
INSERT INTO Classes( ClassName, hitPointPerLevel, PrimaryAbility, CastingAbility)
  VALUES( 'Ranger', '1d10', 'Dexterity', 'Wisdom');
INSERT INTO Classes( ClassName, hitPointPerLevel, PrimaryAbility, CastingAbility)
  VALUES( 'Rogue', '1d8', 'Dexterity', Null);
INSERT INTO Classes( ClassName, hitPointPerLevel, PrimaryAbility, CastingAbility)
  VALUES( 'Sorcerer', '1d6', 'Charisma', 'Charisma');
INSERT INTO Classes( ClassName, hitPointPerLevel, PrimaryAbility, CastingAbility)
  VALUES( 'Warlock', '1d8', 'Charisma', 'Charisma'); 
INSERT INTO Classes( ClassName, hitPointPerLevel, PrimaryAbility, CastingAbility)
  VALUES( 'Wizard', '1d6', 'Intelligence', 'Intelligence');   

-- Spells --
CREATE TABLE Spells(
  SpID          varchar(6),
  spName        Text,
  Levelnum      integer,
  spellType     text,
  CastTime      text,
  RangeFT       text,
  Duration      text,
  Concentration Char(1),
  Verbal        char(1),
  Somatic       Char(1),
  Material      text,
  primary key(SpID)
);

INSERT INTO Spells( SpID, spName, Levelnum, spellType, CastTime, RangeFT, Duration, Concentration, Verbal, Somatic, Material)
  VALUES( 1, 'Antilife Shell', 5, 'Abjuration', '1 action', '10ft', '1 hour', 'Y', 'Y', 'Y', null );
INSERT INTO Spells( SpID, spName, Levelnum, spellType, CastTime, RangeFT, Duration, Concentration, Verbal, Somatic, Material)
  VALUES( 2, 'Bigbys Hand', 5, 'evocation', '1 action', '120ft', '1 min', 'Y', 'Y', 'Y', 'an eggshell and a snakeskin glove');
INSERT INTO Spells( SpID, spName, Levelnum, spellType, CastTime, RangeFT, Duration, Concentration, Verbal, Somatic, Material)
  VALUES( 3, 'Blight', 4, 'necromancy', '1 action', '30ft', 'instant', null, 'Y', 'Y', null);
INSERT INTO Spells( SpID, spName, Levelnum, spellType, CastTime, RangeFT, Duration, Concentration, Verbal, Somatic, Material)
  VALUES( 4, 'Call Lightning', 3, 'conjuration', '1 action', '120ft', '10 min', 'Y', 'Y', 'Y', null);
INSERT INTO Spells( SpID, spName, Levelnum, spellType, CastTime, RangeFT, Duration, Concentration, Verbal, Somatic, Material)
  VALUES( 5, 'Charm Person', 1, 'enchantment', '1 action', '30ft', '1 hour', null, 'Y', 'Y', null);
INSERT INTO Spells( SpID, spName, Levelnum, spellType, CastTime, RangeFT, Duration, Concentration, Verbal, Somatic, Material)
  VALUES( 6, 'Commune with Nature', 5, 'divination', '1 min', 'Self', 'instant', null, 'Y', 'Y', null);
INSERT INTO Spells( SpID, spName, Levelnum, spellType, CastTime, RangeFT, Duration, Concentration, Verbal, Somatic, Material)
  VALUES( 7, 'Counterspell', 3, 'abjuration', '1 reaction', '60ft', 'instant', null, null, 'Y', null);
INSERT INTO Spells( SpID, spName, Levelnum, spellType, CastTime, RangeFT, Duration, Concentration, Verbal, Somatic, Material)
  VALUES( 8, 'Dimension Door', 4, 'conjuration', '1 action', '500ft', 'instant', null, 'Y', null, null);
INSERT INTO Spells( SpID, spName, Levelnum, spellType, CastTime, RangeFT, Duration, Concentration, Verbal, Somatic, Material)
  VALUES( 9, 'Dominate Person', 5, 'enchantment', '1 action', '60ft', '1 min', 'Y', 'Y', 'Y', null);
INSERT INTO Spells( SpID, spName, Levelnum, spellType, CastTime, RangeFT, Duration, Concentration, Verbal, Somatic, Material)
  VALUES( 10, 'Fly', 3, 'transmutation', '1 action', 'touch', '10 min', 'Y', 'Y', 'Y', 'a wing feather from any bird');
INSERT INTO Spells( SpID, spName, Levelnum, spellType, CastTime, RangeFT, Duration, Concentration, Verbal, Somatic, Material)
  VALUES( 11, 'Friends', 0, 'enchantment', '1 action', 'self', '1 min', 'Y', null, 'Y', 'a small amount of makeup applied to the face as this spell is cast');
INSERT INTO Spells( SpID, spName, Levelnum, spellType, CastTime, RangeFT, Duration, Concentration, Verbal, Somatic, Material)
  VALUES( 12, 'Grease', 1, 'conjuration', '1 action', '60ft', '1 min', null, 'Y', 'Y', 'a bit o f pork rind or butter');
INSERT INTO Spells( SpID, spName, Levelnum, spellType, CastTime, RangeFT, Duration, Concentration, Verbal, Somatic, Material)
  VALUES( 13, 'Hail of Thorns', 1, 'conjuration', '1 bonus action', 'self', '1 min', 'Y', 'Y', null, null);
INSERT INTO Spells( SpID, spName, Levelnum, spellType, CastTime, RangeFT, Duration, Concentration, Verbal, Somatic, Material)
  VALUES( 14, 'Hunters Mark', 1, 'divination', '1 bonus action', '90ft', '1 hour', 'Y', 'Y', null, null);
INSERT INTO Spells( SpID, spName, Levelnum, spellType, CastTime, RangeFT, Duration, Concentration, Verbal, Somatic, Material)
  VALUES( 15, 'See Invisibility', 2, 'divination', '1 action', 'self', '1 hour', null, 'Y', 'Y', 'a pinch of talc and a small sprinkling of powdered silver');
INSERT INTO Spells( SpID, spName, Levelnum, spellType, CastTime, RangeFT, Duration, Concentration, Verbal, Somatic, Material)
  VALUES( 16, 'True Polymorph', 9, 'transmutation', '1 action', '30ft', '1 hour', 'Y', 'Y', 'Y', 'a drop of mercury, a dollop of gum arabic, and a wisp of smoke');

-- Equipment --
CREATE TABLE Equipment(
    IID            Integer,
    ItemName       text,
    Description    text,
  primary key(IID)
);

INSERT INTO Equipment( IID, ItemName, Description)
  VALUES( 1, 'Dwarven Thrower', 'You gain a +3 bonus to attack and damage rolls made with this magic weapon. It has the thrown property with a normal range of 20 feet and a long range of 60 feet. When you hit with a ranged attack using this weapon, it deals an extra ld8 damage or, if the target is a giant, 2d8 damage. Immediately after the attack, the weapon flies back to your hand.');   
INSERT INTO Equipment( IID, ItemName, Description)
  VALUES( 2, 'Demon Armor', 'This plate armor is fashioned to make the wearer appear to be a demon. The helmet is shaped to look like a horned demon head, and its wearer looks out of the open, tooth-filled mouth. This +4 full plate allows the wearer to make claw attacks that deal 1d10 points of damage, strike as +1 weapons, and afflict the target as if she had been struck by a contagionspell (Fortitude DC 14 negates). Use of contagion requires a normal melee attack with the claws. The “claws” are built into the armor’s vambraces and gauntlets. The armor bestows one negative level on any nonevil creature wearing it. This negative level persists as long as the armor is worn and disappears when the armor is removed. The negative level never results in actual level loss, but it cannot be overcome in any way (including restorationspells) while the armor is worn.');     
INSERT INTO Equipment( IID, ItemName, Description)
  VALUES( 3, 'Dagger of Venom', 'It allows the wielder to use apoison effect (as the spell, save DC 14) upon a creature struck by the blade once per day. The wielder can decide to use the power after he has struck. Doing so is a free action, but the poisoneffect must be invoked in the same round that the dagger strikes.');     
INSERT INTO Equipment( IID, ItemName, Description)
  VALUES( 4, 'Sword of Wounding', 'Hit points lost to this weapons damage can be regained only through a short or long rest, rather than by regeneration, magic, or any other means. Once per turn, when you hit a creature with an attack using this magic weapon, you can wound the target. At the start of each of the wounded creatures turns, it takes 1d4 necrotic damage for each time youve wounded it, and it can then make a DC 15 Constitution saving throw, ending the effect of all such wounds on itself on a success. Alternatively, the wounded creature, or a creature within 5 feet of it, can use an action to make a DC 15 Wisdom (Medicine) check, ending the effect of such wounds on it on a success. ');     
INSERT INTO Equipment( IID, ItemName, Description)
  VALUES( 5, 'Mithral Armor', 'Mithral is a light, flexible metal. A mithral chain shirt or breastplate can be worn under normal clothes. I£ the armor normally imposes disadvantage on Dexterity (Stealth) checks or has a Strength requirement, the mithral version of the armor doesnt. ');    
INSERT INTO Equipment( IID, ItemName, Description)
  VALUES( 6, 'Efreeti Chain', 'While wearing this armor, you gain a +3 bonus to AC, you are immune to fire damage, and you can understand and speak Primordial. In addition, you can stand on and walk across molten rock as if it were solid ground . ');  
INSERT INTO Equipment( IID, ItemName, Description)
  VALUES( 7, 'Staff of the Adder', 'You can use a bonus action to speak this staffs command word and make the head of the staff become that of an animate poisonous snake for 1 minute. By using another bonus action to speak the command word again, you return the staff to its normal inanimate form. You can make a melee attack using the snake head, which has a reach of 5 feet. Your proficiency bonus applies to the attack roll. On a hit, the target takes 1d6 piercing damage and must succeed on a DC 15 Constitution saving throw or take 3d6 poison damage. The snake head can be attacked while it is animate. It has an Armor Class of 15 and 20 hit points. If the head drops to 0 hit points, the staff is destroyed. As long as its not destroyed, the staff regains all lost hit points when it reverts to its inanimate form.');  
INSERT INTO Equipment( IID, ItemName, Description)
  VALUES( 8, 'Sword of Sharpness', 'When you attack an object with this magic sword and hit, maximize your weapon damage dice against the target. When you attack a creature with this weapon and roll a 20 on the attack roll, that target takes an extra 14 slashing damage. Then roll another d20. If you roll a 20 you lop off one of the targets limbs, with the effect of such loss determined by the DM. If the creature has no limb to sever, you lop off a portion of its body instead. In addition, you can speak the swords command to cause the blade to shed bright light in a 10-foot radius and dim light for an additional 10 feet. Speaking the command word again or sheathing the sword puts out the light.'); 
INSERT INTO Equipment( IID, ItemName, Description)
  VALUES( 9, 'Shield of Missile Attraction', 'While holding this shield, you have resistance to damage from ranged weapon attacks. Curse. This shield is cursed. Attuning to it curses you until you are targeted by the remove curse spell or similar magic. Removing the shield fails to end the curse on you. Whenever a ranged weapon attack is made against a target within 10 feet of you, the curse causes you to become the target instead. ');     
INSERT INTO Equipment( IID, ItemName, Description)
  VALUES( 10, 'Armor of Psychic Resistence', 'You have resistance to psychic damage while you wear this armor.');  
INSERT INTO Equipment( IID, ItemName, Description)
  VALUES( 11, 'Arrow of Slaying', 'An arrow of slaying is a magic weapon meant to slay a particular kind of creature. Some are more focused than others; for example, there are both arrows of dragon slaying and arrows of blue dragon slaying. If a creature belonging to the type, race, or group associated with an arrow of slaying takes damage from the arrow, the creature must make a DC 17 Constitution saving throw, taking an extra 6d10 piercing damage on a failed save, or half as much extra damage on a successful one. Once an arrow of slaying deals its extra damage to a creature, it becomes a non magical arrow. Other types of magic ammunition of this kind exist, such as bolts of slaying meant for a crossbow, though arrows are most common.');  


-- Armor --
CREATE TABLE Armor(
    IID            Integer not null references equipment(IID),
    ArmorType      text not null,
    Strength       integer, 
    Stealth        text,
    weightlbs      integer,
  primary key(IID)
);


INSERT INTO Armor( IID, ArmorType, Strength, Stealth, weightlbs)
  VALUES( 2, 'Plate', 15, 'disadvantage', 50);   
INSERT INTO Armor( IID, ArmorType, Strength, Stealth, weightlbs)
  VALUES( 5, 'chain shirt', null, null, 55);   
INSERT INTO Armor( IID, ArmorType, Strength, Stealth, weightlbs)
  VALUES( 6, 'chain mail', 13, 'disadvantage', 55);   
INSERT INTO Armor( IID, ArmorType, Strength, Stealth, weightlbs)
  VALUES( 9, 'shield', null, null, 6);   
INSERT INTO Armor( IID, ArmorType, Strength, Stealth, weightlbs)
  VALUES( 10, 'leather', null, null, 10);   

-- Weapons --
CREATE TABLE weapons(
    IID            Integer not null references equipment(IID),
    weaponType     text,
    damageType     text,
    damage         text,
    enchantment    integer,
    weaponClass    text,
  primary key(IID)
);

INSERT INTO weapons( IID, weaponType, damageType, damage, enchantment, weaponClass)
  VALUES( 1, 'warhammer', 'bludgeoning', '1d8', 2, 'martial melee');   
INSERT INTO weapons( IID, weaponType, damageType, damage, enchantment, weaponClass)
  VALUES( 3, 'dagger', 'piercing', '1d4', 1, 'simple melee');   
INSERT INTO weapons( IID, weaponType, damageType, damage, enchantment, weaponClass)
  VALUES( 4, 'greatsword', 'slashing', '2d6', 0, 'martial melee');  
INSERT INTO weapons( IID, weaponType, damageType, damage, enchantment, weaponClass)
  VALUES( 7, 'quarterstaff', 'bludgeoning', '1d6', 0, 'simple melee');  
INSERT INTO weapons( IID, weaponType, damageType, damage, enchantment, weaponClass)
  VALUES( 8, 'longsword', 'slashing', '1d8', 0, 'martial melee');  
INSERT INTO weapons( IID, weaponType, damageType, damage, enchantment, weaponClass)
  VALUES( 11, 'arrow', 'piercing', null, 0, null);


-- Inventory --
CREATE TABLE inventory(
    PID    varchar(4) not null references player(PID),
    IID    Integer not null references equipment(IID),
  primary key(IID, PID)
);

INSERT INTO inventory( PID, IID)
  VALUES( 1, 1);   
INSERT INTO inventory( PID, IID)
  VALUES( 2, 2);   
INSERT INTO inventory( PID, IID)
  VALUES( 2, 9);   
INSERT INTO inventory( PID, IID)
  VALUES( 3, 2);   
INSERT INTO inventory( PID, IID)
  VALUES( 3, 4);  
INSERT INTO inventory( PID, IID)
  VALUES( 4, 10); 
INSERT INTO inventory( PID, IID)
  VALUES( 5, 4);    
INSERT INTO inventory( PID, IID)
  VALUES( 6, 7);     
INSERT INTO inventory( PID, IID)
  VALUES( 7, 3);   
INSERT INTO inventory( PID, IID)
  VALUES( 7, 10);   
INSERT INTO inventory( PID, IID)
  VALUES( 8, 5);  
INSERT INTO inventory( PID, IID)
  VALUES( 8, 11);

-- PlayerClass --
CREATE TABLE PlayerClass(
    PID    varchar(4) not null references player(PID),
    ClassName    text not null references classes(ClassName),
  primary key(ClassName, PID)
);

INSERT INTO PlayerClass( PID, ClassName)
  VALUES( 1, 'Barbarian');  
INSERT INTO PlayerClass( PID, ClassName)
  VALUES( 2, 'Fighter'); 
INSERT INTO PlayerClass( PID, ClassName)
  VALUES( 3, 'Fighter'); 
INSERT INTO PlayerClass( PID, ClassName)
  VALUES( 4, 'Bard'); 
INSERT INTO PlayerClass( PID, ClassName)
  VALUES( 5, 'Barbarian'); 
INSERT INTO PlayerClass( PID, ClassName)
  VALUES( 6, 'Druid'); 
INSERT INTO PlayerClass( PID, ClassName)
  VALUES( 7, 'Rogue'); 
INSERT INTO PlayerClass( PID, ClassName)
  VALUES( 8, 'Ranger'); 
INSERT INTO PlayerClass( PID, ClassName)
  VALUES( 8, 'Rogue'); 

-- AvailableSpells --
CREATE TABLE availableSpells(
    PID    varchar(4) not null references player(PID),
    SpID    varchar(6) not null references Spells(SpID),
  primary key(SpID, PID)
);

INSERT INTO availableSpells( PID, SpID)
  VALUES( 4, 11);   
INSERT INTO availableSpells( PID, SpID)
  VALUES( 4, 5);   
INSERT INTO availableSpells( PID, SpID)
  VALUES( 4, 15);   
INSERT INTO availableSpells( PID, SpID)
  VALUES( 4, 8); 
INSERT INTO availableSpells( PID, SpID)
  VALUES( 4, 9);
INSERT INTO availableSpells( PID, SpID)
  VALUES( 4, 16);   
INSERT INTO availableSpells( PID, SpID)
  VALUES( 6, 5);        
INSERT INTO availableSpells( PID, SpID)
  VALUES( 6, 4);
INSERT INTO availableSpells( PID, SpID)
  VALUES( 6, 3);
INSERT INTO availableSpells( PID, SpID)
  VALUES( 6, 1);
INSERT INTO availableSpells( PID, SpID)
  VALUES( 6, 6); 
INSERT INTO availableSpells( PID, SpID)
  VALUES( 8, 6);        
INSERT INTO availableSpells( PID, SpID)
  VALUES( 8, 13);
INSERT INTO availableSpells( PID, SpID)
  VALUES( 8, 14);   


create view ClassSpellList
as
select distinct classes.classname, spname
from spells, player, availablespells, playerclass, classes
where spells.spid = availableSpells.spid
and player.pid = availablespells.pid
and player.pid = playerclass.pid
and playerclass.classname = classes.classname
and classes.castingability is not null
order by classes.classname asc;

create view armorprof
as
select distinct charname, classes.classname, itemname, armortype
from player, playerclass, classes, inventory, equipment
inner join armor
on equipment.iid = armor.iid
where classes.classname = playerclass.classname
and playerclass.pid = player.pid
and player.pid = inventory.pid
and inventory.iid = equipment.iid;

create or replace function lvlsrch(splvl integer)
returns table(speName text, lvlNum integer)
as
$$
begin
return query select spName, Levelnum
from spells
where levelnum = splvl;
end;
$$ language plpgsql;

select lvlsrch(5);
