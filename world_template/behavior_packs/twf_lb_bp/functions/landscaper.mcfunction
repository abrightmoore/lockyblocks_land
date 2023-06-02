title @a times 4 40 4

scoreboard objectives add landscaper dummy Landscaper
scoreboard players set @a landscaper 0
scoreboard players set @a[hasitem={item=twf:rainbow_lockyblock_1x1,location=slot.weapon.mainhand}] landscaper 1
scoreboard players set @a[hasitem={item=twf:rainbow_lockyblock_2x2,location=slot.weapon.mainhand}] landscaper 1
scoreboard players set @a[hasitem={item=twf:rainbow_lockyblock_1x1small,location=slot.weapon.mainhand}] landscaper 1
scoreboard players set @a[hasitem={item=twf:rainbow_lockyblock_2x2cone,location=slot.weapon.mainhand}] landscaper 1

tag @a[hasitem={item=twf:blue_lockyblock_2x2,location=slot.weapon.mainhand},tag=!lockyblocker1] add lockyblocker
tag @a[hasitem={item=twf:rainbow_lockyblock_2x2,location=slot.weapon.mainhand},tag=!terraformer1] add terraformer
tag @a[hasitem={item=twf:rainbow_lockyblock_2x2,location=slot.weapon.mainhand},tag=!rainbow2x21] add rainbow2x2
tag @a[hasitem={item=twf:rainbow_lockyblock_2x2cone,location=slot.weapon.mainhand},tag=!terraformer1] add terraformer
tag @a[hasitem={item=twf:rainbow_lockyblock_2x2cone,location=slot.weapon.mainhand},tag=!rainbow2x2cone1] add rainbow2x2cone
tag @a[hasitem={item=twf:rainbow_lockyblock_1x1,location=slot.weapon.mainhand},tag=!terraformer1] add terraformer
tag @a[hasitem={item=twf:rainbow_lockyblock_1x1,location=slot.weapon.mainhand},tag=!rainbow1x11] add rainbow1x1
tag @a[hasitem={item=twf:rainbow_lockyblock_1x1small,location=slot.weapon.mainhand},tag=!terraformer1] add terraformer
tag @a[hasitem={item=twf:rainbow_lockyblock_1x1small,location=slot.weapon.mainhand},tag=!rainbow1x1small1] add rainbow1x1small

# Setup
scoreboard objectives add timer dummy
scoreboard objectives add timer2 dummy
# Loop
scoreboard players add @a timer 1
scoreboard players add @a timer2 1
# Main
execute @a[scores={timer=9,landscaper=1}] ~ ~ ~ function draw
# Rebuild destroyed Bopper spawner
execute @r[scores={timer2=8}] ~ ~ ~ detect 87 73 111 air -1 clone 62 90 155 62 90 155 87 73 111
# Timer Update
scoreboard players set @a[scores={timer=9..}] timer 0
scoreboard players set @a[scores={timer2=8..}] timer2 0

title @a[tag=lockyblocker] title Gold unlocked!
playsound random.levelup @a[tag=lockyblocker]
tag @a[tag=lockyblocker] add lockyblocker1
tag @a[tag=lockyblocker1] remove lockyblocker

title @a[tag=terraformer] title Diamond unlocked!
playsound random.levelup @a[tag=terraformer]
tag @a[tag=terraformer] add terraformer1
tag @a[tag=terraformer1] remove terraformer

title @a[tag=rainbow2x2,tag=rainbow2x2cone,tag=rainbow1x1,tag=rainbow1x1small] title Trophy unlocked!
playsound random.levelup @a[tag=rainbow2x2,tag=rainbow2x2cone,tag=rainbow1x1,tag=rainbow1x1small]
playsound random.explode @a[tag=rainbow2x2,tag=rainbow2x2cone,tag=rainbow1x1,tag=rainbow1x1small]
tag @a[tag=rainbow2x2,tag=rainbow2x2cone,tag=rainbow1x1,tag=rainbow1x1small] add rainbow2x21
tag @a[tag=rainbow2x2,tag=rainbow2x2cone,tag=rainbow1x1,tag=rainbow1x1small] add rainbow2x2cone1
tag @a[tag=rainbow2x2,tag=rainbow2x2cone,tag=rainbow1x1,tag=rainbow1x1small] add rainbow1x11
tag @a[tag=rainbow2x2,tag=rainbow2x2cone,tag=rainbow1x1,tag=rainbow1x1small] add rainbow1x1small1
tag @a[tag=rainbow2x21,tag=rainbow2x2cone1,tag=rainbow1x11,tag=rainbow1x1small1] remove rainbow2x2
tag @a[tag=rainbow2x21,tag=rainbow2x2cone1,tag=rainbow1x11,tag=rainbow1x1small1] remove rainbow2x2cone
tag @a[tag=rainbow2x21,tag=rainbow2x2cone1,tag=rainbow1x11,tag=rainbow1x1small1] remove rainbow1x1
tag @a[tag=rainbow2x21,tag=rainbow2x2cone1,tag=rainbow1x11,tag=rainbow1x1small1] remove rainbow1x1small

execute @a[tag=lockyblocker1] ~ ~ ~ setblock 63 72 137 twf:gold_lockyblock_2x2 0
execute @a[tag=terraformer1] ~ ~ ~ setblock 63 72 135 twf:diamond_lockyblock_2x2 0
execute @a[tag=rainbow2x21,tag=rainbow2x2cone1,tag=rainbow1x11,tag=rainbow1x1small1] ~ ~ ~ setblock 63 72 136 twf:trophy 0



