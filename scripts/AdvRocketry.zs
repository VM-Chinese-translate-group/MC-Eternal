import crafttweaker.item.IItemStack;
#MC Eternal Scripts

print("--- 加载 AdvRocketry.zs ---");

#Remove Recipes
var removerecipes = [
	<advancedrocketry:rocketbuilder>,
	<advancedrocketry:stationbuilder>,
//	<advancedrocketry:warpmonitor>,
//	<advancedrocketry:warpcore>,
	<advancedrocketry:chemicalreactor>,
//	<advancedrocketry:guidancecomputer>,
//	<advancedrocketry:rollingmachine>,
//	<advancedrocketry:electrolyser>,
//	<advancedrocketry:precisionassemblingmachine>,
//	<advancedrocketry:cuttingmachine>,
	<advancedrocketry:fuelingstation>,
	
	#Usual Access items, go put in effort :pointingrat:
	<erebus:gaean_keystone>,
	<erebus:portal_activator>,
	<atum:scarab>,
	<theaurorian:aurorianportalframebricks>
] as IItemStack[];

for items in removerecipes {
	recipes.remove(items);
}

#Add Recipes
recipes.addShaped(<advancedrocketry:stationbuilder>, [[<advancedrocketry:ic:2>, <rats:arcane_technology>, <advancedrocketry:ic:2>], [<ore:dustDilithium>, <stevescarts:upgrade:5>, <libvulpes:productdust>], [<advancedrocketry:ic:2>, <ore:componentEVCapacitor>, <advancedrocketry:ic:2>]]);
recipes.addShaped(<advancedrocketry:chemicalreactor>, [[<mekanism:polyethene>, <ore:itemPrecientCrystal>, <mekanism:polyethene>], [<ore:componentEVCapacitor>, <ore:blockCoil>, <ore:componentEVCapacitor>], [<ore:componentControlCircuit>, <twilightforest:tower_device:12>, <ore:componentControlCircuit>]]);
recipes.addShaped(<advancedrocketry:fuelingstation>, [[<ore:crystalIron>, <ore:componentEVCapacitor>, <ore:crystalIron>], [<ore:gearTitanium>, <ore:componentControlCircuit>, <ore:gearTitanium>], [<ore:crystalIron>, <ore:componentEVCapacitor>, <ore:crystalIron>]]);
recipes.addShaped(<advancedrocketry:rocketbuilder>, [[<ore:ingotBrickNetherGlazed>, <ore:gearTitanium>, <ore:ingotBrickNetherGlazed>], [<ore:itemPrecientCrystal>, <ore:componentComputerChip>, <ore:itemPrecientCrystal>], [<ore:ingotBrickNetherGlazed>, <powersuits:powerarmorcomponent:12>, <ore:ingotBrickNetherGlazed>]]);

#Space Dimension Tooltips
var ohnoeffort = {
	<erebus:gaean_keystone> : "混沌之地",
	<erebus:portal_activator> : "混沌之地",
	<atum:scarab> : "阿图姆",
	<theaurorian:aurorianportalframebricks> : "极光幽境"
} as string[IItemStack];

for usualobjects in ohnoeffort {
	usualobjects.addTooltip(format.red(ohnoeffort[usualobjects]~" 无法正常前往。\n你需要使用高级火箭前往。"));
}

print("--- AdvRocketry.zs 载入 ---");	
