import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.enchantments.IEnchantmentDefinition;
#MC Eternal Scripts

print("--- 加载 Tooltip.zs ---");

#Add tooltip 
<extrautils2:bagofholding>.addTooltip(format.red("警告！切换游戏模式时将会删除此物品"));
<rats:arcane_technology>.addTooltip(format.gold("掉落自 鼠西族战机"));
<ftbquests:book>.addTooltip(format.gold("一个新的起点，打开我！"));
#来自一首歌《Major Tom (Coming Home)-Peter Schilling》
#原文：Earth below us, drifting falling
<minecraft:nether_star>.addTooltip(format.gold("我们脚下的大地，飘然而下"));
<ebwizardry:crystal_block:*>.addTooltip(format.gold("可以防止下界传送门腐败"));
<wings:fairy_dust>.addTooltip(format.gold("这尘埃散发着原始的魔法能量。也许可以转化某些金属。"));
<ftbquests:lootcrate>.withTag({type: "cultist"}).addTooltip(format.darkRed("第一步……穿得让人印象深刻！"));
<ftbquests:lootcrate>.withTag({type: "extraterrestrial_cache"}).addTooltip(format.gold("眼望星空，脚踏实地。——西奥多·罗斯福"));
<mysticalagriculture:diamond_seeds>.addTooltip(format.darkPurple("完成所有神秘农业任务以解锁"));
<mysticalagriculture:gold_seeds>.addTooltip(format.darkPurple("完成所有 Farming 和 Agriculture 任务以解锁"));
<minecolonies:blockhuttownhall>.addTooltip(format.darkPurple("通过补给船或补给营地获取"));
<ftbquests:lootcrate>.withTag({type: "cheesy_cache"}).addTooltip(format.gold("嗯，我想知道它是什么味道？……我真的是这么想的吗？你是这么想的"));
<ftbquests:lootcrate>.withTag({type: "common_lootbox"}).addTooltip(format.gold("完成任务的随机战利品奖励"));
<ftbquests:lootcrate>.withTag({type: "unclaimed_black_market_container"}).addTooltip(format.gold("在前一次拍卖中售出的物品，中标者未购买。买家当心上当受骗。"));
<icbmclassic:emptower>.addTooltip(format.darkPurple("仅可从商店购买"));
<cyclicmagic:inventory_food>.addTooltip(format.red("警告！当游戏崩溃或意外关闭时，可以删除里面的物品"));
<cookingforblockheads:sink>.addTooltip(format.red("不无限产生水"));
<immersiveengineering:railgun>.addTooltip(format.lightPurple("伤害增加至 40 倍"));
<immersiveengineering:revolver>.addTooltip(format.lightPurple("子弹伤害增加至约 15 倍"));
<thaumicaugmentation:impulse_cannon>.addTooltip(format.lightPurple("伤害增加至 20 倍"));
<agricraft:sprinkler>.addTooltip(format.red("警告：如果农业工艺的配置中未禁用粒子，将导致严重的FPS卡顿"));
<extrautils2:chickenring:1>.addTooltip(format.red("不要穿在饰品栏上，飞行时可能会将你随机传送"));
<appliedenergistics2:sky_stone_block>.addTooltip(format.red("只会在深渊世界和月球上重生"));
<thaumicaugmentation:impulse_cannon_augment>.addTooltip(format.lightPurple("伤害增加至 20 倍"));
<appliedenergistics2:sky_compass>.addTooltip(format.red("只会在深渊世界和月球上重生"));
<lootgames:ms_activator>.addTooltip(format.red("警告：不！要！放！在！你！的！基！地！里！"));
<erebus:materials:1>.addTooltip(format.gold("此材料在匠魂中已被大量修改。"));
<theaurorian:auroriansteel>.addTooltip(format.gold("此材料在匠魂中已被大量修改。"));
<extrautils2:teleporter:1>.addTooltip(format.red("禁用，如果您尝试使用它，将导致崩溃！请改用深渊世界和深渊世界传送门。"));
<thaumcraft:condenser_lattice_dirty>.addTooltip(format.aqua("用源质滤管右键以清洗！"));
<thaumcraft:filter>.addTooltip(format.aqua("右键堵塞的咒波凝结器格栅以清洗！"));
<nuclearcraft:fission_controller_new_fixed>.addTooltip(format.lightPurple("4 倍总发电量！（免责声明：显示在燃料工具提示中）"));
<randomthings:spectreanchor>.addTooltip(format.red("改用墓碑绑定"));

<necromancersdelight:charm_bone_bag>.addTooltip(format.red("暂时禁用，此物品将在（希望不久）将来的 MCE 版本中再次启用。"));

var supremarmor = [<mysticalagriculture:supremium_helmet>,<mysticalagriculture:supremium_chestplate>,<mysticalagriculture:supremium_leggings>,<mysticalagriculture:supremium_boots>] as IItemStack[];
for armor in supremarmor {
  armor.addTooltip(format.red("禁用飞行"));
}

var beneathores = [<mekanism:oreblock>,<nuclearcraft:ore:3>,<nuclearcraft:ore:5>,<nuclearcraft:ore:6>,<nuclearcraft:ore:7>,<immersiveengineering:ore:5>] as IItemStack[];
for ores in beneathores {
	ores.addTooltip(format.darkPurple("只能在深渊世界中找到"));
}

var mektooltiptext = ["如果在 AE2 自动制作样板中使用，请手动将此物品添加到制作样板中，否则将无法工作。","不要使用建筑之杖放置，否则将恢复为基础版本。"] as string[];
var mektooltipitems = [<mekanism:energycube>,<mekanism:basicblock2:3>,<mekanism:basicblock2:4>,<mekanism:transmitter:*>,<mekanism:gastank>,<mekanism:basicblock:6>,<mekanism:machineblock2:11>] as IItemStack[];
for items in mektooltipitems {
	for text in mektooltiptext {
		items.addTooltip(format.red(text));
	}
}
val mekfactorymetas = [5,6,7] as int[];
for metas in mekfactorymetas {
	itemUtils.getItem("mekanism:machineblock",metas).addTooltip(format.red("不要使用建筑之杖放置，否则将变为熔炼工厂"));
}


val thaumcuriosities = { 
	1:"炼金术", 
	0:"神秘学", 
	4:"奥术注魔", 
	5:"炼化学", 
	2:"傀儡学", 
	3:"邪术学"
} as string[int];

for metas in thaumcuriosities {
	itemUtils.getItem("thaumcraft:curio",metas).addTooltip(format.lightPurple("更有可能获得 "~thaumcuriosities[metas]~" 研究"));
}
<thaumcraft:curio:3>.addTooltip(format.darkPurple("使用时会获得一些扭曲效果！"));

var aePresses = [
	<appliedenergistics2:material:13>,
	<appliedenergistics2:material:14>,
	<appliedenergistics2:material:15>,
	<appliedenergistics2:material:19>
] as IItemStack[];

for press in aePresses {
	press.addTooltip(format.aqua("可在商店购买！"));
}

var meteorRelatedItems = [
	<appliedenergistics2:sky_compass>,
	<appliedenergistics2:sky_stone_block>,
] as IItemStack[];

for item in meteorRelatedItems {
	item.addTooltip(format.red("AE2 陨石会生成在深渊世界和月球上"));
}

var candleData = {
	0 : [<enchantment:minecraft:unbreaking>,<enchantment:elenaidodge2:lightweight>],
	1 : [<enchantment:minecraft:fire_protection>,<enchantment:minecraft:fire_aspect>,<enchantment:minecraft:flame>,<enchantment:cofhcore:smelting>,<enchantment:extrautils2:xu.burnerang>],
	2 : [<enchantment:minecraft:knockback>,<enchantment:minecraft:punch>,<enchantment:ebwizardry:magic_protection>],
	3 : [<enchantment:minecraft:feather_falling>,<enchantment:ebwizardry:frost_protection>,<enchantment:cyclicmagic:enchantment.launch>],
	4 : [<enchantment:minecraft:looting>,<enchantment:minecraft:fortune>,<enchantment:minecraft:luck_of_the_sea>],
	5 : [<enchantment:minecraft:blast_protection>,<enchantment:cofhcore:insight>,<enchantment:endercore:xpboost>],
	6 : [<enchantment:minecraft:silk_touch>,<enchantment:cofhcore:holding>,<enchantment:cofhcore:vorpal>],
	7 : [<enchantment:minecraft:bane_of_arthropods>,<enchantment:cofhcore:smashing>,<enchantment:cyclicmagic:enchantment.magnet>],
	8 : [<enchantment:minecraft:protection>,<enchantment:charm:salvage>,<enchantment:minecraft:infinity>,<enchantment:fossil:paleontology>],
	9 : [<enchantment:minecraft:respiration>,<enchantment:theaurorian:lightning>,<enchantment:theaurorian:lightningresistance>],
	10: [<enchantment:minecraft:sweeping>,<enchantment:enderio:repellent>,<enchantment:tombstone:soulbound>,<enchantment:yoyos:collecting>],
	11: [<enchantment:minecraft:efficiency>,<enchantment:minecraft:sharpness>,<enchantment:minecraft:lure>,<enchantment:minecraft:power>,<enchantment:ebwizardry:shock_protection>,<enchantment:charm:homing>,<enchantment:extrautils2:xu.bladerang>],
	12: [<enchantment:minecraft:aqua_affinity>,<enchantment:minecraft:depth_strider>,<enchantment:extrautils2:xu.zoomerang>,<enchantment:fossil:archeology>],
	13: [<enchantment:minecraft:thorns>,<enchantment:cyclicmagic:enchantment.expboost>,<enchantment:mod_lavacow:poisonous>,<enchantment:extrautils2:xu.boomereaperang>],
	14: [<enchantment:cofhcore:leech>,<enchantment:vampirism:vampireslayer>,<enchantment:extrautils2:xu.kaboomerang>,<enchantment:openblocks:explosive>],
	15: [<enchantment:minecraft:smite>,<enchantment:enderio:witherweapon>,<enchantment:enderio:witherarrow>]
} as IEnchantmentDefinition[][int];

for meta in candleData {
	itemUtils.getItem("quark:candle", meta).addShiftTooltip(format.gold("提高矩阵附魔的概率："), format.gold("按住 SHIFT 查看受影响的附魔"));
	for enchant in candleData[meta] {
		itemUtils.getItem("quark:candle", meta).addShiftTooltip(format.aqua("- "~game.localize(enchant.name)));
	}
}

val nonFunctionalExtraCellsThings = [
	<extracells:storage.component:9>,
	<extracells:storage.component:10>,
	<extracells:storage.fluid:5>,
	<extracells:storage.fluid:6>
] as IItemStack[];

for thing in nonFunctionalExtraCellsThings {
	recipes.remove(thing);
	thing.addTooltip(format.red("禁用，因技术原因无法使用。"));
}

val NBeeT = {MaxH: 50, Mate: {Chromosomes: [{UID1: "careerbees.energy", UID0: "careerbees.energy", Slot: 0 as byte}, {UID1: "forestry.speedSlow", UID0: "forestry.speedSlow", Slot: 1 as byte}, {UID1: "forestry.lifespanLong", UID0: "forestry.lifespanLong", Slot: 2 as byte}, {UID1: "forestry.fertilityNormal", UID0: "forestry.fertilityNormal", Slot: 3 as byte}, {UID1: "forestry.toleranceNone", UID0: "forestry.toleranceNone", Slot: 4 as byte}, {UID1: "forestry.boolFalse", UID0: "forestry.boolFalse", Slot: 5 as byte}, {UID1: "forestry.toleranceNone", UID0: "forestry.toleranceNone", Slot: 6 as byte}, {UID1: "forestry.boolFalse", UID0: "forestry.boolFalse", Slot: 7 as byte}, {UID1: "forestry.boolFalse", UID0: "forestry.boolFalse", Slot: 8 as byte}, {UID1: "forestry.flowersVanilla", UID0: "forestry.flowersVanilla", Slot: 9 as byte}, {UID1: "forestry.floweringSlow", UID0: "forestry.floweringSlow", Slot: 10 as byte}, {UID1: "forestry.territoryAverage", UID0: "forestry.territoryAverage", Slot: 11 as byte}, {UID1: "careerbees.effect.rf", UID0: "careerbees.effect.rf", Slot: 12 as byte}]}, Health: 50, IsAnalyzed: 0 as byte, Genome: {Chromosomes: [{UID1: "careerbees.energy", UID0: "careerbees.energy", Slot: 0 as byte}, {UID1: "forestry.speedSlow", UID0: "forestry.speedSlow", Slot: 1 as byte}, {UID1: "forestry.lifespanLong", UID0: "forestry.lifespanLong", Slot: 2 as byte}, {UID1: "forestry.fertilityNormal", UID0: "forestry.fertilityNormal", Slot: 3 as byte}, {UID1: "forestry.toleranceNone", UID0: "forestry.toleranceNone", Slot: 4 as byte}, {UID1: "forestry.boolFalse", UID0: "forestry.boolFalse", Slot: 5 as byte}, {UID1: "forestry.toleranceNone", UID0: "forestry.toleranceNone", Slot: 6 as byte}, {UID1: "forestry.boolFalse", UID0: "forestry.boolFalse", Slot: 7 as byte}, {UID1: "forestry.boolFalse", UID0: "forestry.boolFalse", Slot: 8 as byte}, {UID1: "forestry.flowersVanilla", UID0: "forestry.flowersVanilla", Slot: 9 as byte}, {UID1: "forestry.floweringSlow", UID0: "forestry.floweringSlow", Slot: 10 as byte}, {UID1: "forestry.territoryAverage", UID0: "forestry.territoryAverage", Slot: 11 as byte}, {UID1: "careerbees.effect.rf", UID0: "careerbees.effect.rf", Slot: 12 as byte}]}} as IData;
val beeTypes = [
	<forestry:bee_queen_ge>,
	<forestry:bee_princess_ge>,
	<forestry:bee_drone_ge>
] as IItemStack[];
for bee in beeTypes {
	bee.withTag(NBeeT).addTooltip(format.aqua("无法直接繁殖，请制作该生物的基因样本以获取它"));
	bee.withTag(NBeeT).addTooltip(format.aqua("查看“鼠西洲的降灵”的用法以找到配方"));
}

for num in 0 to 5 {
	itemUtils.getItem("vampirism:pure_blood", num).addTooltip(format.aqua("被 "+(num+1)+" 级吸血鬼伯爵丢弃，也许是精心制作的，价格不菲。"));
}

for resItem,amount in {<xreliquary:angelheart_vial> : 5, <xreliquary:phoenix_down>: 25} as string[IItemStack] {
	resItem.addTooltip(format.lightPurple("恢复 "+amount+"% 生命值。"));
}

print("--- Tooltip.zs 载入 ---");	

